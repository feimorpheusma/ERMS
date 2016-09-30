<?php

//自定义分类模块Action

class ClassAction extends CommonAction
{ 
    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        if (empty($_REQUEST['mid'])) {
            $map['mid'] = array("egt", "0");
        }
        if (empty($_REQUEST['cid']))  {
            $map['cid'] = array("egt", "0");
        }

        if (!empty($_REQUEST['name'])) {
            $map['name'] = array("like", "%{$_REQUEST['name']}%");
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据 做其他关联数据的追加
    public function _tigger_list(&$list)
    {
        //实例化用户表对象
        $major = M("Major");
        $college = M("College");
        $course = M("Course c");

        //遍历查询出数据
        foreach ($list as &$v) {
            $mname = $major->field('name')->find($v['mid']);
            $cname = $college->field('name')->find($v['cid']);
            $coname = $course->join("edu_class_course cc on c.id = cc.coid")->field('name')->where("cc.clid = {$v['id']}")->select();
            foreach ($coname as $c) {
                $v['coursename'] = $v['coursename'] . $c['name'] . '  ';
            }
            $v['majorname'] = $mname['name'];
            $v['collegename'] = $cname['name'];
        }
    }

    //定义show方法生成分类的数组
    public function typeSelect()
    {
        //判断是否有类别id的传值,设置默认选中的选项
        if ($_REQUEST['mid']) {
            $mid = $_REQUEST['mid'];
        } else {
            $mid = '0';
        }
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }

        $major = M('Major');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $major->field('id,name')->order("name")->select();
        //定义存放类别信息的数组
        $majors[] = '全部';
        foreach ($res as $vo) {
            $majors[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Majors', $majors);
        $this->assign('MajorId', $mid);//设置默认选中的option的下标值id

        $grade = M('College');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $grade->field('id,name')->order("name")->select();
        //定义存放类别信息的数组
        $colleges[] = '全部';
        foreach ($res as $vo) {
            $colleges[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Colleges', $colleges);
        $this->assign('CollegeId', $cid);//设置默认选中的option的下标值id


    }


    //浏览当前角色的节点信息
    public function courselist(){
        //1. 获取当前角色信息
        $cid = $_GET['cid'];
        $class = M("Class")->find($cid);
        $this->assign("class",$class);

        //2. 获取所有节点信息
        $list = M("Course")->select();
        $this->assign("list",$list);

        //3. 获取当前角色的节点信息
        $nodelist = M("Class_course")->where("clid={$cid}")->select();
        //对获取的结果进行处理
        $mynode=array();
        foreach($nodelist as $v){
            $mynode[]=$v['coid'];
        }
        $this->assign("mynode",$mynode);

        $this->display("courselist");
    }

    //执行角色信息的保存
    public function savecourse(){
        //获取被操作的角色信息
        $cid = $_POST['cid'];
        //删除当前角色的所有节点信息
        $m = M("Class_course");
        $m->where("clid={$cid}")->delete();

        //将当前选择的节点信息添加上去
        if(!empty($_POST['coid'])){
            foreach($_POST['coid'] as $coid){
                $data['clid']=$cid;
                $data['coid']=$coid;
                $m->add($data);
            }
        }
        $this->success("修改成功！");
    }
}
