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
        $courses[''] = '请选择';
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

        if (empty($model->cid)) {
            $this->error(L("请选择一个课程！"));
        }
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

        $list = M("question q")->field("ifnull(e.qid,0) as eqid,q.id as qid,content,aA,aB,aC,aD,aE,aF,q.answer,q.score,q.type,q.point,q.level")->join("edu_exam_question e on e.qid=q.id and e.eid={$_GET['id']}")->where("q.cid={$cid} and q.status=1")->order("q.type")->select();
        $this->assign("list", $list);
        //$this->assign("remain_list", $remain_list);
        $vo['id'] = $_GET['id'];
        $this->assign("vo", $vo);
        $this->assign("exam", $model);
        $this->display();
    }

    public function auto()
    {
        $model = M("Exam")->find($_GET['id']);
        $vo['id'] = $model['id'];
        $vo['cid'] = $model['cid'];
        $vo['title'] = $model['title'];
        $course = M('course')->find($model['cid']);
        $model['coursename'] = $course['name'];
        $this->assign("vo", $model);

        $list = M('question')->distinct(true)->field('point')->where("cid={$model['cid']} and point is not null")->select();
        $this->assign("list", $list);

        $this->display();
    }

    public function generate()
    {
        $vo['id'] = $_POST['id'];
        $vo['cid'] = $_POST['cid'];
        $vo['score'] = $_POST['score'];
        $vo['single_1'] = $_POST['single_1'];
        $vo['multiple_1'] = $_POST['multiple_1'];
        $vo['judge_1'] = $_POST['judge_1'];
        $vo['blank_1'] = $_POST['blank_1'];
        $vo['answer_1'] = $_POST['answer_1'];
        $vo['single_2'] = $_POST['single_2'];
        $vo['multiple_2'] = $_POST['multiple_2'];
        $vo['judge_2'] = $_POST['judge_2'];
        $vo['blank_2'] = $_POST['blank_2'];
        $vo['answer_2'] = $_POST['answer_2'];
        $vo['single_0'] = $_POST['single_0'];
        $vo['multiple_0'] = $_POST['multiple_0'];
        $vo['judge_0'] = $_POST['judge_0'];
        $vo['blank_0'] = $_POST['blank_0'];
        $vo['answer_0'] = $_POST['answer_0'];

        if (!empty($_POST['point'])) {
            foreach ($_POST['point'] as $point) {
                $points[] = $point;
            }
        }

        M("exam_question")->where("eid={$vo['id']}")->delete();

        $map['cid'] = array('eq', $vo['cid']);
        $map['status'] = array('eq', 1);
        $map['point'] = array('in', $points);

        $map['type'] = 1;
        $map['level'] = 0;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['single_0']) {
            $vo['single_0'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['single_0']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 1;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['single_1']) {
            $vo['single_1'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['single_1']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 2;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['single_2']) {
            $vo['single_2'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['single_2']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }


        $map['type'] = 2;
        $map['level'] = 0;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['multiple_0']) {
            $vo['multiple_0'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['multiple_0']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 1;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['multiple_1']) {
            $vo['multiple_1'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['multiple_1']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 2;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['multiple_2']) {
            $vo['multiple_2'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['multiple_2']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }

        $map['type'] = 3;
        $map['level'] = 0;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['judge_0']) {
            $vo['judge_0'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['judge_0']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 1;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['judge_1']) {
            $vo['judge_1'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['judge_1']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 2;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['judge_2']) {
            $vo['judge_2'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['judge_2']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }

        $map['type'] = 4;
        $map['level'] = 0;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['blank_0']) {
            $vo['blank_0'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['blank_0']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 1;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['blank_1']) {
            $vo['blank_1'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['blank_1']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 2;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['blank_2']) {
            $vo['blank_2'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['blank_2']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }

        $map['type'] = 5;
        $map['level'] = 0;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['answer_0']) {
            $vo['answer_0'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['answer_0']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 1;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['answer_1']) {
            $vo['answer_1'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['answer_1']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }
        $map['level'] = 2;
        $list = M('question')->field('id')->where($map)->select();

        if ($list && sizeof($list) < $vo['answer_2']) {
            $vo['answer_2'] = sizeof($list);
        }
        $questions = array_rand($list, $vo['answer_2']);
        if ($list) {
            if (is_array($questions)) {
                foreach ($questions as $question) {
                    $data['qid'] = $list[$question]['id'];
                    $data['eid'] = $vo['id'];
                    M("exam_question")->add($data);
                }
            } else {
                $data['qid'] = $list[0]['id'];
                $data['eid'] = $vo['id'];
                M("exam_question")->add($data);
            }
        }


        $this->success(L('生成成功,请在“考试选题”中进行确认修改！'));
    }


    public function view()
    {
        $vo = M("Exam")->find($_GET['id']);

        $list = M("exam_question e")->field("ifnull(e.qid,0) as eqid,q.id as qid,content,aA,aB,aC,aD,aE,aF,q.answer,q.score,q.type,q.point")->join("edu_question q on e.qid=q.id")->where("e.eid={$_GET['id']}")->order("q.type")->select();

        $this->assign("list", $list);
        $this->assign("vo", $vo);
        $this->display();
    }
}
