<?php /* Smarty version Smarty-3.1.6, created on 2016-10-11 22:28:52
         compiled from "./Home/Tpl\Test\index.html" */ ?>
<?php /*%%SmartyHeaderCode:1196557d5176bd6d2f7-79552506%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f51c3a5dedc79fab6fd9e998b23775fa1696a356' => 
    array (
      0 => './Home/Tpl\\Test\\index.html',
      1 => 1476196130,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1196557d5176bd6d2f7-79552506',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d5176c32471',
  'variables' => 
  array (
    'courses' => 0,
    'ty' => 0,
    '_GET' => 0,
    'title' => 0,
    'list' => 0,
    'vo' => 0,
    'showPage' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d5176c32471')) {function content_57d5176c32471($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\Projects\\ERMS_GIT\\ThinkPHP\\Extend\\Vendor\\Smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="sub-header" class="group_h">
    <div class="container">
        <div class="navbar-header col-sm-offset-1" style="width: 16.66666666%;margin: 0;">
            <h1><a href="">自主学习</a></h1>
        </div>
        <div class="col-md-6">
            <ul class="navbar-left">
                <li class="active"><a href="__URL__/index">自主学习</a></li>
                <li><a href="__URL__/myscore">难题回看</a></li>
                <li><a href="__URL__/myscore">错题回看</a></li>
                <li><a href="__URL__/myscore">组卷测试</a></li>
                <li><a href="__URL__/myscore">测试记录</a></li>
            </ul>
        </div>
        <div class="col-md-2">

            <ul class="navbar-left">

                <li>
                    <a href="javascript:;" id="dropdownMenu1" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="true"><i class="icon-list"></i>
                        选择课程</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">

                        <?php  $_smarty_tpl->tpl_vars['ty'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ty']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['courses']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ty']->key => $_smarty_tpl->tpl_vars['ty']->value){
$_smarty_tpl->tpl_vars['ty']->_loop = true;
?>
                        <li><a href="__APP__/Test/index/cid/<?php echo $_smarty_tpl->tpl_vars['ty']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ty']->value['name'];?>
</a></li>
                        <?php } ?>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<?php if (empty($_smarty_tpl->tpl_vars['_GET']->value['cid'])){?>
<div class="container">
    <div class="home_module row">
        <div class="container">
            <!--试题列表块开始-->
            <div class="col-md-12 m_cats">
                <div class="tt">
                    <h3>请先选择一门课程</h3>
                </div>
                <ul class="list_ib">
                    <?php  $_smarty_tpl->tpl_vars['ty'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ty']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['courses']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ty']->key => $_smarty_tpl->tpl_vars['ty']->value){
$_smarty_tpl->tpl_vars['ty']->_loop = true;
?>
                    <li><a href="__APP__/Test/index/cid/<?php echo $_smarty_tpl->tpl_vars['ty']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ty']->value['name'];?>
</a></li>
                    <?php } ?>
                </ul>

            </div>
        </div>
    </div>
</div>
<?php }else{ ?>
<div id="main">
    <div class="container">
        <div class="home_module row">
            <div class="container">
                <!--试题列表块开始-->
                <div class="col-md-12">
                    <div class="m_r_list g_t_list mt5">
                        <div class="c999 m_n_item_info">
                            <span id="alist"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['title']->value)===null||$tmp==='' ? "全部" : $tmp);?>
试题列表</span>
                        </div>
                        <ul class="list_pb20">
                            <?php if ($_smarty_tpl->tpl_vars['list']->value){?>
                            <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                            <li class="testlist">
                                <em><a class="title" href="__APP__/Test/detail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
</a></em>
                                <small style="float:right">添加时间:<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['vo']->value['addtime'],"%Y-%m-%d %H:%M");?>
</small>
                            </li>
                            <?php } ?>
                            <?php }else{ ?>
                            <li style="font-size:15px; color:red">试题列表暂为空~</li>
                            <?php }?>
                        </ul>
                    </div>
                    <div class="tc">
                        <ul class="pagination">
                            <?php echo $_smarty_tpl->tpl_vars['showPage']->value;?>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php }?>
<?php echo $_smarty_tpl->getSubTemplate ("../Public/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

         
<?php }} ?>