<?php

//自定义分类模块Action

class CollegeAction extends CommonAction{

    //定义封装搜索条件的方法
    public function _filter(&$map)
    {
        if (!empty($_REQUEST['name'])) {
            $map['name'] = array("like", "%{$_REQUEST['name']}%");
        }
    }
}
