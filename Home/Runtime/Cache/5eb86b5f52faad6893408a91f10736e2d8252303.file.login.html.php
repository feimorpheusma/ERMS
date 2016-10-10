<?php /* Smarty version Smarty-3.1.6, created on 2016-10-09 14:17:06
         compiled from "./Home/Tpl\Users\login.html" */ ?>
<?php /*%%SmartyHeaderCode:939457d51767876af9-63950255%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5eb86b5f52faad6893408a91f10736e2d8252303' => 
    array (
      0 => './Home/Tpl\\Users\\login.html',
      1 => 1475983150,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '939457d51767876af9-63950255',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d51767de94c',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d51767de94c')) {function content_57d51767de94c($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<div id="main" class="u_s_page">
    <div class="container">

        <div class="col-md-5 col-md-offset-3">
            <div class="simple_page_inner bg_fff">

                <form id="login_form" class="form-horizontal" action="__APP__/Users/dologin" method="post"
                      onsubmit="return doCheck();">
                    <input id="csrf_token" name="csrf_token" type="hidden" value="None">
                    <legend class="tc f30 mb20">学生登录</legend>
                    <div class="form-item">
                        <label class="control-label" for="email">学号</label>
                        <div class="form-item-in">
                            <input class="form-control input-lg" id="email" name="email" size="30" type="text"
                                   placeholder="请输入学号"
                                   nullmsg="请输入学号" value="">
                            <span id="tishi1" class="Validform_checktip"></span>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="control-label" for="pass">密码</label>
                        <div class="form-item-in">
                            <input class="form-control input-lg" id="pass" name="password" size="30" type="password"
                                   placeholder="请输入密码" datatype="*6-16" errormsg="密码范围在6~16位之间" nullmsg="请输入密码"
                                   value="">
                            <span id="tishi2" class="Validform_checktip"></span>
                        </div>
                    </div>

                    <div class="form-item">
                        <input type="submit" id="sub" class="btn btn-block btn-lg btn-success" value="登 录">
                    </div>
                </form>

            </div>
        </div>


        <script type="text/javascript">
            //验证密码方法
            function doCheck() {
                var name = $("#email").val();
                var pass = $("#pass").val();


                if (name.length == 0 || name.trim() == '') {

                    $("#email").css("background", "#e76e66");
                    $("#tishi1").text("请输入学号！");
                    $("#tishi1").css("color", "#e76e66");
                    return false;
                }

                if (pass.length == 0 || pass.trim() == '') {

                    $("#pass").css("background", "#e76e66");
                    $("#tishi2").text("请输入密码！");
                    $("#tishi2").css("color", "#e76e66");
                    return false;
                }
                return true;
            }
        </script>


    </div>
</div>

<?php echo $_smarty_tpl->getSubTemplate ('../Public/footer.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>



<?php }} ?>