/*
 Navicat Premium Data Transfer

 Source Server         : aa
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : checkcar

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 05/05/2021 09:54:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'liu', 'yong', NULL);
INSERT INTO `admin` VALUES (2, '1', '2', NULL);
INSERT INTO `admin` VALUES (3, '1', '3', '2');

-- ----------------------------
-- Table structure for checkyourcar
-- ----------------------------
DROP TABLE IF EXISTS `checkyourcar`;
CREATE TABLE `checkyourcar`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `vehicle_brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recall` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkyourcar
-- ----------------------------
INSERT INTO `checkyourcar` VALUES (1, 'BWM', 'Coupe', 'brake did not work', 'it has recalled', 'liu');
INSERT INTO `checkyourcar` VALUES (2, 'Aston Martin DBS', 'Coupe', 'car seats', 'it has recalled', 'liu');
INSERT INTO `checkyourcar` VALUES (3, 'VWAGY', 'Suv', 'tyre flat', 'it does not recall', 'liu');
INSERT INTO `checkyourcar` VALUES (4, 'Audi', 'Suv', 'door dings', 'it does not recall', 'liu');

SET FOREIGN_KEY_CHECKS = 1;
