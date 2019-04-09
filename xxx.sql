/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.32
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : xxx

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 09/04/2019 18:44:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sp_access
-- ----------------------------
DROP TABLE IF EXISTS `sp_access`;
CREATE TABLE `sp_access`  (
  `role_id` smallint(6) UNSIGNED NOT NULL,
  `g` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目',
  `m` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块',
  `a` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法',
  INDEX `groupId`(`role_id`) USING BTREE,
  INDEX `gma`(`g`, `m`, `a`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_admin_access_log
-- ----------------------------
DROP TABLE IF EXISTS `sp_admin_access_log`;
CREATE TABLE `sp_admin_access_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL,
  `user_login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `g` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `a` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `log_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `get_data` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `result` tinyint(1) NULL DEFAULT 0,
  `log_time` datetime NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sp_admin_access_log
-- ----------------------------
INSERT INTO `sp_admin_access_log` VALUES (5, 1, 'admin', '', '', '', '192.168.1.32', '', '', 1, '2019-04-09 09:56:24');
INSERT INTO `sp_admin_access_log` VALUES (6, 1, 'admin', '', '', '', '192.168.1.32', '', '', 1, '2019-04-09 09:56:24');
INSERT INTO `sp_admin_access_log` VALUES (7, 1, 'admin', '', '', '', '192.168.1.32', '', '', 1, '2019-04-09 09:56:24');
INSERT INTO `sp_admin_access_log` VALUES (8, 1, 'admin', '', '', '', '192.168.1.32', '{\"v\":\"4.0\"}', '', 1, '2019-04-09 09:56:24');
INSERT INTO `sp_admin_access_log` VALUES (9, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 09:57:07');
INSERT INTO `sp_admin_access_log` VALUES (10, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 09:57:07');
INSERT INTO `sp_admin_access_log` VALUES (11, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 09:57:07');
INSERT INTO `sp_admin_access_log` VALUES (12, 1, 'admin', 'admin', 'Index', 'index_v1', '192.168.1.32', '{\"v\":\"4.0\"}', '', 1, '2019-04-09 09:57:07');
INSERT INTO `sp_admin_access_log` VALUES (13, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:03:03');
INSERT INTO `sp_admin_access_log` VALUES (14, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:03');
INSERT INTO `sp_admin_access_log` VALUES (15, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:03');
INSERT INTO `sp_admin_access_log` VALUES (16, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:03:04');
INSERT INTO `sp_admin_access_log` VALUES (17, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:04');
INSERT INTO `sp_admin_access_log` VALUES (18, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:04');
INSERT INTO `sp_admin_access_log` VALUES (19, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:03:05');
INSERT INTO `sp_admin_access_log` VALUES (20, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:05');
INSERT INTO `sp_admin_access_log` VALUES (21, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:05');
INSERT INTO `sp_admin_access_log` VALUES (22, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:03:05');
INSERT INTO `sp_admin_access_log` VALUES (23, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:06');
INSERT INTO `sp_admin_access_log` VALUES (24, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:03:06');
INSERT INTO `sp_admin_access_log` VALUES (25, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:17:50');
INSERT INTO `sp_admin_access_log` VALUES (26, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:17:50');
INSERT INTO `sp_admin_access_log` VALUES (27, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:17:50');
INSERT INTO `sp_admin_access_log` VALUES (28, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:17:54');
INSERT INTO `sp_admin_access_log` VALUES (29, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:17:54');
INSERT INTO `sp_admin_access_log` VALUES (30, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:17:54');
INSERT INTO `sp_admin_access_log` VALUES (31, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:18:26');
INSERT INTO `sp_admin_access_log` VALUES (32, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:18:26');
INSERT INTO `sp_admin_access_log` VALUES (33, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:18:26');
INSERT INTO `sp_admin_access_log` VALUES (34, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:18:27');
INSERT INTO `sp_admin_access_log` VALUES (35, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:18:27');
INSERT INTO `sp_admin_access_log` VALUES (36, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:18:27');
INSERT INTO `sp_admin_access_log` VALUES (37, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:19:33');
INSERT INTO `sp_admin_access_log` VALUES (38, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:19:33');
INSERT INTO `sp_admin_access_log` VALUES (39, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:19:33');
INSERT INTO `sp_admin_access_log` VALUES (40, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:19:34');
INSERT INTO `sp_admin_access_log` VALUES (41, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:19:34');
INSERT INTO `sp_admin_access_log` VALUES (42, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:19:34');
INSERT INTO `sp_admin_access_log` VALUES (43, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:32');
INSERT INTO `sp_admin_access_log` VALUES (44, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:32');
INSERT INTO `sp_admin_access_log` VALUES (45, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:32');
INSERT INTO `sp_admin_access_log` VALUES (46, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:33');
INSERT INTO `sp_admin_access_log` VALUES (47, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:33');
INSERT INTO `sp_admin_access_log` VALUES (48, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:33');
INSERT INTO `sp_admin_access_log` VALUES (49, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:34');
INSERT INTO `sp_admin_access_log` VALUES (50, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:34');
INSERT INTO `sp_admin_access_log` VALUES (51, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:20:34');
INSERT INTO `sp_admin_access_log` VALUES (52, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:51');
INSERT INTO `sp_admin_access_log` VALUES (53, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:51');
INSERT INTO `sp_admin_access_log` VALUES (54, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:52');
INSERT INTO `sp_admin_access_log` VALUES (55, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:52');
INSERT INTO `sp_admin_access_log` VALUES (56, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:20:59');
INSERT INTO `sp_admin_access_log` VALUES (57, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:21:36');
INSERT INTO `sp_admin_access_log` VALUES (58, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:21:43');
INSERT INTO `sp_admin_access_log` VALUES (59, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:21:43');
INSERT INTO `sp_admin_access_log` VALUES (60, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:21:43');
INSERT INTO `sp_admin_access_log` VALUES (61, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:22:59');
INSERT INTO `sp_admin_access_log` VALUES (62, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:22:59');
INSERT INTO `sp_admin_access_log` VALUES (63, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:22:59');
INSERT INTO `sp_admin_access_log` VALUES (64, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:22:59');
INSERT INTO `sp_admin_access_log` VALUES (65, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:22:59');
INSERT INTO `sp_admin_access_log` VALUES (66, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:23:00');
INSERT INTO `sp_admin_access_log` VALUES (67, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:23:00');
INSERT INTO `sp_admin_access_log` VALUES (68, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:23:00');
INSERT INTO `sp_admin_access_log` VALUES (69, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:23:00');
INSERT INTO `sp_admin_access_log` VALUES (70, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:23:08');
INSERT INTO `sp_admin_access_log` VALUES (71, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:23:08');
INSERT INTO `sp_admin_access_log` VALUES (72, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:23:08');
INSERT INTO `sp_admin_access_log` VALUES (73, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 10:49:09');
INSERT INTO `sp_admin_access_log` VALUES (74, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:49:09');
INSERT INTO `sp_admin_access_log` VALUES (75, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 10:49:09');
INSERT INTO `sp_admin_access_log` VALUES (76, 1, 'admin', 'admin', 'Index', 'basic_gallery', '192.168.1.32', '', '', 1, '2019-04-09 13:43:40');
INSERT INTO `sp_admin_access_log` VALUES (77, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:43:44');
INSERT INTO `sp_admin_access_log` VALUES (78, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:43:44');
INSERT INTO `sp_admin_access_log` VALUES (79, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:43:44');
INSERT INTO `sp_admin_access_log` VALUES (80, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:46:26');
INSERT INTO `sp_admin_access_log` VALUES (81, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:26');
INSERT INTO `sp_admin_access_log` VALUES (82, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:26');
INSERT INTO `sp_admin_access_log` VALUES (83, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:46:42');
INSERT INTO `sp_admin_access_log` VALUES (84, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:42');
INSERT INTO `sp_admin_access_log` VALUES (85, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:42');
INSERT INTO `sp_admin_access_log` VALUES (86, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:46:57');
INSERT INTO `sp_admin_access_log` VALUES (87, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:57');
INSERT INTO `sp_admin_access_log` VALUES (88, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:46:57');
INSERT INTO `sp_admin_access_log` VALUES (89, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:47:07');
INSERT INTO `sp_admin_access_log` VALUES (90, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:07');
INSERT INTO `sp_admin_access_log` VALUES (91, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:07');
INSERT INTO `sp_admin_access_log` VALUES (92, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:47:44');
INSERT INTO `sp_admin_access_log` VALUES (93, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:44');
INSERT INTO `sp_admin_access_log` VALUES (94, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:44');
INSERT INTO `sp_admin_access_log` VALUES (95, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:47:56');
INSERT INTO `sp_admin_access_log` VALUES (96, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:56');
INSERT INTO `sp_admin_access_log` VALUES (97, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:47:56');
INSERT INTO `sp_admin_access_log` VALUES (98, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:48:15');
INSERT INTO `sp_admin_access_log` VALUES (99, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:15');
INSERT INTO `sp_admin_access_log` VALUES (100, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:15');
INSERT INTO `sp_admin_access_log` VALUES (101, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:48:37');
INSERT INTO `sp_admin_access_log` VALUES (102, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:37');
INSERT INTO `sp_admin_access_log` VALUES (103, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:37');
INSERT INTO `sp_admin_access_log` VALUES (104, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:48:54');
INSERT INTO `sp_admin_access_log` VALUES (105, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:54');
INSERT INTO `sp_admin_access_log` VALUES (106, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:48:54');
INSERT INTO `sp_admin_access_log` VALUES (107, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:49:03');
INSERT INTO `sp_admin_access_log` VALUES (108, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:04');
INSERT INTO `sp_admin_access_log` VALUES (109, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:04');
INSERT INTO `sp_admin_access_log` VALUES (110, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:49:12');
INSERT INTO `sp_admin_access_log` VALUES (111, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:12');
INSERT INTO `sp_admin_access_log` VALUES (112, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:12');
INSERT INTO `sp_admin_access_log` VALUES (113, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:49:22');
INSERT INTO `sp_admin_access_log` VALUES (114, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:22');
INSERT INTO `sp_admin_access_log` VALUES (115, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:22');
INSERT INTO `sp_admin_access_log` VALUES (116, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:49:28');
INSERT INTO `sp_admin_access_log` VALUES (117, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:28');
INSERT INTO `sp_admin_access_log` VALUES (118, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:49:28');
INSERT INTO `sp_admin_access_log` VALUES (119, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:50:02');
INSERT INTO `sp_admin_access_log` VALUES (120, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:02');
INSERT INTO `sp_admin_access_log` VALUES (121, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:02');
INSERT INTO `sp_admin_access_log` VALUES (122, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:50:19');
INSERT INTO `sp_admin_access_log` VALUES (123, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:19');
INSERT INTO `sp_admin_access_log` VALUES (124, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:19');
INSERT INTO `sp_admin_access_log` VALUES (125, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:50:32');
INSERT INTO `sp_admin_access_log` VALUES (126, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:32');
INSERT INTO `sp_admin_access_log` VALUES (127, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:32');
INSERT INTO `sp_admin_access_log` VALUES (128, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:50:41');
INSERT INTO `sp_admin_access_log` VALUES (129, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:41');
INSERT INTO `sp_admin_access_log` VALUES (130, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:50:42');
INSERT INTO `sp_admin_access_log` VALUES (131, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:51:31');
INSERT INTO `sp_admin_access_log` VALUES (132, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:51:31');
INSERT INTO `sp_admin_access_log` VALUES (133, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:51:31');
INSERT INTO `sp_admin_access_log` VALUES (134, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:52:21');
INSERT INTO `sp_admin_access_log` VALUES (135, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:52:21');
INSERT INTO `sp_admin_access_log` VALUES (136, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:52:21');
INSERT INTO `sp_admin_access_log` VALUES (137, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:53:02');
INSERT INTO `sp_admin_access_log` VALUES (138, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:53:02');
INSERT INTO `sp_admin_access_log` VALUES (139, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 13:53:02');
INSERT INTO `sp_admin_access_log` VALUES (140, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:54:41');
INSERT INTO `sp_admin_access_log` VALUES (141, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:54:43');
INSERT INTO `sp_admin_access_log` VALUES (142, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:55:29');
INSERT INTO `sp_admin_access_log` VALUES (143, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:56:55');
INSERT INTO `sp_admin_access_log` VALUES (144, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:56:56');
INSERT INTO `sp_admin_access_log` VALUES (145, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:56:56');
INSERT INTO `sp_admin_access_log` VALUES (146, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:56:57');
INSERT INTO `sp_admin_access_log` VALUES (147, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:57:10');
INSERT INTO `sp_admin_access_log` VALUES (148, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:57:11');
INSERT INTO `sp_admin_access_log` VALUES (149, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:57:12');
INSERT INTO `sp_admin_access_log` VALUES (150, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 13:57:12');
INSERT INTO `sp_admin_access_log` VALUES (151, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 14:48:28');
INSERT INTO `sp_admin_access_log` VALUES (152, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 14:48:29');
INSERT INTO `sp_admin_access_log` VALUES (153, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 14:48:29');
INSERT INTO `sp_admin_access_log` VALUES (154, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 17:56:47');
INSERT INTO `sp_admin_access_log` VALUES (155, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:56:48');
INSERT INTO `sp_admin_access_log` VALUES (156, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:56:48');
INSERT INTO `sp_admin_access_log` VALUES (157, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 17:57:18');
INSERT INTO `sp_admin_access_log` VALUES (158, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:57:18');
INSERT INTO `sp_admin_access_log` VALUES (159, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:57:18');
INSERT INTO `sp_admin_access_log` VALUES (160, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 17:58:06');
INSERT INTO `sp_admin_access_log` VALUES (161, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:58:06');
INSERT INTO `sp_admin_access_log` VALUES (162, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 17:58:06');
INSERT INTO `sp_admin_access_log` VALUES (163, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:00:41');
INSERT INTO `sp_admin_access_log` VALUES (164, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:41');
INSERT INTO `sp_admin_access_log` VALUES (165, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:41');
INSERT INTO `sp_admin_access_log` VALUES (166, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:00:43');
INSERT INTO `sp_admin_access_log` VALUES (167, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:43');
INSERT INTO `sp_admin_access_log` VALUES (168, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:43');
INSERT INTO `sp_admin_access_log` VALUES (169, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:00:45');
INSERT INTO `sp_admin_access_log` VALUES (170, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:45');
INSERT INTO `sp_admin_access_log` VALUES (171, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:45');
INSERT INTO `sp_admin_access_log` VALUES (172, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:00:48');
INSERT INTO `sp_admin_access_log` VALUES (173, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:48');
INSERT INTO `sp_admin_access_log` VALUES (174, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:00:48');
INSERT INTO `sp_admin_access_log` VALUES (175, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:01:49');
INSERT INTO `sp_admin_access_log` VALUES (176, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:01:49');
INSERT INTO `sp_admin_access_log` VALUES (177, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:01:49');
INSERT INTO `sp_admin_access_log` VALUES (178, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:01:51');
INSERT INTO `sp_admin_access_log` VALUES (179, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:02:39');
INSERT INTO `sp_admin_access_log` VALUES (180, 1, 'admin', 'admin', 'AdminUser', 'role', '192.168.1.32', '', '', 1, '2019-04-09 18:02:39');
INSERT INTO `sp_admin_access_log` VALUES (181, 1, 'admin', 'admin', 'AdminUser', 'role', '192.168.1.32', '', '', 1, '2019-04-09 18:02:43');
INSERT INTO `sp_admin_access_log` VALUES (182, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:02:44');
INSERT INTO `sp_admin_access_log` VALUES (183, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:02:45');
INSERT INTO `sp_admin_access_log` VALUES (184, 1, 'admin', 'admin', 'AdminUser', 'role', '192.168.1.32', '', '', 1, '2019-04-09 18:02:45');
INSERT INTO `sp_admin_access_log` VALUES (185, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:02:56');
INSERT INTO `sp_admin_access_log` VALUES (186, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:02');
INSERT INTO `sp_admin_access_log` VALUES (187, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:03:02');
INSERT INTO `sp_admin_access_log` VALUES (188, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:03:02');
INSERT INTO `sp_admin_access_log` VALUES (189, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:03');
INSERT INTO `sp_admin_access_log` VALUES (190, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:04');
INSERT INTO `sp_admin_access_log` VALUES (191, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:06');
INSERT INTO `sp_admin_access_log` VALUES (192, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:06');
INSERT INTO `sp_admin_access_log` VALUES (193, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:07');
INSERT INTO `sp_admin_access_log` VALUES (194, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:03:58');
INSERT INTO `sp_admin_access_log` VALUES (195, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:03:58');
INSERT INTO `sp_admin_access_log` VALUES (196, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:03:58');
INSERT INTO `sp_admin_access_log` VALUES (197, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:00');
INSERT INTO `sp_admin_access_log` VALUES (198, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:00');
INSERT INTO `sp_admin_access_log` VALUES (199, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:03');
INSERT INTO `sp_admin_access_log` VALUES (200, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:04:03');
INSERT INTO `sp_admin_access_log` VALUES (201, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:04:03');
INSERT INTO `sp_admin_access_log` VALUES (202, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:04');
INSERT INTO `sp_admin_access_log` VALUES (203, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:06');
INSERT INTO `sp_admin_access_log` VALUES (204, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:07');
INSERT INTO `sp_admin_access_log` VALUES (205, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:04:07');
INSERT INTO `sp_admin_access_log` VALUES (206, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:04:07');
INSERT INTO `sp_admin_access_log` VALUES (207, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:04:08');
INSERT INTO `sp_admin_access_log` VALUES (208, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:00');
INSERT INTO `sp_admin_access_log` VALUES (209, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:00');
INSERT INTO `sp_admin_access_log` VALUES (210, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:00');
INSERT INTO `sp_admin_access_log` VALUES (211, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:14');
INSERT INTO `sp_admin_access_log` VALUES (212, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:14');
INSERT INTO `sp_admin_access_log` VALUES (213, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:14');
INSERT INTO `sp_admin_access_log` VALUES (214, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:31');
INSERT INTO `sp_admin_access_log` VALUES (215, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:31');
INSERT INTO `sp_admin_access_log` VALUES (216, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:31');
INSERT INTO `sp_admin_access_log` VALUES (217, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:46');
INSERT INTO `sp_admin_access_log` VALUES (218, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:46');
INSERT INTO `sp_admin_access_log` VALUES (219, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:46');
INSERT INTO `sp_admin_access_log` VALUES (220, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:47');
INSERT INTO `sp_admin_access_log` VALUES (221, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:47');
INSERT INTO `sp_admin_access_log` VALUES (222, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:47');
INSERT INTO `sp_admin_access_log` VALUES (223, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:05:50');
INSERT INTO `sp_admin_access_log` VALUES (224, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:50');
INSERT INTO `sp_admin_access_log` VALUES (225, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:05:50');
INSERT INTO `sp_admin_access_log` VALUES (226, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:06:21');
INSERT INTO `sp_admin_access_log` VALUES (227, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:21');
INSERT INTO `sp_admin_access_log` VALUES (228, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:21');
INSERT INTO `sp_admin_access_log` VALUES (229, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (230, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (231, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (232, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (233, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (234, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (235, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:06:23');
INSERT INTO `sp_admin_access_log` VALUES (236, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:06:24');
INSERT INTO `sp_admin_access_log` VALUES (237, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:24');
INSERT INTO `sp_admin_access_log` VALUES (238, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:24');
INSERT INTO `sp_admin_access_log` VALUES (239, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:24');
INSERT INTO `sp_admin_access_log` VALUES (240, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:06:24');
INSERT INTO `sp_admin_access_log` VALUES (241, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:08');
INSERT INTO `sp_admin_access_log` VALUES (242, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:09');
INSERT INTO `sp_admin_access_log` VALUES (243, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:09');
INSERT INTO `sp_admin_access_log` VALUES (244, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (245, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (246, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (247, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (248, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (249, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:10');
INSERT INTO `sp_admin_access_log` VALUES (250, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:11');
INSERT INTO `sp_admin_access_log` VALUES (251, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:11');
INSERT INTO `sp_admin_access_log` VALUES (252, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:11');
INSERT INTO `sp_admin_access_log` VALUES (253, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (254, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (255, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (256, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (257, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (258, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:15');
INSERT INTO `sp_admin_access_log` VALUES (259, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:23');
INSERT INTO `sp_admin_access_log` VALUES (260, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:23');
INSERT INTO `sp_admin_access_log` VALUES (261, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:23');
INSERT INTO `sp_admin_access_log` VALUES (262, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:07:23');
INSERT INTO `sp_admin_access_log` VALUES (263, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:23');
INSERT INTO `sp_admin_access_log` VALUES (264, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:07:24');
INSERT INTO `sp_admin_access_log` VALUES (265, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:11:26');
INSERT INTO `sp_admin_access_log` VALUES (266, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:11:26');
INSERT INTO `sp_admin_access_log` VALUES (267, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:11:26');
INSERT INTO `sp_admin_access_log` VALUES (268, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:11:35');
INSERT INTO `sp_admin_access_log` VALUES (269, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:11:35');
INSERT INTO `sp_admin_access_log` VALUES (270, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:11:35');
INSERT INTO `sp_admin_access_log` VALUES (271, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:44');
INSERT INTO `sp_admin_access_log` VALUES (272, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:14:44');
INSERT INTO `sp_admin_access_log` VALUES (273, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:14:44');
INSERT INTO `sp_admin_access_log` VALUES (274, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:46');
INSERT INTO `sp_admin_access_log` VALUES (275, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:51');
INSERT INTO `sp_admin_access_log` VALUES (276, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:53');
INSERT INTO `sp_admin_access_log` VALUES (277, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:54');
INSERT INTO `sp_admin_access_log` VALUES (278, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:55');
INSERT INTO `sp_admin_access_log` VALUES (279, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:55');
INSERT INTO `sp_admin_access_log` VALUES (280, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:56');
INSERT INTO `sp_admin_access_log` VALUES (281, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:14:56');
INSERT INTO `sp_admin_access_log` VALUES (282, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:15:12');
INSERT INTO `sp_admin_access_log` VALUES (283, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:17:54');
INSERT INTO `sp_admin_access_log` VALUES (284, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:18:02');
INSERT INTO `sp_admin_access_log` VALUES (285, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:19:03');
INSERT INTO `sp_admin_access_log` VALUES (286, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:19:03');
INSERT INTO `sp_admin_access_log` VALUES (287, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:19:03');
INSERT INTO `sp_admin_access_log` VALUES (288, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:19:08');
INSERT INTO `sp_admin_access_log` VALUES (289, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:19:55');
INSERT INTO `sp_admin_access_log` VALUES (290, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:19:55');
INSERT INTO `sp_admin_access_log` VALUES (291, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:19:56');
INSERT INTO `sp_admin_access_log` VALUES (292, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:19:57');
INSERT INTO `sp_admin_access_log` VALUES (293, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:20:01');
INSERT INTO `sp_admin_access_log` VALUES (294, 1, 'admin', 'admin', 'AdminUser', 'role', '192.168.1.32', '', '', 1, '2019-04-09 18:20:01');
INSERT INTO `sp_admin_access_log` VALUES (295, 1, 'admin', 'admin', 'Index', 'blueimp', '192.168.1.32', '', '', 1, '2019-04-09 18:20:12');
INSERT INTO `sp_admin_access_log` VALUES (296, 1, 'admin', 'admin', 'Index', 'basic_gallery', '192.168.1.32', '', '', 1, '2019-04-09 18:20:13');
INSERT INTO `sp_admin_access_log` VALUES (297, 1, 'admin', 'admin', 'Index', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:27:08');
INSERT INTO `sp_admin_access_log` VALUES (298, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:27:08');
INSERT INTO `sp_admin_access_log` VALUES (299, 1, 'admin', 'admin', 'Index', 'img', '192.168.1.32', '', '', 1, '2019-04-09 18:27:08');
INSERT INTO `sp_admin_access_log` VALUES (300, 1, 'admin', 'admin', 'AdminUser', 'index', '192.168.1.32', '', '', 1, '2019-04-09 18:27:10');

-- ----------------------------
-- Table structure for sp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `sp_admin_role`;
CREATE TABLE `sp_admin_role`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) NULL DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` int(11) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(11) UNSIGNED NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT 0 COMMENT '排序字段',
  `auth_ids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`pid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `sp_admin_user`;
CREATE TABLE `sp_admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `create_time` datetime NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `role_id` int(11) NULL DEFAULT 0 COMMENT '角色ID',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0有效，1无效',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `last_login_time` datetime NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sp_admin_user
-- ----------------------------
INSERT INTO `sp_admin_user` VALUES (1, 'admin', 'admin', '2019-04-08 22:17:56', 1, 1, '192.168.1.32', '2019-04-09 13:50:16');
INSERT INTO `sp_admin_user` VALUES (2, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 22:58:46');
INSERT INTO `sp_admin_user` VALUES (3, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:05:36');
INSERT INTO `sp_admin_user` VALUES (4, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:07:14');
INSERT INTO `sp_admin_user` VALUES (5, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:08:26');
INSERT INTO `sp_admin_user` VALUES (6, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:09:00');
INSERT INTO `sp_admin_user` VALUES (7, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:10:17');
INSERT INTO `sp_admin_user` VALUES (8, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:13:53');
INSERT INTO `sp_admin_user` VALUES (9, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:15:24');
INSERT INTO `sp_admin_user` VALUES (10, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:16:46');
INSERT INTO `sp_admin_user` VALUES (11, '', '123456', '0000-00-00 00:00:00', 0, 1, '192.168.1.24', '2019-04-08 23:19:12');

-- ----------------------------
-- Table structure for sp_menu
-- ----------------------------
DROP TABLE IF EXISTS `sp_menu`;
CREATE TABLE `sp_menu`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `app` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称app',
  `model` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控制器',
  `action` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作名称',
  `data` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态，1显示，0不显示',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `listorder` smallint(6) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parentid`(`parentid`) USING BTREE,
  INDEX `model`(`model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sp_menu
-- ----------------------------
INSERT INTO `sp_menu` VALUES (1, 0, 'admin', 'index', 'index', '', 1, 1, '系统管理', NULL, '', 0);
INSERT INTO `sp_menu` VALUES (2, 1, 'admin', 'adminUser', 'index', '', 1, 1, '管理员', NULL, '', 0);
INSERT INTO `sp_menu` VALUES (3, 1, 'admin', 'adminUser', 'role', '', 1, 1, '角色', NULL, '', 0);

SET FOREIGN_KEY_CHECKS = 1;
