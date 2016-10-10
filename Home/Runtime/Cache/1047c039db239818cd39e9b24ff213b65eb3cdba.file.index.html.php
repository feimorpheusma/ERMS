<?php /* Smarty version Smarty-3.1.6, created on 2016-10-10 23:26:16
         compiled from "./Home/Tpl\Library\index.html" */ ?>
<?php /*%%SmartyHeaderCode:1678257d51740baa250-92901918%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1047c039db239818cd39e9b24ff213b65eb3cdba' => 
    array (
      0 => './Home/Tpl\\Library\\index.html',
      1 => 1476113174,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1678257d51740baa250-92901918',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d517411e251',
  'variables' => 
  array (
    'type' => 0,
    'title' => 0,
    'list' => 0,
    'vo' => 0,
    'showPage' => 0,
    'courses' => 0,
    'ty' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d517411e251')) {function content_57d517411e251($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:\\Projects\\ERMS_GIT\\ThinkPHP\\Extend\\Vendor\\Smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="sub-header" class="group_h">
    <div class="container">
        <div class="navbar-header" style="width: 16.66666666%;margin: 0;">
            <?php if ($_smarty_tpl->tpl_vars['type']->value==1){?>
            <h1><a href="__URL__/index/type/1">教学资料</a></h1>
            <?php }else{ ?>
            <h1><a href="__URL__/index/">教学视频</a></h1>
            <?php }?>
        </div>
        <div class="col-md-6">
        </div>
        <div class="col-md-2">
            <ul class="navbar-left">

                <li>

                    <?php if ($_smarty_tpl->tpl_vars['type']->value==1){?>
                    <a href="__URL__/index/type/1/collect/<?php echo $_SESSION['user']['id'];?>
"><i class="icon-list"></i>
                        我的收藏</a>
                    <?php }else{ ?>
                    <a href="__URL__/index/collect/<?php echo $_SESSION['user']['id'];?>
"><i class="icon-list"></i> 我的收藏</a>
                    <?php }?>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="main">
    <div class="container">
        <div class="home_module row">
            <div class="container">
                <?php if ($_smarty_tpl->tpl_vars['type']->value==1){?>
                <div class="col-md-8">

                    <div class="m_r_list g_t_list mt5">
                        <!--<div class="tt"><h3><?php echo (($tmp = @$_smarty_tpl->tpl_vars['title']->value)===null||$tmp==='' ? "资源总览" : $tmp);?>
</h3></div>-->

                        <ul class="list_pb20">
                            <?php if ($_smarty_tpl->tpl_vars['list']->value){?>
                            <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                            <li>
                                <div>
                                    <h4><a href="__URL__/detail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
</a></h4>
                                    <p>
                                        <span style="float:right;">课程:<?php echo $_smarty_tpl->tpl_vars['vo']->value['coursename'];?>
 &nbsp;&nbsp;发布时间:
                                            <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['vo']->value['addtime'],"%Y-%m-%d
                                            %H:%M:%S");?>
</span>

                                    </p>
                                </div>
                            </li>
                            <?php } ?>
                            <?php }else{ ?>
                            <div class="null">教学资源暂无</div>
                            <?php }?>
                        </ul>
                        <div class="tc">
                            <ul class="pagination">
                                <?php echo $_smarty_tpl->tpl_vars['showPage']->value;?>

                            </ul>
                        </div>
                    </div>
                </div>
                <?php }else{ ?>
                <div class="col-md-8 oh">
                    <ul class="content_list" style="margin-left:6%">
                        <?php if ($_smarty_tpl->tpl_vars['list']->value){?>
                        <?php  $_smarty_tpl->tpl_vars['vo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vo']->key => $_smarty_tpl->tpl_vars['vo']->value){
$_smarty_tpl->tpl_vars['vo']->_loop = true;
?>
                        <li style="width:160px;margin-left:1px">
                            <div class="item_cover" style="width:150px">
                                <div style="width: 150px ;height:150px; background-color: #ccc;color: #fff;font-size: 30px; line-height: 60px; padding-top: 10px; font-weight: bold;font-family: Microsoft YaHei; overflow:hidden; ">
                                    <?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>

                                </div>
                                <a class="m_cover_item_info" href="__URL__/detail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
" title="点击播放"
                                   style="width:150px">
                                    <span class="play-item"><i class="icon-play"></i></span>
                                    <em>点击播放</em>
                                </a>
                            </div>
                            <div class="title"
                                 style="font-size:12px;overflow:hidden; text-overflow:ellipsis; height: 30px; line-height: 30px;display:block;white-space:nowrap; ">
                                <a href="__URL__/detail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vo']->value['tid'];?>
"><?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
</a>
                            </div>

                            <a href="__URL__/detail/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
/tid/<?php echo $_smarty_tpl->tpl_vars['vo']->value['tid'];?>
"
                               class="btn btn-primary btn-sm">查看详情</a>
                        </li>
                        <?php } ?>
                        <?php }else{ ?>
                        <div class="null">暂时没有视频</div>
                        <?php }?>
                    </ul>
                    <br>
                    <div class="" align="center"><?php echo $_smarty_tpl->tpl_vars['showPage']->value;?>
</div>
                </div>
                <?php }?>

                <!-- 右侧 -->
                <div class="col-md-4">
                    <div class="mb30 m_cats" style="width:200px">
                        <div class="tt">
                            <h3>我的课程</h3>
                        </div>
                        <ul class="list_ib">
                            <?php  $_smarty_tpl->tpl_vars['ty'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ty']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['courses']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ty']->key => $_smarty_tpl->tpl_vars['ty']->value){
$_smarty_tpl->tpl_vars['ty']->_loop = true;
?>
                            <li><a href="__APP__/Library/index/pid/<?php echo $_smarty_tpl->tpl_vars['ty']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ty']->value['name'];?>
</a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php echo $_smarty_tpl->getSubTemplate ("../Public/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }} ?>