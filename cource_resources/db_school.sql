/*
 Navicat Premium Data Transfer

 Source Server         : d_3
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : db_school1

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/04/2022 15:49:27
*/
CREATE DATABASE db_school;
use db_school;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `cno` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('C01', '数据库');
INSERT INTO `t_course` VALUES ('C02', '数学');
INSERT INTO `t_course` VALUES ('C03', '信息系统');
INSERT INTO `t_course` VALUES ('C04', '操作系统');
INSERT INTO `t_course` VALUES ('C05', '语文');
INSERT INTO `t_course` VALUES ('C06', '计算机英语');
INSERT INTO `t_course` VALUES ('C07', '物理');
INSERT INTO `t_course` VALUES ('C08', '化学');
INSERT INTO `t_course` VALUES ('C09', '生物');
INSERT INTO `t_course` VALUES ('C10', '政治');
INSERT INTO `t_course` VALUES ('C11', '历史');
INSERT INTO `t_course` VALUES ('C12', '地理');
INSERT INTO `t_course` VALUES ('C13', '计算机');
INSERT INTO `t_course` VALUES ('C14', '概率论');

-- ----------------------------
-- Table structure for t_sc
-- ----------------------------
DROP TABLE IF EXISTS `t_sc`;
CREATE TABLE `t_sc`  (
  `sno` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cno` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `degree` decimal(4, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`sno`, `cno`) USING BTREE,
  INDEX `cno`(`cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sc
-- ----------------------------
INSERT INTO `t_sc` VALUES ('20050101', 'C01', 60);
INSERT INTO `t_sc` VALUES ('20050101', 'C02', 89);
INSERT INTO `t_sc` VALUES ('20050101', 'C03', 59);
INSERT INTO `t_sc` VALUES ('20050101', 'C04', 85);
INSERT INTO `t_sc` VALUES ('20050201', 'C01', 79);
INSERT INTO `t_sc` VALUES ('20050201', 'C02', 55);
INSERT INTO `t_sc` VALUES ('20050201', 'C03', 58);
INSERT INTO `t_sc` VALUES ('20050201', 'C04', 60);
INSERT INTO `t_sc` VALUES ('20050202', 'C03', 98);
INSERT INTO `t_sc` VALUES ('20050301', 'C02', 40);
INSERT INTO `t_sc` VALUES ('20050301', 'C03', 80);
INSERT INTO `t_sc` VALUES ('20050302', 'C01', NULL);
INSERT INTO `t_sc` VALUES ('20050302', 'C02', 91);
INSERT INTO `t_sc` VALUES ('20050302', 'C09', 99);
INSERT INTO `t_sc` VALUES ('20050505', 'C10', 88);
INSERT INTO `t_sc` VALUES ('20050505', 'C11', NULL);
INSERT INTO `t_sc` VALUES ('20060606', 'C04', 95);
INSERT INTO `t_sc` VALUES ('20070101', 'C01', 88);
INSERT INTO `t_sc` VALUES ('20070101', 'C05', 66);
INSERT INTO `t_sc` VALUES ('20070102', 'C04', 98);
INSERT INTO `t_sc` VALUES ('20070102', 'C10', 66);
INSERT INTO `t_sc` VALUES ('20070201', 'C01', 86);
INSERT INTO `t_sc` VALUES ('20070201', 'C09', 85);
INSERT INTO `t_sc` VALUES ('20070401', 'C01', 85);
INSERT INTO `t_sc` VALUES ('20070401', 'C02', 55);
INSERT INTO `t_sc` VALUES ('20070401', 'C04', 66);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `sno` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ssex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sbirthday` year NULL DEFAULT NULL,
  `saddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sdept` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `speciality` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('20050101', '李小勇', '男', 1987, '山东济南', '计算机工程系', '计算机应用');
INSERT INTO `t_student` VALUES ('20050201', '刘晨', '女', 1988, '山东青岛', '信息工程系', '电子商务');
INSERT INTO `t_student` VALUES ('20050202', '张小', '男', 2018, '河北唐山', '软件工程系', '电子商务');
INSERT INTO `t_student` VALUES ('20050301', '王二小', '女', 1989, '江苏苏州', '数学系', '数学');
INSERT INTO `t_student` VALUES ('20050302', '魏懿', '男', 2018, '辽宁营口', '软件工程系', '数学');
INSERT INTO `t_student` VALUES ('20050303', '刘翔坤', '女', 2022, '广西壮族', '信息工程系', '电子商务');
INSERT INTO `t_student` VALUES ('20050505', '唐豆', '女', 2004, '广西壮族', '土木工程系', '给排水');
INSERT INTO `t_student` VALUES ('20060606', '清兵卫', '男', 2003, '天津城建', '软件工程系', '计算机应用');
INSERT INTO `t_student` VALUES ('20070101', '李秀芹', '女', 1973, '辽宁盘锦', '计算机工程系', '计算机应用');
INSERT INTO `t_student` VALUES ('20070102', '李勇', '女', 1999, '海南海口', '计算机工程系', '计算机应用');
INSERT INTO `t_student` VALUES ('20070201', '李勇', '男', 1988, '云南昆明', '土木工程系', '给排水');
INSERT INTO `t_student` VALUES ('20070401', '王铁柱', '男', 1987, '北京海淀', '信息工程系', '电子商务');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `tno` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tname` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tsex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tbirthday` year NULL DEFAULT NULL,
  `tdept` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('101', '李新', '男', 1977, '计算机工程系');
INSERT INTO `t_teacher` VALUES ('102', '钱军', '女', 1968, '计算机工程系');
INSERT INTO `t_teacher` VALUES ('103', '金大洲', '女', 1970, '土木工程系');
INSERT INTO `t_teacher` VALUES ('201', '王小花', '女', 1979, '信息工程系');
INSERT INTO `t_teacher` VALUES ('202', '张小青', '男', 1968, '信息工程系');
INSERT INTO `t_teacher` VALUES ('203', '刘双全', '男', 1966, '土木工程系');

-- ----------------------------
-- Table structure for t_teaching
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching`;
CREATE TABLE `t_teaching`  (
  `cno` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tno` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cterm` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`cno`, `tno`) USING BTREE,
  INDEX `tno`(`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_teaching
-- ----------------------------
INSERT INTO `t_teaching` VALUES ('C01', '101', 2);
INSERT INTO `t_teaching` VALUES ('C02', '102', 1);
INSERT INTO `t_teaching` VALUES ('C03', '201', 3);
INSERT INTO `t_teaching` VALUES ('C04', '202', 4);
INSERT INTO `t_teaching` VALUES ('C05', '103', 2);
INSERT INTO `t_teaching` VALUES ('C08', '203', 1);
INSERT INTO `t_teaching` VALUES ('C09', '102', 3);
INSERT INTO `t_teaching` VALUES ('C10', '202', 3);

SET FOREIGN_KEY_CHECKS = 1;
