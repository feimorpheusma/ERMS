<?php

class TestAction extends CommonAction
{

    //调用回调函数执行搜索
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['title'])) {
            $map['title'] = array("like", "%{$_REQUEST['title']}%");
        }

        if (empty($_REQUEST['cid'])) {
            $map['cid'] = array("egt", "0");
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据做其他数据的追加
    public function _tigger_list(&$list)
    {

        $student = M("Student");
        $course = M("Course");
        //遍历之前查询出的数据
        foreach ($list as &$v) {
            $stu = $student->field("name")->find($v['sid']);
            $v['studentname'] = $stu['name'];
            $cour = $course->field("name")->find($v['uid']);
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


    //重载父类中添加的方法
    public function add()
    {
        //调用CatAction类中显示类别下拉菜单的方法
        R("Cat/typeSelect");
        $this->display();
    }

    //重载父类中编辑的方法
    public function score()
    {
        $questions = M("test_question t")->field("t.id,q.content,t.answer")->join("edu_question q on t.qid = q.id")->where("q.type=5 and t.tid={$_GET['tid']} and t.status=0")->select();
        if ($questions) {
            $this->assign("list", $questions);
            $this->display();
        } else {
            $this->error("该自测没有客观题或已经打分完毕！");
        }
    }

    //执行试题的添加
    public function savescore()
    {
        //删除当前角色的所有节点信息
        $m = M("Test_question");

        //将当前选择的节点信息添加上去
        if (!empty($_POST['id'])) {
            for ($i = 0; $i < sizeof($_POST['id']); $i++) {
                $data["score"] = $_POST['score'][$i];
                $data["status"] = 1;

                $m->where("id = {$_POST['id'][$i]}")->save($data);
            }
        }
        $this->success("修改成功！");
    }

    //重载父类中编辑的方法
    public function edit()
    {
        //查询需要编辑的信息
        $model = M("Test");
        //调用CatAction类中显示类别下拉菜单的方法
        R("Cat/typeSelect");
        $this->assign("vo", $model->find($_GET['id']));
        $this->display();
    }

    //显示添加试题的页面
    public function addquest()
    {
        $this->assign("tid", $_GET['tid']);
        $this->display();
    }

    //执行试题的添加
    public function insertquest()
    {
        $model = D("Quest");
        $list = $model->create();
        //dump($list);exit;

        //遍历数组循环添加数据
        $id = array();//定义存放添加数据id的数组
        $data = array();//定义存放添加数据的数组

        $data['tid'] = $list['tid'];//将试卷的id放进数组中
        $data['addtime'] = $list['addtime'];//将添加时间放进数组

        $m = 0;//用于计算添加数据的条数
        foreach ($list['aA'] as $k => $val) {
            //将遍历出的数据添加进数组
            $data['aA'] = $val;
            $data['aB'] = $list['aB'][$k];
            $data['aC'] = $list['aC'][$k];
            $data['aD'] = $list['aD'][$k];
            $data['content'] = $list['content'][$k];
            $data['quescore'] = $list['quescore'][$k];
            $data['answer'] = $list['answer'][$k];
            //执行数据添加 将返回的添加数据id号存进数组$id中
            $id[] = $model->add($data);
            $m++;
        }
        //通过判断数组id元素个数和变量$m的相等关系
        if (count($id) == $m) {
            $this->success(L("成功添加{$m}道题！"));
        } else {
            $this->error(L("添加失败"));
        }
    }

    public function detail()
    {
        $model = D("Quest");
        $where['tid'] = array("eq", $_GET['id']);
        $list = $model->where($where)->select();
        $this->assign("list", $list);
        $this->display();
    }

}
