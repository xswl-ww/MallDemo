/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : business

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-06-14 17:41:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `carts`
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `userName` varchar(255) DEFAULT NULL,
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `decribe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES ('123456', '5', 'yishi.jpg', '意式咖啡豆', '￥ 59.00', '紫色', '细腻丰厚 烈苦无酸');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `describe` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '蓝山咖啡豆', '89', '蓝色', '2500', 'lanshan.jpg', '');
INSERT INTO `goods` VALUES ('2', '摩卡咖啡豆', '69', '红色', '4200', 'moka.jpg', '');
INSERT INTO `goods` VALUES ('3', '日式炭烧咖啡豆', '59', '棕色', '45000', 'rishi.jpg', '');
INSERT INTO `goods` VALUES ('4', '意式咖啡豆', '59', '紫色', '15000', 'yishi.jpg', '');
INSERT INTO `goods` VALUES ('5', '曼特宁咖啡豆', '59', '棕色', '24000', 'mantening.jpg', '');
INSERT INTO `goods` VALUES ('6', '哥伦比亚咖啡豆', '59', '绿色', '65000', 'gelunbiya.jpg', '');
INSERT INTO `goods` VALUES ('7', '香醇咖啡豆', '59', '红色', '7000', 'xiangchun.jpg', '');
INSERT INTO `goods` VALUES ('8', '巴西咖啡豆', '59', '灰色', '4900', 'baxi.jpg', '');

-- ----------------------------
-- Table structure for `my_users`
-- ----------------------------
DROP TABLE IF EXISTS `my_users`;
CREATE TABLE `my_users` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `realName` varchar(20) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_users
-- ----------------------------
INSERT INTO `my_users` VALUES ('123456', '123456', '123456', '123456', '123456@qq.com', '123456', '1');
INSERT INTO `my_users` VALUES ('1234566', '123456', '111', '12345678910', '12345678@qq.com', 'c城', '2');

-- ----------------------------
-- Table structure for `personcart`
-- ----------------------------
DROP TABLE IF EXISTS `personcart`;
CREATE TABLE `personcart` (
  `name` varchar(255) NOT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of personcart
-- ----------------------------

-- ----------------------------
-- Table structure for `purchaserecord`
-- ----------------------------
DROP TABLE IF EXISTS `purchaserecord`;
CREATE TABLE `purchaserecord` (
  `path` varchar(255) NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `shopnum` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `sum` varchar(255) NOT NULL,
  `phonenum` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of purchaserecord
-- ----------------------------
INSERT INTO `purchaserecord` VALUES ('lanshan.jpg', '蓝山咖啡豆', '12', '￥ 89.00', '1068.0', '15765481525', '123456');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
