<?php

//自定义分类模块Action

class CoursePointAction extends CommonAction
{

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        if (empty($_REQUEST['cid'])) {
            $map['cid'] = array("egt", "0");
        }

        if (!empty($_REQUEST['name'])) {
            $map['name'] = array("like", "%{$_REQUEST['name']}%");
        }
    }

    //自定义魔术方法 对当前模块中查询出的数据 做其他关联数据的追加
    public function _tigger_list(&$list)
    {
        $course = M("Course c");

        //遍历查询出数据
        foreach ($list as &$v) {
            $coname = $course->field('name')->find($v['cid']);
            $v['coursename'] = $coname['name'];
        }
    }

    //定义show方法生成分类的数组
    public function typeSelect()
    {
        if ($_REQUEST['cid']) {
            $cid = $_REQUEST['cid'];
        } else {
            $cid = '0';
        }

        $grade = M('Course');
        //查询数据库表中所有类型 order by concat(path,id) 按照类别的层次进行查询
        $res = $grade->field('id,name')->order("name")->select();
        //定义存放类别信息的数组
        $colleges[] = '全部';
        foreach ($res as $vo) {
            $colleges[$vo['id']] = $vo['name'];
        }
        //把所有类别信息的关联数组赋给模板
        $this->assign('Courses', $colleges);
        $this->assign('CourseId', $cid);//设置默认选中的option的下标值id


    }
    
}
