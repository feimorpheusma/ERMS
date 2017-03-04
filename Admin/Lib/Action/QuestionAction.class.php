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
            $map['cid'] = array('in', $_SESSION[C('USER_AUTH_KEY')]["courselist"]);
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
        $level[0] = '易';
        $level[1] = '中';
        $level[2] = '难';
        $this->assign('Levels', $level);
    }


    public function import()
    {
        $this->display();
    }

    //重载父类中的数据添加的方法
    public function importquestion()
    {
        $filename = $_FILES['question']['tmp_name'];
        if (empty ($filename)) {
            $this->error(L('请选择要导入的csv文件'));
        }
        $handle = fopen($filename, 'r');
        $result = array();
        $n = 0;
        while ($data = fgetcsv($handle, 10000)) {
            $num = count($data);
            for ($i = 0; $i < $num; $i++) {
                $result[$n][$i] = $data[$i];
            }
            $n++;
        }

        $len_result = count($result);
        if ($len_result == 1) {
            $this->error(L('文件中没有数据'));
        }
        $data_list = array();
        $message = '';
        for ($i = 1; $i < $len_result; $i++) { //循环获取各字段值
            $data = array();
            $type = iconv('gb2312', 'utf-8', $result[$i][0]);
            switch ($type) {
                case  '单选题':
                    $data['type'] = 1;
                    break;
                case  '多选题':
                    $data['type'] = 2;
                    break;
                case  '判断题':
                    $data['type'] = 3;
                    break;
                case  '填空题':
                    $data['type'] = 4;
                    break;
                case  '主观题':
                    $data['type'] = 5;
                    break;
                default:
                    $data['type'] = 0;
                    break;
            }
            if ($data['type'] == 0) {
                $message .= '第' . $i . '行,试题类型' . $type . "不合法; <br>";
            }
            $course_name = iconv('gb2312', 'utf-8', $result[$i][1]);
            $course = M('course')->where("name='{$course_name}'")->find();
            if ($course) {
                if (in_array($course['id'], $_SESSION[C('USER_AUTH_KEY')]["courselist"])) {
                    $data['cid'] = $course['id'];
                    $data['uid'] = $_SESSION[C('USER_AUTH_KEY')]['id'];
                    $data['status'] = 0;
                    $data['addtime'] = time();
                    $data['content'] = iconv('gb2312', 'utf-8', $result[$i][2]);
                    $data['score'] = iconv('gb2312', 'utf-8', $result[$i][3]);
                    $data['answer'] = iconv('gb2312', 'utf-8', $result[$i][4]);
                    if ($data['type'] == 1) {
                        $data['aA'] = iconv('gb2312', 'utf-8', $result[$i][5]);
                        $data['aB'] = iconv('gb2312', 'utf-8', $result[$i][6]);
                        $data['aC'] = iconv('gb2312', 'utf-8', $result[$i][7]);
                        $data['aD'] = iconv('gb2312', 'utf-8', $result[$i][8]);
                        $data['aE'] = '';
                        $data['aF'] = '';
                    } elseif ($data['type'] == 2) {
                        $data['aA'] = iconv('gb2312', 'utf-8', $result[$i][5]);
                        $data['aB'] = iconv('gb2312', 'utf-8', $result[$i][6]);
                        $data['aC'] = iconv('gb2312', 'utf-8', $result[$i][7]);
                        $data['aD'] = iconv('gb2312', 'utf-8', $result[$i][8]);
                        $data['aE'] = iconv('gb2312', 'utf-8', $result[$i][9]);
                        $data['aF'] = iconv('gb2312', 'utf-8', $result[$i][10]);
                    } else {
                        $data['aA'] = '';
                        $data['aB'] = '';
                        $data['aC'] = '';
                        $data['aD'] = '';
                        $data['aE'] = '';
                        $data['aF'] = '';
                    }
                    $level = iconv('gb2312', 'utf-8', $result[$i][11]);
                    switch ($level) {
                        case  '易':
                            $data['level'] = 0;
                            break;
                        case  '中':
                            $data['level'] = 1;
                            break;
                        case  '难':
                            $data['level'] = 2;
                            break;
                        default:
                            $data['level'] = 0;
                            break;
                    }

                    $data['point'] = iconv('gb2312', 'utf-8', $result[$i][12]);
                    $data_list[] = $data;
                } else {
                    $message .= '第' . $i . '行,课程' . $course_name . "权限不足;<br>";
                }
            } else {
                $message .= '第' . $i . '行，课程' . $course_name . "不存在;<br>";
            }
        }
        if (!empty($message)) {
            $this->error($message);
        } else {
            $flag = M("Question")->addAll($data_list);
            if ($flag) {
                $this->success(L('导入成功'));
            } else {
                $this->error(L('导入失败'));
            }
        }
    }
}
