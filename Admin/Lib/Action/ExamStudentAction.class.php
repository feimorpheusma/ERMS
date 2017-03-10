<?php

class ExamStudentAction extends CommonAction
{

    //调用回调函数执行搜索
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['eid'])) {
            $map['eid'] = array("eq", $_REQUEST['eid']);
        }

        if (empty($_REQUEST['cid'])) {
            //$map['cid'] = array('in', $_SESSION[C('USER_AUTH_KEY')]["courselist"]);
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据做其他数据的追加
    public function _tigger_list(&$list)
    {
        $student = M("Student");
        $exam = M("Exam");
        $course = M("Course");
        //遍历之前查询出的数据
        foreach ($list as &$v) {
            $stu = $student->field("name,no")->find($v['sid']);
            $v['studentname'] = $stu['name'];
            $v['studentno'] = $stu['no'];
            $exa = $exam->field("title")->find($v['eid']);
            $v['title'] = $exa['title'];
            $cour = $course->field("name")->find($exa['cid']);
            $v['coursename'] = $cour['name'];
        }
    }

    public function _tigger_delete($id)
    {
        $condition['esid'] = array('in', explode(',', $id));
        M('exam_question_student')->where($condition)->delete();
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


    public function detail()
    {
        $vo = M("exam_student t")->field("e.title,s.name as studentname,s.no as studentno,c.name as coursename,t.starttime,t.endtime")->join("edu_student s on t.sid=s.id")->join("edu_exam e on t.eid=e.id")->join("edu_course c on e.cid=c.id")->where("t.id={$_GET['id']}")->find();
        $list = M("exam_question_student t")->field("content,aA,aB,aC,aD,aE,aF,q.answer,t.answer as studentanswer,t.score as studentscore,q.type")->join("edu_question q on t.qid=q.id")->where("t.esid={$_GET['id']}")->select();
        $this->assign("list", $list);
        $this->assign("vo", $vo);
        $this->display();
    }


    //重载父类中编辑的方法
    public function score()
    {
        $questions = M("exam_question_student t")->field("t.id,t.eid,q.content,t.answer as sanswer,q.score,q.answer,q.type")->join("edu_question q on t.qid = q.id")->where("q.type in (4,5) and t.esid={$_GET['id']} and t.status=1")->select();
        if ($questions) {
            $this->assign("list", $questions);
            $this->assign("esid", $_GET['id']);

            $eid = $questions[0]['eid'];
            $model = M("Exam")->find($eid);
            $this->assign("exam", $model);
            $this->display();
        } else {
            $this->error("该考试没有主观题或已经打分完毕！");
        }
    }

    //执行试题的添加
    public function savescore()
    {
        //删除当前角色的所有节点信息
        $m = M("exam_question_student");

        //将当前选择的节点信息添加上去
        if (!empty($_POST['id'])) {

            for ($i = 0; $i < sizeof($_POST['id']); $i++) {
                $data["score"] = $_POST['score' . $_POST['id'][$i]];
                $data["status"] = 2;
                $m->where("id = {$_POST['id'][$i]}")->save($data);

            }
            $esid = $_POST['esid'];

            $model['score'] = M('exam_question_student')->where("esid={$esid}")->sum('score');
            $model['status'] = 2;
            M('exam_student')->where("id={$esid}")->save($model);
        }
        $this->success("打分成功！");
    }
}
