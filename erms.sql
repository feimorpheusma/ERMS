/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : erms

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-03-05 01:35:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bbs_comm
-- ----------------------------
DROP TABLE IF EXISTS `bbs_comm`;
CREATE TABLE `bbs_comm` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '帖子评论id',
  `mid` int(10) NOT NULL COMMENT '帖子id',
  `uid` int(10) NOT NULL COMMENT '会员id',
  `addtime` int(11) NOT NULL DEFAULT '1' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `pid` varchar(20) DEFAULT '0' COMMENT '标记评论位置',
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '状态0未查看1已查看',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=891 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_comm
-- ----------------------------
INSERT INTO `bbs_comm` VALUES ('886', '8', '64', '1393472450', 'iiiiiiiiiiiiii', '0', '0');
INSERT INTO `bbs_comm` VALUES ('885', '10', '64', '1393472424', 'pppppppppppppppp', '0', '1');
INSERT INTO `bbs_comm` VALUES ('884', '35', '62', '1393470113', '<img alt=\"大哭\" src=\"/eschool/Public/xheditor/xheditor_emot/default/wail.gif\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('883', '35', '63', '1393470103', '那啥叫啥事？', '877', '0');
INSERT INTO `bbs_comm` VALUES ('882', '36', '62', '1393470058', '上来就评论了，都没看内容是什么<img alt=\"敲打\" src=\"/eschool/Public/xheditor/xheditor_emot/default/knock.gif\" height=\"85\" width=\"85\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('881', '34', '63', '1393470055', '&nbsp;冻手不？', '0', '1');
INSERT INTO `bbs_comm` VALUES ('880', '36', '63', '1393470014', '小心查水表~', '0', '0');
INSERT INTO `bbs_comm` VALUES ('879', '36', '62', '1393469916', '<img alt=\"吐舌头\" src=\"/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('878', '36', '62', '1393469908', '<img alt=\"可怜\" src=\"/eschool/Public/xheditor/xheditor_emot/default/cute.gif\" /><img alt=\"大笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/laugh.gif\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('868', '29', '68', '1393466125', '我只能呵呵了、、、', '0', '1');
INSERT INTO `bbs_comm` VALUES ('867', '13', '68', '1393465990', '还英格兰呢', '800', '0');
INSERT INTO `bbs_comm` VALUES ('866', '19', '68', '1393465969', '还行吧', '827', '0');
INSERT INTO `bbs_comm` VALUES ('865', '22', '65', '1393463057', '再来点福利呗', '0', '0');
INSERT INTO `bbs_comm` VALUES ('864', '21', '65', '1393462673', '伪前排', '819', '0');
INSERT INTO `bbs_comm` VALUES ('863', '21', '65', '1393462657', '评论一个', '0', '0');
INSERT INTO `bbs_comm` VALUES ('862', '19', '68', '1393459995', '嘿嘿', '0', '1');
INSERT INTO `bbs_comm` VALUES ('861', '17', '68', '1393459945', '纯净水、', '808', '0');
INSERT INTO `bbs_comm` VALUES ('869', '12', '93', '1393467374', '呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵', '0', '0');
INSERT INTO `bbs_comm` VALUES ('859', '25', '70', '1393459856', '必须的必啊', '848', '0');
INSERT INTO `bbs_comm` VALUES ('856', '27', '93', '1393458773', '好咧', '0', '1');
INSERT INTO `bbs_comm` VALUES ('857', '25', '93', '1393458832', '那好吧、、、', '834', '1');
INSERT INTO `bbs_comm` VALUES ('858', '25', '93', '1393458832', '那好吧、、、', '834', '1');
INSERT INTO `bbs_comm` VALUES ('854', '8', '93', '1393458717', '<img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/struggle.gif\" /><img alt=\"奋斗\" src=\"/eschool/Public/xheditor/xheditor_emot/default/struggle.gif\" />', '0', '1');
INSERT INTO `bbs_comm` VALUES ('853', '8', '62', '1393440314', '。。。。。。。。。', '851', '1');
INSERT INTO `bbs_comm` VALUES ('852', '8', '62', '1393440309', '。。。。。。。。', '851', '1');
INSERT INTO `bbs_comm` VALUES ('850', '7', '62', '1393440097', '山炮就是山泡', '787', '1');
INSERT INTO `bbs_comm` VALUES ('851', '8', '62', '1393440300', '<img alt=\"奋斗\" src=\"/eschool/Public/xheditor/xheditor_emot/default/struggle.gif\" />', '0', '1');
INSERT INTO `bbs_comm` VALUES ('849', '25', '61', '1393439734', '我说先提交就是先提交！', '834', '1');
INSERT INTO `bbs_comm` VALUES ('848', '25', '61', '1393439713', '必火啊！！！', '0', '1');
INSERT INTO `bbs_comm` VALUES ('847', '5', '61', '1393439470', '弄死你', '792', '0');
INSERT INTO `bbs_comm` VALUES ('846', '5', '61', '1393439470', '弄死你', '792', '0');
INSERT INTO `bbs_comm` VALUES ('845', '5', '61', '1393439470', '弄死你', '792', '0');
INSERT INTO `bbs_comm` VALUES ('843', '25', '63', '1393439050', '刘明是谁呀？', '0', '1');
INSERT INTO `bbs_comm` VALUES ('844', '5', '61', '1393439461', '跪地上去吧！！！', '790', '0');
INSERT INTO `bbs_comm` VALUES ('842', '25', '62', '1393438587', '凭什么呢', '0', '1');
INSERT INTO `bbs_comm` VALUES ('841', '25', '62', '1393438578', '这是为什么呢', '0', '1');
INSERT INTO `bbs_comm` VALUES ('840', '25', '93', '1393438491', '你赚了~~~', '834', '0');
INSERT INTO `bbs_comm` VALUES ('839', '25', '93', '1393438491', '你赚了~~~', '834', '0');
INSERT INTO `bbs_comm` VALUES ('870', '29', '63', '1393467479', '哈哈啊', '868', '0');
INSERT INTO `bbs_comm` VALUES ('871', '25', '70', '1393467955', '喂小米！！！', '841', '1');
INSERT INTO `bbs_comm` VALUES ('872', '25', '70', '1393467988', '镇贴楼！！！', '0', '1');
INSERT INTO `bbs_comm` VALUES ('873', '25', '70', '1393468002', '顶起来', '872', '1');
INSERT INTO `bbs_comm` VALUES ('874', '19', '70', '1393468895', '我也喜欢这个！', '0', '0');
INSERT INTO `bbs_comm` VALUES ('836', '9', '70', '1393438094', '期限里', '0', '1');
INSERT INTO `bbs_comm` VALUES ('837', '14', '70', '1393438232', '<strong>&lt;script&gt;alert(\'heihei\')&lt;/script&gt;</strong>', '0', '0');
INSERT INTO `bbs_comm` VALUES ('835', '25', '70', '1393438067', '门前大桥下，游过一群鸭', '0', '1');
INSERT INTO `bbs_comm` VALUES ('875', '34', '65', '1393469100', '<span style=\"font-size:24px;\">鸡冻不？</span>', '0', '1');
INSERT INTO `bbs_comm` VALUES ('876', '35', '61', '1393469206', '哇咔咔咔咔咔咔咔咔', '0', '1');
INSERT INTO `bbs_comm` VALUES ('834', '25', '70', '1393438050', '<span style=\"color:#6600CC;\"><span style=\"background-color: rgb(255, 102, 0);\"><span style=\"font-size:32px;\"><strong><img alt=\"羡慕\" src=\"/eschool/Public/xheditor/xheditor_emot/default/envy.gif\" height=\"86\" width=\"86\" />此<img alt=\"羡慕\" src=\"/eschool/Public/xheditor/xheditor_emot/default/envy.gif\" height=\"86\" width=\"86\" />贴<img alt=\"羡慕\" src=\"/eschool/Public/xheditor/xheditor_emot/default/envy.gif\" height=\"86\" width=\"86\" />必<img alt=\"羡慕\" src=\"/eschool/Public/xheditor/xheditor_emot/default/envy.gif\" height=\"86\" width=\"86\" />火<img alt=\"羡慕\" src=\"/eschool/Public/xheditor/xheditor_emot/default/envy.gif\" height=\"86\" width=\"86\" /></strong></span></span></span>', '0', '1');
INSERT INTO `bbs_comm` VALUES ('832', '7', '70', '1393437256', '太二了  一楼', '787', '1');
INSERT INTO `bbs_comm` VALUES ('831', '7', '70', '1393437247', '22222222222222222222222', '787', '1');
INSERT INTO `bbs_comm` VALUES ('829', '19', '70', '1393437227', '楼主挽尊', '821', '0');
INSERT INTO `bbs_comm` VALUES ('828', '19', '70', '1393437218', '火钳刘明', '812', '0');
INSERT INTO `bbs_comm` VALUES ('827', '19', '70', '1393437209', '好棒好棒', '0', '1');
INSERT INTO `bbs_comm` VALUES ('826', '24', '62', '1393436983', '你以为你是谁啊，人家为什么要理你', '0', '0');
INSERT INTO `bbs_comm` VALUES ('825', '24', '71', '1393436910', '你说的有道理', '0', '1');
INSERT INTO `bbs_comm` VALUES ('824', '24', '71', '1393436900', '你以为你是谁啊', '0', '1');
INSERT INTO `bbs_comm` VALUES ('823', '24', '71', '1393436887', '不理不理呗', '0', '1');
INSERT INTO `bbs_comm` VALUES ('822', '12', '71', '1393436591', '还行吧', '0', '0');
INSERT INTO `bbs_comm` VALUES ('821', '19', '69', '1393436517', '<img alt=\"生气\" src=\"/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('820', '18', '70', '1393436389', '不敢吧', '810', '0');
INSERT INTO `bbs_comm` VALUES ('818', '18', '70', '1393436384', '去去去去去去呀', '810', '0');
INSERT INTO `bbs_comm` VALUES ('819', '21', '69', '1393436410', '&nbsp;抢沙发咯。。。。', '0', '1');
INSERT INTO `bbs_comm` VALUES ('817', '18', '70', '1393436375', '<p>山里有个庙 。老和尚对小和尚说，从前有座山，山上有个庙</p><p>，庙里有个老和尚，老和尚</p><p>老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚<br /></p>', '0', '0');
INSERT INTO `bbs_comm` VALUES ('816', '15', '70', '1393436340', '<img src=\"/eschool/Public/Uploads/editor/201402/530e26b0a1346.jpg\" width=\"300\" alt=\"\" /><br />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('815', '15', '70', '1393436321', '是啊是啊 顶楼上', '813', '0');
INSERT INTO `bbs_comm` VALUES ('814', '15', '70', '1393436311', '真那啥！<img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" />大家都得。', '0', '0');
INSERT INTO `bbs_comm` VALUES ('813', '15', '68', '1393436028', '真有意思！！！', '0', '0');
INSERT INTO `bbs_comm` VALUES ('809', '9', '68', '1393435310', '多评论点、一会好分页', '0', '1');
INSERT INTO `bbs_comm` VALUES ('808', '17', '66', '1393435329', '是吧，坑定是的啊，你太单纯了小岩岩，哈哈哈，我开玩笑的啦', '0', '1');
INSERT INTO `bbs_comm` VALUES ('810', '18', '68', '1393435604', '哎呦我勒个去', '0', '1');
INSERT INTO `bbs_comm` VALUES ('811', '18', '68', '1393435620', '<img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" />服了', '0', '1');
INSERT INTO `bbs_comm` VALUES ('805', '16', '66', '1393435287', '什么叫脸，哈哈哈', '803', '0');
INSERT INTO `bbs_comm` VALUES ('812', '19', '68', '1393435805', '哭哭哭哭KUKuku', '0', '1');
INSERT INTO `bbs_comm` VALUES ('804', '16', '66', '1393435263', '<img alt=\"生气\" src=\"/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" />', '0', '0');
INSERT INTO `bbs_comm` VALUES ('803', '16', '68', '1393435238', '好不要脸撒', '0', '0');
INSERT INTO `bbs_comm` VALUES ('802', '10', '66', '1393434926', '鸟语。。。。。。', '0', '1');
INSERT INTO `bbs_comm` VALUES ('801', '13', '66', '1393434799', '小萍萍，怎么可以这样子啦', '800', '0');
INSERT INTO `bbs_comm` VALUES ('800', '13', '66', '1393434779', '鹅鹅鹅饿饿，曲线美国', '0', '1');
INSERT INTO `bbs_comm` VALUES ('797', '10', '64', '1393434212', '贤哥威武', '0', '1');
INSERT INTO `bbs_comm` VALUES ('798', '9', '65', '1393434407', '好不要face', '789', '1');
INSERT INTO `bbs_comm` VALUES ('799', '9', '65', '1393434448', '哥来灌水！！！哇咔咔<img src=\"/eschool/Public/Uploads/editor/201402/530e1f473ec89.jpg\" alt=\"\" />', '0', '1');
INSERT INTO `bbs_comm` VALUES ('796', '7', '62', '1393434217', '恩恩，想了一下还是说点好话吧', '787', '1');
INSERT INTO `bbs_comm` VALUES ('795', '9', '62', '1393434137', '哈哈哈', '789', '0');
INSERT INTO `bbs_comm` VALUES ('794', '9', '62', '1393434126', '这是什么呢啊', '0', '1');
INSERT INTO `bbs_comm` VALUES ('793', '5', '64', '1393434084', '你妹的，抢哥的沙发', '781', '0');
INSERT INTO `bbs_comm` VALUES ('792', '5', '64', '1393434052', '贤哥再顶你的肺，灌水中', '0', '1');
INSERT INTO `bbs_comm` VALUES ('791', '6', '61', '1393434010', '那必须的啊', '786', '0');
INSERT INTO `bbs_comm` VALUES ('790', '5', '64', '1393434024', '沙发', '0', '1');
INSERT INTO `bbs_comm` VALUES ('789', '9', '64', '1393434011', '挽尊，自挽中。。。。', '0', '1');
INSERT INTO `bbs_comm` VALUES ('788', '7', '64', '1393433981', '沙发', '787', '0');
INSERT INTO `bbs_comm` VALUES ('787', '7', '64', '1393433961', '22222222', '0', '1');
INSERT INTO `bbs_comm` VALUES ('786', '6', '62', '1393433919', '恩恩，歌词不错哦，小岩岩就是有眼光', '0', '1');
INSERT INTO `bbs_comm` VALUES ('785', '6', '62', '1393433883', '噢噢噢噢，no', '783', '0');
INSERT INTO `bbs_comm` VALUES ('782', '5', '61', '1393433531', '第一个第一个', '781', '1');
INSERT INTO `bbs_comm` VALUES ('783', '6', '61', '1393433656', '<img src=\"/eschool/Public/Uploads/editor/201402/530e1c2e46e2d.png\" height=\"301\" width=\"302\" alt=\"\" />顶！！！', '0', '1');
INSERT INTO `bbs_comm` VALUES ('784', '6', '62', '1393433874', '00:28.32]我会用满天星光变成玫瑰 哦 baby\n[00:32.35]珍藏每一滴眼泪', '783', '0');
INSERT INTO `bbs_comm` VALUES ('781', '5', '61', '1393433517', '第一个沙发、、、<img alt=\"大笑\" src=\"/lalala/Public/xheditor/xheditor_emot/default/laugh.gif\" />', '0', '1');

-- ----------------------------
-- Table structure for bbs_message
-- ----------------------------
DROP TABLE IF EXISTS `bbs_message`;
CREATE TABLE `bbs_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '帖子id号',
  `title` varchar(60) NOT NULL COMMENT '标题',
  `uid` int(10) NOT NULL COMMENT '发帖人',
  `addtime` int(11) NOT NULL DEFAULT '1' COMMENT '发帖时间',
  `content` text NOT NULL COMMENT '帖子内容',
  `keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '标签（关键字）',
  `isbest` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否精品',
  `ishot` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否热门',
  `scan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '状态0隐藏1显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_message
-- ----------------------------
INSERT INTO `bbs_message` VALUES ('10', '@#￥%……&amp;', '64', '1393434201', '我是来揍管炎的', '19', '0', '0', '6', '1');
INSERT INTO `bbs_message` VALUES ('11', '帖子123456789', '65', '1393434312', '<p>Java基础知识，请听岩哥给你慢慢讲、、、<img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" /></p><p><span style=\"font-family:KaiTi_GB2312;font-size:24px;\">话说1111111111111</span></p><p><span style=\"font-family:KaiTi_GB2312;font-size:24px;\">2222222222222</span></p><p><strong>333333333333</strong></p><p><span style=\"color:#ff0000;\">。。。。。。。。。。。</span></p>', '24', '0', '0', '0', '1');
INSERT INTO `bbs_message` VALUES ('9', '给你踩踩', '64', '1393433949', '贤哥嫁到 ，还不来置顶<img alt=\"生气\" src=\"/xian/Public/xheditor/xheditor_emot/default/mad.gif\" /><br />', '10', '1', '1', '12', '1');
INSERT INTO `bbs_message` VALUES ('6', 'FreeP-拥抱着你的滋味', '61', '1393433632', '<big></big><p>[ti:拥抱着你的滋味]<br /></p><p>[ar:Free Party]<br /></p><p>[al:怪我爱得太狂野]<br /></p><p><br /></p><p>[00:00.39]拥抱着你的滋味<br /></p><p>[00:02.60]作词：KingStar-Babara<br /></p><p>[00:04.80]作曲：KingStar-武士硝烟<br /></p><p>[00:07.00]演唱：free party[00:56.99]带着你快乐的飞 风再大也无所谓</p><p>[00:15.97]好喜欢你的笑 温暖我每一秒<br /></p><p>[00:20.18]整个世界都跟着溶化掉<br /></p><p>[00:24.21]送你童话城堡 甜蜜把爱围绕<br /></p><p>[00:28.32]我会用满天星光变成玫瑰 哦 baby<br /></p><p>[00:32.35]珍藏每一滴眼泪<br /></p><p>[00:36.22]比钻石还要珍贵<br /></p><p>[00:40.29]这是幸福的点缀<br /></p><p>[00:44.33]没有人能够体会<br /></p><p>[00:48.97]拥抱着你的滋味 胜过一切的完美<br /></p><p>[00:52.92]你在我怀里入睡 月亮都为你沉醉<br /></p>', '9', '0', '0', '5', '1');
INSERT INTO `bbs_message` VALUES ('7', '恩恩，快要审项目了', '62', '1393433801', '明天就要审项目了，嗯嗯嗯呢<img alt=\"大哭\" src=\"/eschool/Public/xheditor/xheditor_emot/default/wail.gif\" />', '28', '1', '1', '6', '1');
INSERT INTO `bbs_message` VALUES ('8', '大家都很忙的', '62', '1393433849', '<img alt=\"吐舌头\" src=\"/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"吐舌头\" src=\"/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"吐舌头\" src=\"/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" />你说是吧，这次坑定没错啊', '27', '0', '1', '8', '1');
INSERT INTO `bbs_message` VALUES ('5', '贴吧的第一个帖子哦', '61', '1393433498', '<p><span style=\"background-color: rgb(255, 255, 102);\"><span style=\"color:#3333FF;\"><strong><span style=\"font-family:KaiTi_GB2312;font-size:24px;\">贴吧的第一个帖子哦！！！</span></strong></span></span></p><p><span style=\"background-color: rgb(255, 255, 102);\"><span style=\"color:#3333FF;\"><strong><span style=\"font-family:KaiTi_GB2312;font-size:24px;\">速来膜拜~~~</span></strong></span></span></p><p><img src=\"/eschool/Public/Uploads/editor/201402/530e1b9726799.gif\" alt=\"\" /><br /></p>', '23', '1', '1', '5', '1');
INSERT INTO `bbs_message` VALUES ('12', '发个名字很长很长的特别长的那个', '65', '1393434380', '<p>发个名字很长很长的特别长的那个发个名字很长很长的特别长</p><p>的那个发个</p><p>名字很长很长的特别长的那个发个名</p><p><img src=\"/eschool/Public/Uploads/editor/201402/530ea64781124.jpg\" height=\"301\" width=\"402\" alt=\"\" /><br /></p><p>字很长很长的特别长的那个发个名字很长很长的特别长的那个发个名字很长很长的特别长的那个</p><p><br /></p>', '13', '1', '1', '10', '1');
INSERT INTO `bbs_message` VALUES ('13', '猜猜我是谁', '68', '1393434681', '<p>你急速复仇耐热的口红过热id哦纪念馆红日u盾试管汉堡覅噢未来，设计公认</p><p>卫生等国家饿哦is大黄v<br /></p>', '24', '0', '0', '2', '1');
INSERT INTO `bbs_message` VALUES ('14', '我管你是谁', '66', '1393434762', '你就不知道我是谁吧，哈哈哈哈<img alt=\"尴尬\" src=\"/eschool/Public/xheditor/xheditor_emot/default/awkward.gif\" /><img alt=\"闭嘴\" src=\"/eschool/Public/xheditor/xheditor_emot/default/shutup.gif\" />', '10', '0', '0', '4', '1');
INSERT INTO `bbs_message` VALUES ('15', '贤哥又降临了，红颜你咬我啊', '67', '1393434913', '哈哈哈哈<img alt=\"得意\" src=\"/eschool/Public/xheditor/xheditor_emot/default/proud.gif\" />', '10,19', '0', '0', '52', '1');
INSERT INTO `bbs_message` VALUES ('16', '我来发福利了', '67', '1393435204', '<img alt=\"大笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/laugh.gif\" />www.xxxxx.cc你们猜<br />', '10', '0', '0', '4', '1');
INSERT INTO `bbs_message` VALUES ('17', '管贤你就别卖萌了！！！', '68', '1393435217', '<p><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong>你们说管子贤是不是疯了？</strong></span></p><p><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /></strong></span><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" height=\"69\" width=\"69\" /></strong></span><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /></strong></span><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" height=\"69\" width=\"69\" /><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /></strong></span><span style=\"font-family:Microsoft YaHei;font-size:32px;\"><strong><img alt=\"偷笑\" src=\"http://localhost/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /><img alt=\"偷笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/titter.gif\" /></strong></span><br /></strong></span></p>', '11', '0', '0', '5', '1');
INSERT INTO `bbs_message` VALUES ('18', '从前又座山......', '66', '1393435450', '从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，从前有座山，山上有个庙，庙里有个老和尚，老和尚对小和尚说，', '23', '0', '0', '5', '1');
INSERT INTO `bbs_message` VALUES ('19', '许嵩——素颜', '68', '1393435791', '<p><span style=\"font-size:18px;\"><strong>[ti:素颜]</strong></span></p><p><span style=\"font-size:18px;\"><strong><br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[ar:Vae(许嵩)&amp;何曼婷]<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[by:qq122121036]<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:00]Vae(许嵩)&amp;何曼婷-素颜<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:02]词/曲/编曲：Vae(许嵩)<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:04]演唱：Vae(许嵩)&amp;何曼婷</strong></span></p><p><br /></p><p><span style=\"font-size:18px;\"><strong>[00:13]又是一个安静的晚上<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:15]一个人窝在摇椅里乘凉<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:18]我承认这样真的很安详<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:21]和楼下老爷爷一样</strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:24]听说你还在搞什么原创<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:27]搞来搞去好像也就这样<br /></strong></span></p><p><span style=\"font-size:18px;\"><strong>[00:29]不如花点时间想想<br /></strong></span></p><span style=\"font-size:18px;\"><strong>[00:32]琢磨一下模样</strong><br /></span>', '24', '1', '1', '16', '1');
INSERT INTO `bbs_message` VALUES ('20', '的多发点帖子啊', '68', '1393435935', '不多发点没效果啊<p>[ti:素颜]<br /></p><p>[ar:Vae(许嵩)&amp;何曼婷]<br /></p><p>[by:qq122121036]<br /></p><p>[[00:32]琢磨一下模样</p><p>不多发点没效果啊不多发点没效果啊不</p><p>多发点没效果啊不多发点没效果啊不多发点没效果啊不多发点没效果啊不多发点没效果啊<br /></p>', '24,25', '0', '0', '67', '1');
INSERT INTO `bbs_message` VALUES ('21', '这个贴吧很不错', '69', '1393436395', '<p><img src=\"/eschool/Public/Uploads/editor/201402/530e26c14ead8.jpg\" height=\"314\" width=\"269\" alt=\"\" /></p><p>杰伦镇楼....<br /></p>', '9,10,24', '0', '0', '109', '1');
INSERT INTO `bbs_message` VALUES ('22', '有妹子哟、', '69', '1393436496', '<img src=\"/eschool/Public/Uploads/editor/201402/530e274ad7733.jpg\" height=\"304\" width=\"448\" alt=\"\" />', '27,26', '0', '0', '28', '1');
INSERT INTO `bbs_message` VALUES ('23', '刚来，发个帖子表示一下吧', '71', '1393436543', '大家快快热烈欢迎我把，哈哈哈哈哈<img alt=\"害羞\" src=\"/eschool/Public/xheditor/xheditor_emot/default/shy.gif\" height=\"105\" width=\"105\" />，人家会害羞的啦', '10', '0', '0', '17', '1');
INSERT INTO `bbs_message` VALUES ('24', '见我同桌了吗，他不理我了', '71', '1393436856', '<strong>我的问题：</strong>见我同桌了吗，他不理我了<br /><br /><strong>回复：</strong>他是要死的节奏', '27,28', '0', '0', '93', '1');
INSERT INTO `bbs_message` VALUES ('26', '&lt;b&gt;防着你呢&lt;/b&gt;', '70', '1393438220', '<p><strong>这是弹不出来框的</strong></p><p><strong>&lt;script&gt;alert(\'heihei\')&lt;/script&gt;<br /></strong></p>', '27', '0', '0', '1', '1');
INSERT INTO `bbs_message` VALUES ('27', '玉溪、走起？', '93', '1393438536', '<p>爱就马上行动吧<img alt=\"大笑\" src=\"/eschool/Public/xheditor/xheditor_emot/default/laugh.gif\" height=\"133\" width=\"133\" /></p>', '9', '0', '0', '27', '1');
INSERT INTO `bbs_message` VALUES ('28', '波哥来了。。。', '75', '1393438712', '<img alt=\"吐舌头\" src=\"/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" /><img alt=\"吐舌头\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/tongue.gif\" />', '9,10,11', '0', '0', '51', '1');
INSERT INTO `bbs_message` VALUES ('29', '告诉你波哥的威武', '63', '1393438991', '<img alt=\"生气\" src=\"/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" /><img alt=\"生气\" src=\"http://localhost/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" />', '24,27,28', '0', '0', '38', '1');
INSERT INTO `bbs_message` VALUES ('30', 'Java特级', '93', '1393459201', '<p>Java特级都有啥？</p><p>Java特级<strong>都有啥？</strong></p><p><strong>Java特级都有</strong>啥？Java特级都有啥？Java特级都有啥？</p><p>Java特级都有啥？Java特级都有啥？Java特级都有啥？Java特级都有啥？Java特级都有啥？</p><p>Java特级都有啥？Java特级都有啥？Java特级都有啥？</p><p>Java特级都有啥？Java特级都有啥？Java特级都有啥？Java特级都有啥？</p><p><br /></p><p>Java特级都有啥？Java特级都有啥？Java特级都有啥？Java特级都有啥？<br /></p>', '26', '0', '0', '1', '1');
INSERT INTO `bbs_message` VALUES ('31', '八百标兵奔北坡、、、接下来呢？', '70', '1393459578', '<strong>我的问题：</strong><p>八百标兵奔北坡、、、</p><p>接下来呢？？？<br /></p><br /><br /><strong>回复：炮兵并排北边跑</strong>', '19', '0', '0', '5', '1');
INSERT INTO `bbs_message` VALUES ('38', '2016马上要来了,大家有新的学习计划吗?', '55', '1446608602', '<strong><span style=\"font-size:18px;color:#ff6600;\">2016马上要来了,大家有新的学习计划吗?</span></strong>', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for bbs_question
-- ----------------------------
DROP TABLE IF EXISTS `bbs_question`;
CREATE TABLE `bbs_question` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '问题id号',
  `uid` int(10) NOT NULL COMMENT '提问会员id号',
  `tid` int(10) NOT NULL COMMENT '被提问教师id号',
  `addtime` int(11) NOT NULL DEFAULT '1' COMMENT '提问时间',
  `content` text NOT NULL COMMENT '提问内容',
  `keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '标签（关键字）',
  `rtime` int(11) NOT NULL DEFAULT '1' COMMENT '回复时间',
  `replay` text NOT NULL COMMENT '回复内容',
  `isbest` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '状态0隐藏1显示',
  `remind` enum('1','0') NOT NULL DEFAULT '0' COMMENT '提醒0不提示1提示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_question
-- ----------------------------
INSERT INTO `bbs_question` VALUES ('1', '66', '0', '1393434859', '张秀波是谁啊，有人认识他吗，认识的告诉我一声，', '29,10', '1', '', '0', '1', '0');
INSERT INTO `bbs_question` VALUES ('2', '68', '61', '1393435733', '<p>张老师啊、、、</p><p><img alt=\"偷笑\" src=\"/lalala/Public/xheditor/xheditor_emot/default/titter.gif\" /></p><p>这个这个咋解决？？？？</p>', '17', '1393436923', '哎、乖', '1', '1', '0');
INSERT INTO `bbs_question` VALUES ('3', '70', '64', '1393436432', '<p>管贤，看问题如图~</p><p><img src=\"/lalala/Public/Uploads/editor/201402/530e2704d460d.jpg\" width=\"300\" alt=\"\" /></p><p>少羽多大了<br /></p>', '10', '1393438825', '<span style=\"font-size:24px;\"><strong>15<img alt=\"偷笑\" src=\"Public/dwz/xheditor/xheditor_emot/default/titter.gif\" /></strong></span>', '0', '1', '0');
INSERT INTO `bbs_question` VALUES ('4', '69', '64', '1393436602', '听说你叫管董？<img alt=\"生气\" src=\"/eschool/Public/xheditor/xheditor_emot/default/mad.gif\" />', '9', '1393436908', '叫管之董、、、<img alt=\"偷笑\" src=\"Public/dwz/xheditor/xheditor_emot/default/titter.gif\" />', '1', '1', '0');
INSERT INTO `bbs_question` VALUES ('5', '71', '61', '1393436694', '见我同桌了吗，他不理我了', '27', '1393469302', '', '0', '1', '1');
INSERT INTO `bbs_question` VALUES ('6', '70', '66', '1393436762', '<p>问题11111111</p><p>对啦 小萍萍回答哦<br /></p>', '24', '1393438899', '好的亲', '0', '1', '0');
INSERT INTO `bbs_question` VALUES ('17', '64', '61', '1393472535', '?????????????', '13', '1393472579', '!!!!!!!!!!!', '0', '1', '0');
INSERT INTO `bbs_question` VALUES ('7', '74', '64', '1393436814', '请问贤哥，管炎为什么这么吊？？？<img alt=\"疑问\" src=\"/xian/Public/xheditor/xheditor_emot/default/doubt.gif\" />想了好久都想不出来啊', '23', '1393436860', '擦擦<span style=\"font-size:16px;\">擦擦<span style=\"color:#009900;\">擦擦</span></span><strong><span style=\"font-size:16px;\"><span style=\"color:#009900;\">擦</span>擦</span>擦擦<span style=\"color:#FF0000;\">擦擦</span></strong><span style=\"font-size:32px;color:#FF0000;\">擦擦擦擦</span><span style=\"font-size:32px;\">擦</span>擦擦', '0', '1', '1');
INSERT INTO `bbs_question` VALUES ('8', '71', '64', '1393436835', '很多人都说你是山炮，那请问你到底<img alt=\"惊恐\" src=\"/eschool/Public/xheditor/xheditor_emot/default/panic.gif\" height=\"55\" width=\"55\" />是不是山炮？？', '19', '1393436900', '必叉的啊，叫他<span style=\"font-family:KaiTi_GB2312;font-size:24px;\"><strong>董三炮</strong></span>！！！', '1', '1', '1');
INSERT INTO `bbs_question` VALUES ('9', '74', '61', '1393436941', '二货张管波的一天会快乐吗', '28', '1393458434', '应该会吧', '1', '1', '1');
INSERT INTO `bbs_question` VALUES ('10', '76', '75', '1393437153', '你喜欢红颜多久了？？？敢问姑娘你，敢爆照否', '23', '1393467738', '很久了<img src=\"/eschool/Public/Uploads/editor/201402/530ea155a7e09.jpg\" width=\"300\" alt=\"\" />', '1', '1', '1');
INSERT INTO `bbs_question` VALUES ('13', '93', '55', '1393438776', '为啥名字只能是六位？？？？', '27,19', '1393438923', '多了就跑了、、、', '1', '1', '1');
INSERT INTO `bbs_question` VALUES ('12', '70', '75', '1393438131', '<p>八百标兵奔北坡、、、</p><p>接下来呢？？？<br /></p>', '19', '1393438858', '<strong>炮兵并排北边跑</strong>', '0', '1', '0');
INSERT INTO `bbs_question` VALUES ('14', '61', '55', '1393439806', '多提俩有建设性的问题', '28', '1393441398', '啥情况啊', '0', '1', '1');
INSERT INTO `bbs_question` VALUES ('15', '93', '55', '1393458900', '版本控制器的冲突解决', '12', '1393468959', '认真点 把该删的删了，该留的留、就好啦！<br />', '0', '1', '1');
INSERT INTO `bbs_question` VALUES ('16', '65', '61', '1393462185', '万万没想到啊', '13', '1393467655', '你没想到个啥？', '1', '1', '1');

-- ----------------------------
-- Table structure for bbs_tgroup
-- ----------------------------
DROP TABLE IF EXISTS `bbs_tgroup`;
CREATE TABLE `bbs_tgroup` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '讨论组id',
  `name` varchar(30) NOT NULL COMMENT '讨论组名',
  `uid` int(10) NOT NULL COMMENT '会员id',
  `addtime` int(11) NOT NULL DEFAULT '1' COMMENT '创建时间',
  `cids` varchar(200) NOT NULL COMMENT '已加入小组成员id号（，分割）',
  `keyword` varchar(100) NOT NULL COMMENT '标签（关键字）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_tgroup
-- ----------------------------

-- ----------------------------
-- Table structure for edu_cat
-- ----------------------------
DROP TABLE IF EXISTS `edu_cat`;
CREATE TABLE `edu_cat` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `pid` int(5) unsigned NOT NULL,
  `path` varchar(20) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_cat
-- ----------------------------
INSERT INTO `edu_cat` VALUES ('1', 'PHP12', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('2', 'HTML', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('3', 'JavaScript', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('4', 'Java', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('5', 'C', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('6', 'MySQL', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('7', 'SQLServer', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('8', 'Linux', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('9', 'PHP基础', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('10', 'PHP高级', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('11', 'PHP特级', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('12', 'HTML', '2', '0,2,', '1');
INSERT INTO `edu_cat` VALUES ('13', 'XHTML', '2', '0,2,', '1');
INSERT INTO `edu_cat` VALUES ('14', 'CSS', '2', '0,2,', '1');
INSERT INTO `edu_cat` VALUES ('15', 'JS', '3', '0,3,', '1');
INSERT INTO `edu_cat` VALUES ('17', 'PHP最高级', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('19', 'JQuery', '3', '0,3,', '1');
INSERT INTO `edu_cat` VALUES ('23', '其他', '22', '0,22,', '1');
INSERT INTO `edu_cat` VALUES ('22', 'Other', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('24', 'Java基础', '4', '0,4,', '1');
INSERT INTO `edu_cat` VALUES ('25', 'Java高级', '4', '0,4,', '1');
INSERT INTO `edu_cat` VALUES ('26', 'Java特级', '4', '0,4,', '1');
INSERT INTO `edu_cat` VALUES ('27', 'java最高级', '4', '0,4,', '1');
INSERT INTO `edu_cat` VALUES ('28', 'C++', '5', '0,5,', '1');
INSERT INTO `edu_cat` VALUES ('29', 'C#', '5', '0,5,', '1');
INSERT INTO `edu_cat` VALUES ('30', '123', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('31', '123', '1', '0,1,', '1');
INSERT INTO `edu_cat` VALUES ('32', '123', '0', '0,', '1');
INSERT INTO `edu_cat` VALUES ('33', '123123', '0', '0,,', '1');

-- ----------------------------
-- Table structure for edu_class
-- ----------------------------
DROP TABLE IF EXISTS `edu_class`;
CREATE TABLE `edu_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_class
-- ----------------------------
INSERT INTO `edu_class` VALUES ('1', '2012级计算机科学与技术1班', '4', '1');
INSERT INTO `edu_class` VALUES ('2', '2012级计算机科学与技术2班', '4', '5');
INSERT INTO `edu_class` VALUES ('3', '2012级电子商务1班', '2', '3');
INSERT INTO `edu_class` VALUES ('4', '2012级电子商务2班', '4', '5');

-- ----------------------------
-- Table structure for edu_class_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_class_course`;
CREATE TABLE `edu_class_course` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `clid` int(12) DEFAULT NULL,
  `coid` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_class_course
-- ----------------------------
INSERT INTO `edu_class_course` VALUES ('1', '1', '1');
INSERT INTO `edu_class_course` VALUES ('2', '1', '4');
INSERT INTO `edu_class_course` VALUES ('3', '1', '5');
INSERT INTO `edu_class_course` VALUES ('9', '3', '2');
INSERT INTO `edu_class_course` VALUES ('10', '3', '4');
INSERT INTO `edu_class_course` VALUES ('11', '3', '6');
INSERT INTO `edu_class_course` VALUES ('13', '4', '4');
INSERT INTO `edu_class_course` VALUES ('14', '4', '6');

-- ----------------------------
-- Table structure for edu_clicknum
-- ----------------------------
DROP TABLE IF EXISTS `edu_clicknum`;
CREATE TABLE `edu_clicknum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id号',
  `clicknum` int(11) NOT NULL DEFAULT '0' COMMENT '网站的访问量',
  `clicktime` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次的访问时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_clicknum
-- ----------------------------
INSERT INTO `edu_clicknum` VALUES ('1', '3310', '1488648705');

-- ----------------------------
-- Table structure for edu_collect
-- ----------------------------
DROP TABLE IF EXISTS `edu_collect`;
CREATE TABLE `edu_collect` (
  `uid` int(10) unsigned DEFAULT '0' COMMENT '用户的id',
  `vid` int(10) unsigned DEFAULT '0' COMMENT '视频的id',
  `lid` int(10) unsigned DEFAULT '0' COMMENT '文库资源的id',
  `nid` int(10) unsigned DEFAULT '0' COMMENT '视频手记的id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_collect
-- ----------------------------
INSERT INTO `edu_collect` VALUES ('55', '67', '0', '0');
INSERT INTO `edu_collect` VALUES ('55', '0', '66', '0');
INSERT INTO `edu_collect` VALUES ('55', '0', '67', '0');
INSERT INTO `edu_collect` VALUES ('55', '0', '69', '0');
INSERT INTO `edu_collect` VALUES ('55', '0', '70', '0');
INSERT INTO `edu_collect` VALUES ('1', '0', '67', '0');
INSERT INTO `edu_collect` VALUES ('1', '0', '70', '0');
INSERT INTO `edu_collect` VALUES ('1', '0', '73', '0');
INSERT INTO `edu_collect` VALUES ('1', '0', '69', '0');
INSERT INTO `edu_collect` VALUES ('1', '0', '65', '0');

-- ----------------------------
-- Table structure for edu_college
-- ----------------------------
DROP TABLE IF EXISTS `edu_college`;
CREATE TABLE `edu_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_college
-- ----------------------------
INSERT INTO `edu_college` VALUES ('2', '农学院');
INSERT INTO `edu_college` VALUES ('3', '数学院');
INSERT INTO `edu_college` VALUES ('4', '计算机学院');

-- ----------------------------
-- Table structure for edu_comment
-- ----------------------------
DROP TABLE IF EXISTS `edu_comment`;
CREATE TABLE `edu_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档评论编号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '评论的用户ID',
  `lid` int(11) NOT NULL DEFAULT '0' COMMENT '评论文档的ID',
  `vid` int(11) NOT NULL DEFAULT '0' COMMENT '评论视频的ID',
  `nid` int(11) NOT NULL DEFAULT '0' COMMENT '评论手记的ID',
  `content` text NOT NULL COMMENT '用户评论的内容',
  `addtime` int(11) NOT NULL COMMENT '评论时间',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '评论状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_comment
-- ----------------------------
INSERT INTO `edu_comment` VALUES ('24', '1', '12', '0', '0', '回应两个', '1392363753', '2');
INSERT INTO `edu_comment` VALUES ('25', '1', '7', '0', '0', '看你妹', '1392363851', '2');
INSERT INTO `edu_comment` VALUES ('26', '1', '12', '0', '0', '认为斯坦福高行你', '1392565158', '1');
INSERT INTO `edu_comment` VALUES ('27', '1', '11', '0', '0', ',lll', '1392620441', '1');
INSERT INTO `edu_comment` VALUES ('28', '1', '16', '0', '0', '很有价值...', '1392643875', '2');
INSERT INTO `edu_comment` VALUES ('29', '1', '0', '14', '0', '这个视频不错，就是不清。', '1392644902', '2');
INSERT INTO `edu_comment` VALUES ('30', '1', '0', '14', '0', '可以评一个...', '1392644962', '2');
INSERT INTO `edu_comment` VALUES ('34', '36', '0', '19', '0', '啊哈哈哈哈啊、', '1392809816', '1');
INSERT INTO `edu_comment` VALUES ('22', '1', '7', '0', '0', '速速来看...', '1392299878', '2');
INSERT INTO `edu_comment` VALUES ('32', '1', '12', '0', '0', 'sss', '1392653363', '1');
INSERT INTO `edu_comment` VALUES ('33', '1', '0', '9', '0', '抢沙发了...', '1392701590', '2');
INSERT INTO `edu_comment` VALUES ('35', '36', '0', '19', '0', '怎么没有呢？', '1392810059', '1');

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_course
-- ----------------------------
INSERT INTO `edu_course` VALUES ('1', '软件工程');
INSERT INTO `edu_course` VALUES ('2', '线性代数');
INSERT INTO `edu_course` VALUES ('3', '概率论');
INSERT INTO `edu_course` VALUES ('4', '大学英语');
INSERT INTO `edu_course` VALUES ('5', '离散数学');
INSERT INTO `edu_course` VALUES ('6', '高等数学');

-- ----------------------------
-- Table structure for edu_course_point
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_point`;
CREATE TABLE `edu_course_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_course_point
-- ----------------------------
INSERT INTO `edu_course_point` VALUES ('1', '飒沓发', null, null);
INSERT INTO `edu_course_point` VALUES ('2', '阿德 ', '4', null);
INSERT INTO `edu_course_point` VALUES ('3', '课程', '0', null);
INSERT INTO `edu_course_point` VALUES ('4', '1', '6', null);
INSERT INTO `edu_course_point` VALUES ('5', '123123', '6', null);
INSERT INTO `edu_course_point` VALUES ('6', '撒旦法1111', '6', null);

-- ----------------------------
-- Table structure for edu_exam
-- ----------------------------
DROP TABLE IF EXISTS `edu_exam`;
CREATE TABLE `edu_exam` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(12) DEFAULT NULL,
  `uid` int(12) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `scoresingle` int(11) DEFAULT NULL,
  `scoremultiple` int(11) DEFAULT NULL,
  `scorejudge` int(11) DEFAULT NULL,
  `scoreblank` int(11) DEFAULT NULL,
  `scoreanswer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam
-- ----------------------------
INSERT INTO `edu_exam` VALUES ('3', '5', '55', '2016年离散数学期末考试', null, '1480262400', '1480435200', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('4', '3', '55', '2016年概率论期末考试', null, '1481817600', '1481904000', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('5', '4', '55', '2016年大学英语期末考试', null, '1481040000', '1481126400', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('6', '6', '55', '2016年高等数学期末考试', null, '1480953600', '1481040000', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('7', '4', '55', '概率论考试', null, '1481162400', '1481773500', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('8', '4', '55', '测试考试', null, '1482853404', '1482939809', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('9', '4', '55', 'asdf ', null, '1484050101', '1485518904', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('10', '4', '55', '飒沓发', null, '1484051063', '1484915065', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('11', '4', '55', '爱的色放啊', null, '1484053130', '1485434396', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('12', null, '55', null, null, '0', '0', '0', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('13', '0', '55', 'asdf ', null, '1486382870', '1487246873', '0', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('14', '4', '55', 'AAA', null, '1486383057', '1486469458', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('15', '4', '55', '撒地方安抚撒反对安抚', null, '1486387830', '1486560372', '1', null, null, null, null, null);
INSERT INTO `edu_exam` VALUES ('16', '4', '55', '测试文档', null, '1486388780', '1486475182', '1', '11', '22', '33', '44', '55');
INSERT INTO `edu_exam` VALUES ('17', '4', '55', '测试哈哈哈', null, '1488643001', '1488902203', '1', '2', '4', '2', '2', '5');
INSERT INTO `edu_exam` VALUES ('18', '4', '55', '测试aaa', null, '1488646488', '1489683289', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for edu_exam_question
-- ----------------------------
DROP TABLE IF EXISTS `edu_exam_question`;
CREATE TABLE `edu_exam_question` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `eid` int(12) NOT NULL,
  `qid` int(12) NOT NULL,
  `score` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_question
-- ----------------------------
INSERT INTO `edu_exam_question` VALUES ('7', '5', '54', null);
INSERT INTO `edu_exam_question` VALUES ('8', '5', '55', null);
INSERT INTO `edu_exam_question` VALUES ('9', '5', '56', null);
INSERT INTO `edu_exam_question` VALUES ('10', '5', '57', null);
INSERT INTO `edu_exam_question` VALUES ('12', '5', '59', null);
INSERT INTO `edu_exam_question` VALUES ('13', '5', '60', null);
INSERT INTO `edu_exam_question` VALUES ('14', '5', '61', null);
INSERT INTO `edu_exam_question` VALUES ('15', '5', '62', null);
INSERT INTO `edu_exam_question` VALUES ('18', '5', '65', null);
INSERT INTO `edu_exam_question` VALUES ('19', '5', '66', null);
INSERT INTO `edu_exam_question` VALUES ('20', '5', '67', null);
INSERT INTO `edu_exam_question` VALUES ('22', '5', '69', null);
INSERT INTO `edu_exam_question` VALUES ('23', '5', '70', null);
INSERT INTO `edu_exam_question` VALUES ('24', '5', '71', null);
INSERT INTO `edu_exam_question` VALUES ('25', '5', '72', null);
INSERT INTO `edu_exam_question` VALUES ('27', '5', '74', null);
INSERT INTO `edu_exam_question` VALUES ('28', '5', '75', null);
INSERT INTO `edu_exam_question` VALUES ('29', '5', '76', null);
INSERT INTO `edu_exam_question` VALUES ('30', '5', '77', null);
INSERT INTO `edu_exam_question` VALUES ('33', '5', '80', null);
INSERT INTO `edu_exam_question` VALUES ('34', '5', '81', null);
INSERT INTO `edu_exam_question` VALUES ('35', '5', '82', null);
INSERT INTO `edu_exam_question` VALUES ('36', '8', '78', null);
INSERT INTO `edu_exam_question` VALUES ('38', '8', '83', null);
INSERT INTO `edu_exam_question` VALUES ('41', '8', '86', null);
INSERT INTO `edu_exam_question` VALUES ('42', '8', '71', null);
INSERT INTO `edu_exam_question` VALUES ('43', '8', '92', null);
INSERT INTO `edu_exam_question` VALUES ('44', '8', '77', null);
INSERT INTO `edu_exam_question` VALUES ('45', '5', '83', null);
INSERT INTO `edu_exam_question` VALUES ('46', '5', '53', null);
INSERT INTO `edu_exam_question` VALUES ('47', '5', '89', null);
INSERT INTO `edu_exam_question` VALUES ('48', '5', '68', null);
INSERT INTO `edu_exam_question` VALUES ('49', '5', '88', null);
INSERT INTO `edu_exam_question` VALUES ('50', '5', '73', null);
INSERT INTO `edu_exam_question` VALUES ('52', '8', '53', null);
INSERT INTO `edu_exam_question` VALUES ('53', '8', '65', null);
INSERT INTO `edu_exam_question` VALUES ('54', '8', '63', null);
INSERT INTO `edu_exam_question` VALUES ('55', '8', '57', null);
INSERT INTO `edu_exam_question` VALUES ('56', '8', '72', null);
INSERT INTO `edu_exam_question` VALUES ('57', '8', '67', null);
INSERT INTO `edu_exam_question` VALUES ('58', '8', '82', null);
INSERT INTO `edu_exam_question` VALUES ('59', '8', '62', null);
INSERT INTO `edu_exam_question` VALUES ('60', '8', '68', null);
INSERT INTO `edu_exam_question` VALUES ('61', '8', '88', null);
INSERT INTO `edu_exam_question` VALUES ('62', '8', '73', null);
INSERT INTO `edu_exam_question` VALUES ('63', '8', '58', null);
INSERT INTO `edu_exam_question` VALUES ('64', '8', '79', null);
INSERT INTO `edu_exam_question` VALUES ('65', '8', '91', null);
INSERT INTO `edu_exam_question` VALUES ('66', '9', '58', null);
INSERT INTO `edu_exam_question` VALUES ('67', '9', '68', null);
INSERT INTO `edu_exam_question` VALUES ('68', '9', '53', null);
INSERT INTO `edu_exam_question` VALUES ('69', '9', '88', null);
INSERT INTO `edu_exam_question` VALUES ('70', '9', '84', null);
INSERT INTO `edu_exam_question` VALUES ('71', '9', '69', null);
INSERT INTO `edu_exam_question` VALUES ('72', '9', '79', null);
INSERT INTO `edu_exam_question` VALUES ('73', '9', '54', null);
INSERT INTO `edu_exam_question` VALUES ('74', '9', '71', null);
INSERT INTO `edu_exam_question` VALUES ('75', '9', '86', null);
INSERT INTO `edu_exam_question` VALUES ('76', '9', '87', null);
INSERT INTO `edu_exam_question` VALUES ('77', '9', '62', null);
INSERT INTO `edu_exam_question` VALUES ('78', '9', '72', null);
INSERT INTO `edu_exam_question` VALUES ('79', '10', '78', null);
INSERT INTO `edu_exam_question` VALUES ('80', '10', '88', null);
INSERT INTO `edu_exam_question` VALUES ('81', '10', '73', null);
INSERT INTO `edu_exam_question` VALUES ('106', '11', '53', null);
INSERT INTO `edu_exam_question` VALUES ('107', '11', '54', null);
INSERT INTO `edu_exam_question` VALUES ('108', '11', '55', null);
INSERT INTO `edu_exam_question` VALUES ('109', '11', '56', null);
INSERT INTO `edu_exam_question` VALUES ('110', '11', '57', null);
INSERT INTO `edu_exam_question` VALUES ('111', '14', '53', null);
INSERT INTO `edu_exam_question` VALUES ('112', '14', '54', null);
INSERT INTO `edu_exam_question` VALUES ('113', '14', '55', null);
INSERT INTO `edu_exam_question` VALUES ('114', '14', '65', null);
INSERT INTO `edu_exam_question` VALUES ('115', '14', '70', null);
INSERT INTO `edu_exam_question` VALUES ('116', '14', '75', null);
INSERT INTO `edu_exam_question` VALUES ('117', '14', '80', null);
INSERT INTO `edu_exam_question` VALUES ('118', '14', '56', null);
INSERT INTO `edu_exam_question` VALUES ('119', '14', '61', null);
INSERT INTO `edu_exam_question` VALUES ('120', '14', '71', null);
INSERT INTO `edu_exam_question` VALUES ('121', '14', '86', null);
INSERT INTO `edu_exam_question` VALUES ('122', '14', '91', null);
INSERT INTO `edu_exam_question` VALUES ('123', '14', '72', null);
INSERT INTO `edu_exam_question` VALUES ('124', '14', '77', null);
INSERT INTO `edu_exam_question` VALUES ('125', '14', '83', null);
INSERT INTO `edu_exam_question` VALUES ('126', '14', '68', null);
INSERT INTO `edu_exam_question` VALUES ('127', '14', '58', null);
INSERT INTO `edu_exam_question` VALUES ('128', '14', '73', null);
INSERT INTO `edu_exam_question` VALUES ('129', '14', '88', null);
INSERT INTO `edu_exam_question` VALUES ('130', '14', '78', null);
INSERT INTO `edu_exam_question` VALUES ('131', '14', '63', null);
INSERT INTO `edu_exam_question` VALUES ('132', '14', '108', null);
INSERT INTO `edu_exam_question` VALUES ('133', '14', '84', null);
INSERT INTO `edu_exam_question` VALUES ('134', '14', '69', null);
INSERT INTO `edu_exam_question` VALUES ('135', '14', '59', null);
INSERT INTO `edu_exam_question` VALUES ('136', '14', '74', null);
INSERT INTO `edu_exam_question` VALUES ('137', '14', '89', null);
INSERT INTO `edu_exam_question` VALUES ('138', '14', '79', null);
INSERT INTO `edu_exam_question` VALUES ('139', '14', '64', null);
INSERT INTO `edu_exam_question` VALUES ('191', '16', '53', null);
INSERT INTO `edu_exam_question` VALUES ('192', '16', '54', null);
INSERT INTO `edu_exam_question` VALUES ('193', '16', '55', null);
INSERT INTO `edu_exam_question` VALUES ('194', '16', '56', null);
INSERT INTO `edu_exam_question` VALUES ('195', '16', '57', null);
INSERT INTO `edu_exam_question` VALUES ('196', '17', '54', null);
INSERT INTO `edu_exam_question` VALUES ('197', '17', '69', null);
INSERT INTO `edu_exam_question` VALUES ('198', '17', '74', null);
INSERT INTO `edu_exam_question` VALUES ('199', '17', '79', null);
INSERT INTO `edu_exam_question` VALUES ('200', '17', '84', null);
INSERT INTO `edu_exam_question` VALUES ('201', '17', '55', null);
INSERT INTO `edu_exam_question` VALUES ('202', '17', '60', null);
INSERT INTO `edu_exam_question` VALUES ('203', '17', '75', null);
INSERT INTO `edu_exam_question` VALUES ('204', '17', '80', null);
INSERT INTO `edu_exam_question` VALUES ('205', '17', '90', null);
INSERT INTO `edu_exam_question` VALUES ('206', '17', '56', null);
INSERT INTO `edu_exam_question` VALUES ('207', '17', '61', null);
INSERT INTO `edu_exam_question` VALUES ('208', '17', '81', null);
INSERT INTO `edu_exam_question` VALUES ('209', '17', '86', null);
INSERT INTO `edu_exam_question` VALUES ('210', '17', '91', null);
INSERT INTO `edu_exam_question` VALUES ('211', '17', '57', null);
INSERT INTO `edu_exam_question` VALUES ('212', '18', '53', null);
INSERT INTO `edu_exam_question` VALUES ('213', '18', '54', null);
INSERT INTO `edu_exam_question` VALUES ('214', '18', '55', null);
INSERT INTO `edu_exam_question` VALUES ('215', '18', '56', null);
INSERT INTO `edu_exam_question` VALUES ('216', '18', '57', null);

-- ----------------------------
-- Table structure for edu_exam_question_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_exam_question_student`;
CREATE TABLE `edu_exam_question_student` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `eid` int(12) NOT NULL,
  `qid` int(12) NOT NULL,
  `sid` int(12) NOT NULL,
  `eqid` int(12) NOT NULL,
  `esid` int(12) NOT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `addtime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_question_student
-- ----------------------------
INSERT INTO `edu_exam_question_student` VALUES ('60', '5', '73', '1', '26', '24', 'B', '2', '2', '1481050552');
INSERT INTO `edu_exam_question_student` VALUES ('61', '5', '53', '1', '6', '24', 'B', '2', '2', '1481050555');
INSERT INTO `edu_exam_question_student` VALUES ('62', '5', '68', '1', '21', '24', 'B', '2', '2', '1481050556');
INSERT INTO `edu_exam_question_student` VALUES ('63', '5', '63', '1', '16', '24', 'B', '2', '2', '1481050557');
INSERT INTO `edu_exam_question_student` VALUES ('64', '5', '78', '1', '31', '24', 'B', '2', '2', '1481050558');
INSERT INTO `edu_exam_question_student` VALUES ('65', '5', '58', '1', '11', '24', 'B', '2', '2', '1481050559');
INSERT INTO `edu_exam_question_student` VALUES ('66', '5', '64', '1', '17', '24', 'B', '0', '2', '1481050560');
INSERT INTO `edu_exam_question_student` VALUES ('67', '5', '79', '1', '32', '24', 'B', '0', '2', '1481050561');
INSERT INTO `edu_exam_question_student` VALUES ('68', '5', '62', '1', '15', '24', '123123', '2', '2', '1481050567');
INSERT INTO `edu_exam_question_student` VALUES ('69', '5', '77', '1', '30', '24', '111123123', '5', '2', '1481050572');
INSERT INTO `edu_exam_question_student` VALUES ('70', '8', '83', '1', '38', '25', 'D', '2', '2', '1482853667');
INSERT INTO `edu_exam_question_student` VALUES ('71', '8', '78', '1', '36', '25', 'B', '2', '2', '1482853678');
INSERT INTO `edu_exam_question_student` VALUES ('72', '8', '89', '1', '39', '25', 'AB', '0', '2', '1482853680');
INSERT INTO `edu_exam_question_student` VALUES ('73', '8', '74', '1', '40', '25', 'ABD', '2', '2', '1482853688');
INSERT INTO `edu_exam_question_student` VALUES ('74', '8', '86', '1', '41', '25', '啊', '0', '2', '1482853691');
INSERT INTO `edu_exam_question_student` VALUES ('75', '8', '71', '1', '42', '25', '啊', '0', '2', '1482853692');
INSERT INTO `edu_exam_question_student` VALUES ('76', '8', '77', '1', '44', '25', '啊', '8', '2', '1482853695');
INSERT INTO `edu_exam_question_student` VALUES ('77', '8', '92', '1', '43', '25', '啊', '8', '2', '1482853697');
INSERT INTO `edu_exam_question_student` VALUES ('78', '9', '58', '1', '66', '26', 'B', '2', '2', '1484050154');
INSERT INTO `edu_exam_question_student` VALUES ('79', '9', '68', '1', '67', '26', 'B', '2', '2', '1484050155');
INSERT INTO `edu_exam_question_student` VALUES ('80', '9', '53', '1', '68', '26', 'B', '2', '2', '1484050156');
INSERT INTO `edu_exam_question_student` VALUES ('81', '9', '88', '1', '69', '26', 'B', '0', '2', '1484050157');
INSERT INTO `edu_exam_question_student` VALUES ('82', '9', '84', '1', '70', '26', 'B', '0', '2', '1484050158');
INSERT INTO `edu_exam_question_student` VALUES ('83', '9', '69', '1', '71', '26', 'B', '0', '2', '1484050159');
INSERT INTO `edu_exam_question_student` VALUES ('84', '9', '79', '1', '72', '26', 'B', '0', '2', '1484050161');
INSERT INTO `edu_exam_question_student` VALUES ('85', '9', '54', '1', '73', '26', 'B', '0', '2', '1484050162');
INSERT INTO `edu_exam_question_student` VALUES ('86', '9', '71', '1', '74', '26', 'as ', '0', '2', '1484050164');
INSERT INTO `edu_exam_question_student` VALUES ('87', '9', '86', '1', '75', '26', 'as df', '0', '2', '1484050165');
INSERT INTO `edu_exam_question_student` VALUES ('88', '9', '87', '1', '76', '26', 'ad f', null, '1', '1484050166');
INSERT INTO `edu_exam_question_student` VALUES ('89', '9', '62', '1', '77', '26', 'adsf ', null, '1', '1484050167');
INSERT INTO `edu_exam_question_student` VALUES ('90', '9', '72', '1', '78', '26', 'asdf ', null, '1', '1484050168');
INSERT INTO `edu_exam_question_student` VALUES ('91', '16', '108', '1', '153', '31', 'D', '11', '2', '1486391348');
INSERT INTO `edu_exam_question_student` VALUES ('92', '16', '73', '1', '149', '31', 'B', '11', '2', '1486391363');
INSERT INTO `edu_exam_question_student` VALUES ('93', '17', '69', '1', '197', '32', 'ABD', '4', '2', '1488643102');
INSERT INTO `edu_exam_question_student` VALUES ('94', '17', '54', '1', '196', '32', 'B', '0', '2', '1488643104');
INSERT INTO `edu_exam_question_student` VALUES ('95', '17', '84', '1', '200', '32', 'B', '0', '2', '1488643106');
INSERT INTO `edu_exam_question_student` VALUES ('96', '17', '79', '1', '199', '32', 'B', '0', '2', '1488643107');
INSERT INTO `edu_exam_question_student` VALUES ('97', '17', '74', '1', '198', '32', 'B', '0', '2', '1488643108');
INSERT INTO `edu_exam_question_student` VALUES ('98', '17', '90', '1', '205', '32', '错', '2', '2', '1488643110');
INSERT INTO `edu_exam_question_student` VALUES ('99', '17', '80', '1', '204', '32', '错', '2', '2', '1488643111');
INSERT INTO `edu_exam_question_student` VALUES ('100', '17', '75', '1', '203', '32', '错', '2', '2', '1488643113');
INSERT INTO `edu_exam_question_student` VALUES ('101', '17', '60', '1', '202', '32', '错', '2', '2', '1488643114');
INSERT INTO `edu_exam_question_student` VALUES ('102', '17', '55', '1', '201', '32', '对', '0', '2', '1488643115');
INSERT INTO `edu_exam_question_student` VALUES ('103', '17', '81', '1', '208', '32', '123', '1', '2', '1488643274');
INSERT INTO `edu_exam_question_student` VALUES ('104', '17', '61', '1', '207', '32', '231', '2', '2', '1488643271');
INSERT INTO `edu_exam_question_student` VALUES ('105', '17', '56', '1', '206', '32', '123', '3', '2', '1488643270');
INSERT INTO `edu_exam_question_student` VALUES ('106', '17', '91', '1', '210', '32', '123', '4', '2', '1488643268');
INSERT INTO `edu_exam_question_student` VALUES ('107', '17', '86', '1', '209', '32', '123', '5', '2', '1488643267');
INSERT INTO `edu_exam_question_student` VALUES ('108', '17', '57', '1', '211', '32', '123', '6', '2', '1488643270');
INSERT INTO `edu_exam_question_student` VALUES ('109', '18', '56', '1', '215', '33', '<img src=\"/Public/Uploads/editor/201703/58baf934dc931.jpg\" alt=\"\" />', '2', '2', '1488648503');
INSERT INTO `edu_exam_question_student` VALUES ('110', '18', '57', '1', '216', '33', '<img src=\"/Public/Uploads/editor/201703/58baf94c988be.jpg\" width=\"300\" height=\"100\" alt=\"\" />', '7', '2', '1488648534');
INSERT INTO `edu_exam_question_student` VALUES ('111', '18', '53', '1', '212', '33', 'D', '0', '2', '1488648487');
INSERT INTO `edu_exam_question_student` VALUES ('112', '18', '54', '1', '213', '33', 'C', '0', '2', '1488648491');
INSERT INTO `edu_exam_question_student` VALUES ('113', '18', '55', '1', '214', '33', '错', '1', '2', '1488648493');

-- ----------------------------
-- Table structure for edu_exam_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_exam_student`;
CREATE TABLE `edu_exam_student` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `eid` int(12) NOT NULL,
  `sid` int(12) NOT NULL,
  `score` int(3) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `starttime` int(12) DEFAULT NULL,
  `endtime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_student
-- ----------------------------
INSERT INTO `edu_exam_student` VALUES ('24', '5', '1', '19', '2', '1481050547', '1481050574');
INSERT INTO `edu_exam_student` VALUES ('25', '8', '1', '22', '2', '1482853653', '1482853703');
INSERT INTO `edu_exam_student` VALUES ('26', '9', '1', '6', '1', '1484050141', '1484050172');
INSERT INTO `edu_exam_student` VALUES ('27', '10', '1', null, '0', '1484051092', null);
INSERT INTO `edu_exam_student` VALUES ('28', '11', '1', null, '0', '1484053134', null);
INSERT INTO `edu_exam_student` VALUES ('29', '14', '1', null, '0', '1486387613', null);
INSERT INTO `edu_exam_student` VALUES ('30', '15', '1', null, '0', '1486391315', null);
INSERT INTO `edu_exam_student` VALUES ('31', '16', '1', null, '0', '1486391336', null);
INSERT INTO `edu_exam_student` VALUES ('32', '17', '1', '33', '2', '1488643093', '1488643282');
INSERT INTO `edu_exam_student` VALUES ('33', '18', '1', '10', '2', '1488646534', '1488648543');

-- ----------------------------
-- Table structure for edu_flink
-- ----------------------------
DROP TABLE IF EXISTS `edu_flink`;
CREATE TABLE `edu_flink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接编号',
  `webname` varchar(32) NOT NULL COMMENT '网站名称',
  `url` varchar(60) NOT NULL COMMENT '网站网址',
  `email` varchar(60) NOT NULL COMMENT '站长Email',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `descr` text NOT NULL COMMENT '网站描述',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_flink
-- ----------------------------
INSERT INTO `edu_flink` VALUES ('1', '百度', 'http://www.baidu.com', 'baidu@qq.com', '1392264115', '百度一下', '2');
INSERT INTO `edu_flink` VALUES ('2', '新浪', 'http://www.sina.com', 'sina@sina.com', '1392264421', '新浪网', '2');
INSERT INTO `edu_flink` VALUES ('3', '搜狐网', 'http://www.souhu.com', 'souhu@163.com', '1392264482', '搜狐网...', '2');
INSERT INTO `edu_flink` VALUES ('4', 'dede168', 'http://www.dede168.com', 'tenxun@qq.com', '1392264526', 'dede168源码网', '2');

-- ----------------------------
-- Table structure for edu_friend
-- ----------------------------
DROP TABLE IF EXISTS `edu_friend`;
CREATE TABLE `edu_friend` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `fid` int(10) unsigned NOT NULL COMMENT '关注用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_friend
-- ----------------------------
INSERT INTO `edu_friend` VALUES ('61', '70');
INSERT INTO `edu_friend` VALUES ('61', '62');
INSERT INTO `edu_friend` VALUES ('61', '66');
INSERT INTO `edu_friend` VALUES ('61', '64');
INSERT INTO `edu_friend` VALUES ('61', '65');
INSERT INTO `edu_friend` VALUES ('61', '68');
INSERT INTO `edu_friend` VALUES ('63', '71');
INSERT INTO `edu_friend` VALUES ('64', '73');
INSERT INTO `edu_friend` VALUES ('64', '67');
INSERT INTO `edu_friend` VALUES ('64', '86');
INSERT INTO `edu_friend` VALUES ('64', '71');
INSERT INTO `edu_friend` VALUES ('64', '84');
INSERT INTO `edu_friend` VALUES ('75', '64');
INSERT INTO `edu_friend` VALUES ('75', '66');
INSERT INTO `edu_friend` VALUES ('75', '62');
INSERT INTO `edu_friend` VALUES ('75', '70');
INSERT INTO `edu_friend` VALUES ('93', '70');
INSERT INTO `edu_friend` VALUES ('93', '71');
INSERT INTO `edu_friend` VALUES ('93', '66');
INSERT INTO `edu_friend` VALUES ('93', '64');
INSERT INTO `edu_friend` VALUES ('93', '65');
INSERT INTO `edu_friend` VALUES ('93', '62');
INSERT INTO `edu_friend` VALUES ('93', '61');
INSERT INTO `edu_friend` VALUES ('93', '68');
INSERT INTO `edu_friend` VALUES ('93', '74');
INSERT INTO `edu_friend` VALUES ('86', '64');
INSERT INTO `edu_friend` VALUES ('78', '64');
INSERT INTO `edu_friend` VALUES ('73', '64');
INSERT INTO `edu_friend` VALUES ('71', '68');
INSERT INTO `edu_friend` VALUES ('71', '70');
INSERT INTO `edu_friend` VALUES ('71', '64');
INSERT INTO `edu_friend` VALUES ('71', '66');
INSERT INTO `edu_friend` VALUES ('72', '64');
INSERT INTO `edu_friend` VALUES ('69', '61');
INSERT INTO `edu_friend` VALUES ('69', '62');
INSERT INTO `edu_friend` VALUES ('69', '64');
INSERT INTO `edu_friend` VALUES ('70', '68');
INSERT INTO `edu_friend` VALUES ('69', '66');
INSERT INTO `edu_friend` VALUES ('77', '64');
INSERT INTO `edu_friend` VALUES ('69', '68');
INSERT INTO `edu_friend` VALUES ('70', '65');
INSERT INTO `edu_friend` VALUES ('70', '61');
INSERT INTO `edu_friend` VALUES ('70', '64');
INSERT INTO `edu_friend` VALUES ('70', '62');
INSERT INTO `edu_friend` VALUES ('70', '66');
INSERT INTO `edu_friend` VALUES ('76', '67');
INSERT INTO `edu_friend` VALUES ('68', '92');
INSERT INTO `edu_friend` VALUES ('68', '64');
INSERT INTO `edu_friend` VALUES ('68', '62');
INSERT INTO `edu_friend` VALUES ('68', '61');
INSERT INTO `edu_friend` VALUES ('68', '66');
INSERT INTO `edu_friend` VALUES ('67', '66');
INSERT INTO `edu_friend` VALUES ('67', '68');
INSERT INTO `edu_friend` VALUES ('66', '65');
INSERT INTO `edu_friend` VALUES ('66', '61');
INSERT INTO `edu_friend` VALUES ('66', '64');
INSERT INTO `edu_friend` VALUES ('66', '62');
INSERT INTO `edu_friend` VALUES ('68', '65');
INSERT INTO `edu_friend` VALUES ('65', '64');
INSERT INTO `edu_friend` VALUES ('65', '55');
INSERT INTO `edu_friend` VALUES ('62', '61');
INSERT INTO `edu_friend` VALUES ('62', '64');
INSERT INTO `edu_friend` VALUES ('64', '77');
INSERT INTO `edu_friend` VALUES ('63', '70');
INSERT INTO `edu_friend` VALUES ('63', '62');
INSERT INTO `edu_friend` VALUES ('63', '61');
INSERT INTO `edu_friend` VALUES ('62', '70');
INSERT INTO `edu_friend` VALUES ('68', '70');
INSERT INTO `edu_friend` VALUES ('68', '73');
INSERT INTO `edu_friend` VALUES ('68', '69');
INSERT INTO `edu_friend` VALUES ('68', '86');
INSERT INTO `edu_friend` VALUES ('68', '70');
INSERT INTO `edu_friend` VALUES ('68', '63');
INSERT INTO `edu_friend` VALUES ('63', '68');
INSERT INTO `edu_friend` VALUES ('67', '70');
INSERT INTO `edu_friend` VALUES ('67', '76');
INSERT INTO `edu_friend` VALUES ('68', '67');
INSERT INTO `edu_friend` VALUES ('68', '78');
INSERT INTO `edu_friend` VALUES ('68', '73');
INSERT INTO `edu_friend` VALUES ('68', '72');
INSERT INTO `edu_friend` VALUES ('64', '93');
INSERT INTO `edu_friend` VALUES ('70', '71');
INSERT INTO `edu_friend` VALUES ('70', '93');
INSERT INTO `edu_friend` VALUES ('95', '69');
INSERT INTO `edu_friend` VALUES ('63', '95');
INSERT INTO `edu_friend` VALUES ('62', '95');
INSERT INTO `edu_friend` VALUES ('68', '95');
INSERT INTO `edu_friend` VALUES ('64', '68');
INSERT INTO `edu_friend` VALUES ('64', '61');
INSERT INTO `edu_friend` VALUES ('64', '75');

-- ----------------------------
-- Table structure for edu_library
-- ----------------------------
DROP TABLE IF EXISTS `edu_library`;
CREATE TABLE `edu_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档编号',
  `type` int(11) NOT NULL COMMENT '文档类型ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `cid` int(12) DEFAULT '0',
  `title` varchar(32) NOT NULL COMMENT '上传文档名',
  `name` varchar(32) DEFAULT NULL COMMENT '上传文件的随机名',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '上传文档的大小',
  `basename` varchar(32) DEFAULT NULL,
  `basesize` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT '0' COMMENT '上传文档的时间',
  `favoritenum` int(11) DEFAULT '0' COMMENT '文档被顶的次数',
  `clicknum` int(11) DEFAULT '0' COMMENT '文档的浏览次数',
  `downloadnum` int(11) DEFAULT '0' COMMENT '文档的下载次数',
  `canview` int(1) DEFAULT '0',
  `candownload` int(1) DEFAULT '0',
  `note` varchar(200) DEFAULT NULL,
  `status` smallint(1) DEFAULT '0' COMMENT '上传文档的状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_library
-- ----------------------------
INSERT INTO `edu_library` VALUES ('65', '1', '55', '6', '测试 pdf文档', '57fb4b64c27b7.pdf', '493531', null, null, '1476086628', '0', '9', '0', '1', '1', '', '1');
INSERT INTO `edu_library` VALUES ('66', '2', '55', '4', '测试 WMV', '57fb4bd7e2da0.wmv', '26246026', null, null, '1476086744', '0', '13', '0', '1', '1', '', '1');
INSERT INTO `edu_library` VALUES ('67', '2', '55', '4', '测试 MP4', '57fb4d2eb9021.mp4', '104988087', null, null, '1476087087', '0', '67', '0', '1', '0', '', '1');
INSERT INTO `edu_library` VALUES ('68', '1', '55', '4', '测试文档', '57fba4b5eec25.pdf', '1059', null, null, '1476109494', '0', '3', '0', '1', '0', '', '1');
INSERT INTO `edu_library` VALUES ('69', '1', '55', '4', '测试文档2', '57fba71a23a33.pdf', '290879', null, null, '1476110106', '0', '23', '2', '1', '1', '1', '1');
INSERT INTO `edu_library` VALUES ('70', '1', '55', '4', '文档 哈哈哈', '57fba79354eff.pdf', '739781', null, null, '1476110230', '0', '37', '0', '1', '1', '', '2');
INSERT INTO `edu_library` VALUES ('71', '2', '97', '4', '大学英语四级', '58593d4863d00.rmvb', '940380365', null, null, '1482243263', '0', '4', '0', '1', '1', '', '1');
INSERT INTO `edu_library` VALUES ('72', '2', '55', '4', '大学英语四级', '585e62e48d16d.mkv', '486392095', null, null, '1482580712', '0', '2', '0', '1', '1', '', '1');
INSERT INTO `edu_library` VALUES ('73', '2', '55', '4', '英语对话学习', '5862a40ce2c20.mp4', '428845531', null, null, '1482859539', '0', '4', '2', '1', '1', '', '1');
INSERT INTO `edu_library` VALUES ('74', '2', '55', '5', '测试视频', '58bad28593b6d.mp4', '217430316', '58bad28593b6d.mp4', '217430316', '1488637853', '0', '0', '0', '1', '0', '', '0');

-- ----------------------------
-- Table structure for edu_like
-- ----------------------------
DROP TABLE IF EXISTS `edu_like`;
CREATE TABLE `edu_like` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `mid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子id',
  `qid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_like
-- ----------------------------
INSERT INTO `edu_like` VALUES ('64', '36', '0');
INSERT INTO `edu_like` VALUES ('64', '0', '17');
INSERT INTO `edu_like` VALUES ('64', '8', '0');
INSERT INTO `edu_like` VALUES ('93', '35', '0');
INSERT INTO `edu_like` VALUES ('61', '35', '0');
INSERT INTO `edu_like` VALUES ('65', '34', '0');
INSERT INTO `edu_like` VALUES ('93', '31', '0');
INSERT INTO `edu_like` VALUES ('93', '12', '0');
INSERT INTO `edu_like` VALUES ('68', '29', '0');
INSERT INTO `edu_like` VALUES ('65', '21', '0');
INSERT INTO `edu_like` VALUES ('65', '22', '0');
INSERT INTO `edu_like` VALUES ('65', '12', '0');
INSERT INTO `edu_like` VALUES ('62', '25', '0');
INSERT INTO `edu_like` VALUES ('68', '0', '15');
INSERT INTO `edu_like` VALUES ('70', '0', '12');
INSERT INTO `edu_like` VALUES ('61', '25', '0');
INSERT INTO `edu_like` VALUES ('93', '0', '8');
INSERT INTO `edu_like` VALUES ('93', '27', '0');
INSERT INTO `edu_like` VALUES ('93', '25', '0');
INSERT INTO `edu_like` VALUES ('70', '9', '0');
INSERT INTO `edu_like` VALUES ('70', '25', '0');
INSERT INTO `edu_like` VALUES ('70', '25', '0');
INSERT INTO `edu_like` VALUES ('70', '0', '7');
INSERT INTO `edu_like` VALUES ('70', '0', '2');
INSERT INTO `edu_like` VALUES ('70', '0', '4');
INSERT INTO `edu_like` VALUES ('70', '7', '0');
INSERT INTO `edu_like` VALUES ('74', '0', '4');
INSERT INTO `edu_like` VALUES ('70', '18', '0');
INSERT INTO `edu_like` VALUES ('70', '15', '0');
INSERT INTO `edu_like` VALUES ('68', '15', '0');
INSERT INTO `edu_like` VALUES ('68', '19', '0');
INSERT INTO `edu_like` VALUES ('68', '0', '2');
INSERT INTO `edu_like` VALUES ('68', '18', '0');
INSERT INTO `edu_like` VALUES ('67', '17', '0');
INSERT INTO `edu_like` VALUES ('66', '16', '0');
INSERT INTO `edu_like` VALUES ('68', '16', '0');
INSERT INTO `edu_like` VALUES ('66', '13', '0');
INSERT INTO `edu_like` VALUES ('65', '9', '0');
INSERT INTO `edu_like` VALUES ('61', '5', '0');

-- ----------------------------
-- Table structure for edu_limit
-- ----------------------------
DROP TABLE IF EXISTS `edu_limit`;
CREATE TABLE `edu_limit` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `limitname` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `action` varchar(20) DEFAULT NULL COMMENT '对应模块',
  `function` varchar(20) DEFAULT NULL COMMENT '方法',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`limitname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_limit
-- ----------------------------

-- ----------------------------
-- Table structure for edu_major
-- ----------------------------
DROP TABLE IF EXISTS `edu_major`;
CREATE TABLE `edu_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_major
-- ----------------------------
INSERT INTO `edu_major` VALUES ('1', '计算机科学与技术', '3');
INSERT INTO `edu_major` VALUES ('3', '计算机信息管理', '4');
INSERT INTO `edu_major` VALUES ('5', '电子商务', '3');
INSERT INTO `edu_major` VALUES ('9', '软件工程', '3');
INSERT INTO `edu_major` VALUES ('10', '1', '2');
INSERT INTO `edu_major` VALUES ('11', '123', '2');

-- ----------------------------
-- Table structure for edu_node
-- ----------------------------
DROP TABLE IF EXISTS `edu_node`;
CREATE TABLE `edu_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '节点id',
  `name` varchar(20) NOT NULL COMMENT '操作名称',
  `mname` varchar(50) NOT NULL COMMENT 'model名称',
  `aname` varchar(50) NOT NULL COMMENT 'action名称',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_node
-- ----------------------------
INSERT INTO `edu_node` VALUES ('1', '院系管理', 'college', 'index', '1');
INSERT INTO `edu_node` VALUES ('2', '专业管理', 'major', 'index', '1');
INSERT INTO `edu_node` VALUES ('3', '班级管理', 'class', 'index', '1');
INSERT INTO `edu_node` VALUES ('4', '课程管理', 'course', 'index', '1');
INSERT INTO `edu_node` VALUES ('5', '用户管理', 'users', 'index', '1');
INSERT INTO `edu_node` VALUES ('6', '学生管理', 'student', 'index', '1');
INSERT INTO `edu_node` VALUES ('7', '角色管理', 'roles', 'index', '1');
INSERT INTO `edu_node` VALUES ('8', '权限管理', 'node', 'index', '1');
INSERT INTO `edu_node` VALUES ('9', '资源管理', 'library', 'index', '1');
INSERT INTO `edu_node` VALUES ('10', '资源审核', 'library', 'audit', '1');
INSERT INTO `edu_node` VALUES ('11', '试题管理', 'question', 'index', '1');
INSERT INTO `edu_node` VALUES ('12', '试题审核', 'question', 'audit', '1');
INSERT INTO `edu_node` VALUES ('13', '试题导入', 'question', 'import', '1');
INSERT INTO `edu_node` VALUES ('14', '自测管理', 'test', 'index', '1');
INSERT INTO `edu_node` VALUES ('15', '自测打分', 'test', 'score', '1');
INSERT INTO `edu_node` VALUES ('16', '考试管理', 'exam', 'index', '1');
INSERT INTO `edu_node` VALUES ('19', '考试审核', 'exam', 'audit', '1');
INSERT INTO `edu_node` VALUES ('20', '公告管理', 'notice', 'index', '1');
INSERT INTO `edu_node` VALUES ('32', '考试打分', 'examstudent', 'score', '1');
INSERT INTO `edu_node` VALUES ('31', '考试记录', 'examstudent', 'index', '1');
INSERT INTO `edu_node` VALUES ('30', '意见反馈', 'opinion', 'index', '1');
INSERT INTO `edu_node` VALUES ('33', '自测规则', 'testrule', 'index', '1');

-- ----------------------------
-- Table structure for edu_note
-- ----------------------------
DROP TABLE IF EXISTS `edu_note`;
CREATE TABLE `edu_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_note
-- ----------------------------
INSERT INTO `edu_note` VALUES ('1', '55', '67', '阿斯蒂芬', '1476091353');
INSERT INTO `edu_note` VALUES ('2', '55', '67', '的萨芬啊阿斯蒂芬啊发地方', '1476091398');
INSERT INTO `edu_note` VALUES ('3', '55', '67', '撒旦法阿萨德发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f发生大幅爱是f是f', '1476091402');
INSERT INTO `edu_note` VALUES ('4', '55', '66', '撒旦法', '1476092185');
INSERT INTO `edu_note` VALUES ('5', '55', '66', '撒旦法', '1476092221');
INSERT INTO `edu_note` VALUES ('6', '55', '66', '1撒旦法', '1476092271');
INSERT INTO `edu_note` VALUES ('7', '55', '66', '山东发撒旦法阿萨德发生大幅阿萨德发放啊啊岁的啊的生生世世生生世世事实山东发撒旦法阿萨德发生大幅阿萨德发放啊啊岁的啊的生生世世生生世世事实山东发撒旦法阿萨德发生大幅阿萨德发放啊啊岁的啊的生生世世生生世世事实山东发撒旦法阿萨德发生大幅阿萨德发放啊啊岁的啊的生生世世生生世世事实山', '1476092337');
INSERT INTO `edu_note` VALUES ('8', '55', '69', 'sadf ', '1476111359');
INSERT INTO `edu_note` VALUES ('9', '55', '69', 'sadf ', '1476111670');
INSERT INTO `edu_note` VALUES ('10', '55', '69', 'sadf ', '1476111701');
INSERT INTO `edu_note` VALUES ('11', '55', '69', 'sadf ', '1476111707');
INSERT INTO `edu_note` VALUES ('12', '55', '67', 'sadf ', '1476111721');
INSERT INTO `edu_note` VALUES ('13', '55', '70', 'dsf ', '1476112620');
INSERT INTO `edu_note` VALUES ('14', '55', '70', 'asdf ', '1476112658');
INSERT INTO `edu_note` VALUES ('15', '55', '67', '的萨芬', '1476113248');
INSERT INTO `edu_note` VALUES ('16', '55', '70', '啊', '1480215391');
INSERT INTO `edu_note` VALUES ('17', '55', '70', '啊三等份是大方', '1480215395');
INSERT INTO `edu_note` VALUES ('18', '55', '66', '阿萨德发', '1480215697');
INSERT INTO `edu_note` VALUES ('19', '1', '70', '阿斯蒂芬', '1480523725');
INSERT INTO `edu_note` VALUES ('20', '1', '73', '三等份', '1482859650');

-- ----------------------------
-- Table structure for edu_notice
-- ----------------------------
DROP TABLE IF EXISTS `edu_notice`;
CREATE TABLE `edu_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `title` varchar(32) NOT NULL COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `author` varchar(32) NOT NULL COMMENT '添加者',
  `addtime` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_notice
-- ----------------------------
INSERT INTO `edu_notice` VALUES ('32', '编程之法：面试和算法心得', '<p></p><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">才华横溢的<a href=\"http://www.phpied.com/\" style=\"color: rgb(19, 110, 194); text-decoration: none; outline: 0px;\">Stoyan Stefanov</a>，在他写的由<a href=\"http://oreilly.com/\" style=\"color: rgb(19, 110, 194); text-decoration: none; outline: 0px;\">O’Reilly</a>初版的新书<a href=\"http://amzn.to/93szK7\" style=\"color: rgb(19, 110, 194); text-decoration: none; outline: 0px;\">《JavaScript Patterns》</a>(JavaScript模式)中，我想要是为我们的读者贡献其摘要，那会是件很美妙的事情。具体一点就是编写高质量JavaScript的一些要素，例如避免全局变量，使用单变量声明，在循环中预缓存length(长度)，遵循代码阅读，以及更多。</p><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">此摘要也包括一些与代码不太相关的习惯，但对整体代码的创建息息相关，包括撰写API文档、执行同行评审以及运行JSLint。这些习惯和最佳做法可以帮助你写出更好的，更易于理解和维护的代码，这些代码在几个月或是几年之后再回过头看看也是会觉得很自豪的。</p><h2 id=\"-writing-maintainable-code-\" style=\"margin: 0px 0px 14px; padding: 0px 0px 0.3em; -webkit-tap-highlight-color: transparent; font-size: 1.75em; font-weight: 200; line-height: 1.225; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">书写可维护的代码(Writing Maintainable Code )</h2><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">软件bug的修复是昂贵的，并且随着时间的推移，这些bug的成本也会增加，尤其当这些bug潜伏并慢慢出现在已经发布的软件中时。当你发现bug 的时候就立即修复它是最好的，此时你代码要解决的问题在你脑中还是很清晰的。否则，你转移到其他任务，忘了那个特定的代码，一段时间后再去查看这些代码就 需要：</p><ul style=\"margin: 0px 0px 14px; padding: 0px 0px 0px 28px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\"><li>花时间学习和理解这个问题</li><li>化时间是了解应该解决的问题代码</li></ul><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">还有问题，特别对于大的项目或是公司，修复bug的这位伙计不是写代码的那个人（且发现bug和修复bug的不是同一个人）。因此，必须降低理解代 码花费的时间，无论是一段时间前你自己写的代码还是团队中的其他成员写的代码。这关系到底线（营业收入）和开发人员的幸福，因为我们更应该去开发新的激动 人心的事物而不是花几小时几天的时间去维护遗留代码。</p><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">另一个相关软件开发生命的事实是，读代码花费的时间要比写来得多。有时候，当你专注并深入思考某个问题的时候，你可以坐下来，一个下午写大量的代码。</p><p style=\"margin: 0px 0px 14px; padding: 0px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\">你的代码很能很快就工作了，但是，随着应用的成熟，还会有很多其他的事情发生，这就要求你的进行进行审查，修改，和调整。例如：</p><ul style=\"margin: 0px 0px 14px; padding: 0px 0px 0px 28px; -webkit-tap-highlight-color: transparent; color: rgb(34, 34, 34); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 27.1875px;\"><li>bug是暴露的</li><li>新功能被添加到应用程序</li><li>程序在新的环境下工作（例如，市场上出现新想浏览器）</li><li>代码改变用途</li><li>代码得完全从头重新，或移植到另一个架构上或者甚至使用另一种语言</li></ul>', '李四', '1393298062');
INSERT INTO `edu_notice` VALUES ('33', 'iOS 和 Android 哪个更利于赚钱呢?', '<p><article class=\"view-hero\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \'Century Gothic\', \'MicroSoft YaHei\', \'hiragino sans GB\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; line-height: 36px; background-color: rgb(244, 246, 248);\"><header style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word;\"><p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; word-break: normal; word-wrap: break-word; color: gray; line-height: inherit;\">一直有一个几乎所有机友都认同的说法：Android 是全球用户数最多的操作系统，市场份额十分惊人。无论是问你的表哥表姐，还是弟弟妹妹，即便他们不是很关注移动领域或不很懂手机，也会告诉你 Android 拥有约全球 80% 的市场份额。</p><div class=\"meta\" style=\"box-sizing: border-box; margin: 0px; padding: 16px 0px 0px; word-break: normal; word-wrap: break-word; overflow: hidden; font-size: 15px;\"><span class=\"avatar-img\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word;\"><img src=\"http://passport.onethink.cn/Avatar/000/013/91/43/120_120.gif\" alt=\"释怀\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word; border: 0px; vertical-align: middle; max-width: 100%; cursor: pointer; width: 30px; height: 30px; border-top-left-radius: 15px; border-top-right-radius: 15px; border-bottom-right-radius: 15px; border-bottom-left-radius: 15px;\" /></span>&nbsp;<span class=\"author\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word;\"><a data-toggle=\"figurecard\" data-uid=\"139143\" href=\"http://www.topthink.com/u/139143.html\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word; background-color: transparent; color: rgb(43, 133, 174); text-decoration: none; background-position: initial initial; background-repeat: initial initial;\">释怀</a></span>&nbsp;<span class=\"publish-date\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; word-break: normal; word-wrap: break-word;\">2015/11/04</span></div></header></article><hr style=\"box-sizing: content-box; margin: 15px 0px; padding: 0px; word-break: normal; word-wrap: break-word; height: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: solid; border-top-color: rgb(238, 238, 238); color: rgb(51, 51, 51); font-family: \'Century Gothic\', \'MicroSoft YaHei\', \'hiragino sans GB\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; line-height: 36px; background-color: rgb(244, 246, 248);\" /><span style=\"color: rgb(51, 51, 51); font-family: \'Century Gothic\', \'MicroSoft YaHei\', \'hiragino sans GB\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 18px; line-height: 36px; background-color: rgb(244, 246, 248);\">他们的回答并没有错，就算&nbsp;Android&nbsp;的市场份额明显小于&nbsp;80%，但从全球角度来看，Android&nbsp;依然独步整个移动操作系统的武林，无论在哪一个国家或地区。不过，故事也有另一面，开发者对&nbsp;Android&nbsp;平台大多都不太满意，因为要开发一个应用程序，不只是很难兼顾&nbsp;iOS&nbsp;和&nbsp;Android&nbsp;平台，单单应付一个&nbsp;Android&nbsp;平台就足够他们辛苦的了。</span><br /></p>', '张红颜', '1393298134');
INSERT INTO `edu_notice` VALUES ('35', '如果你是名在读大学生，想要互联网创业', '<p><br /><span class=\"title\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 54px; line-height: 54px; font-size: 18px; color: rgb(255, 255, 255); font-family: 微软雅黑, \'Microsoft Yahei\', \'Hiragino Sans GB\', tahoma, arial, 宋体; background-color: rgb(61, 69, 78);\">互联网创业</span></p><div class=\"desp\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; height: 54px; overflow: hidden; line-height: 18px; color: rgb(255, 255, 255); font-family: 微软雅黑, \'Microsoft Yahei\', \'Hiragino Sans GB\', tahoma, arial, 宋体; background-color: rgb(61, 69, 78);\">9.9元，开启你的互联网创业之路，阿里云更为你提供风投、孵化器等方面的创业扶持</div><div class=\"wants-desp\" style=\"margin: 0px 0px 0px 28px; padding: 0px; border: 0px; vertical-align: baseline; float: left; width: 170px; color: rgb(255, 255, 255); font-family: 微软雅黑, \'Microsoft Yahei\', \'Hiragino Sans GB\', tahoma, arial, 宋体; line-height: 18px; background-color: rgb(61, 69, 78);\"><span class=\"title\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; display: block; height: 54px; line-height: 54px; font-size: 18px;\">使用云计算提高效率</span><div class=\"desp\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; height: 54px; overflow: hidden;\">在计算机专业学习、数据分析，课题研究时使用云计算提高效率，使你更为出众</div><div><br /></div></div><br /><p></p>', '张洪岩', '1393298398');
INSERT INTO `edu_notice` VALUES ('37', '教学网上线了', '教学网上线了教学网上线了教学网上线了教学网上线了教学网上线了教学网上线了教学网上线了<br />', '波波', '1393466094');
INSERT INTO `edu_notice` VALUES ('38', '最新线下活动', '明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~明天就要项目后考试了，大家抓紧时间复习哈~<br />', '波波', '1393466150');

-- ----------------------------
-- Table structure for edu_opinion
-- ----------------------------
DROP TABLE IF EXISTS `edu_opinion`;
CREATE TABLE `edu_opinion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `title` varchar(32) NOT NULL COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `author` varchar(32) NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_opinion
-- ----------------------------
INSERT INTO `edu_opinion` VALUES ('43', '奥德赛', '奥德赛发', 'admin', '0');
INSERT INTO `edu_opinion` VALUES ('44', '123123', '123', 'teacher', '0');
INSERT INTO `edu_opinion` VALUES ('41', '第三方奥迪', ' 阿斯蒂芬', 'aaa', '0');
INSERT INTO `edu_opinion` VALUES ('42', '奥迪f	', '发阿斯蒂芬奥德赛发', 'admin', '0');
INSERT INTO `edu_opinion` VALUES ('45', '123123', '123', 'teacher', '0');
INSERT INTO `edu_opinion` VALUES ('46', '123', '123123', '123123', '0');
INSERT INTO `edu_opinion` VALUES ('47', '123', '123', '123', '0');
INSERT INTO `edu_opinion` VALUES ('48', '撒旦法', '阿萨德发', '201-丁一', '1482941208');

-- ----------------------------
-- Table structure for edu_picture
-- ----------------------------
DROP TABLE IF EXISTS `edu_picture`;
CREATE TABLE `edu_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `tbname` varchar(16) NOT NULL COMMENT '表名',
  `mid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外键关联id(帖子)',
  `qid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外键关联id(问题)',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外键关联id(帖子评论)',
  `picname` varchar(32) NOT NULL COMMENT '图片名称',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='文本内容中的图片信息';

-- ----------------------------
-- Records of edu_picture
-- ----------------------------
INSERT INTO `edu_picture` VALUES ('159', 'article', '35', '0', '0', '530ea6eca01e1.jpg', '1393469164');
INSERT INTO `edu_picture` VALUES ('157', 'article', '34', '0', '0', '530ea09f0adb5.jpg', '1393467551');
INSERT INTO `edu_picture` VALUES ('156', 'article', '27', '0', '0', '530e2f408afc8.jpg', '1393438528');
INSERT INTO `edu_picture` VALUES ('155', 'article', '25', '0', '0', '530e2c47eab50.jpg', '1393437767');
INSERT INTO `edu_picture` VALUES ('154', 'article', '25', '0', '0', '530e2c338932b.jpg', '1393437747');
INSERT INTO `edu_picture` VALUES ('153', 'article', '25', '0', '0', '530e2c1b39c83.jpg', '1393437723');
INSERT INTO `edu_picture` VALUES ('151', 'article', '22', '0', '0', '530e274ad7733.jpg', '1393436490');
INSERT INTO `edu_picture` VALUES ('152', 'article', '25', '0', '0', '530e2bfa9161d.png', '1393437690');
INSERT INTO `edu_picture` VALUES ('149', 'article', '0', '3', '0', '530e2704d460d.jpg', null);
INSERT INTO `edu_picture` VALUES ('148', 'article', '0', '0', '816', '530e26b0a1346.jpg', '1393436336');
INSERT INTO `edu_picture` VALUES ('147', 'article', '21', '0', '0', '530e26c14ead8.jpg', '1393436353');
INSERT INTO `edu_picture` VALUES ('145', 'article', '0', '0', '806', '530e2286b2ba5.jpg', '1393435270');
INSERT INTO `edu_picture` VALUES ('144', 'article', '0', '0', '0', '530e1fafbef44.jpg', '1393434543');
INSERT INTO `edu_picture` VALUES ('143', 'article', '0', '0', '799', '530e1f473ec89.jpg', '1393434439');
INSERT INTO `edu_picture` VALUES ('142', 'article', '12', '0', '0', '530e1effe3bb8.JPG', '1393434367');
INSERT INTO `edu_picture` VALUES ('141', 'article', '0', '0', '783', '530e1c2e46e2d.png', '1393433646');
INSERT INTO `edu_picture` VALUES ('140', 'article', '5', '0', '0', '530e1b9726799.gif', '1393433495');
INSERT INTO `edu_picture` VALUES ('139', 'article', '4', '0', '0', '530e1575065bb.jpg', '1393431925');
INSERT INTO `edu_picture` VALUES ('138', 'article', '1', '0', '0', '530e139b3ec1b.gif', '1393431451');

-- ----------------------------
-- Table structure for edu_question
-- ----------------------------
DROP TABLE IF EXISTS `edu_question`;
CREATE TABLE `edu_question` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(12) DEFAULT NULL,
  `cid` int(12) DEFAULT '0',
  `tid` int(12) DEFAULT '0',
  `uid` int(12) DEFAULT '0',
  `content` varchar(500) DEFAULT NULL,
  `aA` varchar(200) DEFAULT NULL,
  `aB` varchar(200) DEFAULT NULL,
  `aC` varchar(200) DEFAULT NULL,
  `aD` varchar(200) DEFAULT NULL,
  `aE` varchar(200) DEFAULT NULL,
  `aF` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `score` int(12) DEFAULT '0',
  `status` int(12) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `point` varchar(200) DEFAULT NULL,
  `addtime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_question
-- ----------------------------
INSERT INTO `edu_question` VALUES ('53', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '1', '1476197658');
INSERT INTO `edu_question` VALUES ('54', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '2', '1476197699');
INSERT INTO `edu_question` VALUES ('55', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', null, null, null, null, null, null, '错', '2', '1', null, '3', '1476197734');
INSERT INTO `edu_question` VALUES ('56', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', null, null, null, null, null, null, '<img src=\"/Public/Uploads/editor/201703/58baf9f6bcdba.jpg\" width=\"300\" height=\"100\" alt=\"\" />haha11', '2', '1', '0', '4', '1476197757');
INSERT INTO `edu_question` VALUES ('57', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', null, null, null, null, null, null, 'this is a low answer', '10', '1', null, '5', '1480214743');
INSERT INTO `edu_question` VALUES ('58', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '6', '1476197658');
INSERT INTO `edu_question` VALUES ('59', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '7', '1476197699');
INSERT INTO `edu_question` VALUES ('60', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, '错', '2', '1', null, '8', '1476197734');
INSERT INTO `edu_question` VALUES ('61', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', '', '', '', '', null, null, 'haha', '2', '1', null, '1', '1476197757');
INSERT INTO `edu_question` VALUES ('62', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, 'this is a low answer', '10', '1', null, '2', '1480214743');
INSERT INTO `edu_question` VALUES ('63', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '3', '1476197658');
INSERT INTO `edu_question` VALUES ('64', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '4', '1476197699');
INSERT INTO `edu_question` VALUES ('65', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, '错', '2', '1', null, '5', '1476197734');
INSERT INTO `edu_question` VALUES ('66', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', '', '', '', '', null, null, 'haha', '2', '1', null, '6', '1476197757');
INSERT INTO `edu_question` VALUES ('67', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, 'this is a low answer', '10', '1', null, '7', '1480214743');
INSERT INTO `edu_question` VALUES ('68', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '8', '1476197658');
INSERT INTO `edu_question` VALUES ('69', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '1', '1476197699');
INSERT INTO `edu_question` VALUES ('70', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, '错', '2', '1', null, '2', '1476197734');
INSERT INTO `edu_question` VALUES ('71', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', '', '', '', '', null, null, 'haha', '2', '1', null, '3', '1476197757');
INSERT INTO `edu_question` VALUES ('72', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, 'this is a low answer', '10', '1', null, '4', '1480214743');
INSERT INTO `edu_question` VALUES ('73', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '5', '1476197658');
INSERT INTO `edu_question` VALUES ('74', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '6', '1476197699');
INSERT INTO `edu_question` VALUES ('75', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, '错', '2', '1', null, '7', '1476197734');
INSERT INTO `edu_question` VALUES ('76', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', '', '', '', '', null, null, 'haha', '2', '1', null, '8', '1476197757');
INSERT INTO `edu_question` VALUES ('77', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, 'this is a low answer', '10', '1', null, '1', '1480214743');
INSERT INTO `edu_question` VALUES ('78', '1', '4', '0', '55', 'Hello please select the correct answer.', 'incorrect answer', 'correct answer', 'incorrect answer', 'incorrect ansser', null, null, 'B', '2', '1', null, '2', '1476197658');
INSERT INTO `edu_question` VALUES ('79', '2', '4', '0', '55', 'please select the correct answers.', 'correct answer', 'correct answer', 'incorrect answer', 'correct answer', null, null, 'ABD', '2', '1', null, '3', '1476197699');
INSERT INTO `edu_question` VALUES ('80', '3', '4', '0', '55', 'please judge the right or wrong.<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, '错', '2', '1', null, '4', '1476197734');
INSERT INTO `edu_question` VALUES ('81', '4', '4', '0', '55', 'please fill the blank.<span style=\"white-space:pre\">		</span>', '', '', '', '', null, null, 'haha', '2', '1', null, '5', '1476197757');
INSERT INTO `edu_question` VALUES ('82', '5', '4', '0', '55', 'Answer this question<span style=\"white-space:pre\">	</span>', '', '', '', '', null, null, 'this is a low answer', '10', '1', null, '6', '1480214743');
INSERT INTO `edu_question` VALUES ('83', '1', '4', '0', '55', '请选择一项正确答案。', '错误答案', '错误答案', '错误答案', '正确答案', null, null, 'D', '2', '1', null, '7', null);
INSERT INTO `edu_question` VALUES ('84', '2', '4', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '1', null, '8', null);
INSERT INTO `edu_question` VALUES ('85', '3', '4', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '1', null, '1', null);
INSERT INTO `edu_question` VALUES ('86', '4', '4', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '1', null, '2', null);
INSERT INTO `edu_question` VALUES ('87', '5', '4', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '1', null, '3', null);
INSERT INTO `edu_question` VALUES ('89', '2', '4', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '1', null, '5', null);
INSERT INTO `edu_question` VALUES ('90', '3', '4', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '1', null, '6', null);
INSERT INTO `edu_question` VALUES ('91', '4', '4', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '1', null, '7', null);
INSERT INTO `edu_question` VALUES ('92', '5', '4', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '1', null, '8', null);
INSERT INTO `edu_question` VALUES ('113', '3', '0', '0', '55', '', null, null, null, null, null, null, null, '0', '0', '0', '', '1488641448');
INSERT INTO `edu_question` VALUES ('114', '3', '3', '0', '55', '123123', null, null, null, null, null, null, '对', '10', '0', '2', 'aaaa', '1488641764');
INSERT INTO `edu_question` VALUES ('94', '2', '6', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '1', null, '2', null);
INSERT INTO `edu_question` VALUES ('95', '3', '6', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '1', null, '3', null);
INSERT INTO `edu_question` VALUES ('96', '4', '6', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '1', null, '4', null);
INSERT INTO `edu_question` VALUES ('97', '5', '6', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '1', null, '5', null);
INSERT INTO `edu_question` VALUES ('99', '2', '6', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '1', null, '7', '1482251563');
INSERT INTO `edu_question` VALUES ('100', '3', '6', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '1', null, '8', '1482251563');
INSERT INTO `edu_question` VALUES ('101', '4', '6', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '1', null, '1', '1482251563');
INSERT INTO `edu_question` VALUES ('102', '5', '6', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '1', null, '2', '1482251563');
INSERT INTO `edu_question` VALUES ('103', '1', '6', '0', '55', '请选择一项正确答案。<img src=\"/Public/Uploads/editor/201612/586299a78a532.jpg\" alt=\"\" />', '错误答案', '错误答案', '错误答案', '正确答案', null, null, 'D', '2', '1', '1', '3', '1482251695');
INSERT INTO `edu_question` VALUES ('104', '2', '6', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '1', null, '4', '1482251695');
INSERT INTO `edu_question` VALUES ('105', '3', '6', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '1', null, '5', '1482251695');
INSERT INTO `edu_question` VALUES ('106', '4', '6', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '1', null, '6', '1482251695');
INSERT INTO `edu_question` VALUES ('107', '5', '6', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '1', null, '7', '1482251695');
INSERT INTO `edu_question` VALUES ('109', '2', '4', '0', '55', '请选择多项正确答案。', '正确答案', '正确答案', '正确答案', '错误答案', null, null, 'ABC', '3', '0', '1', '知识点B', '1484061665');
INSERT INTO `edu_question` VALUES ('110', '3', '4', '0', '55', '请判断对错。', '', '', '', '', null, null, '错', '2', '0', '1', '知识点C', '1484061665');
INSERT INTO `edu_question` VALUES ('111', '4', '4', '0', '55', '请填入正确答案。', '', '', '', '', null, null, '23.25', '4', '0', '2', '知识点D', '1484061665');
INSERT INTO `edu_question` VALUES ('112', '5', '4', '0', '55', '请回答问题。', '', '', '', '', null, null, '这就是答案，请打分。', '10', '0', '0', '知识点E', '1484061665');

-- ----------------------------
-- Table structure for edu_roles
-- ----------------------------
DROP TABLE IF EXISTS `edu_roles`;
CREATE TABLE `edu_roles` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色Id',
  `roletype` varchar(20) NOT NULL COMMENT '角色类型',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '角色简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_roles
-- ----------------------------
INSERT INTO `edu_roles` VALUES ('1', '管理员', '1', '');
INSERT INTO `edu_roles` VALUES ('2', '教师', '1', '');

-- ----------------------------
-- Table structure for edu_role_node
-- ----------------------------
DROP TABLE IF EXISTS `edu_role_node`;
CREATE TABLE `edu_role_node` (
  `rid` int(8) DEFAULT NULL COMMENT '角色Id',
  `nid` int(8) DEFAULT NULL COMMENT '权限Id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_role_node
-- ----------------------------
INSERT INTO `edu_role_node` VALUES ('2', '15');
INSERT INTO `edu_role_node` VALUES ('1', '30');
INSERT INTO `edu_role_node` VALUES ('1', '31');
INSERT INTO `edu_role_node` VALUES ('2', '14');
INSERT INTO `edu_role_node` VALUES ('1', '32');
INSERT INTO `edu_role_node` VALUES ('2', '11');
INSERT INTO `edu_role_node` VALUES ('1', '34');
INSERT INTO `edu_role_node` VALUES ('1', '20');
INSERT INTO `edu_role_node` VALUES ('1', '19');
INSERT INTO `edu_role_node` VALUES ('2', '16');
INSERT INTO `edu_role_node` VALUES ('1', '16');
INSERT INTO `edu_role_node` VALUES ('1', '15');
INSERT INTO `edu_role_node` VALUES ('1', '14');
INSERT INTO `edu_role_node` VALUES ('1', '13');
INSERT INTO `edu_role_node` VALUES ('1', '12');
INSERT INTO `edu_role_node` VALUES ('1', '11');
INSERT INTO `edu_role_node` VALUES ('1', '10');
INSERT INTO `edu_role_node` VALUES ('1', '9');
INSERT INTO `edu_role_node` VALUES ('2', '9');
INSERT INTO `edu_role_node` VALUES ('1', '8');
INSERT INTO `edu_role_node` VALUES ('1', '7');
INSERT INTO `edu_role_node` VALUES ('1', '6');
INSERT INTO `edu_role_node` VALUES ('1', '5');
INSERT INTO `edu_role_node` VALUES ('1', '4');
INSERT INTO `edu_role_node` VALUES ('1', '3');
INSERT INTO `edu_role_node` VALUES ('7', '3');
INSERT INTO `edu_role_node` VALUES ('7', '6');
INSERT INTO `edu_role_node` VALUES ('1', '2');
INSERT INTO `edu_role_node` VALUES ('1', '1');
INSERT INTO `edu_role_node` VALUES ('1', '33');

-- ----------------------------
-- Table structure for edu_score
-- ----------------------------
DROP TABLE IF EXISTS `edu_score`;
CREATE TABLE `edu_score` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_score
-- ----------------------------
INSERT INTO `edu_score` VALUES ('14', '5', '64', '1393434164', '30');
INSERT INTO `edu_score` VALUES ('13', '5', '62', '1393433704', '50');
INSERT INTO `edu_score` VALUES ('12', '4', '62', '1393433679', '25');
INSERT INTO `edu_score` VALUES ('11', '5', '62', '1393433657', '60');
INSERT INTO `edu_score` VALUES ('10', '5', '62', '1393433589', '44');
INSERT INTO `edu_score` VALUES ('9', '5', '62', '1393433556', '44');
INSERT INTO `edu_score` VALUES ('15', '4', '67', '1393434747', '20');
INSERT INTO `edu_score` VALUES ('16', '5', '66', '1393435594', '30');
INSERT INTO `edu_score` VALUES ('17', '4', '66', '1393435621', '30');
INSERT INTO `edu_score` VALUES ('18', '5', '66', '1393435647', '30');
INSERT INTO `edu_score` VALUES ('19', '5', '69', '1393436632', '40');
INSERT INTO `edu_score` VALUES ('20', '4', '69', '1393436656', '50');
INSERT INTO `edu_score` VALUES ('21', '5', '70', '1393436642', '40');
INSERT INTO `edu_score` VALUES ('22', '4', '70', '1393436675', '28');
INSERT INTO `edu_score` VALUES ('23', '5', '70', '1393437457', '50');
INSERT INTO `edu_score` VALUES ('24', '5', '93', '1393438735', '20');
INSERT INTO `edu_score` VALUES ('25', '4', '63', '1393441226', '40');
INSERT INTO `edu_score` VALUES ('26', '5', '70', '1393467912', '22');
INSERT INTO `edu_score` VALUES ('27', '4', '62', '1393469385', '20');
INSERT INTO `edu_score` VALUES ('28', '6', '62', '1393469649', '0');
INSERT INTO `edu_score` VALUES ('29', '5', '64', '1393472269', '0');
INSERT INTO `edu_score` VALUES ('30', '5', '97', '1453206818', '0');
INSERT INTO `edu_score` VALUES ('31', '5', '55', '1473582984', '44');
INSERT INTO `edu_score` VALUES ('32', '6', '55', '1473594458', '0');
INSERT INTO `edu_score` VALUES ('33', '5', '55', '1476114024', '0');
INSERT INTO `edu_score` VALUES ('34', '9', '55', '1476114042', '0');
INSERT INTO `edu_score` VALUES ('35', '5', '55', '1476198043', '0');

-- ----------------------------
-- Table structure for edu_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_student`;
CREATE TABLE `edu_student` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `no` varchar(20) DEFAULT NULL COMMENT '用户名',
  `pass` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(6) DEFAULT NULL COMMENT '姓名',
  `sex` int(1) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `birthplace` varchar(20) DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT '',
  `cid` int(12) DEFAULT '0',
  `picture` varchar(20) DEFAULT '1.jpg' COMMENT '用户头像',
  `note` varchar(200) DEFAULT NULL,
  `addtime` int(20) DEFAULT '0' COMMENT '注册时间',
  `logintime` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户当前登录的时间',
  `loginnum` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户的登录次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_student
-- ----------------------------
INSERT INTO `edu_student` VALUES ('1', '201', 'e10adc3949ba59abbe56e057f20f883e', '丁一', '1', '2016-09-10', '11', '1', null, '4', '5846cb82c185b.jpg', '1', null, '0', '0');
INSERT INTO `edu_student` VALUES ('3', '201600002', '21232f297a57a5a743894a0e4a801fc3', '王二', '1', '', '', '', null, '0', null, '', null, '0', '0');
INSERT INTO `edu_student` VALUES ('4', '201600003', '21232f297a57a5a743894a0e4a801fc3', '赵三', '1', '', '', '', null, '0', '583a4647685bc.jpg', '', null, '0', '0');
INSERT INTO `edu_student` VALUES ('5', '201600004', '21232f297a57a5a743894a0e4a801fc3', '李四', '2', '2016-09-06', '', '', null, '4', null, '1', null, '0', '0');
INSERT INTO `edu_student` VALUES ('6', '201600005', '21232f297a57a5a743894a0e4a801fc3', '刘五', '1', '2016-08-30', '浙江', '汉族', null, '4', null, '123123', null, '0', '0');
INSERT INTO `edu_student` VALUES ('7', '201600006', '21232f297a57a5a743894a0e4a801fc3', '赵六', '1', '2016-09-06', '江苏', '汉族', '', '3', null, '123123123', '0', '0', '0');
INSERT INTO `edu_student` VALUES ('8', '201600007', 'e10adc3949ba59abbe56e057f20f883e', '孙七', '1', '2016-09-05', '山东', '汉族', '', '1', '583a46a6a3cb4.jpg', '123123', '0', '0', '0');

-- ----------------------------
-- Table structure for edu_test
-- ----------------------------
DROP TABLE IF EXISTS `edu_test`;
CREATE TABLE `edu_test` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(10) DEFAULT NULL,
  `cid` int(12) DEFAULT '0',
  `sid` int(12) DEFAULT '0',
  `title` varchar(36) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `score` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test
-- ----------------------------
INSERT INTO `edu_test` VALUES ('24', null, '4', '55', '大学英语自主测试16-11-29 12:32:32', '1480350752', null, '0', '0');
INSERT INTO `edu_test` VALUES ('25', null, '4', '55', '大学英语自主测试16-11-29 12:32:32', '1480350752', null, '0', '0');
INSERT INTO `edu_test` VALUES ('26', null, '4', '55', '大学英语自主测试16-11-29 12:32:43', '1480350763', null, '0', '0');
INSERT INTO `edu_test` VALUES ('27', null, '4', '55', '大学英语自主测试16-11-29 12:36:17', '1480350977', null, '0', '0');
INSERT INTO `edu_test` VALUES ('28', null, '4', '55', '大学英语自主测试16-11-29 12:39:55', '1480351195', null, '0', '0');
INSERT INTO `edu_test` VALUES ('29', null, '4', '55', '大学英语自主测试16-11-29 12:44:39', '1480351479', null, '0', '0');
INSERT INTO `edu_test` VALUES ('30', null, '4', '55', '大学英语自主测试16-11-29 12:46:12', '1480351572', null, '0', '0');
INSERT INTO `edu_test` VALUES ('31', null, '4', '55', '大学英语自主测试16-11-29 12:46:18', '1480351578', null, '0', '0');
INSERT INTO `edu_test` VALUES ('32', null, '4', '55', '大学英语自主测试16-11-29 12:47:29', '1480351649', null, '0', '0');
INSERT INTO `edu_test` VALUES ('33', null, '4', '55', '大学英语自主测试16-11-29 01:08:10', '1480352890', null, '0', '0');
INSERT INTO `edu_test` VALUES ('34', null, '4', '55', '大学英语自主测试16-11-29 01:09:44', '1480352984', '1480353346', '1', '2');
INSERT INTO `edu_test` VALUES ('35', null, '4', '55', '大学英语自主测试16-11-29 01:18:44', '1480353524', '1480353541', '2', '4');
INSERT INTO `edu_test` VALUES ('36', null, '4', '55', '大学英语自主测试16-11-29 01:20:28', '1480353628', '1480353639', '1', '0');
INSERT INTO `edu_test` VALUES ('37', null, '4', '55', '大学英语自主测试16-11-29 01:21:29', '1480353689', '1480353813', '2', '0');
INSERT INTO `edu_test` VALUES ('38', null, '4', '55', '大学英语自主测试16-11-29 09:54:05', '1480427645', '1480427651', '1', '0');
INSERT INTO `edu_test` VALUES ('39', null, '4', '55', '大学英语自主测试16-11-29 10:38:15', '1480430295', null, '0', '0');
INSERT INTO `edu_test` VALUES ('40', null, '4', '55', '大学英语自主测试16-11-29 10:38:57', '1480430337', '1480430362', '2', '6');
INSERT INTO `edu_test` VALUES ('41', null, '4', '55', '大学英语自主测试16-11-29 10:48:26', '1480430906', '1480430914', '2', '0');
INSERT INTO `edu_test` VALUES ('42', null, '4', '55', '大学英语自主测试16-11-29 11:08:02', '1480432082', '1480432114', '1', '8');
INSERT INTO `edu_test` VALUES ('43', null, '4', '1', '大学英语自主测试16-11-30 10:58:46', '1480517926', null, '0', '0');
INSERT INTO `edu_test` VALUES ('44', null, '4', '1', '大学英语自主测试16-12-28 12:20:44', '1482855644', '1482855665', '2', '10');
INSERT INTO `edu_test` VALUES ('45', null, '4', '1', '大学英语自主测试16-12-28 01:20:42', '1482859242', null, '0', '0');
INSERT INTO `edu_test` VALUES ('46', null, '4', '1', '大学英语自主测试17-02-06 10:33:27', '1486391607', null, '0', '0');
INSERT INTO `edu_test` VALUES ('47', null, '4', '1', '大学英语自主测试17-02-14 10:10:15', '1487081415', null, '0', '0');
INSERT INTO `edu_test` VALUES ('48', null, '4', '1', '大学英语自主测试17-02-14 11:08:29', '1487084909', null, '0', '0');
INSERT INTO `edu_test` VALUES ('49', null, '4', '1', '大学英语自主测试17-02-14 11:08:35', '1487084915', null, '0', '0');
INSERT INTO `edu_test` VALUES ('50', null, '4', '1', '大学英语自主测试17-02-14 11:10:30', '1487085030', null, '0', '0');
INSERT INTO `edu_test` VALUES ('51', null, '4', '1', '大学英语自主测试17-02-14 11:11:59', '1487085119', null, '0', '0');
INSERT INTO `edu_test` VALUES ('52', null, '4', '1', '大学英语自主测试17-02-14 11:12:34', '1487085154', null, '0', '0');
INSERT INTO `edu_test` VALUES ('53', null, '4', '1', '大学英语自主测试17-02-14 11:12:57', '1487085177', null, '0', '0');
INSERT INTO `edu_test` VALUES ('54', null, '4', '1', '大学英语自主测试17-02-14 11:13:18', '1487085198', null, '0', '0');
INSERT INTO `edu_test` VALUES ('55', null, '4', '1', '大学英语自主测试17-02-14 11:13:28', '1487085215', null, '0', '0');
INSERT INTO `edu_test` VALUES ('56', null, '4', '1', '大学英语自主测试17-02-14 11:15:14', '1487085314', null, '0', '0');
INSERT INTO `edu_test` VALUES ('57', null, '4', '1', '大学英语自主测试17-02-14 11:26:57', '1487086018', null, '0', '0');
INSERT INTO `edu_test` VALUES ('58', null, '4', '1', '大学英语自主测试17-02-14 11:28:21', '1487086101', null, '0', '0');
INSERT INTO `edu_test` VALUES ('59', null, '4', '1', '大学英语自主测试17-02-14 11:29:13', '1487086153', null, '0', '0');
INSERT INTO `edu_test` VALUES ('60', null, '4', '1', '大学英语自主测试17-02-14 11:29:50', '1487086190', null, '0', '0');
INSERT INTO `edu_test` VALUES ('61', null, '4', '1', '大学英语自主测试17-02-14 11:31:19', '1487086279', null, '0', '0');
INSERT INTO `edu_test` VALUES ('62', null, '4', '1', '大学英语自主测试17-02-14 11:31:32', '1487086292', null, '0', '0');
INSERT INTO `edu_test` VALUES ('63', null, '4', '1', '大学英语自主测试17-02-14 11:43:13', '1487086993', null, '0', '0');
INSERT INTO `edu_test` VALUES ('64', null, '4', '1', '大学英语自主测试17-02-14 11:43:26', '1487087006', null, '0', '0');
INSERT INTO `edu_test` VALUES ('65', null, '4', '1', '大学英语自主测试17-02-14 11:43:46', '1487087026', null, '0', '0');
INSERT INTO `edu_test` VALUES ('66', null, '4', '1', '大学英语自主测试17-02-14 11:45:57', '1487087157', null, '0', '0');
INSERT INTO `edu_test` VALUES ('67', null, '4', '1', '大学英语自主测试17-02-14 11:50:19', '1487087419', null, '0', '0');
INSERT INTO `edu_test` VALUES ('68', null, '4', '1', '大学英语自主测试17-02-14 11:52:19', '1487087539', null, '0', '0');
INSERT INTO `edu_test` VALUES ('69', null, '4', '1', '大学英语自主测试17-02-14 11:52:29', '1487087549', null, '0', '0');
INSERT INTO `edu_test` VALUES ('70', null, '4', '1', '大学英语自主测试17-02-14 11:52:31', '1487087551', null, '0', '0');
INSERT INTO `edu_test` VALUES ('71', null, '4', '1', '大学英语自主测试17-02-15 11:57:56', '1487174276', null, '0', '0');
INSERT INTO `edu_test` VALUES ('72', null, '4', '1', '大学英语自主测试17-02-16 12:02:15', '1487174535', null, '0', '0');
INSERT INTO `edu_test` VALUES ('73', null, '4', '1', '大学英语自主测试17-02-16 12:05:33', '1487174733', null, '0', '0');
INSERT INTO `edu_test` VALUES ('74', null, '4', '1', '大学英语自主测试17-03-04 11:39:31', '1488641971', '1488642062', '2', '18');
INSERT INTO `edu_test` VALUES ('75', null, '4', '1', '大学英语自主测试17-03-05 12:20:15', '1488644415', null, '0', '0');
INSERT INTO `edu_test` VALUES ('76', null, '4', '1', '大学英语自主测试17-03-05 12:23:31', '1488644611', null, '0', '0');
INSERT INTO `edu_test` VALUES ('77', null, '4', '1', '大学英语自主测试17-03-05 12:26:57', '1488644817', null, '0', '0');
INSERT INTO `edu_test` VALUES ('78', null, '4', '1', '大学英语自主测试17-03-05 12:27:50', '1488644870', null, '0', '0');
INSERT INTO `edu_test` VALUES ('79', null, '4', '1', '大学英语自主测试17-03-05 12:28:56', '1488644936', null, '0', '0');
INSERT INTO `edu_test` VALUES ('80', null, '4', '1', '大学英语自主测试17-03-05 12:29:11', '1488644951', null, '0', '0');
INSERT INTO `edu_test` VALUES ('81', null, '4', '1', '大学英语自主测试17-03-05 12:30:04', '1488645004', null, '0', '0');
INSERT INTO `edu_test` VALUES ('82', null, '4', '1', '大学英语自主测试17-03-05 12:30:25', '1488645025', null, '0', '0');
INSERT INTO `edu_test` VALUES ('83', null, '4', '1', '大学英语自主测试17-03-05 12:36:20', '1488645380', null, '0', '0');
INSERT INTO `edu_test` VALUES ('84', null, '4', '1', '大学英语自主测试17-03-05 12:37:15', '1488645435', null, '0', '0');
INSERT INTO `edu_test` VALUES ('85', null, '4', '1', '大学英语自主测试17-03-05 12:38:05', '1488645485', null, '0', '0');
INSERT INTO `edu_test` VALUES ('86', null, '4', '1', '大学英语自主测试17-03-05 12:39:46', '1488645586', null, '0', '0');
INSERT INTO `edu_test` VALUES ('87', null, '4', '1', '大学英语自主测试17-03-05 12:39:54', '1488645594', null, '0', '0');
INSERT INTO `edu_test` VALUES ('88', null, '4', '1', '大学英语自主测试17-03-05 12:40:12', '1488645612', null, '0', '0');
INSERT INTO `edu_test` VALUES ('89', null, '4', '1', '大学英语自主测试17-03-05 12:41:11', '1488645671', null, '0', '0');
INSERT INTO `edu_test` VALUES ('90', null, '4', '1', '大学英语自主测试17-03-05 12:42:48', '1488645768', '1488645888', '1', '0');

-- ----------------------------
-- Table structure for edu_test_question
-- ----------------------------
DROP TABLE IF EXISTS `edu_test_question`;
CREATE TABLE `edu_test_question` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `tid` int(12) NOT NULL,
  `qid` int(12) NOT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `addtime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_question
-- ----------------------------
INSERT INTO `edu_test_question` VALUES ('328', '67', '68', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('329', '67', '63', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('330', '67', '88', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('331', '67', '108', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('332', '67', '58', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('333', '67', '78', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('334', '67', '53', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('335', '67', '73', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('336', '67', '83', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('337', '67', '54', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('338', '67', '69', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('339', '67', '64', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('340', '67', '79', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('341', '67', '59', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('342', '67', '89', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('343', '67', '84', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('344', '67', '74', null, null, '0', '1487087425');
INSERT INTO `edu_test_question` VALUES ('345', '68', '75', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('346', '68', '55', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('347', '68', '65', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('348', '68', '85', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('349', '68', '80', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('350', '68', '76', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('351', '68', '91', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('352', '68', '86', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('353', '68', '66', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('354', '68', '56', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('355', '68', '87', null, null, '0', '1487087539');
INSERT INTO `edu_test_question` VALUES ('356', '69', '92', null, null, '0', '1487087549');
INSERT INTO `edu_test_question` VALUES ('357', '69', '82', null, null, '0', '1487087549');
INSERT INTO `edu_test_question` VALUES ('358', '69', '62', null, null, '0', '1487087549');
INSERT INTO `edu_test_question` VALUES ('359', '69', '87', null, null, '0', '1487087549');
INSERT INTO `edu_test_question` VALUES ('360', '69', '57', null, null, '0', '1487087549');
INSERT INTO `edu_test_question` VALUES ('361', '70', '83', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('362', '70', '88', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('363', '70', '73', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('364', '70', '58', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('365', '70', '68', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('366', '70', '108', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('367', '70', '78', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('368', '70', '53', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('369', '70', '63', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('370', '70', '84', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('371', '70', '54', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('372', '70', '79', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('373', '70', '74', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('374', '70', '89', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('375', '70', '59', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('376', '70', '64', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('377', '70', '69', null, null, '0', '1487087551');
INSERT INTO `edu_test_question` VALUES ('378', '72', '53', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('379', '72', '78', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('380', '72', '108', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('381', '72', '73', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('382', '72', '83', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('383', '72', '88', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('384', '72', '68', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('385', '72', '63', null, null, '0', '1487174535');
INSERT INTO `edu_test_question` VALUES ('386', '72', '58', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('387', '72', '79', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('388', '72', '84', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('389', '72', '59', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('390', '72', '89', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('391', '72', '54', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('392', '72', '70', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('393', '72', '90', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('394', '72', '75', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('395', '72', '60', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('396', '72', '55', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('397', '72', '76', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('398', '72', '81', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('399', '72', '86', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('400', '72', '91', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('401', '72', '56', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('402', '72', '72', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('403', '72', '77', null, null, '0', '1487174536');
INSERT INTO `edu_test_question` VALUES ('404', '73', '88', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('405', '73', '83', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('406', '73', '63', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('407', '73', '78', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('408', '73', '68', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('409', '73', '108', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('410', '73', '58', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('411', '73', '53', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('412', '73', '73', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('413', '73', '84', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('414', '73', '59', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('415', '73', '64', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('416', '73', '89', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('417', '73', '54', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('418', '73', '60', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('419', '73', '70', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('420', '73', '65', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('421', '73', '90', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('422', '73', '55', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('423', '73', '76', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('424', '73', '86', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('425', '73', '61', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('426', '73', '91', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('427', '73', '66', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('428', '73', '92', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('429', '73', '82', null, null, '0', '1487174733');
INSERT INTO `edu_test_question` VALUES ('430', '74', '64', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('431', '74', '89', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('432', '74', '74', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('433', '74', '79', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('434', '74', '84', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('435', '74', '90', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('436', '74', '55', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('437', '74', '75', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('438', '74', '60', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('439', '74', '65', null, '0', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('440', '74', '86', '', '1', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('441', '74', '71', '', '1', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('442', '74', '76', '', '2', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('443', '74', '81', '', '2', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('444', '74', '61', '', '3', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('445', '74', '67', '', '4', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('446', '74', '72', '', '5', '2', '1488641971');
INSERT INTO `edu_test_question` VALUES ('447', '75', '84', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('448', '75', '64', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('449', '75', '69', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('450', '75', '79', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('451', '75', '74', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('452', '75', '75', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('453', '75', '70', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('454', '75', '55', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('455', '75', '90', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('456', '75', '85', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('457', '75', '61', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('458', '75', '81', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('459', '75', '66', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('460', '75', '76', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('461', '75', '71', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('462', '75', '82', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('463', '75', '92', null, null, '0', '1488644415');
INSERT INTO `edu_test_question` VALUES ('464', '76', '84', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('465', '76', '59', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('466', '76', '74', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('467', '76', '64', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('468', '76', '79', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('469', '76', '85', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('470', '76', '75', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('471', '76', '80', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('472', '76', '55', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('473', '76', '90', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('474', '76', '91', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('475', '76', '76', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('476', '76', '61', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('477', '76', '86', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('478', '76', '81', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('479', '76', '92', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('480', '76', '57', null, null, '0', '1488644611');
INSERT INTO `edu_test_question` VALUES ('481', '77', '79', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('482', '77', '69', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('483', '77', '89', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('484', '77', '74', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('485', '77', '54', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('486', '77', '90', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('487', '77', '65', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('488', '77', '85', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('489', '77', '70', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('490', '77', '55', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('491', '77', '76', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('492', '77', '91', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('493', '77', '66', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('494', '77', '61', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('495', '77', '86', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('496', '77', '62', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('497', '77', '77', null, null, '0', '1488644817');
INSERT INTO `edu_test_question` VALUES ('498', '78', '54', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('499', '78', '79', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('500', '78', '69', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('501', '78', '84', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('502', '78', '89', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('503', '78', '65', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('504', '78', '85', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('505', '78', '60', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('506', '78', '70', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('507', '78', '75', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('508', '78', '56', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('509', '78', '66', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('510', '78', '61', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('511', '78', '86', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('512', '78', '91', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('513', '78', '82', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('514', '78', '57', null, null, '0', '1488644870');
INSERT INTO `edu_test_question` VALUES ('515', '79', '59', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('516', '79', '64', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('517', '79', '54', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('518', '79', '84', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('519', '79', '69', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('520', '79', '70', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('521', '79', '60', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('522', '79', '75', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('523', '79', '85', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('524', '79', '55', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('525', '79', '76', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('526', '79', '71', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('527', '79', '66', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('528', '79', '91', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('529', '79', '56', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('530', '79', '87', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('531', '79', '57', null, null, '0', '1488644936');
INSERT INTO `edu_test_question` VALUES ('532', '80', '79', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('533', '80', '64', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('534', '80', '59', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('535', '80', '74', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('536', '80', '69', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('537', '80', '85', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('538', '80', '70', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('539', '80', '80', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('540', '80', '90', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('541', '80', '55', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('542', '80', '56', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('543', '80', '91', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('544', '80', '66', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('545', '80', '76', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('546', '80', '61', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('547', '80', '67', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('548', '80', '82', null, null, '0', '1488644951');
INSERT INTO `edu_test_question` VALUES ('549', '81', '54', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('550', '81', '79', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('551', '81', '74', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('552', '81', '59', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('553', '81', '69', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('554', '81', '90', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('555', '81', '60', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('556', '81', '85', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('557', '81', '80', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('558', '81', '65', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('559', '81', '76', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('560', '81', '66', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('561', '81', '86', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('562', '81', '61', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('563', '81', '91', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('564', '81', '87', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('565', '81', '67', null, null, '0', '1488645004');
INSERT INTO `edu_test_question` VALUES ('566', '82', '89', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('567', '82', '84', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('568', '82', '69', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('569', '82', '64', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('570', '82', '74', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('571', '82', '85', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('572', '82', '55', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('573', '82', '70', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('574', '82', '80', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('575', '82', '60', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('576', '82', '86', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('577', '82', '76', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('578', '82', '71', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('579', '82', '91', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('580', '82', '56', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('581', '82', '57', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('582', '82', '72', null, null, '0', '1488645025');
INSERT INTO `edu_test_question` VALUES ('583', '83', '89', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('584', '83', '54', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('585', '83', '59', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('586', '83', '69', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('587', '83', '64', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('588', '83', '70', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('589', '83', '75', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('590', '83', '90', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('591', '83', '80', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('592', '83', '55', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('593', '83', '81', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('594', '83', '71', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('595', '83', '61', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('596', '83', '56', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('597', '83', '86', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('598', '83', '77', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('599', '83', '72', null, null, '0', '1488645380');
INSERT INTO `edu_test_question` VALUES ('600', '84', '79', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('601', '84', '89', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('602', '84', '69', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('603', '84', '84', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('604', '84', '74', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('605', '84', '80', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('606', '84', '60', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('607', '84', '75', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('608', '84', '90', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('609', '84', '55', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('610', '84', '76', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('611', '84', '71', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('612', '84', '61', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('613', '84', '91', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('614', '84', '86', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('615', '84', '62', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('616', '84', '67', null, null, '0', '1488645435');
INSERT INTO `edu_test_question` VALUES ('617', '85', '74', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('618', '85', '69', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('619', '85', '64', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('620', '85', '79', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('621', '85', '84', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('622', '85', '65', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('623', '85', '75', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('624', '85', '55', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('625', '85', '70', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('626', '85', '90', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('627', '85', '86', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('628', '85', '56', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('629', '85', '76', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('630', '85', '81', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('631', '85', '66', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('632', '85', '72', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('633', '85', '77', null, null, '0', '1488645485');
INSERT INTO `edu_test_question` VALUES ('634', '86', '59', null, null, '0', '1488645586');
INSERT INTO `edu_test_question` VALUES ('635', '86', '79', null, null, '0', '1488645586');
INSERT INTO `edu_test_question` VALUES ('636', '86', '64', null, null, '0', '1488645586');
INSERT INTO `edu_test_question` VALUES ('637', '86', '84', null, null, '0', '1488645586');
INSERT INTO `edu_test_question` VALUES ('638', '86', '74', null, null, '0', '1488645586');
INSERT INTO `edu_test_question` VALUES ('639', '86', '80', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('640', '86', '65', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('641', '86', '60', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('642', '86', '90', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('643', '86', '70', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('644', '86', '56', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('645', '86', '61', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('646', '86', '76', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('647', '86', '81', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('648', '86', '71', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('649', '86', '77', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('650', '86', '57', null, null, '0', '1488645587');
INSERT INTO `edu_test_question` VALUES ('651', '87', '59', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('652', '87', '89', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('653', '87', '69', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('654', '87', '74', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('655', '87', '64', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('656', '87', '70', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('657', '87', '75', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('658', '87', '85', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('659', '87', '90', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('660', '87', '80', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('661', '87', '76', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('662', '87', '81', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('663', '87', '56', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('664', '87', '91', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('665', '87', '61', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('666', '87', '77', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('667', '87', '72', null, null, '0', '1488645594');
INSERT INTO `edu_test_question` VALUES ('668', '88', '74', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('669', '88', '54', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('670', '88', '84', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('671', '88', '79', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('672', '88', '89', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('673', '88', '75', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('674', '88', '80', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('675', '88', '60', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('676', '88', '85', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('677', '88', '90', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('678', '88', '81', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('679', '88', '91', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('680', '88', '61', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('681', '88', '86', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('682', '88', '56', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('683', '88', '62', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('684', '88', '87', null, null, '0', '1488645612');
INSERT INTO `edu_test_question` VALUES ('685', '89', '54', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('686', '89', '59', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('687', '89', '74', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('688', '89', '69', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('689', '89', '64', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('690', '89', '55', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('691', '89', '80', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('692', '89', '90', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('693', '89', '85', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('694', '89', '65', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('695', '89', '81', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('696', '89', '76', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('697', '89', '61', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('698', '89', '86', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('699', '89', '71', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('700', '89', '62', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('701', '89', '57', null, null, '0', '1488645671');
INSERT INTO `edu_test_question` VALUES ('702', '90', '59', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('703', '90', '69', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('704', '90', '89', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('705', '90', '79', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('706', '90', '74', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('707', '90', '55', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('708', '90', '60', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('709', '90', '75', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('710', '90', '65', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('711', '90', '90', null, '0', '2', '1488645768');
INSERT INTO `edu_test_question` VALUES ('712', '90', '61', '<img src=\"/Public/Uploads/editor/201703/58baeee99bb30.jpg\" alt=\"\" />', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('713', '90', '86', '', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('714', '90', '76', '', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('715', '90', '81', '', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('716', '90', '56', '', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('717', '90', '67', '', '0', '1', '1488645768');
INSERT INTO `edu_test_question` VALUES ('718', '90', '72', '<img src=\"/Public/Uploads/editor/201703/58baeefcab58b.jpg\" alt=\"\" />', '0', '1', '1488645768');

-- ----------------------------
-- Table structure for edu_test_rule
-- ----------------------------
DROP TABLE IF EXISTS `edu_test_rule`;
CREATE TABLE `edu_test_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `single` int(11) DEFAULT NULL,
  `multiple` int(11) DEFAULT NULL,
  `judge` int(11) DEFAULT NULL,
  `blank` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_rule
-- ----------------------------
INSERT INTO `edu_test_rule` VALUES ('1', '规则1', '20', '10', '0', '0', '0');
INSERT INTO `edu_test_rule` VALUES ('2', '规则2', '0', '0', '5', '5', '1');
INSERT INTO `edu_test_rule` VALUES ('3', '规则3', '0', '0', '0', '0', '5');

-- ----------------------------
-- Table structure for edu_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `edu_usermessage`;
CREATE TABLE `edu_usermessage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `myid` int(10) unsigned NOT NULL COMMENT '自己的Id',
  `vid` int(10) unsigned NOT NULL COMMENT '留言者id',
  `content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `addtime` int(50) unsigned NOT NULL COMMENT '留言时间',
  `myname` varchar(30) NOT NULL COMMENT '我的用户名',
  `visitor` varchar(30) NOT NULL COMMENT '留言者',
  `upic` varchar(50) NOT NULL COMMENT '留言者头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_usermessage
-- ----------------------------
INSERT INTO `edu_usermessage` VALUES ('48', '59', '59', '二货的一天', '1393431584', 'dong', 'dong', '530e13ee00a00.jpg');
INSERT INTO `edu_usermessage` VALUES ('49', '59', '59', '你若安好，便是雾霾！！！', '1393431595', 'dong', 'dong', '530e13ee00a00.jpg');
INSERT INTO `edu_usermessage` VALUES ('50', '63', '63', '今天的项目开始审核了...', '1393433567', 'zxbshiwo', 'zxbshiwo', '530e1b9d1ec75.jpg');
INSERT INTO `edu_usermessage` VALUES ('51', '64', '64', '你若安好，便是雾霾！！！', '1393433678', 'dong', 'dong', '530e1bf4626e4.jpg');
INSERT INTO `edu_usermessage` VALUES ('52', '65', '65', '我不想看到发布、、、', '1393434138', 'zhy1', 'zhy1', '530e1dde48d5a.jpg');
INSERT INTO `edu_usermessage` VALUES ('53', '66', '66', '心情很美丽，真的啊，哈哈', '1393434889', 'xiaoping', 'xiaoping', '530e1ee51c30f.jpg');
INSERT INTO `edu_usermessage` VALUES ('54', '67', '67', '哈哈的一天啊', '1393435823', 'dong2', 'dong2', '530e1fc8a05c5.jpg');
INSERT INTO `edu_usermessage` VALUES ('55', '70', '70', '擦', '1393436264', 'zhy3', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('56', '64', '72', '来给你踩踩', '1393436531', 'dong', 'dong3', '530e27396867f.jpg');
INSERT INTO `edu_usermessage` VALUES ('57', '64', '73', '我是管炎', '1393436625', 'dong', 'dong4', '530e27aa4f65a.jpg');
INSERT INTO `edu_usermessage` VALUES ('58', '67', '70', '管制先', '1393436718', 'dong2', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('59', '67', '70', '好险啊', '1393436722', 'dong2', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('60', '67', '70', '登山包', '1393436726', 'dong2', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('61', '71', '71', '美丽的心情', '1393436763', 'nicai', 'nicai', '530e26694c515.jpg');
INSERT INTO `edu_usermessage` VALUES ('62', '64', '74', '管炎我有来了', '1393436757', 'dong', 'dong5', '530e281420056.jpg');
INSERT INTO `edu_usermessage` VALUES ('63', '71', '71', '心情很美丽', '1393436770', 'nicai', 'nicai', '530e26694c515.jpg');
INSERT INTO `edu_usermessage` VALUES ('64', '71', '71', '哈哈，是啊', '1393436779', 'nicai', 'nicai', '530e26694c515.jpg');
INSERT INTO `edu_usermessage` VALUES ('65', '67', '76', 'nimei啊 斯伯丁', '1393437092', 'dong2', 'dong6', '530e29591a4da.jpg');
INSERT INTO `edu_usermessage` VALUES ('66', '76', '76', '111111', '1393437193', 'dong6', 'dong6', '530e29591a4da.jpg');
INSERT INTO `edu_usermessage` VALUES ('67', '64', '77', 'wuuwuw', '1393437365', 'dong', 'dong7', '530e2a9a1ea1c.jpg');
INSERT INTO `edu_usermessage` VALUES ('68', '64', '77', '其实红颜喜欢涛哥很久了，但是。。。。', '1393437395', 'dong', 'dong7', '530e2a9a1ea1c.jpg');
INSERT INTO `edu_usermessage` VALUES ('69', '61', '70', 'hello\n', '1393437419', 'zhy', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('70', '78', '70', '管子董啊 懂啊', '1393437436', 'dong8', 'zhy3', '530e2647a6b54.jpg');
INSERT INTO `edu_usermessage` VALUES ('71', '93', '93', '可以吧', '1393438990', '999999', '999999', '530e2e5173fae.JPG');
INSERT INTO `edu_usermessage` VALUES ('72', '93', '93', '我勒个擦', '1393439007', '999999', '999999', '530e2e5173fae.JPG');
INSERT INTO `edu_usermessage` VALUES ('73', '62', '62', '你说呢', '1393439036', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('74', '62', '62', '呵呵', '1393439043', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('75', '62', '62', '怎么没有人么', '1393439645', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('76', '62', '62', '你是谁啊', '1393439650', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('77', '64', '64', '好屌\n', '1393439631', 'dong', 'dong', '530e1bf4626e4.jpg');
INSERT INTO `edu_usermessage` VALUES ('78', '62', '62', '我不认识你', '1393439656', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('79', '62', '62', '你是谁啊你', '1393439672', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('80', '62', '62', '快点说啊', '1393439682', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('81', '62', '62', '再不说记u不理你了', '1393439693', 'dandan', 'dandan', '530e1b771fbdd.jpg');
INSERT INTO `edu_usermessage` VALUES ('82', '64', '64', '你若安好，便是雾霾！！！', '1393459975', 'dong', 'dong', '530e1bf4626e4.jpg');
INSERT INTO `edu_usermessage` VALUES ('83', '64', '64', '~~~~苍茫的天涯是我的爱~~~~', '1393460496', 'dong', 'dong', '530e1bf4626e4.jpg');
INSERT INTO `edu_usermessage` VALUES ('84', '76', '67', '给你踩踩', '1393464208', 'dong6', 'dong2', '530e1fc8a05c5.jpg');
INSERT INTO `edu_usermessage` VALUES ('85', '93', '64', '禽兽管炎', '1393467239', '999999', 'dong', '530e1bf4626e4.jpg');
INSERT INTO `edu_usermessage` VALUES ('86', '95', '95', '4小A加油啊！挺你们哦。', '1393468108', 'xiaohaohao', 'xiaohaohao', '530ea17eae949.jpg');
INSERT INTO `edu_usermessage` VALUES ('87', '95', '95', '淡定，，，我路过的！', '1393468205', 'xiaohaohao', 'xiaohaohao', '530ea17eae949.jpg');

-- ----------------------------
-- Table structure for edu_userphotos
-- ----------------------------
DROP TABLE IF EXISTS `edu_userphotos`;
CREATE TABLE `edu_userphotos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '照片编号',
  `picname` varchar(255) NOT NULL COMMENT '服务器端照片名',
  `uid` int(11) NOT NULL COMMENT '所属用户编号',
  `pid` int(11) NOT NULL COMMENT '相册Id',
  `oldname` varchar(120) NOT NULL COMMENT '用户上传的照片名',
  `addtime` int(11) DEFAULT NULL COMMENT '发布时间',
  `describe` varchar(255) DEFAULT NULL COMMENT '相片描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_userphotos
-- ----------------------------
INSERT INTO `edu_userphotos` VALUES ('328', '530e147178e6a.jpg', '59', '30', '清秀美女ViVi 清纯写真 2.jpg', '1393431665', null);
INSERT INTO `edu_userphotos` VALUES ('329', '530e147179c2b.jpg', '59', '30', '清秀美女ViVi 清纯写真 4.jpg', '1393431666', null);
INSERT INTO `edu_userphotos` VALUES ('330', '530e14717a6ea.jpg', '59', '30', '清如明镜的小女子 1.jpg', '1393431666', null);
INSERT INTO `edu_userphotos` VALUES ('331', '530e14717b335.jpg', '59', '30', '气质美女的清纯动人图集 3.jpg', '1393431666', null);
INSERT INTO `edu_userphotos` VALUES ('332', '530e14717bda8.jpg', '59', '30', '戴小帽子的女孩 5.jpg', '1393431666', null);
INSERT INTO `edu_userphotos` VALUES ('333', '530e14717c90a.jpg', '59', '30', '戴小帽子的女孩 4.jpg', '1393431667', null);
INSERT INTO `edu_userphotos` VALUES ('334', '530e14717d4d2.jpg', '59', '30', '戴小帽子的女孩 3.jpg', '1393431667', null);
INSERT INTO `edu_userphotos` VALUES ('335', '530e14717e18f.jpg', '59', '30', '戴小帽子的女孩 2.jpg', '1393431667', null);
INSERT INTO `edu_userphotos` VALUES ('336', '530e14d1341bb.jpg', '59', '31', '气质美女的清纯动人图集 3.jpg', '1393431761', null);
INSERT INTO `edu_userphotos` VALUES ('337', '530e1c04f2935.jpg', '64', '32', '气质美女的清纯动人图集 3.jpg', '1393433605', null);
INSERT INTO `edu_userphotos` VALUES ('338', '530e1c04f34ce.jpg', '64', '32', '气质美女的清纯动人图集 7.jpg', '1393433605', null);
INSERT INTO `edu_userphotos` VALUES ('339', '530e1c04f4129.jpg', '64', '32', '清如明镜的小女子 1.jpg', '1393433605', null);
INSERT INTO `edu_userphotos` VALUES ('340', '530e1c0500c59.jpg', '64', '32', '戴小帽子的女孩 5.jpg', '1393433606', null);
INSERT INTO `edu_userphotos` VALUES ('341', '530e1c05018cd.jpg', '64', '32', '戴小帽子的女孩 3.jpg', '1393433606', null);
INSERT INTO `edu_userphotos` VALUES ('342', '530e1c05024ec.jpg', '64', '32', '清秀美女ViVi 清纯写真 4.jpg', '1393433606', null);
INSERT INTO `edu_userphotos` VALUES ('343', '530e1c05031ce.jpg', '64', '32', '清如明镜的小女子 1.jpg', '1393433607', null);
INSERT INTO `edu_userphotos` VALUES ('344', '530e1c0503d5e.jpg', '64', '32', '戴小帽子的女孩 2.jpg', '1393433607', null);
INSERT INTO `edu_userphotos` VALUES ('345', '530e1c2057d44.jpg', '64', '33', '戴小帽子的女孩 4.jpg', '1393433632', null);
INSERT INTO `edu_userphotos` VALUES ('346', '530e1e4be5bcc.jpg', '65', '34', '48d90414297671394b90a732.jpg', '1393434188', null);
INSERT INTO `edu_userphotos` VALUES ('347', '530e1e4be6f82.jpg', '65', '34', 'psuCAP9OTQX.jpg', '1393434188', null);
INSERT INTO `edu_userphotos` VALUES ('348', '530e1e4be82cb.jpg', '65', '34', '073b064591d5dd336a63e59c.jpg', '1393434189', null);
INSERT INTO `edu_userphotos` VALUES ('349', '530e1e4be9532.jpg', '65', '34', 'psuCA8Q3TSA.jpg', '1393434189', null);
INSERT INTO `edu_userphotos` VALUES ('350', '530e1e4bea4dc.GIF', '65', '34', 'Z2H1TVD1.GIF', '1393434189', null);
INSERT INTO `edu_userphotos` VALUES ('351', '530e1e4beb559.jpg', '65', '34', '153446fs4sfm7sjysftzv4.jpg', '1393434190', null);
INSERT INTO `edu_userphotos` VALUES ('352', '530e2031dce8a.jpg', '67', '35', '戴小帽子的女孩 3.jpg', '1393434674', null);
INSERT INTO `edu_userphotos` VALUES ('353', '530e2031ddb7f.jpg', '67', '35', '戴小帽子的女孩 1.jpg', '1393434674', null);
INSERT INTO `edu_userphotos` VALUES ('354', '530e2031de772.jpg', '67', '35', '清如明镜的小女子 1.jpg', '1393434674', null);
INSERT INTO `edu_userphotos` VALUES ('355', '530e2031df412.jpg', '67', '35', '气质美女的清纯动人图集 7.jpg', '1393434675', null);
INSERT INTO `edu_userphotos` VALUES ('356', '530e2031e0015.jpg', '67', '35', '气质美女的清纯动人图集 7.jpg', '1393434675', null);
INSERT INTO `edu_userphotos` VALUES ('357', '530e2031e0d1b.jpg', '67', '35', '戴小帽子的女孩 3.jpg', '1393434675', null);
INSERT INTO `edu_userphotos` VALUES ('358', '530e204c4ccde.jpg', '67', '36', '清如明镜的小女子 1.jpg', '1393434700', null);
INSERT INTO `edu_userphotos` VALUES ('359', '530e204c4d86a.jpg', '67', '36', '戴小帽子的女孩 4.jpg', '1393434700', null);
INSERT INTO `edu_userphotos` VALUES ('360', '530e2059d75bf.jpg', '67', '37', '气质美女的清纯动人图集 3.jpg', '1393434714', null);
INSERT INTO `edu_userphotos` VALUES ('361', '530e20e88c918.jpg', '69', '38', '51.jpg', '1393434856', null);
INSERT INTO `edu_userphotos` VALUES ('362', '530e20e88dc2d.jpg', '69', '38', '54.jpg', '1393434857', null);
INSERT INTO `edu_userphotos` VALUES ('363', '530e20e88eb00.jpg', '69', '38', '0.jpg', '1393434857', null);
INSERT INTO `edu_userphotos` VALUES ('364', '530e20e88fa2b.gif', '69', '38', '0R5521C4-4.gif', '1393434857', null);
INSERT INTO `edu_userphotos` VALUES ('365', '530e20e890d6b.jpg', '69', '38', '11.jpg', '1393434857', null);
INSERT INTO `edu_userphotos` VALUES ('366', '530e20e891cb5.jpg', '69', '38', '1.jpg', '1393434857', null);
INSERT INTO `edu_userphotos` VALUES ('367', '530e20fee2d7d.jpg', '69', '38', '510dc3d68f393.jpg', '1393434879', null);
INSERT INTO `edu_userphotos` VALUES ('368', '530e20fee40a7.jpg', '69', '38', '0087.jpg', '1393434879', null);
INSERT INTO `edu_userphotos` VALUES ('369', '530e25c1b2314.jpg', '68', '39', '7acb0a46f21fbe0912443ab26b600c338744ad7a.jpg', '1393436098', null);
INSERT INTO `edu_userphotos` VALUES ('370', '530e25c1b3889.jpg', '68', '39', 'e1fe9925bc315c602253db528db1cb134854774c.jpg', '1393436098', null);
INSERT INTO `edu_userphotos` VALUES ('371', '530e25c1b495f.jpg', '68', '39', '1c950a7b02087bf45df4ae4ff2d3572c11dfcf78.jpg', '1393436098', null);
INSERT INTO `edu_userphotos` VALUES ('372', '530e25c1b5a88.jpg', '68', '39', '8b82b9014a90f6034ab865e13912b31bb051ed08.jpg', '1393436098', null);
INSERT INTO `edu_userphotos` VALUES ('373', '530e25c1b6a92.jpg', '68', '39', '1c950a7b02087bf45df4ae4ff2d3572c11dfcf78.jpg', '1393436099', null);
INSERT INTO `edu_userphotos` VALUES ('374', '530e25c1b7be4.jpg', '68', '39', '5366d0160924ab188412189135fae6cd7b890b0b.jpg', '1393436099', null);
INSERT INTO `edu_userphotos` VALUES ('375', '530e25c1b938d.jpg', '68', '39', 'e850352ac65c10388fb07e7fb2119313b17e8945.jpg', '1393436099', null);
INSERT INTO `edu_userphotos` VALUES ('376', '530e25c1ba365.jpg', '68', '39', '2f738bd4b31c8701e6ac4b40277f9e2f0708ff7a.jpg', '1393436100', null);
INSERT INTO `edu_userphotos` VALUES ('377', '530e29b1ab6b5.jpg', '62', '40', '64380cd7912397dd97f399145882b2b7d0a28713.jpg', '1393437106', null);
INSERT INTO `edu_userphotos` VALUES ('378', '530e29b1ac058.jpg', '62', '40', '2457387_125911445000_2.jpg', '1393437106', null);
INSERT INTO `edu_userphotos` VALUES ('379', '530e29b1acc9f.jpg', '62', '40', '201313102418924.jpg', '1393437107', null);
INSERT INTO `edu_userphotos` VALUES ('380', '530e29b1add74.jpg', '62', '40', '2457387_125911445000_2.jpg', '1393437108', null);
INSERT INTO `edu_userphotos` VALUES ('381', '530e29b1ae979.jpg', '62', '40', '881b636988612e2d_i.jpg', '1393437108', null);
INSERT INTO `edu_userphotos` VALUES ('382', '530e29b1af164.jpg', '62', '40', '65421f2e4a3db29a_i.jpg', '1393437108', null);
INSERT INTO `edu_userphotos` VALUES ('383', '530e2eba1e01f.gif', '93', '41', 'psu (1).gif', '1393438394', null);
INSERT INTO `edu_userphotos` VALUES ('384', '530e2eba1f285.gif', '93', '41', 'psu (2).gif', '1393438394', null);
INSERT INTO `edu_userphotos` VALUES ('385', '530e2eba20232.gif', '93', '41', 'fdhgfr[1]_副本.gif', '1393438394', null);
INSERT INTO `edu_userphotos` VALUES ('386', '530e2eba220aa.gif', '93', '41', 'a9d3fd1f4134970ad9e7ee4994cad1c8a6865dc4.jpg.gif', '1393438394', null);
INSERT INTO `edu_userphotos` VALUES ('387', '530e2eba24556.jpg', '93', '41', 'RYH.jpg', '1393438395', null);
INSERT INTO `edu_userphotos` VALUES ('388', '530e2eba254b9.gif', '93', '41', 'http_imgload.gif', '1393438395', null);
INSERT INTO `edu_userphotos` VALUES ('389', '530e31ca8090b.png', '93', '42', 'QQ截图20110731225740.png', '1393439178', null);
INSERT INTO `edu_userphotos` VALUES ('390', '530e31ca81816.png', '93', '42', 'QQ截图20110731223033.png', '1393439179', null);
INSERT INTO `edu_userphotos` VALUES ('391', '530e31ca83626.png', '93', '42', 'QQ截图20110812222331.png', '1393439179', null);
INSERT INTO `edu_userphotos` VALUES ('392', '530e31ca85165.png', '93', '42', 'QQ截图20110731225846.png', '1393439180', null);
INSERT INTO `edu_userphotos` VALUES ('393', '530e31ca86560.png', '93', '42', 'QQ截图20110731222357.png', '1393439180', null);
INSERT INTO `edu_userphotos` VALUES ('394', '530e338593fd6.jpg', '63', '43', 'psb (14).jpg', '1393439621', null);
INSERT INTO `edu_userphotos` VALUES ('395', '530e338595089.jpg', '63', '43', 'psb (5).jpg', '1393439622', null);
INSERT INTO `edu_userphotos` VALUES ('396', '530e338596779.jpg', '63', '43', 'psb (4).jpg', '1393439622', null);
INSERT INTO `edu_userphotos` VALUES ('397', '530e3385978a3.jpg', '63', '43', 'psb (3).jpg', '1393439622', null);
INSERT INTO `edu_userphotos` VALUES ('398', '530e338598be2.jpg', '63', '43', 'psb (2).jpg', '1393439622', null);
INSERT INTO `edu_userphotos` VALUES ('399', '530e33859aba4.jpg', '63', '43', 'psb (1).jpg', '1393439623', null);
INSERT INTO `edu_userphotos` VALUES ('400', '530e3394f3159.jpg', '63', '43', '2c49e0bf6c81800aefd831d1b13533fa838b47c6.jpg', '1393439637', null);
INSERT INTO `edu_userphotos` VALUES ('401', '530ea1f753012.jpg', '95', '44', 'u=1189257166,1392076058&fm=23&gp=0.jpg', '1393467895', null);
INSERT INTO `edu_userphotos` VALUES ('402', '530ea1f75430d.jpg', '95', '44', 'u=1646403891,2853459476&fm=23&gp=0.jpg', '1393467895', null);
INSERT INTO `edu_userphotos` VALUES ('403', '530ea1f7553a1.jpg', '95', '44', 'u=3164306277,207481494&fm=21&gp=0.jpg', '1393467895', null);
INSERT INTO `edu_userphotos` VALUES ('404', '530ea280cb291.jpg', '95', '45', 'u=1646403891,2853459476&fm=23&gp=0.jpg', '1393468032', null);
INSERT INTO `edu_userphotos` VALUES ('405', '530ea280cc30f.jpg', '95', '45', 'u=1189257166,1392076058&fm=23&gp=0.jpg', '1393468033', null);
INSERT INTO `edu_userphotos` VALUES ('406', '530ea280cd330.jpg', '95', '45', '1056432044-9.jpg', '1393468033', null);
INSERT INTO `edu_userphotos` VALUES ('407', '530ea280ce313.jpg', '95', '45', '1056433c4-0.jpg', '1393468033', null);
INSERT INTO `edu_userphotos` VALUES ('408', '530eb2541d724.jpg', '64', '46', '清秀美女ViVi 清纯写真 2.jpg', '1393472084', null);
INSERT INTO `edu_userphotos` VALUES ('409', '530eb2541e73e.jpg', '64', '46', '清如明镜的小女子 3.jpg', '1393472084', null);

-- ----------------------------
-- Table structure for edu_userrole
-- ----------------------------
DROP TABLE IF EXISTS `edu_userrole`;
CREATE TABLE `edu_userrole` (
  `uid` int(8) DEFAULT NULL COMMENT '用户Id',
  `rid` int(8) DEFAULT NULL COMMENT '角色Id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_userrole
-- ----------------------------
INSERT INTO `edu_userrole` VALUES ('55', '2');
INSERT INTO `edu_userrole` VALUES ('55', '1');
INSERT INTO `edu_userrole` VALUES ('66', '1');
INSERT INTO `edu_userrole` VALUES ('66', '2');
INSERT INTO `edu_userrole` VALUES ('64', '2');
INSERT INTO `edu_userrole` VALUES ('62', '2');
INSERT INTO `edu_userrole` VALUES ('61', '1');
INSERT INTO `edu_userrole` VALUES ('61', '2');
INSERT INTO `edu_userrole` VALUES ('71', '1');
INSERT INTO `edu_userrole` VALUES ('71', '2');
INSERT INTO `edu_userrole` VALUES ('74', '2');
INSERT INTO `edu_userrole` VALUES ('73', '2');
INSERT INTO `edu_userrole` VALUES ('75', '1');
INSERT INTO `edu_userrole` VALUES ('75', '2');
INSERT INTO `edu_userrole` VALUES ('72', '2');
INSERT INTO `edu_userrole` VALUES ('70', '2');
INSERT INTO `edu_userrole` VALUES ('69', '1');
INSERT INTO `edu_userrole` VALUES ('69', '2');
INSERT INTO `edu_userrole` VALUES ('68', '2');
INSERT INTO `edu_userrole` VALUES ('67', '2');
INSERT INTO `edu_userrole` VALUES ('65', '2');
INSERT INTO `edu_userrole` VALUES ('63', '2');
INSERT INTO `edu_userrole` VALUES ('97', '2');

-- ----------------------------
-- Table structure for edu_users
-- ----------------------------
DROP TABLE IF EXISTS `edu_users`;
CREATE TABLE `edu_users` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `userpass` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(6) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `class` varchar(20) DEFAULT NULL COMMENT '教师为组，学生为班',
  `picture` varchar(20) DEFAULT '1.jpg' COMMENT '用户头像',
  `level` int(4) DEFAULT NULL COMMENT '用户等级',
  `point` float DEFAULT NULL COMMENT '用户积分',
  `addtime` int(20) DEFAULT NULL COMMENT '注册时间',
  `introduce` varchar(255) DEFAULT '一位php程序小菜鸟~' COMMENT '简介',
  `logintime` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户当前登录的时间',
  `logouttime` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户退出时的时间',
  `loginnum` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户的登录次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`username`),
  UNIQUE KEY `NewIndex1` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_users
-- ----------------------------
INSERT INTO `edu_users` VALUES ('55', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '1', '22', 'admin@admin.com', '74', '530e9f9d3b45b.jpg', '10', '999', '1393430863', '无', '1488621625', '1488639020', '103');
INSERT INTO `edu_users` VALUES ('99', 'admin1', '4297f44b13955235245b2497399d7a93', 'admin1', '1', '1', '', '', '1.jpg', '0', '0', '1488621923', '', '0', '0', '0');
INSERT INTO `edu_users` VALUES ('97', 'teacher', 'e10adc3949ba59abbe56e057f20f883e', '教师', '1', '0', 'jiaoshi@163.com', '', '57d1853b29e96.png', '0', '0', '1473348923', '', '1482844809', '1482844993', '20');

-- ----------------------------
-- Table structure for edu_users_photoalbum
-- ----------------------------
DROP TABLE IF EXISTS `edu_users_photoalbum`;
CREATE TABLE `edu_users_photoalbum` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `albumname` varchar(100) DEFAULT '默认相册' COMMENT '相册名',
  `uid` int(10) DEFAULT NULL COMMENT '用户id',
  `desc` varchar(200) DEFAULT NULL COMMENT '相册描述',
  `addtime` int(50) DEFAULT NULL COMMENT '创建时间',
  `state` tinyint(10) DEFAULT '1' COMMENT '是否公开',
  `cover` varchar(100) DEFAULT 'photo.jpg' COMMENT '封面',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`albumname`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_users_photoalbum
-- ----------------------------
INSERT INTO `edu_users_photoalbum` VALUES ('30', '11111', '59', '哈哈哈哈', null, '1', '530e14717c90a.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('31', '2222', '59', '不可见', null, '2', '530e14d1341bb.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('32', 'aaaaa', '64', '我的第一个相册', null, '1', '530e1c0503d5e.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('33', '22222', '64', '阿斯顿发烧', null, '2', '530e1c2057d44.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('34', '哇咔咔', '65', '111', null, '1', '530e1e4be9532.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('35', 'ggg', '67', '阿斯顿飞', null, '1', '530e2031dce8a.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('36', '二货的一天', '67', '撒旦法', null, '1', '530e204c4d86a.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('37', '哈哈哈', '67', '山岩二', null, '2', '530e2059d75bf.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('38', '嗯嗯', '69', '嗯嗯的相册', null, '1', '530e20fee40a7.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('39', '我的相册', '68', '12345678', null, '1', '530e25c1b2314.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('40', '小萍萍的', '62', '呵呵', null, '1', '530e29b1acc9f.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('41', '1', '93', '111', null, '1', '530e2eba20232.gif');
INSERT INTO `edu_users_photoalbum` VALUES ('42', '22', '93', '333', null, '1', '530e31ca86560.png');
INSERT INTO `edu_users_photoalbum` VALUES ('43', '哈哈党', '63', '很不错哟', null, '1', '530e3394f3159.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('44', 'superman', '95', '。。。哈哈', null, '1', '530ea1f75430d.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('45', '那一天', '95', '那一天', null, '1', '530ea280cc30f.jpg');
INSERT INTO `edu_users_photoalbum` VALUES ('46', '111sad', '64', 'dssf', null, '2', '530eb2541e73e.jpg');

-- ----------------------------
-- Table structure for edu_uservisit
-- ----------------------------
DROP TABLE IF EXISTS `edu_uservisit`;
CREATE TABLE `edu_uservisit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '访问id',
  `uid` int(10) NOT NULL COMMENT '被访问者id',
  `vid` int(10) NOT NULL COMMENT '访问者id',
  `visitor` varchar(20) NOT NULL COMMENT '访问者',
  `number` int(10) NOT NULL DEFAULT '1' COMMENT '访问量',
  `visittime` int(40) NOT NULL COMMENT '访问时间',
  `uname` varchar(20) NOT NULL COMMENT '被访问者姓名',
  `upicname` varchar(20) NOT NULL COMMENT '被访问者头像',
  `vpicname` varchar(20) NOT NULL COMMENT '访问者头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_uservisit
-- ----------------------------
INSERT INTO `edu_uservisit` VALUES ('37', '55', '65', 'zhy1', '1', '1393434217', 'admin', '530e9f9d3b45b.jpg', '530e8b8abdef3.jpg');
INSERT INTO `edu_uservisit` VALUES ('38', '61', '68', 'zhy2', '1', '1393436140', 'zhy', '530e33b3c714c.jpg', '530e2007de192.jpg');
INSERT INTO `edu_uservisit` VALUES ('39', '64', '72', 'dong3', '1', '1393436505', 'dong', '530eb22363ac2.jpg', '530e27396867f.jpg');
INSERT INTO `edu_uservisit` VALUES ('40', '64', '73', 'dong4', '2', '1393436642', 'dong', '530eb22363ac2.jpg', '530e27aa4f65a.jpg');
INSERT INTO `edu_uservisit` VALUES ('41', '67', '70', 'zhy3', '1', '1393436712', 'dong2', '530e1fc8a05c5.jpg', '530e2647a6b54.jpg');
INSERT INTO `edu_uservisit` VALUES ('42', '64', '74', 'dong5', '1', '1393436730', 'dong', '530eb22363ac2.jpg', '530e281420056.jpg');
INSERT INTO `edu_uservisit` VALUES ('43', '67', '76', 'dong6', '1', '1393437057', 'dong2', '530e1fc8a05c5.jpg', '530e29591a4da.jpg');
INSERT INTO `edu_uservisit` VALUES ('44', '64', '77', 'dong7', '1', '1393437357', 'dong', '530eb22363ac2.jpg', '530e2a9a1ea1c.jpg');
INSERT INTO `edu_uservisit` VALUES ('45', '61', '70', 'zhy3', '1', '1393437410', 'zhy', '530e33b3c714c.jpg', '530e2647a6b54.jpg');
INSERT INTO `edu_uservisit` VALUES ('46', '78', '70', 'zhy3', '1', '1393437428', 'dong8', '530e2b347d3bb.jpg', '530e2647a6b54.jpg');
INSERT INTO `edu_uservisit` VALUES ('47', '64', '78', 'dong8', '1', '1393437510', 'dong', '530eb22363ac2.jpg', '530e2b347d3bb.jpg');
INSERT INTO `edu_uservisit` VALUES ('48', '64', '86', 'dong16', '1', '1393437925', 'dong', '530eb22363ac2.jpg', '530e2cd4e2059.jpg');
INSERT INTO `edu_uservisit` VALUES ('49', '74', '93', '999999', '2', '1393438708', 'dong5', '530e281420056.jpg', '530e2e5173fae.JPG');
INSERT INTO `edu_uservisit` VALUES ('50', '84', '64', 'dong', '2', '1393438898', 'dong13', '530e2c7a2cd6f.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('51', '92', '64', 'dong', '2', '1393438883', 'dong21', '530e2e24b1501.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('52', '86', '64', 'dong', '3', '1393464158', 'dong16', '530e2cd4e2059.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('53', '63', '0', '', '1', '1393438864', 'zxbshiwo', '530e1b9d1ec75.jpg', '');
INSERT INTO `edu_uservisit` VALUES ('54', '67', '64', 'dong', '9', '1393472125', 'dong2', '530e1fc8a05c5.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('55', '73', '64', 'dong', '3', '1393834473', 'dong4', '530e27aa4f65a.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('56', '78', '64', 'dong', '3', '1393472103', 'dong8', '530e2b347d3bb.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('57', '68', '93', '999999', '1', '1393439269', 'zhy2', '530e2007de192.jpg', '530e2e5173fae.JPG');
INSERT INTO `edu_uservisit` VALUES ('58', '77', '64', 'dong', '2', '1393440157', 'dong7', '530e2a9a1ea1c.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('59', '68', '63', 'zxbshiwo', '1', '1393460230', 'zhy2', '530e2007de192.jpg', '530e1b9d1ec75.jpg');
INSERT INTO `edu_uservisit` VALUES ('60', '74', '64', 'dong', '1', '1393460424', 'dong5', '530e281420056.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('61', '93', '64', 'dong', '2', '1393467187', '999999', '530e2e5173fae.JPG', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('62', '70', '67', 'dong2', '1', '1393464185', 'zhy3', '530e2647a6b54.jpg', '530e1fc8a05c5.jpg');
INSERT INTO `edu_uservisit` VALUES ('63', '76', '67', 'dong2', '1', '1393464194', 'dong6', '530e29591a4da.jpg', '530e1fc8a05c5.jpg');
INSERT INTO `edu_uservisit` VALUES ('64', '64', '67', 'dong2', '2', '1393464434', 'dong', '530eb22363ac2.jpg', '530e1fc8a05c5.jpg');
INSERT INTO `edu_uservisit` VALUES ('65', '64', '68', 'zhy2', '1', '1393465789', 'dong', '530eb22363ac2.jpg', '530e2007de192.jpg');
INSERT INTO `edu_uservisit` VALUES ('66', '55', '64', 'dong', '1', '1393467125', 'admin', '530e9f9d3b45b.jpg', '530eb22363ac2.jpg');
INSERT INTO `edu_uservisit` VALUES ('67', '69', '95', 'xiaohaohao', '1', '1393469676', 'woshizxb', '530e206fc09f9.jpg', '530ea17eae949.jpg');
INSERT INTO `edu_uservisit` VALUES ('68', '64', '95', 'xiaohaohao', '1', '1393469996', 'dong', '530eb22363ac2.jpg', '530ea17eae949.jpg');
INSERT INTO `edu_uservisit` VALUES ('69', '95', '68', 'zhy2', '2', '1393471393', 'xiaohaohao', '530ea17eae949.jpg', '530e2007de192.jpg');
INSERT INTO `edu_uservisit` VALUES ('70', '71', '63', 'zxbshiwo', '1', '1393592433', 'nicai', '530e26694c515.jpg', '530e1b9d1ec75.jpg');

-- ----------------------------
-- Table structure for edu_user_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_user_course`;
CREATE TABLE `edu_user_course` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` int(12) DEFAULT NULL,
  `coid` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_user_course
-- ----------------------------
INSERT INTO `edu_user_course` VALUES ('35', '97', '4');

-- ----------------------------
-- Table structure for edu_user_question
-- ----------------------------
DROP TABLE IF EXISTS `edu_user_question`;
CREATE TABLE `edu_user_question` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` int(12) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `qid` int(12) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_user_question
-- ----------------------------
INSERT INTO `edu_user_question` VALUES ('10', '55', '2', '55', null);
INSERT INTO `edu_user_question` VALUES ('11', '55', '1', '55', null);
INSERT INTO `edu_user_question` VALUES ('12', '55', '1', '54', null);
INSERT INTO `edu_user_question` VALUES ('13', '55', '1', '56', null);
INSERT INTO `edu_user_question` VALUES ('14', '55', '2', '56', null);
INSERT INTO `edu_user_question` VALUES ('15', '55', '1', '53', null);
INSERT INTO `edu_user_question` VALUES ('17', '55', '2', '54', null);
INSERT INTO `edu_user_question` VALUES ('20', '55', '2', '82', null);
INSERT INTO `edu_user_question` VALUES ('21', '55', '2', '72', null);
INSERT INTO `edu_user_question` VALUES ('22', '55', '1', '72', null);
INSERT INTO `edu_user_question` VALUES ('23', '55', '1', '79', null);
INSERT INTO `edu_user_question` VALUES ('24', '55', '2', '79', null);
INSERT INTO `edu_user_question` VALUES ('25', '1', '2', '57', null);
INSERT INTO `edu_user_question` VALUES ('26', '1', '2', '89', null);
INSERT INTO `edu_user_question` VALUES ('27', '1', '1', '89', null);
INSERT INTO `edu_user_question` VALUES ('28', '1', '2', '86', null);
INSERT INTO `edu_user_question` VALUES ('29', '1', '2', '65', null);
INSERT INTO `edu_user_question` VALUES ('30', '1', '2', '82', null);
INSERT INTO `edu_user_question` VALUES ('31', '1', '2', '81', null);
INSERT INTO `edu_user_question` VALUES ('32', '1', '1', '68', null);
INSERT INTO `edu_user_question` VALUES ('33', '1', '1', '75', null);
INSERT INTO `edu_user_question` VALUES ('34', '1', '1', '62', null);
INSERT INTO `edu_user_question` VALUES ('35', '1', '1', '56', null);
INSERT INTO `edu_user_question` VALUES ('36', '1', '1', '71', null);
INSERT INTO `edu_user_question` VALUES ('37', '1', '1', '58', null);
INSERT INTO `edu_user_question` VALUES ('38', '1', '1', '90', null);
INSERT INTO `edu_user_question` VALUES ('39', '1', '1', '91', null);
INSERT INTO `edu_user_question` VALUES ('40', '1', '1', '66', null);
INSERT INTO `edu_user_question` VALUES ('41', '1', '1', '79', null);
INSERT INTO `edu_user_question` VALUES ('42', '1', '1', '80', null);
INSERT INTO `edu_user_question` VALUES ('43', '1', '1', '92', null);
INSERT INTO `edu_user_question` VALUES ('44', '1', '1', '67', null);
INSERT INTO `edu_user_question` VALUES ('45', '1', '1', '85', null);
INSERT INTO `edu_user_question` VALUES ('46', '1', '1', '72', null);
INSERT INTO `edu_user_question` VALUES ('47', '1', '1', '61', null);
INSERT INTO `edu_user_question` VALUES ('48', '1', '1', '73', null);

-- ----------------------------
-- Table structure for edu_vhistory
-- ----------------------------
DROP TABLE IF EXISTS `edu_vhistory`;
CREATE TABLE `edu_vhistory` (
  `uid` int(10) unsigned DEFAULT '0' COMMENT '用户的id',
  `vid` int(10) unsigned DEFAULT '0' COMMENT '观看课程的id',
  `addtime` int(11) DEFAULT '0' COMMENT '观看时间记录'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_vhistory
-- ----------------------------

-- ----------------------------
-- Table structure for edu_video
-- ----------------------------
DROP TABLE IF EXISTS `edu_video`;
CREATE TABLE `edu_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频编号',
  `tid` int(11) NOT NULL COMMENT '视频类型ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `videoname` varchar(32) NOT NULL COMMENT '上传视频名',
  `name` varchar(32) NOT NULL COMMENT '服务器上视频的随机名',
  `picname` varchar(32) NOT NULL COMMENT '上传视频的图片名',
  `descr` text NOT NULL COMMENT '上传视频的简单描述',
  `size` int(11) NOT NULL COMMENT '上传视频的大小',
  `type` varchar(60) NOT NULL COMMENT '上传视频的类型',
  `addtime` int(11) NOT NULL COMMENT '发布视频的时间',
  `favonum` int(11) NOT NULL COMMENT '视频被顶的次数',
  `clicknum` int(11) NOT NULL COMMENT '视频的浏览次数',
  `dwloadnum` int(11) NOT NULL COMMENT '视频的下载次数',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '上传视频的状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_video
-- ----------------------------
INSERT INTO `edu_video` VALUES ('58', '17', '65', 'ThinkPHP从入门到精通', '530e89cda8051.flv', '530e89cda8051.jpg', '麻辣隔壁', '36293230', 'flv', '1393461713', '0', '7', '0', '2');
INSERT INTO `edu_video` VALUES ('55', '19', '75', 'JQuery效果演示', '530e29c6452ec.flv', '530e29c6452ec.jpg', '效果很不错的', '44186922', 'flv', '1393437131', '0', '6', '0', '2');
INSERT INTO `edu_video` VALUES ('56', '29', '75', 'C#基础知识讲解', '530e2a15ca2ff.flv', '530e2a15ca2ff.jpg', 'C#的视频都是很不错的', '56588128', 'flv', '1393437207', '0', '2', '0', '2');
INSERT INTO `edu_video` VALUES ('57', '29', '93', 'C#入门知识', '530e2f9985bdb.flv', '530e2f9985bdb.jpg', '这个应该知道吧？', '61860087', 'flv', '1393438618', '0', '5', '0', '2');
INSERT INTO `edu_video` VALUES ('54', '17', '70', '学习的乐趣只有参入进来才知道', '530e279980481.flv', '530e279980481.jpg', '就是那个！百步飞剑第四集', '41575163', 'flv', '1393436570', '0', '1', '0', '2');
INSERT INTO `edu_video` VALUES ('53', '13', '69', 'XHTML技术详解', '530e22cd9a81f.flv', '530e22cd9a81f.jpg', '技术详解的高清无码视频', '59487154', 'flv', '1393435342', '1', '23', '0', '2');
INSERT INTO `edu_video` VALUES ('52', '23', '69', '程序员的世界菇酿你不懂的', '530e22378e6cf.flv', '530e22378e6cf.jpg', '一个公寓里的幸福爱情故事', '83129019', 'flv', '1393435192', '4', '10', '0', '2');
INSERT INTO `edu_video` VALUES ('51', '7', '69', 'SQLServer技术分享', '530e21b9cc934.flv', '530e21b9cc934.jpg', '技术分享视频', '38419684', 'flv', '1393435070', '1', '2', '0', '2');
INSERT INTO `edu_video` VALUES ('50', '6', '67', '数据库', '530e20f65a98b.flv', '530e20f65a98b.jpg', 'sql', '56139637', 'flv', '1393434871', '1', '17', '0', '2');
INSERT INTO `edu_video` VALUES ('45', '14', '64', 'css1', '530e1caf6c6b3.flv', '530e1caf6c6b3.jpg', 'sadf', '44186922', 'flv', '1393433780', '3', '4', '0', '2');
INSERT INTO `edu_video` VALUES ('44', '24', '63', 'Java基础视频教学', '530e1cb3d8e5b.flv', '530e1cb3d8e5b.jpg', 'Java的最新视频...', '56588128', 'flv', '1393433780', '6', '18', '0', '2');
INSERT INTO `edu_video` VALUES ('43', '13', '61', '秦时明月2', '530e1c9760702.flv', '530e1c9760702.jpg', '百步再飞那个剑！', '41562890', 'flv', '1393433752', '1', '1', '0', '2');
INSERT INTO `edu_video` VALUES ('42', '17', '61', '秦时明月1', '530e1c7552640.flv', '530e1c7552640.jpg', '百步那个飞、、、建！！！', '40956784', 'flv', '1393433719', '4', '43', '0', '2');
INSERT INTO `edu_video` VALUES ('41', '12', '63', 'HTML基础教学', '530e1c84b08f1.flv', '530e1c84b08f1.jpg', 'HTML基础知识讲解...', '44186922', 'flv', '1393433735', '2', '3', '0', '2');
INSERT INTO `edu_video` VALUES ('40', '9', '63', 'PHP基础教学视频001', '530e1c567e7b6.flv', '530e1c567e7b6.jpg', 'PHP基础教学视频，要好好学，。', '38419684', 'flv', '1393433688', '2', '3', '0', '2');
INSERT INTO `edu_video` VALUES ('49', '3', '67', 'javascript', '530e20d3a9431.flv', '530e20d3a9431.jpg', 'javascript', '56588128', 'flv', '1393434837', '0', '0', '0', '2');
INSERT INTO `edu_video` VALUES ('48', '11', '68', '秦时明月3', '530e207da5de2.flv', '530e207da5de2.jpg', '百步飞剑哦', '41341240', 'flv', '1393434750', '0', '0', '0', '2');
INSERT INTO `edu_video` VALUES ('47', '6', '63', 'MySQL数据库分析', '530e1d4b7b5ce.flv', '530e1d4b7b5ce.jpg', 'MySQL数据库分析技术的分享', '59487154', 'flv', '1393433932', '4', '58', '0', '2');
INSERT INTO `edu_video` VALUES ('46', '12', '64', 'html', '530e1cf052f4d.flv', '530e1cf052f4d.jpg', 'wodehtml', '56139637', 'flv', '1393433841', '1', '1', '0', '2');
INSERT INTO `edu_video` VALUES ('59', '13', '65', 'XHTML最新教学视频', '530e8f53057b1.flv', '530e8f53057b1.jpg', '撸啊撸啊德玛西亚', '12898974', 'flv', '1393463123', '1', '2', '0', '2');
INSERT INTO `edu_video` VALUES ('61', '26', '65', 'JAVA工程师教学视频', '530e9058b2ce7.flv', '530e9058b2ce7.jpg', '百步飞建建、、、', '41341240', 'flv', '1393463387', '0', '2', '0', '2');
INSERT INTO `edu_video` VALUES ('63', '11', '63', 'PHP入门教学', '530eb01b4ccaf.flv', '530eb01b4ccaf.jpg', 'sadsds', '42748475', 'flv', '1393471518', '0', '7', '0', '2');

-- ----------------------------
-- Table structure for edu_zan
-- ----------------------------
DROP TABLE IF EXISTS `edu_zan`;
CREATE TABLE `edu_zan` (
  `uid` int(10) unsigned DEFAULT '0' COMMENT '用户的id',
  `vid` int(10) unsigned DEFAULT '0' COMMENT '视频的id',
  `lid` int(10) unsigned DEFAULT '0' COMMENT '文库资源的id',
  `nid` int(10) unsigned DEFAULT '0' COMMENT '视频手记的id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_zan
-- ----------------------------
INSERT INTO `edu_zan` VALUES ('70', '0', '33', '0');
INSERT INTO `edu_zan` VALUES ('70', '0', '45', '0');
INSERT INTO `edu_zan` VALUES ('76', '45', '0', '0');
INSERT INTO `edu_zan` VALUES ('70', '0', '43', '0');
INSERT INTO `edu_zan` VALUES ('70', '42', '0', '0');
INSERT INTO `edu_zan` VALUES ('70', '52', '0', '0');
INSERT INTO `edu_zan` VALUES ('75', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '36', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '43', '0');
INSERT INTO `edu_zan` VALUES ('71', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '0', '28');
INSERT INTO `edu_zan` VALUES ('64', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '35', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '38', '0');
INSERT INTO `edu_zan` VALUES ('66', '0', '35', '0');
INSERT INTO `edu_zan` VALUES ('66', '0', '36', '0');
INSERT INTO `edu_zan` VALUES ('66', '0', '37', '0');
INSERT INTO `edu_zan` VALUES ('66', '0', '38', '0');
INSERT INTO `edu_zan` VALUES ('69', '0', '0', '23');
INSERT INTO `edu_zan` VALUES ('69', '0', '0', '27');
INSERT INTO `edu_zan` VALUES ('67', '0', '0', '23');
INSERT INTO `edu_zan` VALUES ('67', '0', '0', '25');
INSERT INTO `edu_zan` VALUES ('69', '52', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '0', '0', '26');
INSERT INTO `edu_zan` VALUES ('66', '40', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '46', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '45', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '41', '0', '0');
INSERT INTO `edu_zan` VALUES ('67', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '42', '0', '0');
INSERT INTO `edu_zan` VALUES ('67', '47', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '43', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '41', '0', '0');
INSERT INTO `edu_zan` VALUES ('69', '45', '0', '0');
INSERT INTO `edu_zan` VALUES ('66', '47', '0', '0');
INSERT INTO `edu_zan` VALUES ('62', '47', '0', '0');
INSERT INTO `edu_zan` VALUES ('76', '40', '0', '0');
INSERT INTO `edu_zan` VALUES ('75', '51', '0', '0');
INSERT INTO `edu_zan` VALUES ('75', '52', '0', '0');
INSERT INTO `edu_zan` VALUES ('75', '0', '0', '35');
INSERT INTO `edu_zan` VALUES ('70', '0', '41', '0');
INSERT INTO `edu_zan` VALUES ('75', '0', '36', '0');
INSERT INTO `edu_zan` VALUES ('93', '42', '0', '0');
INSERT INTO `edu_zan` VALUES ('93', '0', '37', '0');
INSERT INTO `edu_zan` VALUES ('93', '0', '33', '0');
INSERT INTO `edu_zan` VALUES ('64', '0', '0', '36');
INSERT INTO `edu_zan` VALUES ('64', '0', '0', '35');
INSERT INTO `edu_zan` VALUES ('64', '0', '36', '0');
INSERT INTO `edu_zan` VALUES ('64', '0', '38', '0');
INSERT INTO `edu_zan` VALUES ('63', '42', '0', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '37');
INSERT INTO `edu_zan` VALUES ('63', '0', '48', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '33', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '44', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '23');
INSERT INTO `edu_zan` VALUES ('63', '50', '0', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '38');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '39');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '40');
INSERT INTO `edu_zan` VALUES ('61', '0', '36', '0');
INSERT INTO `edu_zan` VALUES ('61', '44', '0', '0');
INSERT INTO `edu_zan` VALUES ('61', '0', '0', '38');
INSERT INTO `edu_zan` VALUES ('63', '0', '43', '0');
INSERT INTO `edu_zan` VALUES ('68', '53', '0', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '49', '0');
INSERT INTO `edu_zan` VALUES ('68', '0', '0', '39');
INSERT INTO `edu_zan` VALUES ('63', '47', '0', '0');
INSERT INTO `edu_zan` VALUES ('65', '59', '0', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '0', '41');
INSERT INTO `edu_zan` VALUES ('95', '52', '0', '0');
INSERT INTO `edu_zan` VALUES ('63', '0', '36', '0');
