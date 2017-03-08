<?php

//自定义分类模块Action

class MajorAction extends CommonAction{

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['name'])) {
            $map['name'] = array("like", "%{$_REQUEST['name']}%");
        }
        $_REQUEST['_order'] = 'name';
    }

    public function _tigger_list(&$list)
    {
        $college = M("College");

        //遍历查询出数据
        foreach ($list as &$v) {
            $cname = $college->field('name')->find($v['cid']);
            $v['collegename'] = $cname['name'];
        }
    }

    public function typeSelect()
    {
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }

        $grade = M('College');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $grade->field('id,name')->order("name")->select();
        //定义存放类别信息的数组
        $colleges[''] = '请选择';
        foreach ($res as $vo) {
            $colleges[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Colleges', $colleges);
        $this->assign('CollegeId', $cid);//设置默认选中的option的下标值id


    }

}
