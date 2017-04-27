/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : erms

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-04-14 23:19:25
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_class
-- ----------------------------

-- ----------------------------
-- Table structure for edu_class_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_class_course`;
CREATE TABLE `edu_class_course` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `clid` int(12) DEFAULT NULL,
  `coid` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_class_course
-- ----------------------------

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

-- ----------------------------
-- Table structure for edu_college
-- ----------------------------
DROP TABLE IF EXISTS `edu_college`;
CREATE TABLE `edu_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_college
-- ----------------------------

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

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_course
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_course_point
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_question
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_question_student
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_exam_student
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_library
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_major
-- ----------------------------

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
INSERT INTO `edu_node` VALUES ('17', '考试审核', 'exam', 'audit', '1');
INSERT INTO `edu_node` VALUES ('18', '公告管理', 'notice', 'index', '1');
INSERT INTO `edu_node` VALUES ('19', '考试打分', 'examstudent', 'score', '1');
INSERT INTO `edu_node` VALUES ('20', '考试记录', 'examstudent', 'index', '1');
INSERT INTO `edu_node` VALUES ('21', '意见反馈', 'opinion', 'index', '1');
INSERT INTO `edu_node` VALUES ('24', '自测规则', 'testrule', 'index', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_note
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_question
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_roles
-- ----------------------------
INSERT INTO `edu_roles` VALUES ('1', '管理员', '1', '');

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
INSERT INTO `edu_role_node` VALUES ('1', '1');
INSERT INTO `edu_role_node` VALUES ('1', '2');
INSERT INTO `edu_role_node` VALUES ('1', '3');
INSERT INTO `edu_role_node` VALUES ('1', '4');
INSERT INTO `edu_role_node` VALUES ('1', '5');
INSERT INTO `edu_role_node` VALUES ('1', '6');
INSERT INTO `edu_role_node` VALUES ('1', '7');
INSERT INTO `edu_role_node` VALUES ('1', '8');
INSERT INTO `edu_role_node` VALUES ('1', '9');
INSERT INTO `edu_role_node` VALUES ('1', '10');
INSERT INTO `edu_role_node` VALUES ('1', '11');
INSERT INTO `edu_role_node` VALUES ('1', '12');
INSERT INTO `edu_role_node` VALUES ('1', '13');
INSERT INTO `edu_role_node` VALUES ('1', '14');
INSERT INTO `edu_role_node` VALUES ('1', '15');
INSERT INTO `edu_role_node` VALUES ('1', '16');
INSERT INTO `edu_role_node` VALUES ('1', '17');
INSERT INTO `edu_role_node` VALUES ('1', '18');
INSERT INTO `edu_role_node` VALUES ('1', '19');
INSERT INTO `edu_role_node` VALUES ('1', '20');
INSERT INTO `edu_role_node` VALUES ('1', '21');
INSERT INTO `edu_role_node` VALUES ('1', '22');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_student
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_question
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_test_rule
-- ----------------------------

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
INSERT INTO `edu_userrole` VALUES ('1', '1');

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
  `introduce` varchar(255) DEFAULT '' COMMENT '简介',
  `logintime` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户当前登录的时间',
  `logouttime` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户退出时的时间',
  `loginnum` int(11) NOT NULL DEFAULT '0' COMMENT '记录用户的登录次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_users
-- ----------------------------
INSERT INTO `edu_users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '1', '22', 'admin@admin.com', '74', '530e9f9d3b45b.jpg', '10', '999', '1393430863', '无', '1492183078', '1492183097', '112');

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

-- ----------------------------
-- Table structure for edu_user_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_user_course`;
CREATE TABLE `edu_user_course` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` int(12) DEFAULT NULL,
  `coid` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_user_course
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_user_question
-- ----------------------------

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
