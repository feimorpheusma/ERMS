<?php
class OpinionAction extends CommonAction{
     //定义封装搜索条件的方法
    public function _filter(&$map){
        //判断是否存在搜索条件
        if (!empty($_REQUEST['title'])) {
            $map['title'] = array("like","%{$_REQUEST['title']}%");
        }
    }

    public function insert()
    {
        $model = D($this->getActionName());
        unset ($_POST [$model->getPk()]);

        if (false === $model->create()) {
            $this->error($model->getError());
        }
        $model->author = $_SESSION[C('USER_AUTH_KEY')]['username'];
        //保存当前数据对象
        if ($result = $model->add()) { //保存成功
            // 回调接口
            if (method_exists($this, '_tigger_insert')) {
                $model->id = $result;
                $this->_tigger_insert($model);
            }
            //成功提示
            $this->success(L('意见提交成功'));
        } else {
            //失败提示
            $this->error(L('意见提交失败') . $model->getLastSql());
        }
    }

    public function detail(){
        $model=D("Opinion");
        $where['id'] = array("eq",$_GET['id']);
        $list = $model->where($where)->find();
        $this->assign("list",$list);
        $this->display();
    }
	
}
