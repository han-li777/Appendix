/*
 Navicat Premium Data Transfer

 Source Server         : MySql 5.7
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : qiqiim

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/04/2021 17:23:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_hotel_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_comment`;
CREATE TABLE `t_hotel_comment`  (
  `hotel_comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hotel_comment_room_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotel_comment_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotel_comment_member_id` int(10) UNSIGNED NULL DEFAULT 0,
  `hotel_comment_score` float(10, 1) NULL DEFAULT 0.0,
  `hotel_comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotel_comment_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hotel_comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hotel_comment
-- ----------------------------
INSERT INTO `t_hotel_comment` VALUES (3, '1002', 'admin', 24, 4.5, 'great!', '29 Apr,2021');
INSERT INTO `t_hotel_comment` VALUES (2, '1002', 'admin', 24, 3.0, 'this very good', '29 Apr,2021');
INSERT INTO `t_hotel_comment` VALUES (4, '1002', 'admin', 24, 1.5, 'so bad', '29 Apr,2021');

-- ----------------------------
-- Table structure for t_hotel_info
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_info`;
CREATE TABLE `t_hotel_info`  (
  `hotel_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotel_info_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `hotel_info_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店位置',
  `hotel_info_img` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店图片',
  PRIMARY KEY (`hotel_info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_hotel_info
-- ----------------------------
INSERT INTO `t_hotel_info` VALUES (1, 'inns hotel', 'Culture road', '/img/1.jpg');
INSERT INTO `t_hotel_info` VALUES (2, 'inns hotel-20', 'Culture road', '/img/2.jpg');
INSERT INTO `t_hotel_info` VALUES (3, 'inns hotel3', 'Culture road', '/img/3.jpg');
INSERT INTO `t_hotel_info` VALUES (4, 'inns hotel-4', 'Culture road', '/img/4.jpg');
INSERT INTO `t_hotel_info` VALUES (5, 'inns hotel-5', 'Culture road', '/img/5.jpg');
INSERT INTO `t_hotel_info` VALUES (6, 'inns hotel6', 'Culture road', '/img/6.jpg');
INSERT INTO `t_hotel_info` VALUES (7, 'inns hotel7', 'Culture road', '/img/7.jpg');
INSERT INTO `t_hotel_info` VALUES (8, 'inns hotel-8', 'Culture road', '/img/8.jpg');
INSERT INTO `t_hotel_info` VALUES (9, 'inns hotel-9', 'Culture road', '/img/9.jpg');
INSERT INTO `t_hotel_info` VALUES (10, 'inns hotel10', 'Culture road', '/img/10.jpg');

-- ----------------------------
-- Table structure for t_hotel_member_room
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_member_room`;
CREATE TABLE `t_hotel_member_room`  (
  `hotel_member_room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键\r\n',
  `hotel_member_room_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `hotel_member_room_room_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `hotel_member_room_info_id` int(11) NULL DEFAULT NULL COMMENT '酒店id',
  `hotel_member_room_start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始',
  `hotel_member_room_end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束',
  `hotel_member_room_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '1进行中   2结束',
  `hotel_member_room_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `hotel_member_room_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `hotel_member_room_price` float NULL DEFAULT 0 COMMENT '订单金额',
  PRIMARY KEY (`hotel_member_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_hotel_member_room
-- ----------------------------
INSERT INTO `t_hotel_member_room` VALUES (23, 'admin', '1002', 1, '2021.4.23', '2021.04.27', '2', '1523694741', '325478954876', 10.12);
INSERT INTO `t_hotel_member_room` VALUES (24, 'admin', '1002', 1, '2021.4.27', '2021.04.29', '2', '15276533487', '372892098098732', 10.12);
INSERT INTO `t_hotel_member_room` VALUES (25, 'admin', '1002', 1, '2021.5.8', '2021.5.10', '1', '13136525987', '371526585479654', 10.12);

-- ----------------------------
-- Table structure for t_hotel_room
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_room`;
CREATE TABLE `t_hotel_room`  (
  `hotel_room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotel_room_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `hotel_room_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `hotel_room_is_pay` int(11) NULL DEFAULT 1 COMMENT '是否支付(已被预订)：1无预定 2有预订',
  `hotel_room_info_id` int(11) NULL DEFAULT NULL COMMENT '酒店主键',
  `hotel_room_price` float NULL DEFAULT 0 COMMENT '房间价格',
  `hotel_room_start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotel_room_end` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hotel_room_booker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hotel_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_hotel_room
-- ----------------------------
INSERT INTO `t_hotel_room` VALUES (1, '1001', '123456', 1, 1, 10.12, '', '', '');
INSERT INTO `t_hotel_room` VALUES (2, '1002', '123456', 2, 1, 10.23, '2021.05.08', '2021.05.10', '');
INSERT INTO `t_hotel_room` VALUES (3, '1101', '123456', 1, 2, 10.24, '', '', '');

-- ----------------------------
-- Table structure for t_hotel_user
-- ----------------------------
DROP TABLE IF EXISTS `t_hotel_user`;
CREATE TABLE `t_hotel_user`  (
  `hotel_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotel_user_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `hotel_user_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `hotel_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `hotel_user_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `hotel_user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `hotel_user_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`hotel_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_hotel_user
-- ----------------------------
INSERT INTO `t_hotel_user` VALUES (1, 'admin', '123456', '12131', 'female', '15273288866', '/img/1.jpg');
INSERT INTO `t_hotel_user` VALUES (2, 'test', '123456', '12132', 'male', '15273288867', '/img/2.jpg');
INSERT INTO `t_hotel_user` VALUES (3, 'test222', '123456', '12133', 'female', '15273288868', '/img/3.jpg');

-- ----------------------------
-- Table structure for t_manage_account
-- ----------------------------
DROP TABLE IF EXISTS `t_manage_account`;
CREATE TABLE `t_manage_account`  (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`manager_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_manage_account
-- ----------------------------
INSERT INTO `t_manage_account` VALUES (1, 'admin', '123456');

SET FOREIGN_KEY_CHECKS = 1;
