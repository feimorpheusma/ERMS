<?php

class UsersAction extends CommonAction
{
    //添加搜索方法
    /*public function _filter(&$map)
    {
        //判断是否有搜索条件
        if (!empty($_REQUEST['username'])) {
            $list = M("Users")->field('id')->where(array('username' => array('like', "%{$_REQUEST['username']}%")))->select();
            //echo $mod->getLastSql();
            $uid = array();
            foreach ($list as $vo) {
                $uid[] = $vo['id'];
            }
            if (count($uid) > 0) {
                $map['uid'] = array('in', $uid);
            }
        }


    }*/

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['username'])) {
            $map['username'] = array("like", "%{$_REQUEST['username']}%");
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据 做其他关联数据的追加
    public function _tigger_list(&$list)
    {
        //实例化用户表对象
        $role = M("Roles r");
        $course = M("Course c");

        //遍历查询出数据
        foreach ($list as &$v) {
            $rname = $role->join("edu_userrole ur on r.id = ur.rid")->field('remark')->where("ur.uid = {$v['id']}")->select();
            $cname = $course->join("edu_user_course uc on c.id = uc.coid")->field('name')->where("uc.uid = {$v['id']}")->select();
            foreach ($cname as $c) {
                $v['coursename'] = $v['coursename'] . $c['name'] . '  ';
            }
            foreach ($rname as $r) {
                $v['rolename'] = $v['rolename'] . $r['remark'] . '  ';
            }
        }
    }

    //显示添加用户的页面
    public function adduser()
    {
        $this->assign("tid", $_GET['tid']);
        $this->display();
    }
    //执行用户的添加
    //重写父类中的方法
    public function insert()
    {
        // dump($_POST);
        //die();

        import("ORG.Net.UploadFile");//导入文件上传类 执行文件上传
        $upload = new UploadFile();
        $upload->maxSize = 3145728;
        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->savePath = "./Public/Uploads/users/{$_POST['username']}/";
        if (!$upload->upload()) {
            $this->error($upload->getErrorMsg());
        } else {
            $info = $upload->getUploadFileInfo();

        }
        //实例化表对象
        $model = D("Users");
        if (false === $model->create()) {
            unlink("./Public/Uploads/users/{$_POST['username']}/{$info[0]['savename']}");

            $this->error($model->getError());
        }
        $model->picture = $info[0]['savename'];
        $id = $model->add();


        //判断数据是否添加成功
        if ($id) {
            $this->success(L("添加成功"));
        } else {
            unlink("./Public/Uploads/users/{$_POST['username']}/{$info[0]['savename']}");

            $this->error(L("添加失败"));
        }

    }

    public function detail()
    {
        $model = D("Users");

        $where['id'] = array("eq", $_GET['id']);
        $list = $model->where($where)->select();
        $this->assign("list", $list);
        $this->display();
    }


    public function update()
    {
        //实例化表对象
        $model = D("Users");
        $id = $_POST['id'];

        if (false === $model->create()) {
            $this->error($model->getError());
        }
        $r = $model->where("id='$id'")->select();
        $model->picture = $r[0]['picture'];
        //判断数据是否修改成功
        if ($model->save()) {

            $this->success(L("修改成功"));

        } else {

            $this->error("修改失败" . $model->getLastSql());
        }

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
                        unlink("./Public/Uploads/users/{$_POST['username']}/{$list[0]['picture']}");
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

    //浏览当前角色的节点信息
    public function courselist()
    {
        //1. 获取当前角色信息
        $uid = $_GET['uid'];
        $user = M("Users")->find($uid);
        $this->assign("user", $user);

        //2. 获取所有节点信息
        $list = M("Course")->select();
        $this->assign("list", $list);

        //3. 获取当前角色的节点信息
        $nodelist = M("User_course")->where("uid={$uid}")->select();
        //对获取的结果进行处理
        $mynode = array();
        foreach ($nodelist as $v) {
            $mynode[] = $v['coid'];
        }
        $this->assign("mynode", $mynode);

        $this->display("courselist");
    }

    //执行角色信息的保存
    public function savecourse()
    {
        //获取被操作的角色信息
        $uid = $_POST['uid'];
        //删除当前角色的所有节点信息
        $m = M("User_course");
        $m->where("uid={$uid}")->delete();

        //将当前选择的节点信息添加上去
        if (!empty($_POST['coid'])) {
            foreach ($_POST['coid'] as $coid) {
                $data['uid'] = $uid;
                $data['coid'] = $coid;
                $m->add($data);
            }
        }
        $this->success("修改成功！");
    }

    public function rolelist()
    {
        $user = D("Users");
        $uid = $_GET['id'];

        $userrole = M("Userrole");
        $role = M("Roles");

        $userroles = $userrole->where("uid='{$uid}'")->select();

        $user = $user->find($uid);
        $roles = $role->select();

        $this->assign("role", $roles);
        $this->assign("userrole", $userroles);
        $this->assign("uid", $uid);
        $this->assign("uname", $user['username']);
        $this->display(rolelist);
    }


    public function saverole()
    {
        $uid = $_POST['id'];
        $rid = $_POST['rid'];
        //删除当前角色的所有节点信息
        $userrole = M("Userrole");
        $userrole->where("uid={$uid}")->delete();


        foreach ($rid as $v) {
            $data['rid'] = $v;
            $data['uid'] = $uid;
            $userrole->add($data);
        }
        $this->success("修改成功！");
    }

    public function setpassword()
    {
        $user = M("users")->find($_GET['id']);
        $this->assign("vo", $user);
        $this->display();
    }

    public function updatepassword()
    {
        $id = $_POST['id'];

        $data['userpass'] =md5($_POST['userpass']);

        //判断数据是否修改成功
        if (M("users")->where("id='$id'")->save($data)) {
            $this->success(L("修改成功"));
        } else {

            $this->error("修改失败");
        }

    }
}
