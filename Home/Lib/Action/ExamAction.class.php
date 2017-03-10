<?php

class ExamAction extends CommonAction
{
    public function index()
    {
        $where['s.id'] = array("eq", $this->uid);
        $where['e.status'] = array("eq", 1);

        import("ORG.Util.Page");
        $count = M("exam e")->join('edu_class_course c on e.cid = c.coid')->join('edu_student s on c.clid = s.cid')->where($where)->count();//获取总数据条数
        $page = new Page($count, 10);//创建分页对象

        $list = M("exam e")->field('e.id,e.title,co.name,e.starttime,e.endtime,es.status')
            ->join('edu_course co on co.id = e.cid')
            ->join('edu_class_course c on e.cid = c.coid')
            ->join('edu_student s on c.clid = s.cid')
            ->join('edu_exam_student es on es.eid = e.id')
            ->where($where)->order('e.starttime desc')->limit($page->firstRow . "," . $page->listRows)->select();


        $this->assign("list", $list);
        $this->assign("showPage", $page->show());

        $this->display();
    }

    public function exam()
    {
        if (!empty($_GET['eid'])) {
            $exam = M("Exam")->find($_GET['eid']);

            if (!$exam || $exam['status'] != 1) {
                $this->error('未找到此考试');
            } elseif ($exam['starttime'] > time()) {
                $this->error('考试还未开始');
            } elseif ($exam['endtime'] < time()) {
                $this->error('考试已经结束');
            }

            $exam_student = M("exam_student")->where("eid={$exam['id']} and sid={$this->uid}")->find();
            if ($exam_student) {
                if ($exam_student['status'] > 0) {
                    $this->error('您已经提交了考卷，不能重复考试');
                }
                $exam_student_id = $exam_student['id'];
            } else {
                $data['eid'] = $exam['id'];
                $data['sid'] = $this->uid;
                $data['status'] = 0;
                $data['starttime'] = time();
                $exam_student_id = M('exam_student')->add($data);
            }


            $where['e.eid'] = array("eq", $_GET['eid']);

            $list = M("exam_question e")
                ->field('content,type,aA,aB,aC,aD,aE,aF,q.id as qid,e.id as eqid,s.answer')
                ->join('edu_question q on e.qid = q.id')
                ->join("edu_exam_question_student s on e.id = s.eqid and s.sid={$this->uid} and s.esid={$exam_student_id}")
                ->where($where)->order("q.type")->select();

            $this->assign("list", $list);
            $course = M("course")->find($exam['cid']);
            $exam['coursename'] = $course['name'];
            $this->assign("exam", $exam);
            $this->assign("esid", $exam_student_id);
            $this->display();

        } else {
            $this->redirect("Exam/index");
        }

    }

    public function answer()
    {
        //实例化收藏表对象
        $model = M("exam_question_student");

        $where['sid'] = $this->uid;
        $where['eqid'] = $_POST['eqid'];
        $where['esid'] = $_POST['esid'];
        $where['eid'] = $_POST['eid'];
        $where['qid'] = $_POST['qid'];

        $question = M("question")->find($_POST['qid']);

        $flag = $model->where($where)->find();
        if (!$flag) {
            $data['sid'] = $this->uid;
            $data['eqid'] = $_POST['eqid'];
            $data['esid'] = $_POST['esid'];
            $data['qid'] = $_POST['qid'];
            $data['answer'] = $_POST['answer'];
            $data['eid'] = $_POST['eid'];
            $data['addtime'] = time();
            if ($question['type'] != 5 && $question['type'] != 4) {
                $data['status'] = 2;
                if ($question['answer'] == $_POST['answer']) {
                    $data['score'] = $_POST['question_score'];
                } else {
                    $data['score'] = 0;
                }
            } else {
                $data['status'] = 1;
            }

            $model->add($data);
        } else {
            $data['answer'] = $_POST['answer'];
            $data['addtime'] = time();
            if ($question['type'] != 5 && $question['type'] != 4) {
                $data['status'] = 2;
                if ($question['answer'] == $_POST['answer']) {
                    $data['score'] = $_POST['question_score'];
                } else {
                    $data['score'] = 0;
                }
            } else {
                $data['status'] = 1;
            }
            $model->where($where)->save($data);

        }
    }

    public function save()
    {
        if (!empty($_POST['esid'])) {
            $esid = $_POST['esid'];

            $has_subjective = M('exam_question_student e')->join('edu_question q on q.id = e.qid')->where("esid={$esid} and q.type=5 and e.answer<>''")->find();
            if ($has_subjective) {
                $test['status'] = 1;
            } else {
                $test['status'] = 2;
            }
            $test['endtime'] = time();
            $test['score'] = M('exam_question_student')->where("esid={$esid}")->sum("score");

            M('exam_student')->where("id={$esid}")->save($test);

            $this->success("提交成功，请在考试记录中查看结果", U("Exam/index"));
        }
    }

    public function detail()
    {
        if (!empty($_GET['eid'])) {

            $exam = M("Exam")->find($_GET['eid']);

            if (!$exam || $exam['status'] != 1) {
                $this->error('未找到此考试');
            } elseif ($exam['endtime'] > time()) {
                //$this->error('考试还未结束，不能查看考试结果');
            }
            $exam_student = M('exam_student')->where("eid = {$_GET['eid']} and sid={$this->uid}")->find();
            if (!$exam_student) {
                $this->error('您未参加此考试，不能查看考试结果');
            }
            $where['e.eid'] = array("eq", $_GET['eid']);

            $list = M("exam_question e")
                ->field('content,type,aA,aB,aC,aD,aE,aF,q.id as qid,e.id as eqid,q.answer as correctanswer,s.answer,s.score,s.status')
                ->join('edu_question q on e.qid = q.id')
                ->join("edu_exam_question_student s on e.id = s.eqid and s.sid={$this->uid}")
                ->where($where)->order("q.type")->select();

            $this->assign("list", $list);
            $course = M("course")->find($exam['cid']);
            $exam['coursename'] = $course['name'];
            $this->assign("exam", $exam);
            $this->assign("exam_student", $exam_student);

            $this->display();

        } else {
            $this->redirect("Exam/index");
        }

    }

}
