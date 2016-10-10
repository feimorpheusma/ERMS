<?php /* Smarty version Smarty-3.1.6, created on 2016-10-10 10:53:33
         compiled from "./Home/Tpl\Index\index.html" */ ?>
<?php /*%%SmartyHeaderCode:91557d191bd9f2412-98197292%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a0df498f3fa8ed5d3704c11b76d93149f0b249f5' => 
    array (
      0 => './Home/Tpl\\Index\\index.html',
      1 => 1476067996,
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
    'notice' => 0,
    'vo' => 0,
    'documents' => 0,
    'videos' => 0,
    'vi' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d191bf3bcc4')) {function content_57d191bf3bcc4($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:\\Projects\\ERMS\\ThinkPHP\\Extend\\Vendor\\Smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>



<div id="wrapper">
    <div class="home_module m_hot">
        <div class="container">

            <div class="col-md-4">

                <div class="mb30" style="height:550px">
                    <div class="tt">
                        <h3 style="color:#6C6767">最新公告</h3>
                    </div>
                    <!--遍历出公告信息-->
                    <div>
                        <ul class="hot-activity-list">
                            <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['notice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                            <li>
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


            <div class="col-md-4">

                <div class="mb30" style="height:550px">
                    <div class="tt">
                        <h3 style="color:#6C6767">最新教学资料</h3>
                        <a href="__APP__/Video/index" class="more">更多 »</a>
                    </div>
                    <!--遍历出公告信息-->
                    <div>
                        <ul id="did" class="hot-activity-list">
                            <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['documents']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                            <li id="notice">
                                <a href="__APP__/Library/datail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
" style="font-size:15px; color:#FE6C6C">♥
                                    <?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
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
            <div class="col-md-4">
                <div class="tt">
                    <h3 style="color:#6C6767">最新教学视频</h3>
                    <a href="__APP__/Video/index" class="more">更多 »</a>
                </div>
                <div class="m_cover_list">
                    <ul class="list_ib">

                        <?php  $_smarty_tpl->tpl_vars['vi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['videos']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vi']->key => $_smarty_tpl->tpl_vars['vi']->value){
$_smarty_tpl->tpl_vars['vi']->_loop = true;
?>
                        <li style="width:50%;padding: 0;">

                            <div class="item_cover"style="width:100%;margin-left: 10px;">
                                <div style="width:100%; height: 150px; background-color: #ccc;color: #fff;font-size: 30px; line-height: 60px; padding-top: 10px; font-weight: bold;font-family: Microsoft YaHei; overflow:hidden; ">
                                    <?php echo $_smarty_tpl->tpl_vars['vi']->value['title'];?>

                                </div>
                                <a class="m_cover_item_info" href="__APP__/Video/play/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
" title="点击播放"
                                   style="width:100%">
                                    <span class="play-item"><i class="icon-play"></i></span>
                                    <em>点击播放</em>
                                </a>
                            </div>
                            <div class="title"
                                 style="font-size:12px;overflow:hidden; text-overflow:ellipsis;  line-height: 30px;display:block;white-space:nowrap; ">
                                <a href="__APP__/Video/play/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vo']->value['tid'];?>
"><?php echo $_smarty_tpl->tpl_vars['vi']->value['title'];?>
</a>
                            </div>
                            <!--<div class="item_cover" style="width:100%">
                                <img alt="<?php echo $_smarty_tpl->tpl_vars['vi']->value['videoname'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['vi']->value['videoname'];?>
" style="width:100%;"
                                     src="__PUBLIC__/Uploads/videopic/<?php echo $_smarty_tpl->tpl_vars['vi']->value['picname'];?>
">
                                <a class="m_cover_item_info" href="__APP__/Video/play/id/<?php echo $_smarty_tpl->tpl_vars['vi']->value['id'];?>
" title="点击播放"
                                   style="width:100%">
                                    <span class="play-item"><i class="icon-play"></i></span>
                                    <em>点击播放</em>
                                </a>
                            </div>
                            <span class="title" style="width:150px">
                                <a
                                        href="__APP__/Video/detail/id/<?php echo $_smarty_tpl->tpl_vars['vi']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vi']->value['tid'];?>
"><?php echo $_smarty_tpl->tpl_vars['vi']->value['title'];?>
</a></span>-->

                        </li>
                        <?php } ?>

                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
<?php echo $_smarty_tpl->getSubTemplate ('../Public/footer.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>