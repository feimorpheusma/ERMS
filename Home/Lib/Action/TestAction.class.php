<?php

class TestAction extends CommonAction
{
    //自定义显示试题列表页的方法
    public function index1()
    {
        //实例化试题库对象
        $model = M("Test");
        //用于显示在左侧的试题列表
        $this->assign("test", $model->select());
        //导入分页类
        import("ORG.Util.Page");
        //封装试题类型条件
        if (!empty($_GET['pid'])) {
            $type['id'] = array("eq", $_GET['pid']);
            $type['pid'] = array("eq", $_GET['pid']);
            $type['_logic'] = "OR";
            //查询出类型表中符合条件的所有类型的id
            $ty = M("Cat")->field("id")->where($type)->select();
            $tid = array();//存放符合条件的类型的id
            foreach ($ty as $t) {
                $tid[] = $t['id'];
            }
            if (count($tid) > 0) {
                //把符合条件的所有id存进搜索条件中
                $where['tid'] = array("in", $tid);
            }
            //查询下当前类别名
            $typename = M("Cat")->field("name")->find($_GET['pid']);
            $this->assign("title", $typename["name"]);
        }
        //===============
        $count = $model->where($where)->count();//获取总数据条数
        $page = new Page($count, 10);//创建分页对象
        $result = $model->where($where)->limit($page->firstRow . "," . $page->listRows)->select();
        $this->assign("list", $result);
        $this->assign("showPage", $page->show());


        $courses = M("Course")->select();
        $this->assign("courses", $courses);


        $this->display("index");

    }

    public function index()
    {
        $this->assign("courses", $this->courses);
        if (!empty($_GET['cid'])) {

            if (!empty($_GET['cid'])) {
                $course = M("course")->find($_GET['cid']);
                $this->assign("course", $course);
                $this->assign("cid", $_GET['cid']);
                $where['cid'] = array("eq", $_GET['cid']);
            } else {
                $this->assign("cid", 0);
            }
            if (!empty($_GET['qtype'])) {
                $this->assign("qtype", $_GET['qtype']);
                $where['q.type'] = array("eq", $_GET['qtype']);
            } else {
                $this->assign("qtype", 0);
            }
            if (!empty($_GET['point']) && $_GET['point'] != "_") {
                $point = iconv("gb2312", "utf-8", $_GET['point']);
                $where['q.point'] = array("eq", $point);
                $this->assign("point", $point);
            } else {
                $this->assign("point", '_');
            }
            if ($_GET['level'] != '' && $_GET['level'] != '-1') {
                $this->assign("level", $_GET['level']);
                $where['q.level'] = array("eq", $_GET['level']);
            } else {
                $this->assign("level", -1);
            }


            $course = M("course")->find($_GET['cid']);
            $this->assign("course", $course);

            $where['q.id'] = array("not in", explode('_', $_GET['qid']));
            $question = M("question q")->where($where)->order("rand()")->find();

            $where['q.point'] = array("neq", '');
            $points = M("question q")->distinct(true)->field("point")->where($where)->select();//获取总数据条数
            $this->assign("points", $points);

            $hard_question = M("user_question")->where("uid={$this->uid} and qid={$question['id']} and type=2")->select();
            $wrong_question = M("user_question")->where("uid={$this->uid} and qid={$question['id']} and type=1")->select();

            $this->assign("past_qid", $_GET['qid'] . '_' . $question['id']);
            $this->assign("question", $question);
            $this->assign("hard_question", $hard_question);
            $this->assign("wrong_question", $wrong_question);
        } else {
            $courses = $this->courses;
            $this->assign("courses", $courses);
        }

        $this->display();
    }

    public function questions()
    {
        if (!empty($_GET['type']) && ($_GET['type'] == 1 || $_GET['type'] == 2)) {
            $this->assign("courses", $this->courses);
            $where['u.uid'] = array("eq", $this->uid);

            $this->assign("type", $_GET['type']);
            $where['u.type'] = array("eq", $_GET['type']);

            if (!empty($_GET['qtype'])) {
                $this->assign("qtype", $_GET['qtype']);
                $where['q.type'] = array("eq", $_GET['qtype']);
            } else {
                $this->assign("qtype", 0);
            }
            if (!empty($_GET['cid'])) {
                $course = M("course")->find($_GET['cid']);
                $this->assign("course", $course);
                $this->assign("cid", $_GET['cid']);
                $where['cid'] = array("eq", $_GET['cid']);
            } else {
                $this->assign("cid", 0);
            }
            if (!empty($_GET['point'])) {
                $point = iconv("gb2312", "utf-8", $_GET['point']);
                $where['q.point'] = array("eq", $point);
                $this->assign("point", $point);
            }

            import("ORG.Util.Page");
            $count = M("question q")->join('edu_user_question u on q.id = u.qid')->where($where)->count();//获取总数据条数
            $page = new Page($count, 10);//创建分页对象

            $list = M("question q")->field('q.content,q.answer,q.type,q.aA,q.aB,q.aC,q.aD,q.aE,q.aF')->join('edu_user_question u on q.id = u.qid')->where($where)->limit($page->firstRow . "," . $page->listRows)->select();
            $this->assign("list", $list);
            $this->assign("showPage", $page->show());


            $where['q.point'] = array("neq", '');
            $points = M("question q")->distinct(true)->field("point")->join('edu_user_question u on q.id = u.qid')->where($where)->select();//获取总数据条数
            $this->assign("points", $points);

        } else {
            $this->redirect("Test/questions", array('type' => 2));
        }

        $this->display();
    }

    public function result()
    {
        $where['t.sid'] = array("eq", $this->uid);

        import("ORG.Util.Page");
        $count = M("test t")->join('edu_course c on t.cid = c.id')->where($where)->count();//获取总数据条数
        $page = new Page($count, 10);//创建分页对象

        $list = M("test t")->field('t.id,c.name,addtime,endtime,score,status')->join('edu_course c on t.cid = c.id')->where($where)->order('t.id desc')->limit($page->firstRow . "," . $page->listRows)->select();


        $this->assign("list", $list);
        $this->assign("showPage", $page->show());

        $this->display();
    }

    public function save()
    {
        if (!empty($_POST['tqid'])) {
            $total_score = 0;
            $has_subjective = false;

            foreach ($_POST['tqid'] as $tqid) {
                $answer = implode('', $_POST['answer' . $tqid]);
                $question = M('question q')->field("q.type,q.answer,q.score")->join('edu_test_question t on q.id = t.qid')->where("t.id = {$tqid}")->find();
                $score = 0;
                if ($question['type'] == 5 || $question['type'] == 4) {
                    $has_subjective = true;
                    $tq['status'] = 1;
                } else {
                    if ($answer == $question['answer']) {
                        $score = $question['score'];
                    }
                    $tq['status'] = 2;
                }
                $tq['answer'] = $answer;
                $tq['score'] = $score;
                M('test_question')->where("id={$tqid}")->save($tq);

                $total_score += $score;
            }
            $test['endtime'] = time();
            if ($has_subjective) {
                $test['status'] = 1;
            } else {
                $test['status'] = 2;
            }
            $test['score'] = $total_score;

            M('test')->where("id={$_POST['tid']}")->save($test);

            $this->success("提交成功，请在测试记录中查看结果", U("Test/result"));
        }
    }

    public function test()
    {
        if (!empty($_REQUEST['cid'])) {
            $course = M("course")->find($_GET['cid']);
            $this->assign("course", $course);
            if (empty($_REQUEST['single']) && empty($_REQUEST['multiple'])) {
                $points = M("question")->distinct(true)->field('point')->where("cid = {$_GET['cid']} and point is not null")->select();
                $this->assign("points", $points);
                $this->assign("generate", true);

                //$rules = M("test_rule")->select();
                //$this->assign("rules", $rules);
            } else {
                //$rule = M('test_rule')->where("id={$_GET['rid']}")->find();

                if (!empty($_REQUEST['point'])) {
                    foreach ($_REQUEST['point'] as $point) {
                        $points[] = $point;
                    }
                }
                $map['point'] = array('in', $points);

                $test['cid'] = $_REQUEST['cid'];
                $test['sid'] = $this->uid;
                $test['title'] = $course['name'] . '自主测试' . date('y-m-d h:i:s', time());
                $test['addtime'] = time();
                $test['status'] = 0;

                $tid = M("test")->add($test);

                $map['cid'] = array('eq', $_GET['cid']);
                $map['status'] = array('eq', 1);
                if ($_REQUEST['single'] > 0) {
                    unset($questions);
                    $map['type'] = 1;
                    $list = M('question')->field('id')->where($map)->order("rand()")->select();
                    if ($list) {
                        if (sizeof($list) < $_REQUEST['single']) {
                            $questions = array_rand($list, sizeof($list));
                        } elseif ($_REQUEST['single'] == 1) {
                            $questions[0] = 0;
                        } else {
                            $questions = array_rand($list, $_REQUEST['single']);
                        }
                        foreach ($questions as $question) {
                            $tq['tid'] = $tid;
                            $tq['qid'] = $list[$question]['id'];
                            $tq['status'] = 0;
                            $tq['addtime'] = time();
                            $flag = M('test_question')->add($tq);
                        }
                    }
                }
                if ($_REQUEST['multiple'] > 0) {
                    unset($questions);
                    $map['type'] = 2;
                    $list = M('question')->field('id')->where($map)->order("rand()")->select();
                    if ($list) {
                        if (sizeof($list) < $_REQUEST['multiple']) {
                            $questions = array_rand($list, sizeof($list));
                        } elseif ($_REQUEST['multiple'] == 1) {
                            $questions[0] = 0;
                        } else {
                            $questions = array_rand($list, $_REQUEST['multiple']);
                        }
                        foreach ($questions as $question) {
                            $tq['tid'] = $tid;
                            $tq['qid'] = $list[$question]['id'];
                            $tq['status'] = 0;
                            $tq['addtime'] = time();
                            $flag = M('test_question')->add($tq);
                        }
                    }
                }
                if ($_REQUEST['judge'] > 0) {
                    unset($questions);
                    $map['type'] = 3;
                    $list = M('question')->field('id')->where($map)->order("rand()")->select();
                    if ($list) {
                        if (sizeof($list) < $_REQUEST['judge']) {
                            $questions = array_rand($list, sizeof($list));
                        } elseif ($_REQUEST['judge'] == 1) {
                            $questions[0] = 0;
                        } else {
                            $questions = array_rand($list, $_REQUEST['judge']);
                        }
                        foreach ($questions as $question) {
                            $tq['tid'] = $tid;
                            $tq['qid'] = $list[$question]['id'];
                            $tq['status'] = 0;
                            $tq['addtime'] = time();
                            $flag = M('test_question')->add($tq);
                        }
                    }
                }
                if ($_REQUEST['blank'] > 0) {
                    unset($questions);
                    $map['type'] = 4;
                    $list = M('question')->field('id')->where($map)->order("rand()")->select();
                    if ($list) {
                        if (sizeof($list) < $_REQUEST['blank']) {
                            $questions = array_rand($list, sizeof($list));
                        } elseif ($_REQUEST['blank'] == 1) {
                            $questions[0] = 0;
                        } else {
                            $questions = array_rand($list, $_REQUEST['blank']);
                        }
                        foreach ($questions as $question) {
                            $tq['tid'] = $tid;
                            $tq['qid'] = $list[$question]['id'];
                            $tq['status'] = 0;
                            $tq['addtime'] = time();
                            $flag = M('test_question')->add($tq);
                        }
                    }
                }
                if ($_REQUEST['answer'] > 0) {
                    unset($questions);
                    $map['type'] = 5;
                    $list = M('question')->field('id')->where($map)->order("rand()")->select();
                    if ($list) {
                        if (sizeof($list) < $_REQUEST['answer']) {
                            $questions = array_rand($list, sizeof($list));
                        } elseif ($_REQUEST['answer'] == 1) {
                            $questions[0] = 0;
                        } else {
                            $questions = array_rand($list, $_REQUEST['answer']);
                        }
                        foreach ($questions as $question) {
                            $tq['tid'] = $tid;
                            $tq['qid'] = $list[$question]['id'];
                            $tq['status'] = 0;
                            $tq['addtime'] = time();
                            $flag = M('test_question')->add($tq);
                        }
                    }
                }

                $list = M('test_question tq')->field("tq.id as tqid,q.*")->join('edu_question q on tq.qid = q.id')->where("tq.tid={$tid}")->select();

                $this->assign("list", $list);

                $this->assign("tid", $tid);

                /*
                ///////////////////////////////////////
                                $where['cid'] = array("eq", $_GET['cid']);
                                $where['type'] = array("lt", 6);
                                $list = M("question")->where($where)->limit(10)->order("rand()")->select();


                                $test['cid'] = $_GET['cid'];
                                $test['sid'] = $this->uid;
                                $test['title'] = $course['name'] . '自主测试' . date('y-m-d h:i:s', time());
                                $test['addtime'] = time();
                                $test['status'] = 0;

                                $tid = M("test")->add($test);

                                foreach ($list as $key => $vo) {
                                    $tq['tid'] = $tid;
                                    $tq['qid'] = $vo['id'];
                                    $tq['status'] = 0;
                                    $tq['addtime'] = time();
                                    $tqid = M('test_question')->add($tq);
                                    $list[$key]['tqid'] = $tqid;
                                }

                                $this->assign("list", $list);

                                $this->assign("tid", $tid);*/

            }
        } else {
            $courses = $this->courses;
            $this->assign("courses", $courses);
        }

        $this->display();
    }

    public function detail()
    {
        if (!empty($_GET['tid'])) {
            $cid = M("test")->getFieldById($_GET['tid'], "cid");
            $course = M("course")->find($cid);
            $this->assign("course", $course);

            $status = M("test")->getFieldById($_GET['tid'], "status");
            $this->assign("status", $status);

            $where['t.tid'] = array("eq", $_GET['tid']);
            $list = M("test_question t")->field("q.content,q.answer,q.type,q.aA,q.aB,q.aC,q.aD,q.aE,q.aF,q.score,t.answer as tanswer,t.score as tscore")->join("edu_question q on t.qid = q.id")->where($where)->order("type")->select();
            $a = strpos('AB', 'D');
            $this->assign("list", $list);

            $this->display();

        } else {
            $this->redirect("Test/result");
        }

    }

//定义视频被收藏的方法
    public function mark()
    {
        //实例化收藏表对象
        $User_question = M("User_question");

        //封装搜索要添加的数据
        $map['uid'] = $_SESSION[C('USER_AUTH_KEY')]['id'];
        $map['qid'] = $_POST['id'];
        $map['type'] = $_POST['type'];

        //封装搜索条件
        $where['uid'] = array("eq", $_SESSION[C('USER_AUTH_KEY')]['id']);
        $where['qid'] = array("eq", $_POST['id']);
        $where['type'] = array("eq", $_POST['type']);

        //查询该用户是否收藏过这个视频
        $flag = $User_question->where($where)->find();
        if (!$flag) {
            $User_question->add($map);//保存数据
        } else {
            if ($_POST['type'] == 2) {
                $User_question->where($where)->delete();
            }
        }
    }

//自定义显示试题详情的方法
    public function detail1()
    {
        $mod = M("Test");
        $data = $mod->find($_GET['id']);

        //=======
        $this->assign("tid", $data['id']);
        $this->assign("title", $data['title']);

        //实例化试题详情对象
        $model = M("Quest");
        //拼装查询语句 让试题详情表中的tid等于试题表中的id
        $where['tid'] = array("eq", $_GET['id']);
        //执行查询
        $list = $model->where($where)->select();
        //将查询结果赋值给模板
        $this->assign("list", $list);

        $this->display();
    }

//自定义计算考试试卷分数的方法
    public function score()
    {
        $mod = M("Quest");
        $model = M("Score");
        foreach ($_POST['test'] as $k => $vo) {
            $list = $mod->field("answer")->find("$k");
            if ($list['answer'] == $vo) {
                $i++;
            }
        }
        $s = count($_POST['test']);
        $score = $i / $s * 100;

        $_POST['time'] = time();
        $_POST['score'] = $score;
        $model->create();
        $model->add();
        $tid = $_POST['tid'];//获取所答试卷的id
        $this->assign("tid", $tid);
        $this->assign("score", $score);
        $this->display();

    }

//定义显示试题正确答案的方法
    public function answer()
    {
        $model = M("Quest");
        $list = $model->where("tid={$_GET['tid']}")->select();
        $this->assign("list", $list);
        $this->display();
    }

//定义查看分数的方法
    public function myscore()
    {
        $uid = $_SESSION[C("USER_AUTH_KEY")]['id'];
        $model = M("Score");
        //导入分页类
        import("ORG.Util.Page");
        $count = $model->where("uid={$uid}")->count();//获取总数据条数
        $page = new Page($count, 10);//创建分页对象

        $list = $model->where("uid={$uid}")->limit($page->firstRow . "," . $page->listRows)->select();
        foreach ($list as &$v) {
            $ob = M("Test")->find($v['tid']);
            $v['title'] = $ob['title'];
        }
        $this->assign("list", $list);
        $this->assign("showPage", $page->show());
        $this->display();
    }


    public function analysis()
    {
        $this->assign("courses", $this->courses);
        if (!empty($_GET['cid'])) {

            if (!empty($_GET['cid'])) {
                $course = M("course")->find($_GET['cid']);
                $this->assign("course", $course);
                $this->assign("cid", $_GET['cid']);
                $where['q.cid'] = array("eq", $_GET['cid']);
            } else {
                $this->assign("cid", 0);
            }
            if (!empty($_GET['qtype'])) {
                $this->assign("qtype", $_GET['qtype']);
                $where['q.type'] = array("eq", $_GET['qtype']);
            } else {
                $this->assign("qtype", 0);
            }
            if (!empty($_GET['point']) && $_GET['point'] != "_") {
                $point = iconv("gb2312", "utf-8", $_GET['point']);
                $where['q.point'] = array("eq", $point);
                $this->assign("point", $point);
            } else {
                $this->assign("point", '_');
            }
            if ($_GET['level'] != '' && $_GET['level'] != '-1') {
                $this->assign("level", $_GET['level']);
                $where['q.level'] = array("eq", $_GET['level']);
            } else {
                $this->assign("level", -1);
            }


            $course = M("course")->find($_GET['cid']);
            $this->assign("course", $course);


            $where['t.sid'] = array("eq", $this->uid);
            $where['_string'] = 'tq.answer is not null';

            $questions = M("test_question tq")->field("q.*,count(*) as totalcount,SUM(case tq.score when 0 then 0 else 1 end) as correctcount,SUM(case tq.score when 0 then 0 else 1 end)/count(*)  as correctpercent")->join('join edu_test t on tq.tid = t.id join edu_question q  on tq.qid = q.id ')->where($where)->group('q.id')->order('correctpercent')->select();
            $this->assign("list", $questions);

            unset($where['t.sid']);
            unset($where['_string']);
            $where['q.point'] = array("neq", '');
            $points = M("question q")->distinct(true)->field("point")->where($where)->select();//获取总数据条数
            $this->assign("points", $points);

        } else {
            $courses = $this->courses;
            $this->assign("courses", $courses);
        }

        $this->display();
    }
}
