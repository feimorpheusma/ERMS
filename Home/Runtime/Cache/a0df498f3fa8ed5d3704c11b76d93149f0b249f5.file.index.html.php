<?php /* Smarty version Smarty-3.1.6, created on 2016-10-08 22:53:08
         compiled from "./Home/Tpl\Index\index.html" */ ?>
<?php /*%%SmartyHeaderCode:91557d191bd9f2412-98197292%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a0df498f3fa8ed5d3704c11b76d93149f0b249f5' => 
    array (
      0 => './Home/Tpl\\Index\\index.html',
      1 => 1475938023,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '91557d191bd9f2412-98197292',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d191bf3bcc4',
  'variables' => 
  array (
    'video' => 0,
    'vi' => 0,
    'library' => 0,
    'lib' => 0,
    'notice' => 0,
    'vo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d191bf3bcc4')) {function content_57d191bf3bcc4($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\Projects\\ERMS_GIT\\ThinkPHP\\Extend\\Vendor\\Smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>



<div id="wrapper">


    <div class="home_module m_hot">
        <div class="container">
            <div class="col-md-9">
                <div class="tt">
                    <h3 style="color:#6C6767">最新教育资源</h3>
                    <a href="__APP__/Video/index" class="more">更多 »</a>
                </div>
                <div class="m_cover_list">
                    <ul class="list_ib">

                        <?php  $_smarty_tpl->tpl_vars['vi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['video']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vi']->key => $_smarty_tpl->tpl_vars['vi']->value){
$_smarty_tpl->tpl_vars['vi']->_loop = true;
?>
                        <li style="width:120px;margin-left:11px">
                            <div class="item_cover" style="width:150px">
                                <img alt="<?php echo $_smarty_tpl->tpl_vars['vi']->value['videoname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['vi']->value['videoname'];?>
" style="width:150px;height:140px;"
                                     src="__PUBLIC__/Uploads/videopic/<?php echo $_smarty_tpl->tpl_vars['vi']->value['picname'];?>
">
                                <a class="m_cover_item_info" href="__APP__/Video/play/id/<?php echo $_smarty_tpl->tpl_vars['vi']->value['id'];?>
" title="点击播放"
                                   style="width:150px">
                                    <span class="play-item"><i class="icon-play"></i></span>
                                    <em>点击率 <?php echo $_smarty_tpl->tpl_vars['vi']->value['clicknum'];?>
</em>
                                </a>
                            </div>
                            <span class="title" style="width:150px"><a
                                    href="__APP__/Video/detail/id/<?php echo $_smarty_tpl->tpl_vars['vi']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vi']->value['tid'];?>
"><?php echo $_smarty_tpl->tpl_vars['vi']->value['videoname'];?>
</a></span>
                            <div class="c_rating" style="width:150px">
                                <i><?php echo $_smarty_tpl->tpl_vars['vi']->value['favonum'];?>
人赞</i>
                            </div>
                            <a href="__APP__/Video/detail/id/<?php echo $_smarty_tpl->tpl_vars['vi']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vi']->value['tid'];?>
" style="margin-left:20px"
                               class="btn btn-primary btn-sm">查看详情</a>
                        </li>
                        <?php } ?>

                    </ul>
                </div>
                <div class="tt">
                    <h3 style="color:#6C6767">教学资料</h3>
                    <a href="__APP__/Library/index" class="more">更多 »</a>
                </div>
                <div class="m_r_list index-r-list" id="goodlib">
                    <ul class="list_pt10 list_pb10 list_ov list_b_d_ddd">
                        <?php  $_smarty_tpl->tpl_vars['lib'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['lib']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['library']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['lib']->key => $_smarty_tpl->tpl_vars['lib']->value){
$_smarty_tpl->tpl_vars['lib']->_loop = true;
?>
                        <li>
                            <div class="t_ml_120" style="margin:0 auto">
                                ♥ <a href="__APP__/Library/detail/id/<?php echo $_smarty_tpl->tpl_vars['lib']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['lib']->value['title'];?>
</a>
                                <i style="float:right">下载量：<?php echo $_smarty_tpl->tpl_vars['lib']->value['dwloadnum'];?>
 &nbsp;&nbsp;&nbsp;发布时间
                                    <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['lib']->value['addtime'],"%Y-%m-%d %H:%M:%S");?>
</i>

                            </div>
                        </li>
                        <?php } ?>

                    </ul>
                </div>
            </div>
            <div class="col-md-3">

                <div class="mb30" style="height:550px">
                    <div class="tt">
                        <h3 style="color:#6C6767">最新公告</h3>
                    </div>
                    <!--遍历出公告信息-->
                    <div>
                        <ul id="did" class="hot-activity-list">
                            <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['notice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                            <li id="notice">
                                <a href="__APP__/Notice/datail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
" style="font-size:15px; color:#FE6C6C">☞<?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
</a>
                                <br>
                                <span class="act-time" style="color:#C67676">时间:  <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['vo']->value['addtime'],"%Y-%m-%d %H:%M");?>
</span>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<?php echo $_smarty_tpl->getSubTemplate ('../Public/footer.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>