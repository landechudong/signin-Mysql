/*
 Navicat Premium Data Transfer

 Source Server         : signin
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : signin

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 09/10/2023 18:07:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for celweek
-- ----------------------------
DROP TABLE IF EXISTS `celweek`;
CREATE TABLE `celweek`  (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `original_time` date NULL DEFAULT 'now()',
  `change_time` date NULL DEFAULT 'now()',
  `week` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of celweek
-- ----------------------------
INSERT INTO `celweek` VALUES (1, '2023-10-08', '2023-10-08', 4);

-- ----------------------------
-- Table structure for check_schedule
-- ----------------------------
DROP TABLE IF EXISTS `check_schedule`;
CREATE TABLE `check_schedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` time(0) NOT NULL,
  `last_time` time(0) NOT NULL,
  `late_time` time(0) NOT NULL,
  `sections` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `CheckSchedule_sections_uindex`(`sections`) USING BTREE,
  UNIQUE INDEX `CheckSchedule_time_uindex`(`start_time`) USING BTREE,
  UNIQUE INDEX `checkschedule_lastTime_uindex`(`last_time`) USING BTREE,
  UNIQUE INDEX `checkschedule_lateTime_uindex`(`late_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of check_schedule
-- ----------------------------
INSERT INTO `check_schedule` VALUES (1, '07:40:00', '08:00:00', '08:10:00', '1-2');
INSERT INTO `check_schedule` VALUES (2, '09:40:00', '10:00:00', '10:10:00', '3-4');
INSERT INTO `check_schedule` VALUES (3, '13:10:00', '13:30:00', '13:40:00', '5-6');
INSERT INTO `check_schedule` VALUES (4, '14:40:00', '15:00:00', '15:10:00', '7-8');
INSERT INTO `check_schedule` VALUES (5, '16:40:00', '17:00:00', '17:10:00', '9-10');

-- ----------------------------
-- Table structure for class_messages
-- ----------------------------
DROP TABLE IF EXISTS `class_messages`;
CREATE TABLE `class_messages`  (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `stu_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `day_week` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '周几',
  `is_single` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否单双',
  `class_to_class` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '第几节',
  `start_week` tinyint NOT NULL COMMENT '开始周',
  `end_week` tinyint NOT NULL COMMENT '结束周',
  `day_num` tinyint NOT NULL COMMENT '周几的数字',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1353 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_messages
-- ----------------------------

-- ----------------------------
-- Table structure for database
-- ----------------------------
DROP TABLE IF EXISTS `database`;
CREATE TABLE `database`  (
  `C1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of database
-- ----------------------------
INSERT INTO `database` VALUES ('<?xml version=\"1.0\" encoding=\"UTF-8\"?>');
INSERT INTO `database` VALUES ('<module type=\"JAVA_MODULE\" version=\"4\">');
INSERT INTO `database` VALUES ('  <component name=\"NewModuleRootManager\" inherit-compiler-output=\"true\">');
INSERT INTO `database` VALUES ('    <exclude-output />');
INSERT INTO `database` VALUES ('    <content url=\"file://$MODULE_DIR$\">');
INSERT INTO `database` VALUES ('      <sourceFolder url=\"file://$MODULE_DIR$/src\" isTestSource=\"false\" />');
INSERT INTO `database` VALUES ('    </content>');
INSERT INTO `database` VALUES ('    <orderEntry type=\"inheritedJdk\" />');
INSERT INTO `database` VALUES ('    <orderEntry type=\"sourceFolder\" forTests=\"false\" />');
INSERT INTO `database` VALUES ('  </component>');
INSERT INTO `database` VALUES ('</module>');

-- ----------------------------
-- Table structure for late_one_record
-- ----------------------------
DROP TABLE IF EXISTS `late_one_record`;
CREATE TABLE `late_one_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stu_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stu_name` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day_week` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class_to_class` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `conditions` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of late_one_record
-- ----------------------------

-- ----------------------------
-- Table structure for login_browser
-- ----------------------------
DROP TABLE IF EXISTS `login_browser`;
CREATE TABLE `login_browser`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stu_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `browser` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_browser_stu_code_uindex`(`stu_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_browser
-- ----------------------------

-- ----------------------------
-- Table structure for sign_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_record`;
CREATE TABLE `sign_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sign_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for student_inf
-- ----------------------------
DROP TABLE IF EXISTS `student_inf`;
CREATE TABLE `student_inf`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '同学姓名',
  `stu_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '同学学号',
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `late_time` int NOT NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT 'now()' COMMENT '创建时间',
  `is_exist` tinyint NULL DEFAULT 1,
  `update_time` datetime(0) NULL DEFAULT 'now()' COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userId_studentId_uindex`(`stu_code`) USING BTREE,
  UNIQUE INDEX `userId_username_uindex`(`stu_name`) USING BTREE,
  UNIQUE INDEX `student_inf_password_uindex`(`password`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_inf
-- ----------------------------
INSERT INTO `student_inf` VALUES (6, 'LGL', 'lgl', 'lgl', 0, '2023-09-05 08:50:21', 2, '2023-09-16 15:00:16');
INSERT INTO `student_inf` VALUES (125, '李鑫启', '2022105380127', '2022105380127', 0, '2023-09-22 21:47:08', 1, '2023-09-22 21:47:08');
INSERT INTO `student_inf` VALUES (126, 'LLL', 'lll', 'lll', 0, '2023-09-22 21:48:49', 2, '2023-09-22 21:48:51');
INSERT INTO `student_inf` VALUES (128, '王贺', '2022105380053', '2022105380053', 0, '2023-09-23 15:31:18', 1, '2023-09-25 10:12:17');
INSERT INTO `student_inf` VALUES (129, '龚子淼', '2022105420112', '2022105420112', 0, '2023-09-23 15:47:00', 1, '2023-09-23 15:47:00');
INSERT INTO `student_inf` VALUES (133, '曹雅芝', '2022105430066', '2022105430066', 0, '2023-09-28 18:04:36', 1, '2023-09-28 18:04:36');

-- ----------------------------
-- Table structure for time_tables
-- ----------------------------
DROP TABLE IF EXISTS `time_tables`;
CREATE TABLE `time_tables`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_to_class` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `monday` tinyint NOT NULL,
  `tuesday` tinyint NOT NULL,
  `wednesday` tinyint NOT NULL,
  `thursday` tinyint NOT NULL,
  `friday` tinyint NOT NULL,
  `stu_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of time_tables
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
