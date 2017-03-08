<?php

class StudentAction extends CommonAction
{
    //添加搜索方法
    public function _filter(&$map)
    {
        if (empty($_REQUEST['cid'])) {
            $map['cid'] = array("egt", "0");
        }

        if (!empty($_REQUEST['no'])) {
            $map['no'] = array("like", "%{$_REQUEST['no']}%");
        }
        if (!empty($_REQUEST['name'])) {
            $map['name'] = array("like", "%{$_REQUEST['name']}%");
        }
        $_REQUEST['_order'] = 'no';
    }

    //自定义魔术方法 对当前模块中查询出的数据 做其他关联数据的追加
    public function _tigger_list(&$list)
    {
        //实例化用户表对象
        $class = M("Class");

        //遍历查询出数据
        foreach ($list as &$v) {
            $cname = $class->field('name')->find($v['cid']);
            $v['classname'] = $cname['name'];
        }
    }

    //执行用户的添加
    //重写父类中的方法
    public function insert()
    {
        // dump($_POST);
        //die();
        //实例化表对象
        $model = D("Student");
        if (false === $model->create()) {
            //unlink("./Public/Uploads/student/{$_POST['no']}/{$info[0]['savename']}");
            $this->error($model->getError());
        }
        $exist = M('Student')->where("no={$model->no}")->find();
        if ($exist) {
            $this->error(L("学号重复，添加失败"));
        }
        if (!empty($_FILES['picture']['name'])) {
            import("ORG.Net.UploadFile");//导入文件上传类 执行文件上传
            $upload = new UploadFile();
            $upload->maxSize = 3145728;
            $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
            $upload->savePath = "./Public/Uploads/student/{$_POST['no']}/";
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
            }
        }
        $model->picture = $info[0]['savename'];
        $id = $model->add();


        //判断数据是否添加成功
        if ($id) {
            $this->success(L("添加成功"));
        } else {
            unlink("./Public/Uploads/student/{$_POST['no']}/{$info[0]['savename']}");

            $this->error(L("添加失败"));
        }

    }


    public function update()
    {
        //实例化表对象
        $model = D("Student");
        $id = $_POST['id'];

        if (false === $model->create()) {
            //unlink("./Public/Uploads/student/{$_POST['no']}/{$info[0]['savename']}");
            $this->error($model->getError());
        }

        $exist = M('Student')->where("no={$model->no} and id<>{$id}")->find();
        if ($exist) {
            $this->error(L("学号重复，修改失败"));
        }
        if (!empty($_FILES['picture']['name'])) {
            import("ORG.Net.UploadFile");//导入文件上传类 执行文件上传
            $upload = new UploadFile();
            $upload->maxSize = 3145728;
            $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
            $upload->savePath = "./Public/Uploads/student/{$_POST['no']}/";
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
            }
        }

        if (!empty($info[0]['savename'])) {
            $model->picture = $info[0]['savename'];
        }
        //判断数据是否修改成功
        if (false !== $model->save()) {

            $this->success(L("修改成功"));

        } else {
            unlink("./Public/Uploads/student/{$_POST['no']}/{$info[0]['savename']}");

            $this->error("修改失败" . $model->getLastSql());
        }

    }

    public function typeSelect()
    {
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }

        $class = M('Class c');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $class->field('c.id,c.name as cname,m.name as mname,co.name as coname')->join("join edu_major m on c.mid = m.id join edu_college co on c.cid = co.id")->order("co.name,m.name,c.name")->select();
        //定义存放类别信息的数组
        $classes[''] = '请选择';
        foreach ($res as $vo) {
            $classes[$vo['id']] = $vo['coname'] . '-' . $vo['mname'] . '-' . $vo['cname'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Classes', $classes);
        $this->assign('ClassId', $cid);//设置默认选中的option的下标值id

    }

    public function delete()
    {
        //删除指定记录
        $model = D($this->getActionName());
        if (!empty($model)) {
            $pk = $model->getPk();
            $id = $_REQUEST[$pk];
            $where['id'] = $id;
            $list = $model->where($where)->select();
            if (isset($id)) {
                $condition = array($pk => array('in', explode(',', $id)));
                if (false !== $model->where($condition)->delete()) {
                    if ($list[0]['picture'] != '1.jpg') {
                        unlink("./Public/Uploads/student/{$_POST['no']}/{$list[0]['picture']}");
                    }
                    //删除用户和角色关系表
                    $model1 = M("userrole");
                    $model1->where("uid='$id'")->delete();
                    $this->success(L("删除成功"));
                    //删除用户上传头像和个人相册
                    unlink("./Public/Uploads/users/{$_POST['username']}");
                } else {
                    $this->error(L('删除失败'));
                }
            } else {
                $this->error('非法操作');
            }
        }
    }

    public function setpassword()
    {
        $user = M("student")->find($_GET['id']);
        $this->assign("vo", $user);
        $this->display();
    }

    public function updatepassword()
    {
        $id = $_POST['id'];

        $data['pass'] = md5($_POST['pass']);

        //判断数据是否修改成功
        if (M("student")->where("id='$id'")->save($data)) {
            $this->success(L("修改成功"));
        } else {

            $this->error("修改失败");
        }

    }

}
