<?php

// 首页导入Action类
class IndexAction extends CommonAction
{
    public function index()
    {
        $notice = D("Notice");
        $this->assign("notice", $notice->order("addtime desc")->limit(6)->select());

        $where['cid'] = array("in", $this->courseids);
        $where['type'] = array("eq", 2);
        $where['status'] = array("eq", 1);
        $videos = M("Library")->where($where)->order("addtime desc")->limit(4)->select();
        $this->assign("videos", $videos);

        $where['type'] = array("eq", 1);
        $documents = M("Library")->where($where)->order("addtime desc")->limit(6)->select();
        $this->assign("documents", $documents);

        $where = array();
        $time = 24 * 60 * 60 * 7 + time();
        $where['s.id'] = array("eq", $this->uid);
        $where['e.status'] = array("eq", 1);
        $where['e.starttime'] = array("lt", $time);
        $where['e.endtime'] = array("gt", time());
        $list = M("exam e")->field('e.title,e.starttime')
            ->join('edu_class_course c on e.cid = c.coid')
            ->join('edu_student s on c.clid = s.cid')
            ->where($where)->order('e.starttime desc')->select();
        $this->assign("exam", $list);

        $this->display();
    }
}
