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

        $this->display();

    }
}
