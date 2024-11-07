/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : db_book

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 28/09/2022 21:29:07
*/
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoping` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shoping`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` double NOT NULL,
  `goodsTypeId` int(0) NOT NULL,
  `goodsDesc` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `count` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodsTypeId`(`goodsTypeId`) USING BTREE,
  CONSTRAINT `t_goods_ibfk_1` FOREIGN KEY (`goodsTypeId`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES (5, '柠檬水', 4, 10, '', 31);
INSERT INTO `t_goods` VALUES (9, '西瓜汁', 3.9, 10, '', 44);
INSERT INTO `t_goods` VALUES (11, '烧仙草', 8, 10, '', 20);
INSERT INTO `t_goods` VALUES (16, '可口可乐', 3, 10, '', 99);
INSERT INTO `t_goods` VALUES (17, '雪碧', 3, 10, '', 99);
INSERT INTO `t_goods` VALUES (18, '芬达橙味汽水', 3, 10, '', 100);
INSERT INTO `t_goods` VALUES (19, '百事可乐', 3, 10, '', 100);
INSERT INTO `t_goods` VALUES (21, '酷儿橙汁', 4.5, 10, '', 100);
INSERT INTO `t_goods` VALUES (22, '美汁源果粒橙', 3.5, 10, '', 100);
INSERT INTO `t_goods` VALUES (23, '康师傅绿茶', 4, 10, '', 100);
INSERT INTO `t_goods` VALUES (24, '康师傅冰红茶', 4, 10, '', 100);
INSERT INTO `t_goods` VALUES (25, '王老吉', 3, 10, '', 100);
INSERT INTO `t_goods` VALUES (26, '绿力冬瓜茶', 2, 10, '', 100);
INSERT INTO `t_goods` VALUES (27, '农夫山泉', 2, 10, '', 100);
INSERT INTO `t_goods` VALUES (28, '金银花露', 5, 10, '', 100);
INSERT INTO `t_goods` VALUES (29, '椰子汁', 2.5, 10, '', 100);
INSERT INTO `t_goods` VALUES (30, '蒙牛酸酸乳', 2.5, 10, '', 100);
INSERT INTO `t_goods` VALUES (32, '好丽友蛋黄派', 2.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (33, '可比克薯片', 3.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (34, '上好佳虾条', 3.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (35, '绿盛牛肉粒', 10, 29, '', 100);
INSERT INTO `t_goods` VALUES (36, '台洲湾鱼片', 5.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (37, '得力山楂片', 4.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (38, '茂发西梅', 5, 29, '', 100);
INSERT INTO `t_goods` VALUES (39, '洽洽香瓜子', 6, 29, '', 100);
INSERT INTO `t_goods` VALUES (40, '恒康开心果 ', 6, 29, '', 100);
INSERT INTO `t_goods` VALUES (41, '上好佳薄荷糖', 3, 29, '', 100);
INSERT INTO `t_goods` VALUES (42, '旺仔牛奶糖', 5, 29, '', 100);
INSERT INTO `t_goods` VALUES (43, '清嘴柠檬含片', 5.5, 29, '', 100);
INSERT INTO `t_goods` VALUES (44, '王老吉润喉糖', 4, 29, '', 100);
INSERT INTO `t_goods` VALUES (45, '伊利牛初乳片', 2, 29, '', 100);
INSERT INTO `t_goods` VALUES (46, '绿箭口香糖', 3, 29, '', 100);
INSERT INTO `t_goods` VALUES (47, '猪肉', 26.8, 30, '', 100);
INSERT INTO `t_goods` VALUES (48, '牛肉', 38.1, 30, '', 100);
INSERT INTO `t_goods` VALUES (49, '羊肉', 48.1, 30, '', 100);
INSERT INTO `t_goods` VALUES (50, '鸡蛋', 3.9, 30, '', 100);
INSERT INTO `t_goods` VALUES (51, '大白菜', 1.6, 30, '', 100);
INSERT INTO `t_goods` VALUES (52, '土豆', 1.4, 30, '', 100);
INSERT INTO `t_goods` VALUES (53, '西红柿', 2.5, 30, '', 100);
INSERT INTO `t_goods` VALUES (54, '黄瓜', 2.2, 30, '', 100);
INSERT INTO `t_goods` VALUES (55, '芹菜', 3, 30, '', 100);
INSERT INTO `t_goods` VALUES (56, '茄子', 2.3, 30, '', 100);
INSERT INTO `t_goods` VALUES (57, '青椒', 4, 30, '', 100);
INSERT INTO `t_goods` VALUES (58, '白萝卜', 0.8, 30, '', 100);
INSERT INTO `t_goods` VALUES (59, '大葱', 2, 30, '', 100);
INSERT INTO `t_goods` VALUES (60, '冬瓜', 1.6, 30, '', 100);
INSERT INTO `t_goods` VALUES (61, '无籽西瓜', 2, 31, '', 100);
INSERT INTO `t_goods` VALUES (62, '青蛇果', 12.8, 31, '', 100);
INSERT INTO `t_goods` VALUES (63, '红富士', 4.5, 31, '', 100);
INSERT INTO `t_goods` VALUES (64, '哈密瓜', 5.6, 31, '', 100);
INSERT INTO `t_goods` VALUES (65, '柚子', 6.5, 31, '', 100);
INSERT INTO `t_goods` VALUES (66, '柠檬', 17.8, 31, '', 100);
INSERT INTO `t_goods` VALUES (67, '黄金猕猴桃', 48, 31, '', 100);
INSERT INTO `t_goods` VALUES (68, '牛油果', 15, 31, '', 100);
INSERT INTO `t_goods` VALUES (69, '菠萝', 5.9, 31, '', 100);
INSERT INTO `t_goods` VALUES (70, '芒果', 3.8, 31, '', 100);
INSERT INTO `t_goods` VALUES (71, '香蕉', 3.8, 31, '', 100);
INSERT INTO `t_goods` VALUES (72, '香梨', 8.8, 31, '', 100);
INSERT INTO `t_goods` VALUES (75, '金橘', 4.9, 31, '', 100);
INSERT INTO `t_goods` VALUES (76, '石榴', 4.5, 31, '', 100);
INSERT INTO `t_goods` VALUES (77, '红心柚', 7.9, 31, '', 100);
INSERT INTO `t_goods` VALUES (78, '雪莲果', 4.9, 31, '', 100);
INSERT INTO `t_goods` VALUES (79, '算法导论', 49.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (81, '编程之美', 19.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (82, '代码之美', 16.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (83, 'Photoshop', 36.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (84, 'Linux设计', 59.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (85, 'UNIX编程', 69.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (86, '代码整洁之道', 45.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (87, 'C#开发宝典', 39.9, 22, '', 100);
INSERT INTO `t_goods` VALUES (88, '大话设计模式', 36.9, 22, '', 100);

-- ----------------------------
-- Table structure for t_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `t_goodstype`;
CREATE TABLE `t_goodstype`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goodsTypeName` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `goodsTypeDesc` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goodstype
-- ----------------------------
INSERT INTO `t_goodstype` VALUES (10, '饮料类', '奶茶，可乐...');
INSERT INTO `t_goodstype` VALUES (22, '图书类', '');
INSERT INTO `t_goodstype` VALUES (29, '零食类', '');
INSERT INTO `t_goodstype` VALUES (30, '蔬菜类', '');
INSERT INTO `t_goodstype` VALUES (31, '水果类', '');

-- ----------------------------
-- Table structure for t_shophistory
-- ----------------------------
DROP TABLE IF EXISTS `t_shophistory`;
CREATE TABLE `t_shophistory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `useid` int(0) NOT NULL,
  `goodsid` int(0) NOT NULL,
  `btime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shophistory
-- ----------------------------
INSERT INTO `t_shophistory` VALUES (186, 11, 11, '2021/06/19 19:26:42', 1);

-- ----------------------------
-- Table structure for t_shoping
-- ----------------------------
DROP TABLE IF EXISTS `t_shoping`;
CREATE TABLE `t_shoping`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `useid` int(0) NOT NULL,
  `goodsid` int(0) NOT NULL,
  `count` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shoping
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` int(0) NOT NULL DEFAULT 0,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 1, 0);
INSERT INTO `t_user` VALUES (8, 'gzm', '123', 0, 0);
INSERT INTO `t_user` VALUES (15, 'lll', '123', 0, 0);
INSERT INTO `t_user` VALUES (16, 'pp', '14', 0, 0);
INSERT INTO `t_user` VALUES (17, '1234', '1234', 0, 0);
INSERT INTO `t_user` VALUES (18, '123456', '12345', 0, 0);
INSERT INTO `t_user` VALUES (19, '12345', '123', 0, 0);
INSERT INTO `t_user` VALUES (20, '55', '666', 0, 0);
INSERT INTO `t_user` VALUES (21, '1236', '12345', 0, 0);
INSERT INTO `t_user` VALUES (22, 'aaa', 'aaa', 0, 0);

-- ----------------------------
-- Table structure for t_usershophistory
-- ----------------------------
DROP TABLE IF EXISTS `t_usershophistory`;
CREATE TABLE `t_usershophistory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `useid` int(0) NOT NULL,
  `goodsid` int(0) NOT NULL,
  `btime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usershophistory
-- ----------------------------
INSERT INTO `t_usershophistory` VALUES (179, 11, 11, '2021/06/19 19:26:42', 1);

SET FOREIGN_KEY_CHECKS = 1;
