<?php

/**
 * 公共Action
 *
 */
class CommonAction extends Action
{
    var $uid = 0;
    var $login_check = true;

    public function _initialize()
    {
        if (ACTION_NAME != 'login' && ACTION_NAME != 'dologin' && ACTION_NAME != 'loginout') {
            $this->assign("title", "在线教育平台");

            //判断用户是否登录
            if (empty($_SESSION[C('USER_AUTH_KEY')])) {
                $this->redirect('/Users/login');
                return;
            }
            $webclicknum = M("Clicknum")->find(1);
            $webclicknum['clicknum']++;//访问量加一
            $webclicknum['clicktime'] = time();
            M("Clicknum")->save($webclicknum);


            $this->uid = $_SESSION[C('USER_AUTH_KEY')]['id'];
        }
    }

}

?>
