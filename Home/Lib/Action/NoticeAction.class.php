<?php
class NoticeAction extends Action{
	public function index(){
        $mod = D("Notice");
		$this->assign("notice",$mod->limit("8")->select());
		$this->display("Index/index");
    }

    public function detail(){
        $model=D("Notice");

        $this->assign("list",$model->order("addtime desc")->limit("10")->select());

        $this->assign("vo",$model->find($_GET['id']));

        $this->display();


    }

}
