<?php /* Smarty version Smarty-3.1.6, created on 2016-11-28 23:49:09
         compiled from "./Home/Tpl\Test\index.html" */ ?>
<?php /*%%SmartyHeaderCode:1196557d5176bd6d2f7-79552506%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f51c3a5dedc79fab6fd9e998b23775fa1696a356' => 
    array (
      0 => './Home/Tpl\\Test\\index.html',
      1 => 1480348145,
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
    'course' => 0,
    'courses' => 0,
    'ty' => 0,
    'question' => 0,
    'past_qid' => 0,
    'wrong_question' => 0,
    'hard_question' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d5176c32471')) {function content_57d5176c32471($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('../Public/header.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div id="sub-header" class="group_h">
    <div class="container">
        <div class="navbar-header col-sm-offset-1" style="width: 16.66666666%;margin: 0;">
            <h1><a href="">自主学习</a></h1>
        </div>
        <div class="col-md-6">
            <ul class="navbar-left">
                <li class="active"><a href="__URL__/index">自主学习</a></li>
                <li><a href="__URL__/questions/type/2">难题回看</a></li>
                <li><a href="__URL__/questions/type/1">错题回看</a></li>
                <li><a href="__URL__/test">组卷测试</a></li>
                <li><a href="__URL__/result">测试记录</a></li>
            </ul>
        </div>
        <div class="col-md-2">

            <ul class="navbar-left">

                <li>
                    <a href="javascript:;" id="dropdownMenu1" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="true"><i class="icon-list"></i>
                        课程：<?php echo $_smarty_tpl->tpl_vars['course']->value['name'];?>
</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<?php if (!$_smarty_tpl->tpl_vars['course']->value){?>
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
                    <li><a href="__URL__/index/cid/<?php echo $_smarty_tpl->tpl_vars['ty']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ty']->value['name'];?>
</a></li>
                    <?php } ?>
                </ul>

            </div>
        </div>
    </div>
</div>
<?php }else{ ?>
<div id="main" class="bg_f2 ">
    <div class="container">
        <div class="home_module row">
            <div class="container">
                <div class="p30" style="background: white;border-radius: 10px;">
                    <?php if (!$_smarty_tpl->tpl_vars['question']->value){?>
                    <?php if ($_smarty_tpl->tpl_vars['past_qid']->value=="_"){?>
                    <div class="null">该课程暂时没有试题,请换个课程试试</div>
                    <?php }else{ ?>
                    <div class="null">所有题目都做过了，请点自主学习重新学习</div>
                    <?php }?>
                    <?php }else{ ?>

                    <input type="hidden" id="answer" value="<?php echo $_smarty_tpl->tpl_vars['question']->value['answer'];?>
">
                    <input type="hidden" id="id" value="<?php echo $_smarty_tpl->tpl_vars['question']->value['id'];?>
">

                    <div id="content">

                        <?php if ($_smarty_tpl->tpl_vars['wrong_question']->value){?>
                        <span style="padding: 5px;border-radius: 5px;border: 1px solid #cddc39; background: #cddc39; margin: 0 10px 10px 0; color: white; font-weight: bold;">易错题</span>
                        <?php }?>
                        <?php if ($_smarty_tpl->tpl_vars['hard_question']->value){?>
                        <span id="span_hard" style="padding: 5px;border-radius: 5px;border: 1px solid orange; background:orange;margin:  0 10px 10px 0; color: white; font-weight: bold;">难题</span>
                        <?php }else{ ?>
                        <span id="span_hard" style="padding: 5px;border-radius: 5px;border: 1px solid orange; background:orange;margin:  0 10px 10px 0; color: white; font-weight: bold; display: none;">难题</span>
                        <?php }?>
                        <?php if ($_smarty_tpl->tpl_vars['wrong_question']->value||$_smarty_tpl->tpl_vars['hard_question']->value){?>
                        <br/>
                        <br/>
                        <?php }?>
                        <?php if ($_smarty_tpl->tpl_vars['question']->value['type']==1){?>
                        <h4>单选题：<?php echo $_smarty_tpl->tpl_vars['question']->value['content'];?>
</h4>
                        <br/>

                        <input type="radio" name="answer" value="A"> A.<?php echo $_smarty_tpl->tpl_vars['question']->value['aA'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="answer" value="B"> B.<?php echo $_smarty_tpl->tpl_vars['question']->value['aB'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="answer" value="C"> C.<?php echo $_smarty_tpl->tpl_vars['question']->value['aC'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="answer" value="D"> D.<?php echo $_smarty_tpl->tpl_vars['question']->value['aD'];?>


                        <?php }elseif($_smarty_tpl->tpl_vars['question']->value['type']==2){?>
                        <h4>多选题：<?php echo $_smarty_tpl->tpl_vars['question']->value['content'];?>
</h4>
                        <br/>

                        <input type="checkbox" name="answer" value="A"> A.<?php echo $_smarty_tpl->tpl_vars['question']->value['aA'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="answer" value="B"> B.<?php echo $_smarty_tpl->tpl_vars['question']->value['aB'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="answer" value="C"> C.<?php echo $_smarty_tpl->tpl_vars['question']->value['aC'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="answer" value="D"> D.<?php echo $_smarty_tpl->tpl_vars['question']->value['aD'];?>


                        <?php }elseif($_smarty_tpl->tpl_vars['question']->value['type']==3){?>
                        <h4>判断题：<?php echo $_smarty_tpl->tpl_vars['question']->value['content'];?>
</h4>
                        <br/>

                        <input type="radio" name="answer" value="对"> 对&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="answer" value="错"> 错<?php echo $_smarty_tpl->tpl_vars['question']->value['aB'];?>

                        <?php }elseif($_smarty_tpl->tpl_vars['question']->value['type']==4){?>
                        <h4>填空题：<?php echo $_smarty_tpl->tpl_vars['question']->value['content'];?>
</h4>
                        <br/>
                        请输入答案：<input type="text" name="answer"/>
                        <?php }elseif($_smarty_tpl->tpl_vars['question']->value['type']==5){?>
                        <h4>主观题：<?php echo $_smarty_tpl->tpl_vars['question']->value['content'];?>
</h4>
                        <br/>
                        请输入答案：<input type="text" name="answer" />
                        <?php }?>


                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span id="answer_right" style="color: green;font-weight: bold; display: none;">正确</span>
                    <span id="answer_wrong"
                          style="color: red;font-weight: bold;display: none;">错误 正确答案：<?php echo $_smarty_tpl->tpl_vars['question']->value['answer'];?>
</span>

                    </div>
                    <br/>
                    <div>

                        <button type="button" id="show_answer" class="btn btn-primary btn-lg">查看答案</button>
                        <?php if ($_smarty_tpl->tpl_vars['hard_question']->value){?>
                        <button type="button" id="mark" class="btn  btn-lg">取消难题</button>
                        <?php }else{ ?>
                        <button type="button" id="mark" class="btn  btn-lg">标记难题</button>
                        <?php }?>
                        <a href="__URL__/index/cid/<?php echo $_smarty_tpl->tpl_vars['course']->value['id'];?>
/qid/<?php echo $_smarty_tpl->tpl_vars['past_qid']->value;?>
" class="btn  btn-lg">下一题</a>
                    </div>

                    <script type="text/javascript" charset="utf-8">

                        $(function () {
                            $("#show_answer").click(function () {
                                var id = $("#id").val();
                                var answer = $("#answer").val();
                                var user_answer = '';
                                $("input[name='answer']").each(function () {
                                    if ($(this).attr("type") == "text") {
                                        user_answer += $(this).val();
                                    }
                                    else {
                                        if ($(this).is(':checked')) {
                                            user_answer += $(this).val();
                                        }
                                    }
                                });

                                $("#answer_right").hide();
                                $("#answer_wrong").hide();
                                if (answer == user_answer) {
                                    $("#answer_right").show();
                                }
                                else {
                                    $("#answer_wrong").show();
                                    $.ajax({
                                        url: "__URL__/mark",
                                        type: "post",
                                        async: true,
                                        data: {"id": id, "type": 1},
                                        dataType: "text",
                                        success: function (data) {

                                        },
                                        error: function () {
                                            alert("请求失败,请重试");
                                        }
                                    });
                                }
                            });
                            $("#mark").click(function () {

                                var id = $("#id").val();
                                $.ajax({
                                    url: "__URL__/mark",
                                    type: "post",
                                    async: true,
                                    data: {"id": id, "type": 2},
                                    dataType: "text",
                                    success: function (data) {
                                        if ($("#mark").html() == "标记难题") {
                                            $("#mark").html("取消难题");
                                            $("#span_hard").show();
                                        }
                                        else {
                                            $("#mark").html("标记难题");
                                            $("#span_hard").hide();
                                        }
                                    },
                                    error: function () {
                                        alert("请求失败,请重试");
                                    }
                                });
                            });
                        });
                    </script>

                    <?php }?>

                </div>
            </div>
        </div>
    </div>
</div>
<?php }?>
<?php echo $_smarty_tpl->getSubTemplate ("../Public/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

         
<?php }} ?>