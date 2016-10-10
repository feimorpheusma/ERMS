<?php /* Smarty version Smarty-3.1.6, created on 2016-10-10 21:32:55
         compiled from "./Home/Tpl\Video\index.html" */ ?>
<?php /*%%SmartyHeaderCode:1363357d51684aff398-82328208%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '96b766e3a87dae98668b126087e13293c9a0b610' => 
    array (
      0 => './Home/Tpl\\Video\\index.html',
      1 => 1476106359,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1363357d51684aff398-82328208',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d5168576585',
  'variables' => 
  array (
    'list' => 0,
    'vo' => 0,
    'showPage' => 0,
    'typelist' => 0,
    'ty' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d5168576585')) {function content_57d5168576585($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="sub-header" class="group_h">
    <div class="container">
        <div class="navbar-header col-sm-offset-1">
            <h1><a href="__APP__/Video/index">教学视频</a></h1>
        </div>
        <div class="col-md-8">
            <ul class="navbar-left">
                <li id="navbarli" class="active"><a href="javascript:void(0)" class="videolist">视频精选</a></li>
            </ul>
        </div>

        <div class="col-md-2">
            <ul class="navbar-left">
                <li>
                    <a href="__URL__/index/collect/<?php echo $_SESSION['user']['id'];?>
"><i class="icon-list"></i> 我的收藏</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<!--浏览视频列表代码块-->
<div id="main" class="video_list">
    <div class="container">
        <div class="home_module row">
            <div class="container">
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
                                <a class="m_cover_item_info" href="__URL__/play/id/<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
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
                <!-- 右侧 -->
                <div class="col-md-4">
                    <div class="mb30 m_cats" style="width:200px">
                        <div class="tt">
                            <h3>我的课程</h3>
                        </div>
                        <ul class="list_ib">
                            <?php  $_smarty_tpl->tpl_vars['ty'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ty']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['typelist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ty']->key => $_smarty_tpl->tpl_vars['ty']->value){
$_smarty_tpl->tpl_vars['ty']->_loop = true;
?>
                            <li><a href="__APP__/Video/index/cid/<?php echo $_smarty_tpl->tpl_vars['ty']->value['id'];?>
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