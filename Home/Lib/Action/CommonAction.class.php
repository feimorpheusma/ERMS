<?php

/**
 * 公共Action
 *
 */
class CommonAction extends Action
{
    var $uid = 0;

    public function _initialize()
    {
        $this->assign("title", "在线教育平台");

        $webclicknum = M("Clicknum")->find(1);
        $webclicknum['clicknum']++;//访问量加一
        $webclicknum['clicktime'] = time();
        M("Clicknum")->save($webclicknum);


        //判断用户是否登录
        if (empty($_SESSION[C('USER_AUTH_KEY')])) {
            $this->redirect('/Users/login');
            return;
        }
        $this->uid = $_SESSION[C('USER_AUTH_KEY')]['id'];
    }

}

?>
