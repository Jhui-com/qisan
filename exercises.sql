/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : exercises

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-12-18 08:54:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(4) NOT NULL,
  `post_id` int(4) NOT NULL,
  `emp_name` varchar(100) DEFAULT NULL,
  `emp_sex` int(4) DEFAULT NULL,
  `emp_age` int(4) DEFAULT NULL,
  `emp_depart` varchar(50) DEFAULT NULL,
  `emp_year` int(4) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1000', '詹姆斯哈登', '1', '25', '行政部', '2');
INSERT INTO `employee` VALUES ('2', '1000', '凯里欧文', '1', '29', '行政部', '5');
INSERT INTO `employee` VALUES ('3', '1002', '保罗乔治', '2', '33', '业务部', '9');
INSERT INTO `employee` VALUES ('4', '1003', '杜兰特', '1', '40', '集团', '10');
INSERT INTO `employee` VALUES ('5', '1001', '易建联', '1', '35', '行政部', '10');

-- ----------------------------
-- Table structure for flightinfo
-- ----------------------------
DROP TABLE IF EXISTS `flightinfo`;
CREATE TABLE `flightinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flightid` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL,
  `leaveairport` varchar(20) NOT NULL,
  `arriveairport` varchar(20) NOT NULL,
  `leavetime` varchar(10) NOT NULL,
  `arrivetime` varchar(10) NOT NULL,
  `airplane` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flightinfo
-- ----------------------------
INSERT INTO `flightinfo` VALUES ('1', 'CA1433', '中国国航', '首都机场', '荷花机场', '18：20', '20：40', '波音 737');
INSERT INTO `flightinfo` VALUES ('2', 'CZ3718', '南方航空', '首都机场', '荷花机场', '13：25', '15：55', '空客 321');
INSERT INTO `flightinfo` VALUES ('3', 'KN2920', '联合航空', '荷花机场', '北京机场', '18：00', '20：10', '波音 737');
INSERT INTO `flightinfo` VALUES ('5', '1', '1', '1', '1', '1', '1', '11');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `content` varchar(20) NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`newid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '2019端午节', '史迪仔', '国务院', '钢铁侠大战美队', '2009-05-26');
INSERT INTO `news` VALUES ('39', '2018中秋节', '杜兰特', '美国', '篮网总冠军', '2021-06-25');
INSERT INTO `news` VALUES ('47', '12312', '12312', '123', '321', '2020-12-17');
INSERT INTO `news` VALUES ('48', '111111', '111111', '1', '1', '2020-12-17');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(4) NOT NULL,
  `post_name` varchar(50) NOT NULL,
  `post_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1000', '行政助理', '行政辅助人员');
INSERT INTO `post` VALUES ('1001', '行政主管', '行政负责人');
INSERT INTO `post` VALUES ('1002', '业务经理', '业务处主管');
INSERT INTO `post` VALUES ('1003', '总经理', '公司负责人');
