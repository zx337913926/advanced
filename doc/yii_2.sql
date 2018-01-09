/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yii_2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-08 17:18:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` varchar(20) DEFAULT NULL COMMENT '控制器ID',
  `action_id` varchar(20) DEFAULT NULL COMMENT '方法ID',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块',
  `func_name` varchar(50) DEFAULT NULL COMMENT '功能',
  `right_name` varchar(50) DEFAULT NULL COMMENT '方法',
  `client_ip` varchar(15) DEFAULT NULL COMMENT '客户端IP',
  `create_user` varchar(50) DEFAULT NULL COMMENT '用户',
  `create_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_create_date` (`create_date`),
  KEY `index_create_index` (`create_user`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:48:11');
INSERT INTO `admin_log` VALUES ('2', 'admin-statistical', 'index', 'admin-statistical/index', '统计管理', '订单统计', '操作', '127.0.0.1', 'admin', '2018-01-06 14:48:24');
INSERT INTO `admin_log` VALUES ('4', 'admin-statistical', 'index', 'admin-statistical/index', '统计管理', '订单统计', '操作', '127.0.0.1', 'admin', '2018-01-06 14:50:30');
INSERT INTO `admin_log` VALUES ('5', 'admin-statistical', 'index', 'admin-statistical/index', '统计管理', '订单统计', '操作', '127.0.0.1', 'admin', '2018-01-06 14:50:31');
INSERT INTO `admin_log` VALUES ('6', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'admin', '2018-01-06 14:50:33');
INSERT INTO `admin_log` VALUES ('7', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'admin', '2018-01-06 14:50:34');
INSERT INTO `admin_log` VALUES ('8', 'admin-statistical', 'index', 'admin-statistical/index', '统计管理', '订单统计', '操作', '127.0.0.1', 'admin', '2018-01-06 14:50:36');
INSERT INTO `admin_log` VALUES ('9', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:50:46');
INSERT INTO `admin_log` VALUES ('10', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-06 14:50:53');
INSERT INTO `admin_log` VALUES ('11', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-06 14:50:55');
INSERT INTO `admin_log` VALUES ('12', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-06 14:50:57');
INSERT INTO `admin_log` VALUES ('13', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:50:59');
INSERT INTO `admin_log` VALUES ('14', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:51:00');
INSERT INTO `admin_log` VALUES ('15', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:51:02');
INSERT INTO `admin_log` VALUES ('16', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2018-01-06 14:55:37');
INSERT INTO `admin_log` VALUES ('17', 'admin-role', 'view', 'admin-role/view', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:55:37');
INSERT INTO `admin_log` VALUES ('18', 'admin-user-role', 'view', 'admin-user-role/view', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2018-01-06 14:55:42');
INSERT INTO `admin_log` VALUES ('19', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:58:46');
INSERT INTO `admin_log` VALUES ('20', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:58:53');
INSERT INTO `admin_log` VALUES ('21', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-06 14:58:55');
INSERT INTO `admin_log` VALUES ('22', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:58:56');
INSERT INTO `admin_log` VALUES ('23', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:58:57');
INSERT INTO `admin_log` VALUES ('24', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:58:59');
INSERT INTO `admin_log` VALUES ('25', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:01');
INSERT INTO `admin_log` VALUES ('26', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:10');
INSERT INTO `admin_log` VALUES ('27', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:13');
INSERT INTO `admin_log` VALUES ('28', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:14');
INSERT INTO `admin_log` VALUES ('29', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:17');
INSERT INTO `admin_log` VALUES ('30', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:22');
INSERT INTO `admin_log` VALUES ('31', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:34');
INSERT INTO `admin_log` VALUES ('32', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:35');
INSERT INTO `admin_log` VALUES ('33', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:36');
INSERT INTO `admin_log` VALUES ('34', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-06 14:59:36');
INSERT INTO `admin_log` VALUES ('35', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:59:45');
INSERT INTO `admin_log` VALUES ('36', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:59:48');
INSERT INTO `admin_log` VALUES ('37', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-06 14:59:54');
INSERT INTO `admin_log` VALUES ('38', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'admin', '2018-01-06 16:13:49');
INSERT INTO `admin_log` VALUES ('39', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', '127.0.0.1', 'admin', '2018-01-08 17:00:31');
INSERT INTO `admin_log` VALUES ('40', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:00:34');
INSERT INTO `admin_log` VALUES ('41', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:00:38');
INSERT INTO `admin_log` VALUES ('42', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:00:45');
INSERT INTO `admin_log` VALUES ('43', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:00:48');
INSERT INTO `admin_log` VALUES ('44', 'admin-role', 'view', 'admin-role/view', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:00:51');
INSERT INTO `admin_log` VALUES ('45', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:00:54');
INSERT INTO `admin_log` VALUES ('46', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:01:03');
INSERT INTO `admin_log` VALUES ('47', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:01:06');
INSERT INTO `admin_log` VALUES ('48', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:01:10');
INSERT INTO `admin_log` VALUES ('49', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:01:11');
INSERT INTO `admin_log` VALUES ('50', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:01:12');
INSERT INTO `admin_log` VALUES ('51', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:01:16');
INSERT INTO `admin_log` VALUES ('52', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:01:21');
INSERT INTO `admin_log` VALUES ('53', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:01:28');
INSERT INTO `admin_log` VALUES ('54', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:01:31');
INSERT INTO `admin_log` VALUES ('55', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', '127.0.0.1', 'admin', '2018-01-08 17:02:12');
INSERT INTO `admin_log` VALUES ('56', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:02:12');
INSERT INTO `admin_log` VALUES ('57', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:02:18');
INSERT INTO `admin_log` VALUES ('58', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', '127.0.0.1', 'admin', '2018-01-08 17:02:20');
INSERT INTO `admin_log` VALUES ('59', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:02:20');
INSERT INTO `admin_log` VALUES ('60', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:02:23');
INSERT INTO `admin_log` VALUES ('61', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:05:59');
INSERT INTO `admin_log` VALUES ('62', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:06:06');
INSERT INTO `admin_log` VALUES ('63', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:06:06');
INSERT INTO `admin_log` VALUES ('64', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:06:07');
INSERT INTO `admin_log` VALUES ('65', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:06:08');
INSERT INTO `admin_log` VALUES ('66', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:06:12');
INSERT INTO `admin_log` VALUES ('67', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:06:54');
INSERT INTO `admin_log` VALUES ('68', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:06:59');
INSERT INTO `admin_log` VALUES ('69', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:16');
INSERT INTO `admin_log` VALUES ('70', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:18');
INSERT INTO `admin_log` VALUES ('71', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:21');
INSERT INTO `admin_log` VALUES ('72', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:22');
INSERT INTO `admin_log` VALUES ('73', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2018-01-08 17:07:42');
INSERT INTO `admin_log` VALUES ('74', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:42');
INSERT INTO `admin_log` VALUES ('75', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:57');
INSERT INTO `admin_log` VALUES ('76', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:07:59');
INSERT INTO `admin_log` VALUES ('77', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:08:02');
INSERT INTO `admin_log` VALUES ('78', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:05');
INSERT INTO `admin_log` VALUES ('79', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:07');
INSERT INTO `admin_log` VALUES ('80', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:09');
INSERT INTO `admin_log` VALUES ('81', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:14');
INSERT INTO `admin_log` VALUES ('82', 'admin-menu', 'update', 'admin-menu/update', '菜单用户权限', '菜单管理', '二级菜单添加', '127.0.0.1', 'admin', '2018-01-08 17:08:23');
INSERT INTO `admin_log` VALUES ('83', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:24');
INSERT INTO `admin_log` VALUES ('84', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:08:28');
INSERT INTO `admin_log` VALUES ('85', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:08:29');
INSERT INTO `admin_log` VALUES ('86', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:37');
INSERT INTO `admin_log` VALUES ('87', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:38');
INSERT INTO `admin_log` VALUES ('88', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:46');
INSERT INTO `admin_log` VALUES ('89', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:48');
INSERT INTO `admin_log` VALUES ('90', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:08:50');
INSERT INTO `admin_log` VALUES ('91', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:08:53');
INSERT INTO `admin_log` VALUES ('92', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:10');
INSERT INTO `admin_log` VALUES ('93', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:29');
INSERT INTO `admin_log` VALUES ('94', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:09:35');
INSERT INTO `admin_log` VALUES ('95', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:09:37');
INSERT INTO `admin_log` VALUES ('96', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:39');
INSERT INTO `admin_log` VALUES ('97', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:40');
INSERT INTO `admin_log` VALUES ('98', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:09:48');
INSERT INTO `admin_log` VALUES ('99', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:09:50');
INSERT INTO `admin_log` VALUES ('100', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:54');
INSERT INTO `admin_log` VALUES ('101', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:09:57');
INSERT INTO `admin_log` VALUES ('102', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', '127.0.0.1', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_log` VALUES ('103', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_log` VALUES ('104', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:10:10');
INSERT INTO `admin_log` VALUES ('105', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:10:13');
INSERT INTO `admin_log` VALUES ('106', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:10:16');
INSERT INTO `admin_log` VALUES ('107', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:10:20');
INSERT INTO `admin_log` VALUES ('108', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:10:23');
INSERT INTO `admin_log` VALUES ('109', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:10:24');
INSERT INTO `admin_log` VALUES ('110', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:11:18');
INSERT INTO `admin_log` VALUES ('111', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:11:24');
INSERT INTO `admin_log` VALUES ('112', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:11:26');
INSERT INTO `admin_log` VALUES ('113', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', '127.0.0.1', 'admin', '2018-01-08 17:11:28');
INSERT INTO `admin_log` VALUES ('114', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:11:31');
INSERT INTO `admin_log` VALUES ('115', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:11:33');
INSERT INTO `admin_log` VALUES ('116', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_log` VALUES ('117', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', '127.0.0.1', 'admin', '2018-01-08 17:11:39');
INSERT INTO `admin_log` VALUES ('118', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:11:41');
INSERT INTO `admin_log` VALUES ('119', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:11:44');
INSERT INTO `admin_log` VALUES ('120', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:11:47');
INSERT INTO `admin_log` VALUES ('121', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:11:51');
INSERT INTO `admin_log` VALUES ('122', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:11:54');
INSERT INTO `admin_log` VALUES ('123', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:12:30');
INSERT INTO `admin_log` VALUES ('124', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', '127.0.0.1', 'admin', '2018-01-08 17:12:32');
INSERT INTO `admin_log` VALUES ('125', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '127.0.0.1', 'admin', '2018-01-08 17:12:39');
INSERT INTO `admin_log` VALUES ('126', 'area', 'index', 'area/index', '地区管理', '地区首页', '操作', '127.0.0.1', 'admin', '2018-01-08 17:12:47');
INSERT INTO `admin_log` VALUES ('127', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', '127.0.0.1', 'admin', '2018-01-08 17:12:58');
INSERT INTO `admin_log` VALUES ('128', 'area', 'index', 'area/index', '地区管理', '地区首页', '操作', '127.0.0.1', 'admin', '2018-01-08 17:18:23');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `menu_name` varchar(200) NOT NULL COMMENT '名称',
  `module_id` int(11) NOT NULL COMMENT '模块id',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `entry_right_name` varchar(50) DEFAULT NULL COMMENT '入口地址名称',
  `entry_url` varchar(200) NOT NULL COMMENT '入口地址',
  `action` varchar(50) NOT NULL COMMENT '操作ID',
  `controller` varchar(100) NOT NULL COMMENT '控制器ID',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `admin_module` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');
INSERT INTO `admin_menu` VALUES ('5', 'area_index', '地区首页', '3', '地区首页', '', null, '地区首页', 'area/index', '请选择', 'backend\\controllers\\AreaController', 'n', 'admin', '2018-01-08 17:07:42', 'admin', '2018-01-08 17:08:23');

-- ----------------------------
-- Table structure for admin_message
-- ----------------------------
DROP TABLE IF EXISTS `admin_message`;
CREATE TABLE `admin_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `expiry_days` int(5) unsigned DEFAULT NULL COMMENT '有效天数',
  `create_user` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_message
-- ----------------------------
INSERT INTO `admin_message` VALUES ('1', '测试文本', '1', 'admin', '2014-11-21 18:47:20', 'admin', '2014-11-21 18:47:27');

-- ----------------------------
-- Table structure for admin_module
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `display_label` varchar(200) NOT NULL COMMENT '显示名称',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `entry_url` varchar(100) DEFAULT NULL COMMENT '入口地址',
  `display_order` int(5) DEFAULT NULL COMMENT '顺序',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', 'menu_manage', '菜单用户权限', 'n', '菜单管理', '', '1', 'admin', '2016-08-11 15:26:21', 'admin', '2016-08-11 16:31:08');
INSERT INTO `admin_module` VALUES ('2', 'rizhimaanage', '日志管理', 'n', '日志管理', '', '2', 'test', '2016-08-14 06:53:13', 'test', '2016-08-14 06:53:13');
INSERT INTO `admin_module` VALUES ('3', 'area_manage', '地区管理', 'n', '地区管理', null, '3', 'admin', '2018-01-08 17:02:12', 'admin', '2018-01-08 17:02:20');

-- ----------------------------
-- Table structure for admin_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_right`;
CREATE TABLE `admin_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NOT NULL COMMENT '功能主键',
  `right_name` varchar(200) NOT NULL COMMENT '名称',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right` (`menu_id`),
  KEY `index_menu_id` (`menu_id`),
  CONSTRAINT `FK_admin_right` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right
-- ----------------------------
INSERT INTO `admin_right` VALUES ('4', '2', '角色操作', '角色操作', '角色操作', '1', 'n', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right` VALUES ('5', '2', '分配用户', '分配用户', '分配用户', '2', 'n', 'admin', '2016-08-13 17:05:04', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right` VALUES ('6', '2', '分配权限', '分配权限', '分配权限', '3', 'n', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right` VALUES ('7', '3', '用户操作', '用户操作', '用户操作', '1', 'n', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right` VALUES ('8', '4', '操作', '操作', '操作', '1', 'n', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right` VALUES ('13', '1', '一级菜单查看', '一级菜单查看', '一级菜单查看', '1', 'n', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right` VALUES ('14', '1', '一级菜单添加', '一级菜单添加', '一级菜单添加', '2', 'n', 'test', '2016-08-16 15:53:10', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right` VALUES ('15', '1', '一级菜单删除', '一级菜单删除', '一级菜单删除', '3', 'n', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right` VALUES ('16', '1', '二级菜单查看', '二级菜单查看', '二级菜单查看', '4', 'n', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right` VALUES ('17', '1', '二级菜单添加', '二级菜单修改', '二级菜单添加', '5', 'n', 'test', '2016-08-16 15:55:21', 'test', '2016-08-16 15:58:50');
INSERT INTO `admin_right` VALUES ('18', '1', '二级菜单删除', '二级菜单删除', '二级菜单删除', '6', 'n', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right` VALUES ('19', '1', '路由查看', '路由查看', '路由查看', '7', 'n', 'test', '2016-08-16 15:56:32', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right` VALUES ('20', '1', '路由添加', '路由添加', '路由添加', '8', 'n', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right` VALUES ('21', '1', '路由删除', '路由删除', '路由删除', '9', 'n', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right` VALUES ('22', '5', '操作', '操作', '1', null, 'n', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');

-- ----------------------------
-- Table structure for admin_right_url
-- ----------------------------
DROP TABLE IF EXISTS `admin_right_url`;
CREATE TABLE `admin_right_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `right_id` int(11) NOT NULL COMMENT 'right主键',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `para_name` varchar(40) DEFAULT NULL COMMENT '参数名',
  `para_value` varchar(40) DEFAULT NULL COMMENT '参数值',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right_url` (`right_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `FK_admin_right_url` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right_url
-- ----------------------------
INSERT INTO `admin_right_url` VALUES ('16', '4', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('17', '4', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('18', '4', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('19', '4', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('20', '4', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('21', '4', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('22', '4', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('30', '6', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('31', '6', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('32', '6', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('33', '6', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('34', '6', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('35', '6', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('36', '6', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('37', '7', 'admin-user/index', 'admin-user', 'index', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('38', '7', 'admin-user/view', 'admin-user', 'view', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('39', '7', 'admin-user/create', 'admin-user', 'create', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('40', '7', 'admin-user/update', 'admin-user', 'update', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('41', '7', 'admin-user/delete', 'admin-user', 'delete', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('42', '8', 'admin-log/index', 'admin-log', 'index', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('43', '8', 'admin-log/view', 'admin-log', 'view', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('44', '8', 'admin-log/create', 'admin-log', 'create', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('45', '8', 'admin-log/update', 'admin-log', 'update', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('46', '8', 'admin-log/delete', 'admin-log', 'delete', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('81', '5', 'admin-user-role/index', 'admin-user-role', 'index', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('82', '5', 'admin-user-role/view', 'admin-user-role', 'view', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('83', '5', 'admin-user-role/create', 'admin-user-role', 'create', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('84', '5', 'admin-user-role/update', 'admin-user-role', 'update', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('85', '5', 'admin-user-role/delete', 'admin-user-role', 'delete', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('112', '13', 'admin-module/index', 'admin-module', 'index', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('113', '13', 'admin-module/view', 'admin-module', 'view', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('115', '15', 'admin-module/delete', 'admin-module', 'delete', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right_url` VALUES ('118', '16', 'admin-menu/index', 'admin-menu', 'index', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('119', '16', 'admin-menu/view', 'admin-menu', 'view', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('122', '18', 'admin-menu/delete', 'admin-menu', 'delete', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right_url` VALUES ('125', '19', 'admin-right/index', 'admin-right', 'index', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('126', '19', 'admin-right/view', 'admin-right', 'view', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('127', '19', 'admin-right/right-action', 'admin-right', 'right-action', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('128', '20', 'admin-right/create', 'admin-right', 'create', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('129', '20', 'admin-right/update', 'admin-right', 'update', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('130', '21', 'admin-right/delete', 'admin-right', 'delete', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right_url` VALUES ('131', '14', 'admin-module/create', 'admin-module', 'create', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('132', '14', 'admin-module/update', 'admin-module', 'update', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('133', '17', 'admin-menu/create', 'admin-menu', 'create', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('134', '17', 'admin-menu/update', 'admin-menu', 'update', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('135', '22', 'area/index', 'area', 'index', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_right_url` VALUES ('136', '22', 'area/view', 'area', 'view', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_right_url` VALUES ('137', '22', 'area/create', 'area', 'create', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_right_url` VALUES ('138', '22', 'area/update', 'area', 'update', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');
INSERT INTO `admin_right_url` VALUES ('139', '22', 'area/delete', 'area', 'delete', 'admin', '2018-01-08 17:10:07', 'admin', '2018-01-08 17:10:07');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '角色编号',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `des` varchar(400) DEFAULT NULL COMMENT '角色描述',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'superadmin', '超级管理员', '拥有所有权限', 'test', '2016-08-12 15:33:01', 'test', '2016-08-12 15:33:01');
INSERT INTO `admin_role` VALUES ('2', 'testuser', '测试人员', '测试人员', 'test', '2016-08-12 15:33:45', 'test', '2016-08-12 15:33:45');

-- ----------------------------
-- Table structure for admin_role_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_right`;
CREATE TABLE `admin_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `right_id` int(11) NOT NULL COMMENT '权限主键',
  `full_path` varchar(250) DEFAULT NULL COMMENT '全路径',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `admin_role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_right
-- ----------------------------
INSERT INTO `admin_role_right` VALUES ('112', '2', '13', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('113', '2', '14', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('114', '2', '15', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('115', '2', '16', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('116', '2', '17', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('117', '2', '18', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('118', '2', '19', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('119', '2', '20', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('120', '2', '21', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('121', '2', '4', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('122', '2', '5', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('123', '2', '6', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('124', '2', '7', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('125', '2', '8', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('141', '1', '13', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('142', '1', '14', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('143', '1', '15', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('144', '1', '16', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('145', '1', '17', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('146', '1', '18', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('147', '1', '19', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('148', '1', '20', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('149', '1', '21', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('150', '1', '4', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('151', '1', '5', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('152', '1', '6', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('153', '1', '7', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('154', '1', '8', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');
INSERT INTO `admin_role_right` VALUES ('155', '1', '22', null, 'admin', '2018-01-08 17:11:38', 'admin', '2018-01-08 17:11:38');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `create_user` varchar(100) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(101) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('156', 'admin', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, '127.0.0.1', 'n', null, '10', 'admin', '2014-07-07 00:05:47', 'admin', '2014-09-03 12:19:12');
INSERT INTO `admin_user` VALUES ('158', 'test', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, '127.0.0.1', 'n', null, '10', 'admin', '2014-09-03 12:19:52', 'admin', '2014-11-21 19:19:22');

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_role_id` (`role_id`),
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '156', '1', 'admin', '2016-08-12 17:03:13', 'admin', '2016-08-12 17:03:13');
INSERT INTO `admin_user_role` VALUES ('2', '158', '2', 'test', '2016-08-13 16:34:20', 'test', '2016-08-13 16:34:20');
