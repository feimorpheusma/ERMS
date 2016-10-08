<?php

// 首页导入Action类
class IndexAction extends CommonAction
{
    public function index()
    {
        $notice = D("Notice");
        $this->assign("notice", $notice->order("addtime desc")->limit("6")->select());


        $videos = M("Library")->where("type=0")->order("addtime desc")->limit(5)->select();

        $this->assign("videos", $videos);
        $documents = M("Library")->where("type=1")->order("addtime desc")->limit(5)->select();

        $this->assign("documents", $documents);

        $this->display();

    }
}
