<?php

class OpinionAction extends CommonAction
{
    public function index()
    {
        $this->display();
    }

    public function add()
    {
        if (!empty($_POST['title']) && !empty($_POST['content'])) {
            $data['title'] = $_POST['title'];
            $data['content'] = $_POST['content'];
            $data['author'] = $_SESSION[C('USER_AUTH_KEY')]['no'] . '-' . $_SESSION[C('USER_AUTH_KEY')]['name'];
            $data['addtime'] = time();

            M("Opinion")->add($data);

            $this->success("提交成功", U("/"));
        } else {
            $this->error("标题和内容不能为空");
        }
    }

}
