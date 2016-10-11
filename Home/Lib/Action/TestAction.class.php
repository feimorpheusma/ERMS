<?php

class TestAction extends CommonAction
{
    //自定义显示试题列表页的方法
    public function index()
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

    public function question()
    {
        if (!empty($_GET['cid'])) {
            $course = M("course")->find($_GET['cid']);
            $this->assign("course", $course);
        } else {
            $courses = M("Course")->select();
            $this->assign("courses", $courses);
        }

        $where['cid'] = array("eq", $_GET['cid']);
        $where['id'] = array("not in", explode('_', $_GET['qid']));
        $question = M("question")->where($where)->order("rand()")->find();

        $hard_question = M("user_question")->where("uid={$this->uid} and qid={$question['id']} and type=2")->select();
        $wrong_question = M("user_question")->where("uid={$this->uid} and qid={$question['id']} and type=1")->select();

        $this->assign("past_qid", $_GET['qid'] . '_' . $question['id']);
        $this->assign("question", $question);
        $this->assign("hard_question", $hard_question);
        $this->assign("wrong_question", $wrong_question);

        $this->display();
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
    public function detail()
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
}
