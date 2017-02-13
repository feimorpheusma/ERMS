<?php

//自定义文库模块Action类

class LibraryAction extends CommonAction
{
    //加载资源浏览页
    public function index()
    {
        //实例化表对象
        $model = M("Library l");

        import("ORG.Util.Page");//导入分页类
        //设置搜索分页信息
        //===========================封装搜索条件==================
        //封装搜索条件
        if (!empty($_GET['q'])) {
            $where['title'] = array("like", "%{$_GET['q']}%");
        }
        $url_params = '';
        $cid = 0;
        $type = 0;
        $collectflag = 0;
        if (!empty($_GET['cid'])) {
            $cid = $_GET['cid'];
            $where['cid'] = array("eq", $cid);
            $url_params = $url_params . "/cid/" . $cid;
        } else {
            $where['cid'] = array("in", $this->courseids);
        }

        if (!empty($_GET['type'])) {
            $type = $_GET['type'];
            $url_params = $url_params . "/type/" . $type;
            $where['type'] = array("eq", $type);
        }

        if (!empty($_GET['collect'])) {
            $url_params = $url_params . "/collect/1";
            $collect = M("collect");
            $vids = $collect->where("uid={$_SESSION[C('USER_AUTH_KEY')]['id']}")->field("lid")->select();
            $ids = array();
            foreach ($vids as $v) {
                $ids[] = $v['lid'];
            }
            $where['l.id'] = array("in", $ids);
            $collectflag = 1;
        }

        $where['status'] = array("eq", "1");
        $where['canview'] = array("eq", "1");

        if ($type == 0) {
            $where['type'] = array("eq", 1);
            $result = $model->field("l.id,l.title,l.addtime,c.name as coursename,l.candownload")->join("edu_course c on l.cid = c.id")->where($where)->order("id desc")->limit(10)->select();
            $this->assign("llist", $result);

            $where['type'] = array("eq", 2);
            $result = $model->field("l.id,l.title,l.addtime,c.name as coursename,l.candownload")->join("edu_course c on l.cid = c.id")->where($where)->order("id desc")->limit(10)->select();
            $this->assign("vlist", $result);
        } else {
            //设置分页条件
            $total = $model->where($where)->count();//获取总数据条数
            $page = new Page($total, 8);//实例化一个分页对象

            //调用查询语句
            $result = $model->field("l.id,l.title,l.addtime,c.name as coursename,l.candownload")->join("edu_course c on l.cid = c.id")->where($where)->order("id desc")->limit($page->firstRow . "," . $page->listRows)->select();

            //向模板中输出查询信息和分页信息
            //$this->assign("page",$);
            if ($type == 1) {
                $this->assign("llist", $result);
            }
            if ($type == 2) {
                $this->assign("vlist", $result);
            }
            $this->assign("showPage", $page->show());
        }

        $this->assign("courses", $this->courses);
        $this->assign("type", $type);
        $this->assign("collectflag", $collectflag);
        $this->assign("url_params", $url_params);
        $this->assign("cid", $cid);
        $this->display();
    }

    //定义资源信息查询方法 详情页
    public function detail()
    {
        //实例化视频表对象
        $model = M("Library");
        $vo = $model->find($_GET['id']);
        $model->clicknum += 1;
        $model->save();


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

        $course = M("Course")->find($vo["cid"]);
        if ($course) {
            $vo["course"] = $course["name"];
        } else {
            $vo["course"] = "暂无";
        }
        //查询该视频的笔记列表
        $note = M("Note")->where("lid={$_GET['id']}")->order('id desc')->select();

        $this->assign("note", $note);

        $collect = M("Collect");
        //封装搜索条件
        $where['uid'] = array("eq", $_SESSION[C('USER_AUTH_KEY')]['id']);
        $where['lid'] = array("eq", $_GET['id']);
        $coll = $collect->where($where)->find();
        $this->assign("collect", $coll);


        $this->assign("vo", $vo);
        $this->display();
    }

    //定义视频被收藏的方法
    public function collect()
    {
        //实例化收藏表对象
        $collect = M("Collect");

        //封装搜索要添加的数据
        $map['uid'] = $_SESSION[C('USER_AUTH_KEY')]['id'];
        $map['lid'] = $_POST['id'];

        //封装搜索条件
        $where['uid'] = array("eq", $_SESSION[C('USER_AUTH_KEY')]['id']);
        $where['lid'] = array("eq", $_POST['id']);

        //查询该用户是否收藏过这个视频
        $coll = $collect->where($where)->find();
        if ($coll) {
            $collect->where($where)->delete();//删除收藏数据表中的数据
            echo "no";
            die;
        } else {
            //往收藏表中存进视频和用户的id
            $collect->add($map);//保存数据
            echo "yes";
            die;
        }
    }

    //定义添加笔记的方法
    public function note()
    {
        $model = D("Note");

        $note['uid'] = $_SESSION[C('USER_AUTH_KEY')]['id'];
        $note['lid'] = $_POST['lid'];
        $note['content'] = $_POST['content'];
        $note['addtime'] = time();

        if ($model->add($note)) {
            echo "yes";
        } else {
            echo "no";
        }
    }


    //资源下载的方法
    public function download()
    {
        $model = M("Library");
        $res = $model->find($_GET['id']);

        if ($res['candownload']) {
            //资源下载量加一
            $res['downloadnum'] += 1;
            $model->save($res);
            //获取资源的类型
            $type = $res['type'];

            //执行资源下载
            header("Content-Type:{$type}");
            header("Content-Disposition:attachment;filename={$res['basename']}");
            header("Content-Length:{$res['basesize']}");

            readfile("./Public/Uploads/library/{$res['basename']}");
        } else {
            $this->error("非法操作！");
        }
    }

}
