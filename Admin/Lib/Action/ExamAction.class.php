<?php

class ExamAction extends CommonAction
{

    //调用回调函数执行搜索
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['title'])) {
            $map['title'] = array("like", "%{$_REQUEST['title']}%");
        }
        
        if (empty($_REQUEST['cid'])) {
            $map['cid'] = array('in', $_SESSION[C('USER_AUTH_KEY')]["courselist"]);
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据做其他数据的追加
    public function _tigger_list(&$list)
    {

        $student = M("Users");
        $course = M("Course");
        //遍历之前查询出的数据
        foreach ($list as &$v) {
            $stu = $student->field("name")->find($v['uid']);
            $v['username'] = $stu['name'];
            $cour = $course->field("name")->find($v['cid']);
            $v['coursename'] = $cour['name'];
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
        $courses[] = '全部';
        foreach ($res as $vo) {
            $courses[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Courses', $courses);
        $this->assign('CourseId', $cid);//设置默认选中的option的下标值id


    }


    //重载父类中的insert方法
    public function insert()
    {

        //实例化表对象
        $model = M("Exam");
        $model->create();

        $model->starttime = strtotime($model->starttime);
        $model->endtime = strtotime($model->endtime);
        $model->uid = $_SESSION[C("USER_AUTH_KEY")]['id'];//取得上传者的id

        if ($model->add()) {
            $this->success(L("新增成功"));
        } else {
            $this->error(L("新增失败") . $model->getLastSql());
        }
    }

    public function edit()
    {
        $model = D($this->getActionName());
        $id = $_REQUEST[$model->getPk()];
        $vo = $model->find($id);

        //调用子类typeSelect方法，获取下拉列表
        if (method_exists($this, 'typeSelect')) {
            $this->typeSelect();
        }
        $vo['starttime'] = date('Y-m-d H:i:s', $vo['starttime']);
        $vo['endtime'] = date('Y-m-d H:i:s', $vo['endtime']);
        $this->assign('vo', $vo);
        $this->display('edit');
    }

    public function update()
    {
        $model = D($this->getActionName());

        if (false === $model->create()) {
            $this->error($model->getError());
        }

        $model->starttime = strtotime($model->starttime);
        $model->endtime = strtotime($model->endtime);

        // 更新数据
        if (false !== $model->save()) {
            // 回调接口
            if (method_exists($this, '_tigger_update')) {
                $this->_tigger_update($model);
            }
            //成功提示
            $this->success(L('更新成功'));
        } else {
            //错误提示
            $this->error(L('更新失败'));
        }
    }


    public function operatequestion()
    {
        $qid = $_POST['qid'];
        $eid = $_POST['eid'];
        $operate = $_POST['operate'];

        if ($operate == 0) {
            M("exam_question")->where("qid={$qid} and eid={$eid}")->delete();
        } else {
            if (sizeof(M("exam_question")->where("qid={$qid} and eid={$eid}")->select()) == 0) {
                $data['qid'] = $qid;
                $data['eid'] = $eid;
                M("exam_question")->add($data);
            }
        }
    }


    public function detail()
    {
        $model = M("Exam")->find($_GET['id']);
        $cid = $model["cid"];

        //$remain_list = M("question")->where("cid={$cid} and id not in (select qid from edu_exam_question where eid={$_GET['id']})")->select();

        $list = M("question q")->field("ifnull(e.qid,0) as eqid,q.id as qid,content,aA,aB,aC,aD,q.answer,q.score,q.type")->join("edu_exam_question e on e.qid=q.id and e.eid={$_GET['id']}")->where("q.cid={$cid}")->order("q.type")->select();
        $this->assign("list", $list);
        //$this->assign("remain_list", $remain_list);
        $vo['id'] = $_GET['id'];
        $this->assign("vo", $vo);
        $this->display();
    }

}
