/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-30 23:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Id_O` int(10) NOT NULL,
  `OrderNo` int(50) DEFAULT NULL,
  `Id_P` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_O`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '77895', '3');
INSERT INTO `orders` VALUES ('2', '44678', '3');
INSERT INTO `orders` VALUES ('3', '22456', '1');
INSERT INTO `orders` VALUES ('4', '24562', '1');
INSERT INTO `orders` VALUES ('5', '34764', '65');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `paper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'paperID',
  `name` varchar(100) NOT NULL COMMENT 'paper名称',
  `number` int(11) NOT NULL COMMENT 'paper数量',
  `detail` varchar(200) NOT NULL COMMENT 'paper描述',
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='paper表';

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '机器学习', '2', 'mlmlmlml');
INSERT INTO `paper` VALUES ('2', '深度学习', '3', 'dldldl');
INSERT INTO `paper` VALUES ('3', '大数据', '4', 'bdbdbd');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `id_p` int(10) NOT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES ('1', 'Adams', 'John', 'Oxford Street	', 'London');
INSERT INTO `persons` VALUES ('2', 'Bush', 'George', 'Fifth Avenue	', 'New York\r\n');
INSERT INTO `persons` VALUES ('3', 'Carter', 'Thomas', 'Changan Street	', 'Beijing');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `teacher_id` int(20) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '盖伦', '1', 'java');
INSERT INTO `student` VALUES ('2', '亚瑟', '1', 'java');
INSERT INTO `student` VALUES ('3', '亚索', '1', 'java');
INSERT INTO `student` VALUES ('4', '后羿', '2', 'Python');
INSERT INTO `student` VALUES ('5', '李白', '2', 'Python');
INSERT INTO `student` VALUES ('6', '韩信', '2', 'Python');

-- ----------------------------
-- Table structure for sys_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl`;
CREATE TABLE `sys_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '权限码',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限名称',
  `acl_module_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限所在的权限模块id',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '请求的url, 可以填正则表达式',
  `type` int(11) NOT NULL DEFAULT '3' COMMENT '类型，1：菜单，2：按钮，3：其他',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '权限在当前模块下的顺序，由小到大',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一个更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_acl
-- ----------------------------
INSERT INTO `sys_acl` VALUES ('1', '20171015095130_26', '进入产品管理界面', '1', '/sys/product/product.page', '1', '1', '1', '', 'Admin', '2017-10-15 09:51:30', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('2', '20171015095322_14', '查询产品列表', '1', '/sys/product/page.json', '2', '1', '2', '', 'Admin', '2017-10-15 09:53:22', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('3', '20171015095350_69', '产品上架', '1', '/sys/product/online.json', '2', '1', '3', '', 'Admin', '2017-10-15 09:53:51', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('4', '20171015095420_7', '产品下架', '1', '/sys/product/offline.json', '2', '1', '4', '', 'Admin', '2017-10-15 10:11:28', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('5', '20171015212626_63', '进入订单页', '2', '/sys/order/order.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:26:27', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('6', '20171015212657_12', '查询订单列表', '2', '/sys/order/list.json', '2', '1', '2', '', 'Admin', '2017-10-15 21:26:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('7', '20171015212907_36', '进入权限管理页', '7', '/sys/aclModule/acl.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:29:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('8', '20171015212938_27', '进入角色管理页', '8', '/sys/role/role.page', '1', '1', '1', '', 'Admin', '2018-12-22 17:47:43', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('9', '20171015213009_0', '进入用户管理页', '9', '/sys/dept/dept.page', '1', '1', '1', '', 'Admin', '2017-10-15 21:30:09', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('10', '20171016230429_8', '进入权限更新记录页面', '11', '/sys/log/log.page', '1', '1', '1', '', 'Admin', '2017-10-16 23:04:49', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('11', '20181218094517_69', '张孟飞', '0', '123456', '1', '1', '1', '', 'Admin', '2018-12-18 09:45:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('12', '20181218094557_48', '张孟飞', '0', '123456', '1', '1', '1', '', 'Admin', '2018-12-18 09:45:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('13', '20181220142506_94', '进入订单页1', '0', '/sys/order/order.page', '1', '1', '1', '', 'Admin', '2018-12-20 14:25:06', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('14', '20181220142555_31', '进入订单页1', '0', '/sys1/order/order.page', '1', '1', '3', '', 'Admin', '2018-12-20 14:25:56', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('15', '20181220142859_19', '进入公告管理页', '0', '/sys/order/list.page', '1', '1', '1', '', 'Admin', '2018-12-20 14:29:00', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('16', '20181220144217_18', '进入公告首页', '3', '/sys/order/list.page', '1', '1', '1', '', 'Admin', '2018-12-20 14:42:17', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('17', '20181220145856_4', '进入角色管理页1', '0', '/sys/role/role.page', '1', '1', '2', '', 'Admin', '2018-12-20 14:58:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('18', '20181221150531_0', '张孟飞', '1', '/sys2/order/order.page', '1', '1', '1', '', 'Admin', '2018-12-21 15:05:31', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl` VALUES ('19', '20181221151038_74', '张飞', '3', '/sys1/order/list.page', '1', '1', '2', '', 'Admin', '2018-12-21 15:10:38', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_acl_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl_module`;
CREATE TABLE `sys_acl_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限模块id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '权限模块名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级权限模块id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT '权限模块层级',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '权限模块在当前层级下的顺序，由小到大',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_acl_module
-- ----------------------------
INSERT INTO `sys_acl_module` VALUES ('1', '产品管理', '0', '0', '1', '1', 'product', 'Admin', '2017-10-14 21:13:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('2', '订单管理', '0', '0', '2', '1', '', 'Admin', '2017-10-14 20:17:11', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('3', '公告管理', '0', '0', '3', '1', '', 'Admin', '2017-10-14 20:17:21', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('4', '出售中产品管理', '1', '0.1', '1', '1', '', 'Admin', '2017-10-14 21:13:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('5', '下架产品管理', '1', '0.1', '2', '1', '', 'Admin', '2017-10-14 20:18:02', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('6', '权限管理', '0', '0', '4', '1', '', 'Admin', '2017-10-15 21:27:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('7', '权限管理', '6', '0.6', '1', '1', '', 'Admin', '2017-10-15 21:27:57', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('8', '角色管理', '6', '0.6', '2', '1', '', 'Admin', '2017-10-15 21:28:22', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('9', '用户管理', '6', '0.6', '2', '1', '', 'Admin', '2017-10-15 21:28:36', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('10', '运维管理', '0', '0', '6', '1', '', 'Admin', '2017-10-16 23:03:37', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_acl_module` VALUES ('11', '权限更新记录管理', '6', '0.6', '4', '1', '', 'Admin', '2017-10-16 23:04:07', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级部门id',
  `level` varchar(200) NOT NULL DEFAULT '' COMMENT '部门层级',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '部门在当前层级下的顺序，由小到大',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '技术部', '0', '0', '1', '技术部', 'system-update', '2018-12-01 10:54:47', '127.0.0.1');
INSERT INTO `sys_dept` VALUES ('2', '后端开发', '1', '0.1', '1', '后端', 'system-update', '2017-10-12 07:56:16', '127.0.0.1');
INSERT INTO `sys_dept` VALUES ('3', '前端开发', '1', '0.1', '2', '', 'system-update', '2017-10-14 11:29:45', '127.0.0.1');
INSERT INTO `sys_dept` VALUES ('4', 'UI设计', '1', '0.1', '3', '', 'system', '2017-10-12 07:55:43', '127.0.0.1');
INSERT INTO `sys_dept` VALUES ('11', '产品部', '0', '0', '2', '', 'Admin', '2017-10-16 22:52:29', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_dept` VALUES ('12', '客服部', '0', '0', '4', '', 'Admin', '2017-10-17 00:22:55', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_deptseq
-- ----------------------------
DROP TABLE IF EXISTS `sys_deptseq`;
CREATE TABLE `sys_deptseq` (
  `id` int(11) NOT NULL COMMENT '主键',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `level` varchar(255) DEFAULT NULL COMMENT '部门层级',
  `seq` int(11) DEFAULT NULL COMMENT '部门在当前层级下的顺序，由小到大',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_deptseq
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '权限更新的类型，1：部门，2：用户，3：权限模块，4：权限，5：角色，6：角色用户关系，7：角色权限关系',
  `target_id` int(11) NOT NULL COMMENT '基于type后指定的对象id，比如用户、权限、角色等表的主键',
  `old_value` text COMMENT '旧值',
  `new_value` text COMMENT '新值',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '当前是否复原过，0：没有，1：复原过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('2', '1', '12', '', '{\"id\":12,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"Admin\",\"operateTime\":1508166002610,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:00:03', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('3', '1', '12', '{\"id\":12,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"Admin\",\"operateTime\":1508166003000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508166009313,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:00:09', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('4', '2', '4', '', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166166297,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:02:46', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('5', '2', '4', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166166000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":4,\"username\":\"Kate\",\"telephone\":\"13144445555\",\"mail\":\"kate@qq.com\",\"deptId\":1,\"status\":1,\"remark\":\"sss\",\"operator\":\"Admin\",\"operateTime\":1508166171320,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:02:51', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('6', '3', '10', '', '{\"id\":10,\"name\":\"运维管理\",\"parentId\":0,\"level\":\"0\",\"seq\":5,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166212527,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:03:33', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('7', '3', '10', '{\"id\":10,\"name\":\"运维管理\",\"parentId\":0,\"level\":\"0\",\"seq\":5,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166213000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":10,\"name\":\"运维管理\",\"parentId\":0,\"level\":\"0\",\"seq\":6,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166217376,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:03:37', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('8', '3', '11', '', '{\"id\":11,\"name\":\"权限更新记录管理\",\"parentId\":6,\"level\":\"0.6\",\"seq\":4,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166246805,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:07', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('9', '4', '10', '', '{\"id\":10,\"code\":\"20171016230429_8\",\"name\":\"进入权限更新记录页面\",\"aclModuleId\":1,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166269419,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:29', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('10', '4', '10', '{\"id\":10,\"code\":\"20171016230429_8\",\"name\":\"进入权限更新记录页面\",\"aclModuleId\":1,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166269000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":10,\"name\":\"进入权限更新记录页面\",\"aclModuleId\":11,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508166288589,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:04:49', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('11', '5', '5', '', '{\"id\":5,\"name\":\"运维管理员\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166301130,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:05:01', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('12', '5', '5', '{\"id\":5,\"name\":\"运维管理员\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508166301000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"运维管理员\",\"type\":1,\"status\":1,\"remark\":\"运维\",\"operator\":\"Admin\",\"operateTime\":1508166307317,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-16 23:05:07', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('13', '6', '4', '[7,8,9]', '[7,8,9,10]', 'Admin', '2017-10-16 23:34:39', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('14', '7', '4', '[1]', '[1,4]', 'Admin', '2017-10-16 23:34:44', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('15', '2', '5', '', '{\"id\":5,\"username\":\"服务员A\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170918338,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:21:58', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('16', '2', '5', '{\"id\":5,\"username\":\"服务员A\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170918000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"username\":\"服务员B\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170924698,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:05', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('17', '2', '5', '{\"id\":5,\"username\":\"服务员B\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170925000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"username\":\"服务员A\",\"telephone\":\"18677778888\",\"mail\":\"service@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":12,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1508170934791,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:15', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('18', '1', '12', '{\"id\":12,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508166009000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"客服部A\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170966051,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:46', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('19', '1', '12', '{\"id\":12,\"name\":\"客服部A\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170966000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":12,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"Admin\",\"operateTime\":1508170975242,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:22:55', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('20', '5', '5', '{\"id\":5,\"name\":\"运维管理员\",\"type\":1,\"status\":1,\"remark\":\"运维\",\"operator\":\"Admin\",\"operateTime\":1508166307000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"运维管理员A\",\"type\":1,\"status\":1,\"remark\":\"运维\",\"operator\":\"Admin\",\"operateTime\":1508170997531,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:23:18', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('21', '5', '5', '{\"id\":5,\"name\":\"运维管理员A\",\"type\":1,\"status\":1,\"remark\":\"运维\",\"operator\":\"Admin\",\"operateTime\":1508170998000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":5,\"name\":\"运维管理员\",\"type\":1,\"status\":1,\"remark\":\"运维\",\"operator\":\"Admin\",\"operateTime\":1508171007651,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2017-10-17 00:23:28', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('22', '7', '4', '[1,4]', '[1,4,2,3,5]', 'Admin', '2017-10-17 00:23:53', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('23', '7', '4', '[1,4,2,3,5]', '[1,4]', 'Admin', '2017-10-17 00:24:04', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('24', '6', '5', '[]', '[7,8,9,10]', 'Admin', '2017-10-17 00:24:23', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('25', '6', '5', '[7,8,9,10]', '[]', 'Admin', '2017-10-17 00:24:34', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('26', '6', '2', '[]', '[5,6]', 'Admin', '2018-12-19 09:59:13', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('27', '6', '2', '[5,6]', '[5,6,7,8]', 'Admin', '2018-12-19 09:59:40', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('28', '6', '2', '[5,6,7,8]', '[5,6]', 'Admin', '2018-12-19 09:59:51', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('29', '6', '2', '[5,6]', '[]', 'Admin', '2018-12-19 09:59:54', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('30', '3', '12', '', '{\"id\":12,\"name\":\"角色管理1\",\"parentId\":6,\"level\":\"0.6\",\"seq\":5,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1545288091675,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:41:32', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('31', '4', '16', '', '{\"id\":16,\"code\":\"20181220144217_18\",\"name\":\"进入公告首页\",\"aclModuleId\":3,\"url\":\"/sys/order/list.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1545288137367,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:42:17', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('32', '3', '13', '', '{\"id\":13,\"name\":\"张孟飞\",\"parentId\":2,\"level\":\"0.2\",\"seq\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1545288213708,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:43:34', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('33', '6', '2', '[]', '[1]', 'Admin', '2018-12-20 14:44:06', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('34', '6', '2', '[1]', '[1,2,3,4]', 'Admin', '2018-12-20 14:44:22', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('35', '6', '2', '[1,2,3,4]', '[1,4]', 'Admin', '2018-12-20 14:44:44', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('36', '6', '2', '[1,4]', '[]', 'Admin', '2018-12-20 14:44:57', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('37', '5', '6', '{\"id\":6,\"name\":\"zhang\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1545097012000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":6,\"name\":\"zhang\",\"type\":1,\"status\":0,\"operator\":\"Admin\",\"operateTime\":1545288334489,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:45:35', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('38', '5', '6', '{\"id\":6,\"name\":\"zhang\",\"type\":1,\"status\":0,\"operator\":\"Admin\",\"operateTime\":1545288334000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":6,\"name\":\"zhang\",\"type\":1,\"status\":0,\"operator\":\"Admin\",\"operateTime\":1545288338932,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:45:39', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('39', '5', '7', '{\"id\":7,\"name\":\"张孟飞\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1545097635000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":7,\"name\":\"张孟飞\",\"type\":1,\"status\":0,\"operator\":\"Admin\",\"operateTime\":1545288343294,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:45:43', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('40', '5', '9', '{\"id\":9,\"name\":\"产品管理员1\",\"type\":1,\"status\":1,\"operator\":\"Admin\",\"operateTime\":1545097799000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":9,\"name\":\"产品管理员1\",\"type\":1,\"status\":0,\"operator\":\"Admin\",\"operateTime\":1545288353720,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-20 14:45:54', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('41', '7', '4', '[1,4]', '[1,4,2,3,5,6,7,8,9,10,11,12,13,14,15]', 'Admin', '2018-12-20 15:46:49', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('42', '6', '4', '[7,8,9,10]', '[]', 'Admin', '2018-12-21 15:02:35', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('43', '4', '18', '', '{\"id\":18,\"code\":\"20181221150531_0\",\"name\":\"张孟飞\",\"aclModuleId\":1,\"url\":\"/sys2/order/order.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1545375931417,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-21 15:05:31', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('44', '4', '19', '', '{\"id\":19,\"code\":\"20181221151038_74\",\"name\":\"张飞\",\"aclModuleId\":3,\"url\":\"/sys1/order/list.page\",\"type\":1,\"status\":1,\"seq\":2,\"operator\":\"Admin\",\"operateTime\":1545376238142,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-21 15:10:38', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('45', '6', '1', '[]', '[5]', 'Admin', '2018-12-21 15:15:44', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('46', '6', '1', '[5]', '[1,18,2,3,4,5]', 'Admin', '2018-12-21 15:23:22', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('47', '6', '1', '[1,18,2,3,4,5]', '[5]', 'Admin', '2018-12-21 15:29:00', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('48', '6', '1', '[5]', '[1,5]', 'Admin', '2018-12-21 15:29:16', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('49', '7', '4', '[1,4,2,3,5,6,7,8,9,10,11,12,13,14,15]', '[7,8,9,10,11,12,13,14,15]', 'Admin', '2018-12-22 14:02:05', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('50', '7', '4', '[7,8,9,10,11,12,13,14,15]', '[]', 'Admin', '2018-12-22 14:02:20', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('51', '7', '4', '[]', '[7,8,9,10,11,12,13,15]', 'Admin', '2018-12-22 14:02:41', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('52', '7', '4', '[7,8,9,10,11,12,13,15]', '[9,10,11,12,13,15]', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('53', '4', '8', '{\"id\":8,\"code\":\"20171015212938_27\",\"name\":\"进入角色管理页\",\"aclModuleId\":8,\"url\":\"/sys/role/role.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1508147378000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":8,\"name\":\"进入角色管理页\",\"aclModuleId\":8,\"url\":\"/sys/role/role.page\",\"type\":1,\"status\":0,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1545471938334,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-22 17:45:38', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('54', '6', '4', '[]', '[7,9]', 'Admin', '2018-12-22 17:46:15', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `sys_log` VALUES ('55', '4', '8', '{\"id\":8,\"code\":\"20171015212938_27\",\"name\":\"进入角色管理页\",\"aclModuleId\":8,\"url\":\"/sys/role/role.page\",\"type\":1,\"status\":0,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1545471938000,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', '{\"id\":8,\"name\":\"进入角色管理页\",\"aclModuleId\":8,\"url\":\"/sys/role/role.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"Admin\",\"operateTime\":1545472062834,\"operateIp\":\"0:0:0:0:0:0:0:1\"}', 'Admin', '2018-12-22 17:47:43', '0:0:0:0:0:0:0:1', '1');

-- ----------------------------
-- Table structure for sys_name
-- ----------------------------
DROP TABLE IF EXISTS `sys_name`;
CREATE TABLE `sys_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_name
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '角色的类型，1：管理员角色，2：其他',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：冻结',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '产品管理员', '1', '1', '', 'Admin', '2017-10-15 12:42:47', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('2', '订单管理员', '1', '1', '', 'Admin', '2017-10-15 12:18:59', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('3', '公告管理员', '1', '1', '', 'Admin', '2017-10-15 12:19:10', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('4', '权限管理员', '1', '1', '', 'Admin', '2017-10-15 21:30:36', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('5', '运维管理员', '1', '1', '运维', 'Admin', '2017-10-17 00:23:28', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('6', 'zhang', '1', '0', '', 'Admin', '2018-12-20 14:45:39', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('7', '张孟飞', '1', '0', '', 'Admin', '2018-12-20 14:45:43', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('8', '张孟', '1', '1', '', 'Admin', '2018-12-18 09:47:47', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('9', '产品管理员1', '1', '0', '', 'Admin', '2018-12-20 14:45:54', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role` VALUES ('10', '产品管理员2', '1', '1', '', 'Admin', '2018-12-19 10:01:48', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_role_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_acl`;
CREATE TABLE `sys_role_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `acl_id` int(11) NOT NULL COMMENT '权限id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_acl
-- ----------------------------
INSERT INTO `sys_role_acl` VALUES ('21', '1', '1', 'Admin', '2018-12-21 15:29:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES ('22', '1', '5', 'Admin', '2018-12-21 15:29:16', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES ('23', '4', '7', 'Admin', '2018-12-22 17:46:15', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_acl` VALUES ('24', '4', '9', 'Admin', '2018-12-22 17:46:15', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新的时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('50', '4', '9', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES ('51', '4', '10', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES ('52', '4', '11', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES ('53', '4', '12', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES ('54', '4', '13', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_role_user` VALUES ('55', '4', '15', 'Admin', '2018-12-22 14:04:07', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `telephone` varchar(13) NOT NULL DEFAULT '' COMMENT '手机号',
  `mail` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(40) NOT NULL DEFAULT '' COMMENT '加密后的密码',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户所在部门的id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1：正常，0：冻结状态，2：删除',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `operator` varchar(20) NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `operate_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一次更新者的ip地址',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'Admin', '18612344321', 'admin@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'admin', 'system', '2017-10-13 08:46:16', '127.0.0.1', null);
INSERT INTO `sys_user` VALUES ('2', 'Jimin', '13188889999', 'jimin@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'jimin.zheng', 'Admin', '2017-10-14 14:45:19', '127.0.0.1', null);
INSERT INTO `sys_user` VALUES ('3', 'Jimmy', '13812344311', 'jimmy@qq.com', '25D55AD283AA400AF464C76D713C07AD', '2', '1', '', 'Admin', '2017-10-16 12:57:35', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('4', 'Kate', '13144445555', 'kate@qq.com', '25D55AD283AA400AF464C76D713C07AD', '1', '1', 'sss', 'Admin', '2017-10-16 23:02:51', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('5', '服务员A', '18677778888', 'service@qq.com', '25D55AD283AA400AF464C76D713C07AD', '12', '1', '', 'Admin', '2017-10-17 00:22:15', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('6', 'admin', '18688886666', 'admin0@qq.com', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '1', '', 'system', '2018-06-11 20:40:32', '127.0.0.1', null);
INSERT INTO `sys_user` VALUES ('7', '陌林', '123456789011', '1024433267@qq.com', '123456', '1', '1', '本人', 'Admin', '2018-12-07 11:06:37', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('8', '陌林', '123456789000', '10244332@qq.com', '123456', '1', '1', '本人', 'Admin', '2018-12-07 11:10:00', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('9', '陌林1', '12345678901', '1024433@qq.com', '123456', '1', '1', '额额外', 'Admin', '2018-12-07 11:35:07', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('10', '陌林2', '12345678', '1024432@qq.com', '123456', '2', '1', '', 'Admin', '2018-12-07 11:35:57', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('11', '陌林3', '1234567890003', '1024433223@qq.com', '123456', '2', '1', '', 'Admin', '2018-12-07 11:36:38', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('12', '陌林5', '12345678900', '10244332655@qq.com', '123456', '4', '1', '', 'Admin', '2018-12-07 11:37:30', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('13', '186123443213', '123456', '39466@qq.com', '123456', '1', '1', '', 'Admin', '2018-12-07 11:38:30', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('14', '123', '123', '1223@qq.com', '123456', '1', '1', '', 'Admin', '2018-12-07 11:40:32', '0:0:0:0:0:0:0:1', null);
INSERT INTO `sys_user` VALUES ('15', 'liulun', '13554567890', '102443344@qq.com', '123456', '1', '1', '', 'Admin', '2018-12-07 11:53:58', '0:0:0:0:0:0:0:1', null);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'teacher1', 'java');
INSERT INTO `teacher` VALUES ('2', 'teacher2', 'Python');

-- ----------------------------
-- Table structure for tets_jy
-- ----------------------------
DROP TABLE IF EXISTS `tets_jy`;
CREATE TABLE `tets_jy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_by` varchar(255) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(255) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(255) NOT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `jy_name` varchar(20) DEFAULT NULL COMMENT '名字',
  `jy_age` varchar(10) DEFAULT NULL COMMENT '年龄',
  `jy_gender` varchar(20) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成测试';

-- ----------------------------
-- Records of tets_jy
-- ----------------------------

-- ----------------------------
-- Table structure for t_emp
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp` (
  `id` int(4) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
INSERT INTO `t_emp` VALUES ('1', 'Lisa', '3000.00', '20');
INSERT INTO `t_emp` VALUES ('2', '花儿22', '3000.00', '20');
INSERT INTO `t_emp` VALUES ('3', '少年2', '3000.00', '20');
INSERT INTO `t_emp` VALUES ('4', '女神', '30000.00', '24');

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', '测试', '123456', '24');
