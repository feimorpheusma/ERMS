<?php

//自定义文档资源模块Action

class LibraryAction extends CommonAction
{

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        //判断是否存在搜索条件
        //执行资源名的搜索
        if (!empty($_REQUEST['title'])) {
            $map['title'] = array("like", "%{$_REQUEST['title']}%");
        }
        //执行上传用户的搜索
        if (!empty($_REQUEST['username'])) {
            $list = M("Users")->field("id")->where(array("username" => array("like", "%{$_REQUEST['username']}%")))->select();
            $uid = array();
            foreach ($list as $vo) {
                $uid[] = $vo['id'];
            }
            if (count($uid) > 0) {
                $map['uid'] = array("in", $uid);
            }
        }

        if (empty($_REQUEST['cid'])) {
            $map['cid'] = array('in', $_SESSION[C('USER_AUTH_KEY')]["courselist"]);
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据 做其他关联数据的追加
    public function _tigger_list(&$list)
    {
        //实例化表对象
        $user = M("Users");
        $course = M("Course");
        //dump($list);exit;
        //遍历查询出数据
        foreach ($list as &$v) {
            $uname = $user->field('username')->find($v['uid']);
            $v['username'] = $uname['username'];

            $cname = $course->field("name")->find($v['cid']);
            $v['coursename'] = $cname['name'];
        }
    }

    public function typeSelect()
    {
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }
        $map['id'] = array('in', $_SESSION[C('USER_AUTH_KEY')]["courselist"]);
        $course = M('Course');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $course->field('id,name')->where($map)->order("name")->select();
        //定义存放类别信息的数组
        $courses[''] = '请选择';
        foreach ($res as $vo) {
            $courses[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Courses', $courses);
        $this->assign('CourseId', $cid);//设置默认选中的option的下标值id


    }

    //重载父类中的数据添加的方法
    public function insert()
    {

        //执行资源文档的上传
        //导入文件上传类
        import("ORG.Net.UploadFile");
        $upload = new UploadFile();
        $upload->maxSize = 100000000000000;//设置附件上传大小
        //$upload->allowExts = array('pdf', 'mp4', 'flv', 'rmvb', 'avi', 'wmv', 'mkv');//设置附件上传类型
        $upload->savePath = "./Public/Uploads/library/";//设置上传目录
        if (!$upload->upload()) {
            $this->error($upload->getErrorMsg());
        } else {
            $info = $upload->getUploadFileInfo();
        }

        //实例化表对象
        $model = D("Library");

        if (false === $model->create()) {
            $this->error($model->getError());
        }
        if (empty($model->cid)) {
            $this->error(L("请选择一个课程！"));
        }

        $model->uid = $_SESSION[C("USER_AUTH_KEY")]['id'];//取得上传者的id
        //$model->type = $info[0]['extension'];
        $model->size = $info[0]['size'];
        $model->name = $info[0]['savename'];//取得上传完成保存的文件名
        if ($model->type == 1) {
            $model->basename = $info[1]['savename'];//取得上传完成保存的文件名
            $model->basesize = $info[1]['size'];//取得上传完成保存的文件名
        } else {
            $model->basename = $info[0]['savename'];//取得上传完成保存的文件名
            $model->basesize = $info[0]['size'];//取得上传完成保存的文件名
        }
        if ($model->add()) {
            //echo $model->getLastSql();exit;
            $this->success(L("新增成功"));
        } else {
            unlink("./Public/Uploads/library/{$info[0]['savename']}");
            $this->error(L("新增失败！") . $model->getLastSql());
        }
    }

    public function update()
    {
        //实例化表对象
        $model = D("Library");
        $id = $_POST['id'];

        if (!empty($_FILES['lib']['name'][0])) {
            import("ORG.Net.UploadFile");
            $upload = new UploadFile();
            $upload->maxSize = 100000000000000;//设置附件上传大小
            //$upload->allowExts = array('pdf', 'mp4', 'flv', 'rmvb', 'avi', 'wmv', 'mkv');//设置附件上传类型
            $upload->savePath = "./Public/Uploads/library/";//设置上传目录
            if (!$upload->upload()) {
                $this->error($upload->getErrorMsg());
            } else {
                $info = $upload->getUploadFileInfo();
            }
        }

        if (false === $model->create()) {
            unlink("./Public/Uploads/library/{$info[0]['savename']}");
            $this->error($model->getError());
        }
        if (empty($model->cid)) {
            $this->error(L("请选择一个课程！"));
        }
        if (!empty($info[0]['savename'])) {
            //$model->type = $info[0]['extension'];
            $model->size = $info[0]['size'];
            $model->name = $info[0]['savename'];
            if ($_POST['type'] == 2) {
                $model->basename = $info[0]['savename'];//取得上传完成保存的文件名
                $model->basesize = $info[0]['size'];//取得上传完成保存的文件名
            }
        }
        if (!empty($info[1]['savename']) && $_POST['type'] == 1) {
            $model->basename = $info[1]['savename'];//取得上传完成保存的文件名
            $model->basesize = $info[1]['size'];//取得上传完成保存的文件名
        }
        //判断数据是否修改成功
        if (false !== $model->save()) {
            $this->success(L("修改成功"));
        } else {
            unlink("./Public/Uploads/library/{$info[0]['savename']}");
            $this->error("修改失败" . $model->getLastSql());
        }

    }

    //重载父类的删除方法
    /*public function delete()
    {
        //实例化对象
        $model = M("Library");
        $list = $model->field("name")->find($_GET['id']);//查询该条数据的服务器资源名

        //执行数据库信息的删除
        if ($model->delete($_GET['id'])) {
            //删除服务器上无用的资源
            unlink("./Public/Uploads/library/{$list['name']}");
            //组装swf格式的文件
            $randname = substr($list['name'], 0, strpos($list['name'], "."));
            $swfname = $randname . ".swf";
            unlink("./Public/Uploads/library_swf/{$swfname}");//删除swf格式文件

            //删除评论表中相关的评论信息
            $mod = M("Libcom");
            $mod->where("lid={$_GET['id']}")->delete();

            $this->success(L("删除成功"));
        } else {
            $this->error(L("删除失败") . $model->getLastSql());
        }
    }*/

    public function view()
    {
        $model = D($this->getActionName());
        $id = $_GET['id'];
        $vo = $model->find($id);
        $vo['name_swf'] = substr($vo['name'], 0, strpos($vo['name'], ".")) . ".swf";
        if ($vo['type'] == '1' && !file_exists("./Public/Uploads/library_swf/{$vo['name_swf']}")) {
            $filename = $vo['name'];

            //==============================执行资源格式的转换==========================================
            //执行上传资源的类型转换 pdf转为swf格式
            //首先获取上传资源所在目录的绝对路径
            $dir = explode("\\", rtrim(THINK_PATH, "/"));//删除路径最后的"/"
            array_pop($dir);
            $dir = implode("\\", $dir);//当前项目所在的目录
            $reslibdir = $dir . "\\Public\\Uploads\\library\\";//拼装上传资源所在的目录
            $dstlibdir = $dir . "\\Public\\Uploads\\library_swf\\";//拼装上传资源转成的swf文件存放的目录

            $resFile = $reslibdir . $filename;//上传资源路径+文件名
            $name = substr($filename, 0, strpos($filename, "."));
            $dstFile = $dstlibdir . $name . ".swf";//转换成swf格式后的资源路径+文件名

            //调用函数exec()调用dos命令 将pdf格式的文件转swf格式
            //$arr返回执行的结果数组 $status为请求结果 0表示成功 1表示失败
            $commend = "{$dir}\\Public\\SWFTools\\pdf2swf.exe -t {$resFile} -s flashversion=9 -o {$dstFile}";
            exec($commend);
        }

        $this->assign('vo', $vo);
        $this->display('view');
    }
}
