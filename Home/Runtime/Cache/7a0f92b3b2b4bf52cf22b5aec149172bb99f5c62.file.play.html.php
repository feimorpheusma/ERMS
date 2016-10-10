<?php /* Smarty version Smarty-3.1.6, created on 2016-10-10 17:38:35
         compiled from "./Home/Tpl\Video\play.html" */ ?>
<?php /*%%SmartyHeaderCode:283957d51664cb5698-04181807%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a0f92b3b2b4bf52cf22b5aec149172bb99f5c62' => 
    array (
      0 => './Home/Tpl\\Video\\play.html',
      1 => 1476092313,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '283957d51664cb5698-04181807',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_57d51665a6baa',
  'variables' => 
  array (
    'vo' => 0,
    'collect' => 0,
    'note' => 0,
    'n' => 0,
    'comment' => 0,
    'com' => 0,
    'comTotal' => 0,
    'comPage' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d51665a6baa')) {function content_57d51665a6baa($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:\\Projects\\ERMS\\ThinkPHP\\Extend\\Vendor\\Smarty\\plugins\\modifier.date_format.php';
?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<script type="text/javascript" charset="utf-8">
    $(function () {

        //视频的收藏Ajax请求
        $("#collect").click(function () {
            var vidnum = $(this).attr("vidnum");//获取被收藏的视频id
            $.ajax({
                url: "__URL__/collect",
                type: "post",
                async: true,
                data: "id=" + vidnum,
                dataType: "text",
                success: function (data) {
                    if (data == "yes") {
                        $("#span_collect").html("<i class=\"icon-heart\" style='color: red;'></i>已收藏").css("color", "red");
                    } else {
                        $("#span_collect").html("<i class=\"icon-heart\"  style='color: #999;'></i>收藏视频").css("color", "#999");
                    }
                },
                error: function () {
                    alert("ajax请求失败！");
                }
            });
        });
    });
</script>

<input type="hidden" name="lid" value="<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
">
<div id="sub-header" class="group_h">
    <div class="container">
        <div class="navbar-header col-sm-offset-1">
            <h1><a href="">教学视频</a></h1>
        </div>
        <div class="col-md-8">
            <ul class="navbar-left">
                <li id="navbarli" class="active"><a href="__URL__/index" class="videolist">视频精选</a></li>
            </ul>
        </div>
        <div class="col-md-2">
            <ul class="navbar-left">
                <li>
                    <?php if ($_SESSION['user']){?>
                    <a href="__URL__/index/collid/<?php echo $_SESSION['user']['id'];?>
"><i class="icon-list"></i> 我收藏的</a>
                    <?php }else{ ?>
                    <a href="javascript:;" class="please"><i class="icon-list"></i> 我收藏的</a>
                    <?php }?>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="main" class="bg_f2 pt20">
    <div class="container p0">
        <div class="home_module m_movie m_detail p0 mb30">
            <div class="container p0">

                <div class="clearfix player_h row">
                    <div class="col-md-9">
                        <div id="vedio" style="margin: 20px 50px;"></div>
                        <script type="text/javascript" src="__PUBLIC__/ckplayer6.8/ckplayer.js"
                                charset="utf-8"></script>
                        <script type="text/javascript">
                            var flashvars = {
                                p: 0,
                                e: 1,
                                i: '',
                                f: '__PUBLIC__/Uploads/library/<?php echo $_smarty_tpl->tpl_vars['vo']->value['name'];?>
',
                                c: 0
                            };
                            var video = ['__PUBLIC__/Uploads/library/<?php echo $_smarty_tpl->tpl_vars['vo']->value['name'];?>
->video/mp4'];
                            CKobject.embed('__PUBLIC__/ckplayer6.8/ckplayer.swf', 'vedio', 'ckplayer_vedio', '790', '565', false, flashvars, video);
                            //var support = ['all'];
                            //CKobject.embedHTML5('vedio', 'ckplayer_vedio', 790, 565, video, flashvars, support);
                        </script>

                    </div>
                    <div class="col-md-3">

                        <span class="f20"> <?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
</span>

                        <br/>
                        <button class="btn-like" id="collect" vidnum="<?php echo $_smarty_tpl->tpl_vars['vo']->value['id'];?>
" href="javascript:;" title="收藏视频">
                            <i class="btn btn-sm btn-default">
                                <?php if ($_smarty_tpl->tpl_vars['collect']->value){?>
                                <i id="span_collect" style="color: red;">
                                    <i class="icon-heart" style='color: red;'></i> 已收藏</i>

                                <?php }else{ ?>

                                <i id="span_collect" color="red"> <i class="icon-heart"></i> 收藏视频</i>
                                <?php }?>
                            </i>
                        </button>


                        <br/>
                        <br/>
                        <span>教学课程：<?php echo $_smarty_tpl->tpl_vars['vo']->value['course'];?>
</span>
                        <br/>
                        <span>播放次数：<?php echo $_smarty_tpl->tpl_vars['vo']->value['clicknum'];?>
</span>
                        <br/>
                        <span>上传时间： <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['vo']->value['addtime'],"%Y-%m-%d %H:%M:%S");?>
</span>
                        <br/>
                        <span>视频描述： <?php echo $_smarty_tpl->tpl_vars['vo']->value['note'];?>
</span>
                        <br/>

                    </div>
                </div>
            </div>


            <div class="col-md-12">
                <div class="m_detail_reviews more mb30">
                    <div class="tt">
                        <h3>《<?php echo $_smarty_tpl->tpl_vars['vo']->value['title'];?>
》 的笔记</h3>
                        <a data-film-id="1106" id="addnote" href="javascript:void(0)"
                           class="btn btn-sm pull-right btn-info"><i class="icon-pencil"></i> 写笔记</a>
                    </div>

                    <?php if ($_smarty_tpl->tpl_vars['note']->value){?>
                    <table id="notelist" style="width: 100%;">
                        <?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['n']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['note']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
$_smarty_tpl->tpl_vars['n']->_loop = true;
?>
                        <tr style="border-bottom: 1px dotted #ccc; line-height: 30px;">
                            <td width="180"> <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['n']->value['addtime'],"%Y-%m-%d %H:%M:%S");?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['n']->value['content'];?>
</td>
                        </tr>
                        <?php } ?>

                    </table>


                    <?php }else{ ?>
                    <table id="notelist" style="width: 100%;">
                        <div class="null">
                            暂时还没有笔记
                        </div>
                    </table>
                    <?php }?>

                </div>
            </div>
            <!-- <div class="col-md-4">


                 <div class="m_detail_reviews s_reviews mb30">
                     <div class="tt pb10">
                         <h3 class="pt5"> 短评</h3>
                         <?php if ($_SESSION['user']){?>
                         <a data-film-id="1106" data-toggle="modal-review" href="javascript:void(0)"
                            class="btn btn-sm pull-right btn-info"><i class="icon-pencil"></i> 写短评</a>
                         <?php }else{ ?>
                         <a href="javascript:void(0)" class="btn btn-sm pull-right btn-info please"><i
                                 class="icon-pencil"></i> 写短评</a>
                         <?php }?>
                     </div>

                     <ul class="list_pb10" id="comment">
                         <?php if ($_smarty_tpl->tpl_vars['comment']->value){?>
                         <?php  $_smarty_tpl->tpl_vars['com'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['com']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['comment']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['com']->key => $_smarty_tpl->tpl_vars['com']->value){
$_smarty_tpl->tpl_vars['com']->_loop = true;
?>
                         <li>
                             <div class="reviews_b">
                                 <div class="c999 m_n_item_info f12 bg_fff">
                                     <a href="__APP__/Users/otheredu/uid/<?php echo $_smarty_tpl->tpl_vars['com']->value['uid'];?>
"><img alt="<?php echo $_smarty_tpl->tpl_vars['com']->value['username'];?>
"
                                                                                            title="<?php echo $_smarty_tpl->tpl_vars['com']->value['username'];?>
"
                                                                                            src="__PUBLIC__/Uploads/users/<?php echo $_smarty_tpl->tpl_vars['com']->value['username'];?>
/s_<?php echo $_smarty_tpl->tpl_vars['com']->value['picture'];?>
"
                                                                                            class="avatar_md"></a>
                                     <a href="__APP__/Users/otheredu/uid/<?php echo $_smarty_tpl->tpl_vars['com']->value['uid'];?>
"
                                        target="_blank"><?php echo $_smarty_tpl->tpl_vars['com']->value['username'];?>
</a> <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['com']->value['addtime'],"%Y-%m-%d
                                     %H:%M:%S");?>

                                 </div>
                                 <p>

                                     <?php echo $_smarty_tpl->tpl_vars['com']->value['content'];?>


                                 </p>
                             </div>
                         </li>
                         <?php } ?>
                         <?php }else{ ?>
                         <li>快来抢第一个沙发~</li>
                         <?php }?>
                     </ul>
                     <?php if ($_smarty_tpl->tpl_vars['comTotal']->value>5){?>
                     <i style="float:right"><?php echo $_smarty_tpl->tpl_vars['comPage']->value;?>
</i>
                     <?php }?>
                 </div>
             </div>-->
        </div>
    </div>
</div>
</div>
<style type="text/css">
    #note-modal {
        margin-top: 100px !important;
    }
</style>
<!--添加视频短评的弹框-->
<div id="note-modal" tabindex="2" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">写笔记 </h4>
            </div>
            <div class="modal-body">
                <form id="short-review-form" action="" method="post" class="form-horizontal" autocomplete="off">
                    <div class="form-group">
                        <label class="col-lg-2 control-label">笔记内容</label>
                        <div class="col-lg-9">
                            <textarea name="content" class="form-control charsFrom" rows="3"
                                      id="short_content"></textarea>
                            <p class="pull-left f12 c999"><span class="charsText">还可以输入</span><span
                                    class="charsLeft go_green">140</span>字</p>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="button" class="btn btn-default btn-review-push disabled" disabled="disabled"
                        data-film-id="1106">提交
                </button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" charset="utf-8">
    $(function () {

        // modal - 发表短评
        var $modalNote = $('#note-modal');
        var $modalNote_body = $modalNote.find('.modal-body');

        // 弹出窗口
        $('#addnote').on('click', function () {
            $('body').modalmanager('loading');
            $modalNote.modal().css({
                "margin-top": function () {
                    return -($(this).height() / 2);
                }
            });

            setTimeout(function () {
                $modalNote.find('textarea#short_content').focus();
            }, 500)
        });


        //添加评论的Ajax方法
        $("#button").click(function () {
            var lid = $("input[name='lid']").val();
            var content = $("textarea[name='content']").val();
            //alert(content);
            if (!content.trim()) {
                $("textarea[name='content']").next("span").empty();
                $("textarea[name='content']").after("<span><font color='red' style='float:right'>内容不能为空</font></span>");
                $("textarea[name='content']").val("");//清空文本框中的内容
                $("span[class='charsLeft go_green']").html(140);
                $("button").css("disabled", "disabled");
                return;
            } else {
                $("textarea[name='content']").next("span").empty();
                $.ajax({
                    url: "__APP__/Video/note",
                    type: "post",
                    async: true,
                    data: {"lid": lid, "content": content},
                    dataType: "json",
                    success: function (data) {

                        var str = "<tr style='border-bottom: 1px dotted #ccc; line-height: 30px;'><td width='180'>" + getNowFormatDate() + " </td><td>" + content + "</td></tr>";
                        $("#notelist").prepend(str);

                        $("textarea[name='content']").val("");
                        $("span[class='charsLeft go_green']").html(140);
                        $("button").css("disabled", "disabled");
                        $modalNote.modal('hide');
                        $(".null").remove();

                    },
                    error: function () {
                        alert("ajax请求失败！");
                    }
                });
            }
        });
    });
    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
    }
</script>


<?php echo $_smarty_tpl->getSubTemplate ("../Public/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>



<?php }} ?>