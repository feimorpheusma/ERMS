/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : zhongyizhongchou

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-10-18 08:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lzh_borrow_repay
-- ----------------------------
DROP TABLE IF EXISTS `lzh_borrow_repay`;
CREATE TABLE `lzh_borrow_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `investor_uid` int(11) NOT NULL,
  `investor_capital` decimal(15,2) NOT NULL,
  `repay_percent` decimal(6,2) NOT NULL,
  `repay_interest` decimal(15,2) NOT NULL,
  `repay_time` int(11) NOT NULL,
  `repay_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
