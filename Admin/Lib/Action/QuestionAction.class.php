<?php

//用户信息控制Action类
class QuestionAction extends CommonAction
{

    public function replay()
    {
        $model = D($this->getActionName());
        $id = $_REQUEST[$model->getPk()];
        $vo = $model->find($id);
        $this->assign('vo', $vo);
        $this->display('replay');
    }

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
        $vo['type'] = $_REQUEST['type'];
        $this->assign('vo', $vo);
    }

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        //判断是否存在搜索条件
        //执行资源名的搜索

        if (!empty($_REQUEST['type'])) {
            $map['type'] = array("eq", $_REQUEST['type']);
        }
        if (!empty($_REQUEST['content'])) {
            $map['content'] = array("like", "%{$_REQUEST['content']}%");
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
            $map['cid'] = array("egt", "0");
        }
    }


    public function add()
    {
        $this->typeSelect();

        $vo['type'] = $_REQUEST['type'];
        $this->assign('vo', $vo);

        //把资源的类别信息赋值到模板中
        $this->display('add');
    }

    //重载父类中的数据添加的方法
    public function insert()
    {
        //实例化表对象
        $model = D("Question");

        if (false === $model->create()) {
            $this->error($model->getError());
        }

        if (is_array($model->answer)) {
            $model->answer = implode($model->answer);
        }
        $model->uid = $_SESSION[C("USER_AUTH_KEY")]['id'];//取得上传者的id
        if ($model->add()) {
            $this->success(L("新增成功"));
        } else {
            $this->error(L("新增失败！") . $model->getLastSql());
        }
    }

    public function update()
    {
        $model = D($this->getActionName());

        if (false === $model->create()) {
            $this->error($model->getError());
        }

        if (is_array($model->answer)) {
            $model->answer = implode($model->answer);
        }
        // 更新数据
        if (false !== $model->save()) {
            //成功提示
            $this->success(L('更新成功'));
        } else {
            //错误提示
            $this->error(L('更新失败'));
        }
    }
    //添加搜索方法
    /*public function _filter1(&$map){
        //判断是否有搜索条件
        if(!empty($_REQUEST['username'])){
            //根据名字条件获取对应的学生id
            $list=M("Users")->field('id')->where(array('username'=>array('like',"%{$_REQUEST['username']}%")))->select();
            //echo $mod->getLastSql();
            $uid=array();
            foreach($list as $vo){
                $uid[]=$vo['id'];
            }
            if(count($uid)>0){
                $map['uid']=array('in',$uid);
            }
        }
        if(!empty($_REQUEST['tname'])){
            //根据名字条件获取对应的教师id
            $list=M("Users")->field('id')->where(array('username'=>array('like',"%{$_REQUEST['tname']}%")))->select();
            //echo $mod->getLastSql();
            $tid=array();
            foreach($list as $vo){
                $tid[]=$vo['id'];
            }
            if(count($tid)>0){
                $map['tid']=array('in',$tid);
            }
        }
        //对我的问题
        if($_SESSION[C('USER_AUTH_KEY')]['username']!=C('SUPERMAN')){
            $map['tid']=array('eq',$_SESSION[C('USER_AUTH_KEY')]['id']);
        }
        if (!empty($_REQUEST['content'])) {
            $map['content'] = array("like","%{$_REQUEST['content']}%");
        }
        if (!empty($_REQUEST['pid'])) {
            $map['keyword'] = array(array('like',"{$_REQUEST['pid']}"),array('like',"%,{$_REQUEST['pid']}"),array('like',"{$_REQUEST['pid']},%"),array('like',"%,{$_REQUEST['pid']},%"),'or');
        }
        if (!empty($_REQUEST['ss'])) {
            //根据回复内容确定是否已回复
            $list=D("Question")->field('id,replay')->select();
            $yid=array();
            $nid=array();
            foreach($list as $vo){
                if(!empty($vo['replay'])){
                    $yid[]=$vo['id'];
                }else{
                    $nid[]=$vo['id'];
                }
            }
            if($_REQUEST['ss']=='1'){
                $map['id']=array('in',$yid);
            }else{
                $map['id']=array('in',$nid);
            }
        }
    }*/
    //定义一个处理编辑器的上传内容
    public function doupload()
    {
        $res = array("err" => "", "msg" => "");//定义一个响应信息
        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->savePath = './Public/Uploads/editor/' . date('Ym', time()) . '/';// 设置附件上传目录
        //执行上传
        if ($upload->upload()) {
            $info = $upload->getUploadFileInfo();
            $res["msg"] = __ROOT__ . "/Public/Uploads/editor/" . date('Ym', time()) . '/' . $info[0]['savename'];  //上传成功！
        } else {
            $res['err'] = $upload->getErrorMsg(); //失败
        }
        echo json_encode($res);
    }


    public function typeSelect()
    {
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }

        $course = M('Course');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $course->field('id,name')->order("name")->select();
        //定义存放类别信息的数组
        $courses[] = '全部';
        foreach ($res as $vo) {
            $courses[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Courses', $courses);
        $this->assign('CourseId', $cid);//设置默认选中的option的下标值id
    }
}
