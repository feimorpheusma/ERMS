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
            $this->assign("title", "空军勤务学院数学类课程培训考核系统");

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
            $this->courses = $_SESSION[C('USER_AUTH_KEY')]['courses'];
            $this->courseids = $_SESSION[C('USER_AUTH_KEY')]['courseids'];
        }
    }
    
    public function doupload()
    {
        $res = array("err" => "", "msg" => "");//定义一个响应信息
        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->savePath = './Public/Uploads/editor/' . date('Ym', time()) . '/';// 设置附件上传目录
        //执行上传
        if ($upload->upload()) {
            $info = $upload->getUploadFileInfo();
            $res["msg"] = __ROOT__ . "/Public/Uploads/editor/" . date('Ym', time()) . '/' . $info[0]['savename'];  //上传成功！
        } else {
            $res['err'] = $upload->getErrorMsg(); //失败
        }
        echo json_encode($res);
    }

}

?>
