/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.33.111
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 192.168.33.111:3307
 Source Schema         : jeesite_pay

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 16/09/2020 18:51:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for js_gen_table
-- ----------------------------
DROP TABLE IF EXISTS `js_gen_table`;
CREATE TABLE `js_gen_table`  (
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '表名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '实体类名称',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '表说明',
  `parent_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联父表的表名',
  `parent_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '本表关联父表的外键名',
  `data_source_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据源名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '使用的模板',
  `package_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_base_dir` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成基础路径',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`table_name`) USING BTREE,
  INDEX `idx_gen_table_ptn`(`parent_table_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_gen_table
-- ----------------------------
INSERT INTO `js_gen_table` VALUES ('test_data', 'TestData', 'test_data', NULL, NULL, NULL, 'crud', 'com.jeesite.modules', 'test', '', '测试数据', '数据', 'ThinkGem', NULL, '{\"isHaveDelete\":\"1\",\"isFileUpload\":\"1\",\"isHaveDisableEnable\":\"1\",\"isImageUpload\":\"1\"}', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL);
INSERT INTO `js_gen_table` VALUES ('test_data_child', 'TestDataChild', 'test_data_child', 'test_data', 'test_data_id', NULL, 'crud', 'com.jeesite.modules', 'test', '', '测试子表', '数据', 'ThinkGem', NULL, NULL, 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL);
INSERT INTO `js_gen_table` VALUES ('test_tree', 'TestTree', 'test_tree', NULL, NULL, NULL, 'treeGrid', 'com.jeesite.modules', 'test', '', '测试树表', '数据', 'ThinkGem', NULL, '{\"treeViewName\":\"tree_name\",\"isHaveDelete\":\"1\",\"treeViewCode\":\"tree_code\",\"isFileUpload\":\"1\",\"isHaveDisableEnable\":\"1\",\"isImageUpload\":\"1\"}', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL);

-- ----------------------------
-- Table structure for js_gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `js_gen_table_column`;
CREATE TABLE `js_gen_table_column`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '表名',
  `column_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '列名',
  `column_sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '列排序（升序）',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类型',
  `column_label` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列标签名',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '列备注说明',
  `attr_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类的属性名',
  `attr_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类的属性类型',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否插入字段',
  `is_update` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否更新字段',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '查询方式',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段',
  `show_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表单类型',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_gen_table_column_tn`(`table_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成表列' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_blob_triggers`;
CREATE TABLE `js_job_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `js_job_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_calendars
-- ----------------------------
DROP TABLE IF EXISTS `js_job_calendars`;
CREATE TABLE `js_job_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_cron_triggers`;
CREATE TABLE `js_job_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `js_job_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_fired_triggers`;
CREATE TABLE `js_job_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TRIG_INST_NAME`(`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY`(`SCHED_NAME`, `INSTANCE_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_FT_J_G`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_T_G`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TG`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_job_details
-- ----------------------------
DROP TABLE IF EXISTS `js_job_job_details`;
CREATE TABLE `js_job_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_J_REQ_RECOVERY`(`SCHED_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_J_GRP`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_locks
-- ----------------------------
DROP TABLE IF EXISTS `js_job_locks`;
CREATE TABLE `js_job_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `js_job_paused_trigger_grps`;
CREATE TABLE `js_job_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `js_job_scheduler_state`;
CREATE TABLE `js_job_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_simple_triggers`;
CREATE TABLE `js_job_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `js_job_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_simprop_triggers`;
CREATE TABLE `js_job_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `js_job_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `js_job_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_job_triggers
-- ----------------------------
DROP TABLE IF EXISTS `js_job_triggers`;
CREATE TABLE `js_job_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_J`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_C`(`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_T_G`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_STATE`(`SCHED_NAME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_STATE`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_G_STATE`(`SCHED_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NEXT_FIRE_TIME`(`SCHED_NAME`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST`(`SCHED_NAME`, `TRIGGER_STATE`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `js_job_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `js_job_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_area`;
CREATE TABLE `js_sys_area`  (
  `area_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '区域编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `area_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '区域名称',
  `area_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`area_code`) USING BTREE,
  INDEX `idx_sys_area_pc`(`parent_code`) USING BTREE,
  INDEX `idx_sys_area_ts`(`tree_sort`) USING BTREE,
  INDEX `idx_sys_area_status`(`status`) USING BTREE,
  INDEX `idx_sys_area_pcs`(`parent_codes`) USING BTREE,
  INDEX `idx_sys_area_tss`(`tree_sorts`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '行政区划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_area
-- ----------------------------
INSERT INTO `js_sys_area` VALUES ('110000', '0', '0,', 110000, '0000110000,', '0', 0, '北京市', '北京市', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110100', '110000', '0,110000,', 110100, '0000110000,0000110100,', '0', 1, '北京市/北京城区', '北京城区', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110101', '110100', '0,110000,110100,', 110101, '0000110000,0000110100,0000110101,', '1', 2, '北京市/北京城区/东城区', '东城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110102', '110100', '0,110000,110100,', 110102, '0000110000,0000110100,0000110102,', '1', 2, '北京市/北京城区/西城区', '西城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110105', '110100', '0,110000,110100,', 110105, '0000110000,0000110100,0000110105,', '1', 2, '北京市/北京城区/朝阳区', '朝阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110106', '110100', '0,110000,110100,', 110106, '0000110000,0000110100,0000110106,', '1', 2, '北京市/北京城区/丰台区', '丰台区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110107', '110100', '0,110000,110100,', 110107, '0000110000,0000110100,0000110107,', '1', 2, '北京市/北京城区/石景山区', '石景山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110108', '110100', '0,110000,110100,', 110108, '0000110000,0000110100,0000110108,', '1', 2, '北京市/北京城区/海淀区', '海淀区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110109', '110100', '0,110000,110100,', 110109, '0000110000,0000110100,0000110109,', '1', 2, '北京市/北京城区/门头沟区', '门头沟区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110111', '110100', '0,110000,110100,', 110111, '0000110000,0000110100,0000110111,', '1', 2, '北京市/北京城区/房山区', '房山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110112', '110100', '0,110000,110100,', 110112, '0000110000,0000110100,0000110112,', '1', 2, '北京市/北京城区/通州区', '通州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110113', '110100', '0,110000,110100,', 110113, '0000110000,0000110100,0000110113,', '1', 2, '北京市/北京城区/顺义区', '顺义区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110114', '110100', '0,110000,110100,', 110114, '0000110000,0000110100,0000110114,', '1', 2, '北京市/北京城区/昌平区', '昌平区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110115', '110100', '0,110000,110100,', 110115, '0000110000,0000110100,0000110115,', '1', 2, '北京市/北京城区/大兴区', '大兴区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110116', '110100', '0,110000,110100,', 110116, '0000110000,0000110100,0000110116,', '1', 2, '北京市/北京城区/怀柔区', '怀柔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110117', '110100', '0,110000,110100,', 110117, '0000110000,0000110100,0000110117,', '1', 2, '北京市/北京城区/平谷区', '平谷区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110118', '110100', '0,110000,110100,', 110118, '0000110000,0000110100,0000110118,', '1', 2, '北京市/北京城区/密云区', '密云区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('110119', '110100', '0,110000,110100,', 110119, '0000110000,0000110100,0000110119,', '1', 2, '北京市/北京城区/延庆区', '延庆区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120000', '0', '0,', 120000, '0000120000,', '0', 0, '天津市', '天津市', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120100', '120000', '0,120000,', 120100, '0000120000,0000120100,', '0', 1, '天津市/天津城区', '天津城区', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120101', '120100', '0,120000,120100,', 120101, '0000120000,0000120100,0000120101,', '1', 2, '天津市/天津城区/和平区', '和平区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120102', '120100', '0,120000,120100,', 120102, '0000120000,0000120100,0000120102,', '1', 2, '天津市/天津城区/河东区', '河东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120103', '120100', '0,120000,120100,', 120103, '0000120000,0000120100,0000120103,', '1', 2, '天津市/天津城区/河西区', '河西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120104', '120100', '0,120000,120100,', 120104, '0000120000,0000120100,0000120104,', '1', 2, '天津市/天津城区/南开区', '南开区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120105', '120100', '0,120000,120100,', 120105, '0000120000,0000120100,0000120105,', '1', 2, '天津市/天津城区/河北区', '河北区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120106', '120100', '0,120000,120100,', 120106, '0000120000,0000120100,0000120106,', '1', 2, '天津市/天津城区/红桥区', '红桥区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120110', '120100', '0,120000,120100,', 120110, '0000120000,0000120100,0000120110,', '1', 2, '天津市/天津城区/东丽区', '东丽区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120111', '120100', '0,120000,120100,', 120111, '0000120000,0000120100,0000120111,', '1', 2, '天津市/天津城区/西青区', '西青区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120112', '120100', '0,120000,120100,', 120112, '0000120000,0000120100,0000120112,', '1', 2, '天津市/天津城区/津南区', '津南区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120113', '120100', '0,120000,120100,', 120113, '0000120000,0000120100,0000120113,', '1', 2, '天津市/天津城区/北辰区', '北辰区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120114', '120100', '0,120000,120100,', 120114, '0000120000,0000120100,0000120114,', '1', 2, '天津市/天津城区/武清区', '武清区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120115', '120100', '0,120000,120100,', 120115, '0000120000,0000120100,0000120115,', '1', 2, '天津市/天津城区/宝坻区', '宝坻区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120116', '120100', '0,120000,120100,', 120116, '0000120000,0000120100,0000120116,', '1', 2, '天津市/天津城区/滨海新区', '滨海新区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120117', '120100', '0,120000,120100,', 120117, '0000120000,0000120100,0000120117,', '1', 2, '天津市/天津城区/宁河区', '宁河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120118', '120100', '0,120000,120100,', 120118, '0000120000,0000120100,0000120118,', '1', 2, '天津市/天津城区/静海区', '静海区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('120119', '120100', '0,120000,120100,', 120119, '0000120000,0000120100,0000120119,', '1', 2, '天津市/天津城区/蓟州区', '蓟州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130000', '0', '0,', 130000, '0000130000,', '0', 0, '河北省', '河北省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130100', '130000', '0,130000,', 130100, '0000130000,0000130100,', '0', 1, '河北省/石家庄市', '石家庄市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130102', '130100', '0,130000,130100,', 130102, '0000130000,0000130100,0000130102,', '1', 2, '河北省/石家庄市/长安区', '长安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130104', '130100', '0,130000,130100,', 130104, '0000130000,0000130100,0000130104,', '1', 2, '河北省/石家庄市/桥西区', '桥西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130105', '130100', '0,130000,130100,', 130105, '0000130000,0000130100,0000130105,', '1', 2, '河北省/石家庄市/新华区', '新华区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130107', '130100', '0,130000,130100,', 130107, '0000130000,0000130100,0000130107,', '1', 2, '河北省/石家庄市/井陉矿区', '井陉矿区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130108', '130100', '0,130000,130100,', 130108, '0000130000,0000130100,0000130108,', '1', 2, '河北省/石家庄市/裕华区', '裕华区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130109', '130100', '0,130000,130100,', 130109, '0000130000,0000130100,0000130109,', '1', 2, '河北省/石家庄市/藁城区', '藁城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130110', '130100', '0,130000,130100,', 130110, '0000130000,0000130100,0000130110,', '1', 2, '河北省/石家庄市/鹿泉区', '鹿泉区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130111', '130100', '0,130000,130100,', 130111, '0000130000,0000130100,0000130111,', '1', 2, '河北省/石家庄市/栾城区', '栾城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130121', '130100', '0,130000,130100,', 130121, '0000130000,0000130100,0000130121,', '1', 2, '河北省/石家庄市/井陉县', '井陉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130123', '130100', '0,130000,130100,', 130123, '0000130000,0000130100,0000130123,', '1', 2, '河北省/石家庄市/正定县', '正定县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130125', '130100', '0,130000,130100,', 130125, '0000130000,0000130100,0000130125,', '1', 2, '河北省/石家庄市/行唐县', '行唐县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130126', '130100', '0,130000,130100,', 130126, '0000130000,0000130100,0000130126,', '1', 2, '河北省/石家庄市/灵寿县', '灵寿县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130127', '130100', '0,130000,130100,', 130127, '0000130000,0000130100,0000130127,', '1', 2, '河北省/石家庄市/高邑县', '高邑县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130128', '130100', '0,130000,130100,', 130128, '0000130000,0000130100,0000130128,', '1', 2, '河北省/石家庄市/深泽县', '深泽县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130129', '130100', '0,130000,130100,', 130129, '0000130000,0000130100,0000130129,', '1', 2, '河北省/石家庄市/赞皇县', '赞皇县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130130', '130100', '0,130000,130100,', 130130, '0000130000,0000130100,0000130130,', '1', 2, '河北省/石家庄市/无极县', '无极县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130131', '130100', '0,130000,130100,', 130131, '0000130000,0000130100,0000130131,', '1', 2, '河北省/石家庄市/平山县', '平山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130132', '130100', '0,130000,130100,', 130132, '0000130000,0000130100,0000130132,', '1', 2, '河北省/石家庄市/元氏县', '元氏县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130133', '130100', '0,130000,130100,', 130133, '0000130000,0000130100,0000130133,', '1', 2, '河北省/石家庄市/赵县', '赵县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130181', '130100', '0,130000,130100,', 130181, '0000130000,0000130100,0000130181,', '1', 2, '河北省/石家庄市/辛集市', '辛集市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130183', '130100', '0,130000,130100,', 130183, '0000130000,0000130100,0000130183,', '1', 2, '河北省/石家庄市/晋州市', '晋州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130184', '130100', '0,130000,130100,', 130184, '0000130000,0000130100,0000130184,', '1', 2, '河北省/石家庄市/新乐市', '新乐市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130200', '130000', '0,130000,', 130200, '0000130000,0000130200,', '0', 1, '河北省/唐山市', '唐山市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130202', '130200', '0,130000,130200,', 130202, '0000130000,0000130200,0000130202,', '1', 2, '河北省/唐山市/路南区', '路南区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130203', '130200', '0,130000,130200,', 130203, '0000130000,0000130200,0000130203,', '1', 2, '河北省/唐山市/路北区', '路北区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130204', '130200', '0,130000,130200,', 130204, '0000130000,0000130200,0000130204,', '1', 2, '河北省/唐山市/古冶区', '古冶区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130205', '130200', '0,130000,130200,', 130205, '0000130000,0000130200,0000130205,', '1', 2, '河北省/唐山市/开平区', '开平区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130207', '130200', '0,130000,130200,', 130207, '0000130000,0000130200,0000130207,', '1', 2, '河北省/唐山市/丰南区', '丰南区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130208', '130200', '0,130000,130200,', 130208, '0000130000,0000130200,0000130208,', '1', 2, '河北省/唐山市/丰润区', '丰润区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130209', '130200', '0,130000,130200,', 130209, '0000130000,0000130200,0000130209,', '1', 2, '河北省/唐山市/曹妃甸区', '曹妃甸区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130224', '130200', '0,130000,130200,', 130224, '0000130000,0000130200,0000130224,', '1', 2, '河北省/唐山市/滦南县', '滦南县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130225', '130200', '0,130000,130200,', 130225, '0000130000,0000130200,0000130225,', '1', 2, '河北省/唐山市/乐亭县', '乐亭县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130227', '130200', '0,130000,130200,', 130227, '0000130000,0000130200,0000130227,', '1', 2, '河北省/唐山市/迁西县', '迁西县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130229', '130200', '0,130000,130200,', 130229, '0000130000,0000130200,0000130229,', '1', 2, '河北省/唐山市/玉田县', '玉田县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130281', '130200', '0,130000,130200,', 130281, '0000130000,0000130200,0000130281,', '1', 2, '河北省/唐山市/遵化市', '遵化市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130283', '130200', '0,130000,130200,', 130283, '0000130000,0000130200,0000130283,', '1', 2, '河北省/唐山市/迁安市', '迁安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130284', '130200', '0,130000,130200,', 130284, '0000130000,0000130200,0000130284,', '1', 2, '河北省/唐山市/滦州市', '滦州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130300', '130000', '0,130000,', 130300, '0000130000,0000130300,', '0', 1, '河北省/秦皇岛市', '秦皇岛市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130302', '130300', '0,130000,130300,', 130302, '0000130000,0000130300,0000130302,', '1', 2, '河北省/秦皇岛市/海港区', '海港区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130303', '130300', '0,130000,130300,', 130303, '0000130000,0000130300,0000130303,', '1', 2, '河北省/秦皇岛市/山海关区', '山海关区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130304', '130300', '0,130000,130300,', 130304, '0000130000,0000130300,0000130304,', '1', 2, '河北省/秦皇岛市/北戴河区', '北戴河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130306', '130300', '0,130000,130300,', 130306, '0000130000,0000130300,0000130306,', '1', 2, '河北省/秦皇岛市/抚宁区', '抚宁区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130321', '130300', '0,130000,130300,', 130321, '0000130000,0000130300,0000130321,', '1', 2, '河北省/秦皇岛市/青龙满族自治县', '青龙满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130322', '130300', '0,130000,130300,', 130322, '0000130000,0000130300,0000130322,', '1', 2, '河北省/秦皇岛市/昌黎县', '昌黎县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130324', '130300', '0,130000,130300,', 130324, '0000130000,0000130300,0000130324,', '1', 2, '河北省/秦皇岛市/卢龙县', '卢龙县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130400', '130000', '0,130000,', 130400, '0000130000,0000130400,', '0', 1, '河北省/邯郸市', '邯郸市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130402', '130400', '0,130000,130400,', 130402, '0000130000,0000130400,0000130402,', '1', 2, '河北省/邯郸市/邯山区', '邯山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130403', '130400', '0,130000,130400,', 130403, '0000130000,0000130400,0000130403,', '1', 2, '河北省/邯郸市/丛台区', '丛台区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130404', '130400', '0,130000,130400,', 130404, '0000130000,0000130400,0000130404,', '1', 2, '河北省/邯郸市/复兴区', '复兴区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130406', '130400', '0,130000,130400,', 130406, '0000130000,0000130400,0000130406,', '1', 2, '河北省/邯郸市/峰峰矿区', '峰峰矿区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130407', '130400', '0,130000,130400,', 130407, '0000130000,0000130400,0000130407,', '1', 2, '河北省/邯郸市/肥乡区', '肥乡区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130408', '130400', '0,130000,130400,', 130408, '0000130000,0000130400,0000130408,', '1', 2, '河北省/邯郸市/永年区', '永年区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130423', '130400', '0,130000,130400,', 130423, '0000130000,0000130400,0000130423,', '1', 2, '河北省/邯郸市/临漳县', '临漳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130424', '130400', '0,130000,130400,', 130424, '0000130000,0000130400,0000130424,', '1', 2, '河北省/邯郸市/成安县', '成安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130425', '130400', '0,130000,130400,', 130425, '0000130000,0000130400,0000130425,', '1', 2, '河北省/邯郸市/大名县', '大名县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130426', '130400', '0,130000,130400,', 130426, '0000130000,0000130400,0000130426,', '1', 2, '河北省/邯郸市/涉县', '涉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130427', '130400', '0,130000,130400,', 130427, '0000130000,0000130400,0000130427,', '1', 2, '河北省/邯郸市/磁县', '磁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130430', '130400', '0,130000,130400,', 130430, '0000130000,0000130400,0000130430,', '1', 2, '河北省/邯郸市/邱县', '邱县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130431', '130400', '0,130000,130400,', 130431, '0000130000,0000130400,0000130431,', '1', 2, '河北省/邯郸市/鸡泽县', '鸡泽县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130432', '130400', '0,130000,130400,', 130432, '0000130000,0000130400,0000130432,', '1', 2, '河北省/邯郸市/广平县', '广平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130433', '130400', '0,130000,130400,', 130433, '0000130000,0000130400,0000130433,', '1', 2, '河北省/邯郸市/馆陶县', '馆陶县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130434', '130400', '0,130000,130400,', 130434, '0000130000,0000130400,0000130434,', '1', 2, '河北省/邯郸市/魏县', '魏县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130435', '130400', '0,130000,130400,', 130435, '0000130000,0000130400,0000130435,', '1', 2, '河北省/邯郸市/曲周县', '曲周县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130481', '130400', '0,130000,130400,', 130481, '0000130000,0000130400,0000130481,', '1', 2, '河北省/邯郸市/武安市', '武安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130500', '130000', '0,130000,', 130500, '0000130000,0000130500,', '0', 1, '河北省/邢台市', '邢台市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130502', '130500', '0,130000,130500,', 130502, '0000130000,0000130500,0000130502,', '1', 2, '河北省/邢台市/桥东区', '桥东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130503', '130500', '0,130000,130500,', 130503, '0000130000,0000130500,0000130503,', '1', 2, '河北省/邢台市/桥西区', '桥西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130521', '130500', '0,130000,130500,', 130521, '0000130000,0000130500,0000130521,', '1', 2, '河北省/邢台市/邢台县', '邢台县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130522', '130500', '0,130000,130500,', 130522, '0000130000,0000130500,0000130522,', '1', 2, '河北省/邢台市/临城县', '临城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130523', '130500', '0,130000,130500,', 130523, '0000130000,0000130500,0000130523,', '1', 2, '河北省/邢台市/内丘县', '内丘县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130524', '130500', '0,130000,130500,', 130524, '0000130000,0000130500,0000130524,', '1', 2, '河北省/邢台市/柏乡县', '柏乡县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130525', '130500', '0,130000,130500,', 130525, '0000130000,0000130500,0000130525,', '1', 2, '河北省/邢台市/隆尧县', '隆尧县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130526', '130500', '0,130000,130500,', 130526, '0000130000,0000130500,0000130526,', '1', 2, '河北省/邢台市/任县', '任县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130527', '130500', '0,130000,130500,', 130527, '0000130000,0000130500,0000130527,', '1', 2, '河北省/邢台市/南和县', '南和县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130528', '130500', '0,130000,130500,', 130528, '0000130000,0000130500,0000130528,', '1', 2, '河北省/邢台市/宁晋县', '宁晋县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130529', '130500', '0,130000,130500,', 130529, '0000130000,0000130500,0000130529,', '1', 2, '河北省/邢台市/巨鹿县', '巨鹿县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130530', '130500', '0,130000,130500,', 130530, '0000130000,0000130500,0000130530,', '1', 2, '河北省/邢台市/新河县', '新河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130531', '130500', '0,130000,130500,', 130531, '0000130000,0000130500,0000130531,', '1', 2, '河北省/邢台市/广宗县', '广宗县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130532', '130500', '0,130000,130500,', 130532, '0000130000,0000130500,0000130532,', '1', 2, '河北省/邢台市/平乡县', '平乡县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130533', '130500', '0,130000,130500,', 130533, '0000130000,0000130500,0000130533,', '1', 2, '河北省/邢台市/威县', '威县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130534', '130500', '0,130000,130500,', 130534, '0000130000,0000130500,0000130534,', '1', 2, '河北省/邢台市/清河县', '清河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130535', '130500', '0,130000,130500,', 130535, '0000130000,0000130500,0000130535,', '1', 2, '河北省/邢台市/临西县', '临西县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130581', '130500', '0,130000,130500,', 130581, '0000130000,0000130500,0000130581,', '1', 2, '河北省/邢台市/南宫市', '南宫市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130582', '130500', '0,130000,130500,', 130582, '0000130000,0000130500,0000130582,', '1', 2, '河北省/邢台市/沙河市', '沙河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130600', '130000', '0,130000,', 130600, '0000130000,0000130600,', '0', 1, '河北省/保定市', '保定市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130602', '130600', '0,130000,130600,', 130602, '0000130000,0000130600,0000130602,', '1', 2, '河北省/保定市/竞秀区', '竞秀区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130606', '130600', '0,130000,130600,', 130606, '0000130000,0000130600,0000130606,', '1', 2, '河北省/保定市/莲池区', '莲池区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130607', '130600', '0,130000,130600,', 130607, '0000130000,0000130600,0000130607,', '1', 2, '河北省/保定市/满城区', '满城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130608', '130600', '0,130000,130600,', 130608, '0000130000,0000130600,0000130608,', '1', 2, '河北省/保定市/清苑区', '清苑区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130609', '130600', '0,130000,130600,', 130609, '0000130000,0000130600,0000130609,', '1', 2, '河北省/保定市/徐水区', '徐水区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130623', '130600', '0,130000,130600,', 130623, '0000130000,0000130600,0000130623,', '1', 2, '河北省/保定市/涞水县', '涞水县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130624', '130600', '0,130000,130600,', 130624, '0000130000,0000130600,0000130624,', '1', 2, '河北省/保定市/阜平县', '阜平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130626', '130600', '0,130000,130600,', 130626, '0000130000,0000130600,0000130626,', '1', 2, '河北省/保定市/定兴县', '定兴县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130627', '130600', '0,130000,130600,', 130627, '0000130000,0000130600,0000130627,', '1', 2, '河北省/保定市/唐县', '唐县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130628', '130600', '0,130000,130600,', 130628, '0000130000,0000130600,0000130628,', '1', 2, '河北省/保定市/高阳县', '高阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130629', '130600', '0,130000,130600,', 130629, '0000130000,0000130600,0000130629,', '1', 2, '河北省/保定市/容城县', '容城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130630', '130600', '0,130000,130600,', 130630, '0000130000,0000130600,0000130630,', '1', 2, '河北省/保定市/涞源县', '涞源县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130631', '130600', '0,130000,130600,', 130631, '0000130000,0000130600,0000130631,', '1', 2, '河北省/保定市/望都县', '望都县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130632', '130600', '0,130000,130600,', 130632, '0000130000,0000130600,0000130632,', '1', 2, '河北省/保定市/安新县', '安新县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130633', '130600', '0,130000,130600,', 130633, '0000130000,0000130600,0000130633,', '1', 2, '河北省/保定市/易县', '易县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130634', '130600', '0,130000,130600,', 130634, '0000130000,0000130600,0000130634,', '1', 2, '河北省/保定市/曲阳县', '曲阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130635', '130600', '0,130000,130600,', 130635, '0000130000,0000130600,0000130635,', '1', 2, '河北省/保定市/蠡县', '蠡县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130636', '130600', '0,130000,130600,', 130636, '0000130000,0000130600,0000130636,', '1', 2, '河北省/保定市/顺平县', '顺平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130637', '130600', '0,130000,130600,', 130637, '0000130000,0000130600,0000130637,', '1', 2, '河北省/保定市/博野县', '博野县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130638', '130600', '0,130000,130600,', 130638, '0000130000,0000130600,0000130638,', '1', 2, '河北省/保定市/雄县', '雄县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130681', '130600', '0,130000,130600,', 130681, '0000130000,0000130600,0000130681,', '1', 2, '河北省/保定市/涿州市', '涿州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130682', '130600', '0,130000,130600,', 130682, '0000130000,0000130600,0000130682,', '1', 2, '河北省/保定市/定州市', '定州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130683', '130600', '0,130000,130600,', 130683, '0000130000,0000130600,0000130683,', '1', 2, '河北省/保定市/安国市', '安国市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130684', '130600', '0,130000,130600,', 130684, '0000130000,0000130600,0000130684,', '1', 2, '河北省/保定市/高碑店市', '高碑店市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130700', '130000', '0,130000,', 130700, '0000130000,0000130700,', '0', 1, '河北省/张家口市', '张家口市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130702', '130700', '0,130000,130700,', 130702, '0000130000,0000130700,0000130702,', '1', 2, '河北省/张家口市/桥东区', '桥东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130703', '130700', '0,130000,130700,', 130703, '0000130000,0000130700,0000130703,', '1', 2, '河北省/张家口市/桥西区', '桥西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130705', '130700', '0,130000,130700,', 130705, '0000130000,0000130700,0000130705,', '1', 2, '河北省/张家口市/宣化区', '宣化区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130706', '130700', '0,130000,130700,', 130706, '0000130000,0000130700,0000130706,', '1', 2, '河北省/张家口市/下花园区', '下花园区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130708', '130700', '0,130000,130700,', 130708, '0000130000,0000130700,0000130708,', '1', 2, '河北省/张家口市/万全区', '万全区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130709', '130700', '0,130000,130700,', 130709, '0000130000,0000130700,0000130709,', '1', 2, '河北省/张家口市/崇礼区', '崇礼区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130722', '130700', '0,130000,130700,', 130722, '0000130000,0000130700,0000130722,', '1', 2, '河北省/张家口市/张北县', '张北县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130723', '130700', '0,130000,130700,', 130723, '0000130000,0000130700,0000130723,', '1', 2, '河北省/张家口市/康保县', '康保县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130724', '130700', '0,130000,130700,', 130724, '0000130000,0000130700,0000130724,', '1', 2, '河北省/张家口市/沽源县', '沽源县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130725', '130700', '0,130000,130700,', 130725, '0000130000,0000130700,0000130725,', '1', 2, '河北省/张家口市/尚义县', '尚义县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130726', '130700', '0,130000,130700,', 130726, '0000130000,0000130700,0000130726,', '1', 2, '河北省/张家口市/蔚县', '蔚县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130727', '130700', '0,130000,130700,', 130727, '0000130000,0000130700,0000130727,', '1', 2, '河北省/张家口市/阳原县', '阳原县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130728', '130700', '0,130000,130700,', 130728, '0000130000,0000130700,0000130728,', '1', 2, '河北省/张家口市/怀安县', '怀安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130730', '130700', '0,130000,130700,', 130730, '0000130000,0000130700,0000130730,', '1', 2, '河北省/张家口市/怀来县', '怀来县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130731', '130700', '0,130000,130700,', 130731, '0000130000,0000130700,0000130731,', '1', 2, '河北省/张家口市/涿鹿县', '涿鹿县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130732', '130700', '0,130000,130700,', 130732, '0000130000,0000130700,0000130732,', '1', 2, '河北省/张家口市/赤城县', '赤城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130800', '130000', '0,130000,', 130800, '0000130000,0000130800,', '0', 1, '河北省/承德市', '承德市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130802', '130800', '0,130000,130800,', 130802, '0000130000,0000130800,0000130802,', '1', 2, '河北省/承德市/双桥区', '双桥区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130803', '130800', '0,130000,130800,', 130803, '0000130000,0000130800,0000130803,', '1', 2, '河北省/承德市/双滦区', '双滦区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130804', '130800', '0,130000,130800,', 130804, '0000130000,0000130800,0000130804,', '1', 2, '河北省/承德市/鹰手营子矿区', '鹰手营子矿区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130821', '130800', '0,130000,130800,', 130821, '0000130000,0000130800,0000130821,', '1', 2, '河北省/承德市/承德县', '承德县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130822', '130800', '0,130000,130800,', 130822, '0000130000,0000130800,0000130822,', '1', 2, '河北省/承德市/兴隆县', '兴隆县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130824', '130800', '0,130000,130800,', 130824, '0000130000,0000130800,0000130824,', '1', 2, '河北省/承德市/滦平县', '滦平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130825', '130800', '0,130000,130800,', 130825, '0000130000,0000130800,0000130825,', '1', 2, '河北省/承德市/隆化县', '隆化县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130826', '130800', '0,130000,130800,', 130826, '0000130000,0000130800,0000130826,', '1', 2, '河北省/承德市/丰宁满族自治县', '丰宁满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130827', '130800', '0,130000,130800,', 130827, '0000130000,0000130800,0000130827,', '1', 2, '河北省/承德市/宽城满族自治县', '宽城满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130828', '130800', '0,130000,130800,', 130828, '0000130000,0000130800,0000130828,', '1', 2, '河北省/承德市/围场满族蒙古族自治县', '围场满族蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130881', '130800', '0,130000,130800,', 130881, '0000130000,0000130800,0000130881,', '1', 2, '河北省/承德市/平泉市', '平泉市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130900', '130000', '0,130000,', 130900, '0000130000,0000130900,', '0', 1, '河北省/沧州市', '沧州市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130902', '130900', '0,130000,130900,', 130902, '0000130000,0000130900,0000130902,', '1', 2, '河北省/沧州市/新华区', '新华区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130903', '130900', '0,130000,130900,', 130903, '0000130000,0000130900,0000130903,', '1', 2, '河北省/沧州市/运河区', '运河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130921', '130900', '0,130000,130900,', 130921, '0000130000,0000130900,0000130921,', '1', 2, '河北省/沧州市/沧县', '沧县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130922', '130900', '0,130000,130900,', 130922, '0000130000,0000130900,0000130922,', '1', 2, '河北省/沧州市/青县', '青县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130923', '130900', '0,130000,130900,', 130923, '0000130000,0000130900,0000130923,', '1', 2, '河北省/沧州市/东光县', '东光县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130924', '130900', '0,130000,130900,', 130924, '0000130000,0000130900,0000130924,', '1', 2, '河北省/沧州市/海兴县', '海兴县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130925', '130900', '0,130000,130900,', 130925, '0000130000,0000130900,0000130925,', '1', 2, '河北省/沧州市/盐山县', '盐山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130926', '130900', '0,130000,130900,', 130926, '0000130000,0000130900,0000130926,', '1', 2, '河北省/沧州市/肃宁县', '肃宁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130927', '130900', '0,130000,130900,', 130927, '0000130000,0000130900,0000130927,', '1', 2, '河北省/沧州市/南皮县', '南皮县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130928', '130900', '0,130000,130900,', 130928, '0000130000,0000130900,0000130928,', '1', 2, '河北省/沧州市/吴桥县', '吴桥县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130929', '130900', '0,130000,130900,', 130929, '0000130000,0000130900,0000130929,', '1', 2, '河北省/沧州市/献县', '献县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130930', '130900', '0,130000,130900,', 130930, '0000130000,0000130900,0000130930,', '1', 2, '河北省/沧州市/孟村回族自治县', '孟村回族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130981', '130900', '0,130000,130900,', 130981, '0000130000,0000130900,0000130981,', '1', 2, '河北省/沧州市/泊头市', '泊头市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130982', '130900', '0,130000,130900,', 130982, '0000130000,0000130900,0000130982,', '1', 2, '河北省/沧州市/任丘市', '任丘市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130983', '130900', '0,130000,130900,', 130983, '0000130000,0000130900,0000130983,', '1', 2, '河北省/沧州市/黄骅市', '黄骅市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('130984', '130900', '0,130000,130900,', 130984, '0000130000,0000130900,0000130984,', '1', 2, '河北省/沧州市/河间市', '河间市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131000', '130000', '0,130000,', 131000, '0000130000,0000131000,', '0', 1, '河北省/廊坊市', '廊坊市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131002', '131000', '0,130000,131000,', 131002, '0000130000,0000131000,0000131002,', '1', 2, '河北省/廊坊市/安次区', '安次区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131003', '131000', '0,130000,131000,', 131003, '0000130000,0000131000,0000131003,', '1', 2, '河北省/廊坊市/广阳区', '广阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131022', '131000', '0,130000,131000,', 131022, '0000130000,0000131000,0000131022,', '1', 2, '河北省/廊坊市/固安县', '固安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131023', '131000', '0,130000,131000,', 131023, '0000130000,0000131000,0000131023,', '1', 2, '河北省/廊坊市/永清县', '永清县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131024', '131000', '0,130000,131000,', 131024, '0000130000,0000131000,0000131024,', '1', 2, '河北省/廊坊市/香河县', '香河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131025', '131000', '0,130000,131000,', 131025, '0000130000,0000131000,0000131025,', '1', 2, '河北省/廊坊市/大城县', '大城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131026', '131000', '0,130000,131000,', 131026, '0000130000,0000131000,0000131026,', '1', 2, '河北省/廊坊市/文安县', '文安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131028', '131000', '0,130000,131000,', 131028, '0000130000,0000131000,0000131028,', '1', 2, '河北省/廊坊市/大厂回族自治县', '大厂回族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131081', '131000', '0,130000,131000,', 131081, '0000130000,0000131000,0000131081,', '1', 2, '河北省/廊坊市/霸州市', '霸州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131082', '131000', '0,130000,131000,', 131082, '0000130000,0000131000,0000131082,', '1', 2, '河北省/廊坊市/三河市', '三河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131100', '130000', '0,130000,', 131100, '0000130000,0000131100,', '0', 1, '河北省/衡水市', '衡水市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131102', '131100', '0,130000,131100,', 131102, '0000130000,0000131100,0000131102,', '1', 2, '河北省/衡水市/桃城区', '桃城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131103', '131100', '0,130000,131100,', 131103, '0000130000,0000131100,0000131103,', '1', 2, '河北省/衡水市/冀州区', '冀州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131121', '131100', '0,130000,131100,', 131121, '0000130000,0000131100,0000131121,', '1', 2, '河北省/衡水市/枣强县', '枣强县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131122', '131100', '0,130000,131100,', 131122, '0000130000,0000131100,0000131122,', '1', 2, '河北省/衡水市/武邑县', '武邑县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131123', '131100', '0,130000,131100,', 131123, '0000130000,0000131100,0000131123,', '1', 2, '河北省/衡水市/武强县', '武强县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131124', '131100', '0,130000,131100,', 131124, '0000130000,0000131100,0000131124,', '1', 2, '河北省/衡水市/饶阳县', '饶阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131125', '131100', '0,130000,131100,', 131125, '0000130000,0000131100,0000131125,', '1', 2, '河北省/衡水市/安平县', '安平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131126', '131100', '0,130000,131100,', 131126, '0000130000,0000131100,0000131126,', '1', 2, '河北省/衡水市/故城县', '故城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131127', '131100', '0,130000,131100,', 131127, '0000130000,0000131100,0000131127,', '1', 2, '河北省/衡水市/景县', '景县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131128', '131100', '0,130000,131100,', 131128, '0000130000,0000131100,0000131128,', '1', 2, '河北省/衡水市/阜城县', '阜城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('131182', '131100', '0,130000,131100,', 131182, '0000130000,0000131100,0000131182,', '1', 2, '河北省/衡水市/深州市', '深州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140000', '0', '0,', 140000, '0000140000,', '0', 0, '山西省', '山西省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140100', '140000', '0,140000,', 140100, '0000140000,0000140100,', '0', 1, '山西省/太原市', '太原市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140105', '140100', '0,140000,140100,', 140105, '0000140000,0000140100,0000140105,', '1', 2, '山西省/太原市/小店区', '小店区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140106', '140100', '0,140000,140100,', 140106, '0000140000,0000140100,0000140106,', '1', 2, '山西省/太原市/迎泽区', '迎泽区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140107', '140100', '0,140000,140100,', 140107, '0000140000,0000140100,0000140107,', '1', 2, '山西省/太原市/杏花岭区', '杏花岭区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140108', '140100', '0,140000,140100,', 140108, '0000140000,0000140100,0000140108,', '1', 2, '山西省/太原市/尖草坪区', '尖草坪区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140109', '140100', '0,140000,140100,', 140109, '0000140000,0000140100,0000140109,', '1', 2, '山西省/太原市/万柏林区', '万柏林区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140110', '140100', '0,140000,140100,', 140110, '0000140000,0000140100,0000140110,', '1', 2, '山西省/太原市/晋源区', '晋源区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140121', '140100', '0,140000,140100,', 140121, '0000140000,0000140100,0000140121,', '1', 2, '山西省/太原市/清徐县', '清徐县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140122', '140100', '0,140000,140100,', 140122, '0000140000,0000140100,0000140122,', '1', 2, '山西省/太原市/阳曲县', '阳曲县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140123', '140100', '0,140000,140100,', 140123, '0000140000,0000140100,0000140123,', '1', 2, '山西省/太原市/娄烦县', '娄烦县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140181', '140100', '0,140000,140100,', 140181, '0000140000,0000140100,0000140181,', '1', 2, '山西省/太原市/古交市', '古交市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140200', '140000', '0,140000,', 140200, '0000140000,0000140200,', '0', 1, '山西省/大同市', '大同市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140212', '140200', '0,140000,140200,', 140212, '0000140000,0000140200,0000140212,', '1', 2, '山西省/大同市/新荣区', '新荣区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140213', '140200', '0,140000,140200,', 140213, '0000140000,0000140200,0000140213,', '1', 2, '山西省/大同市/平城区', '平城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140214', '140200', '0,140000,140200,', 140214, '0000140000,0000140200,0000140214,', '1', 2, '山西省/大同市/云冈区', '云冈区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140215', '140200', '0,140000,140200,', 140215, '0000140000,0000140200,0000140215,', '1', 2, '山西省/大同市/云州区', '云州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140221', '140200', '0,140000,140200,', 140221, '0000140000,0000140200,0000140221,', '1', 2, '山西省/大同市/阳高县', '阳高县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140222', '140200', '0,140000,140200,', 140222, '0000140000,0000140200,0000140222,', '1', 2, '山西省/大同市/天镇县', '天镇县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140223', '140200', '0,140000,140200,', 140223, '0000140000,0000140200,0000140223,', '1', 2, '山西省/大同市/广灵县', '广灵县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140224', '140200', '0,140000,140200,', 140224, '0000140000,0000140200,0000140224,', '1', 2, '山西省/大同市/灵丘县', '灵丘县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140225', '140200', '0,140000,140200,', 140225, '0000140000,0000140200,0000140225,', '1', 2, '山西省/大同市/浑源县', '浑源县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140226', '140200', '0,140000,140200,', 140226, '0000140000,0000140200,0000140226,', '1', 2, '山西省/大同市/左云县', '左云县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140300', '140000', '0,140000,', 140300, '0000140000,0000140300,', '0', 1, '山西省/阳泉市', '阳泉市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140302', '140300', '0,140000,140300,', 140302, '0000140000,0000140300,0000140302,', '1', 2, '山西省/阳泉市/城区', '城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140303', '140300', '0,140000,140300,', 140303, '0000140000,0000140300,0000140303,', '1', 2, '山西省/阳泉市/矿区', '矿区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140311', '140300', '0,140000,140300,', 140311, '0000140000,0000140300,0000140311,', '1', 2, '山西省/阳泉市/郊区', '郊区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140321', '140300', '0,140000,140300,', 140321, '0000140000,0000140300,0000140321,', '1', 2, '山西省/阳泉市/平定县', '平定县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140322', '140300', '0,140000,140300,', 140322, '0000140000,0000140300,0000140322,', '1', 2, '山西省/阳泉市/盂县', '盂县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140400', '140000', '0,140000,', 140400, '0000140000,0000140400,', '0', 1, '山西省/长治市', '长治市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140403', '140400', '0,140000,140400,', 140403, '0000140000,0000140400,0000140403,', '1', 2, '山西省/长治市/潞州区', '潞州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140404', '140400', '0,140000,140400,', 140404, '0000140000,0000140400,0000140404,', '1', 2, '山西省/长治市/上党区', '上党区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140405', '140400', '0,140000,140400,', 140405, '0000140000,0000140400,0000140405,', '1', 2, '山西省/长治市/屯留区', '屯留区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140406', '140400', '0,140000,140400,', 140406, '0000140000,0000140400,0000140406,', '1', 2, '山西省/长治市/潞城区', '潞城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140423', '140400', '0,140000,140400,', 140423, '0000140000,0000140400,0000140423,', '1', 2, '山西省/长治市/襄垣县', '襄垣县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140425', '140400', '0,140000,140400,', 140425, '0000140000,0000140400,0000140425,', '1', 2, '山西省/长治市/平顺县', '平顺县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140426', '140400', '0,140000,140400,', 140426, '0000140000,0000140400,0000140426,', '1', 2, '山西省/长治市/黎城县', '黎城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140427', '140400', '0,140000,140400,', 140427, '0000140000,0000140400,0000140427,', '1', 2, '山西省/长治市/壶关县', '壶关县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140428', '140400', '0,140000,140400,', 140428, '0000140000,0000140400,0000140428,', '1', 2, '山西省/长治市/长子县', '长子县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140429', '140400', '0,140000,140400,', 140429, '0000140000,0000140400,0000140429,', '1', 2, '山西省/长治市/武乡县', '武乡县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140430', '140400', '0,140000,140400,', 140430, '0000140000,0000140400,0000140430,', '1', 2, '山西省/长治市/沁县', '沁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140431', '140400', '0,140000,140400,', 140431, '0000140000,0000140400,0000140431,', '1', 2, '山西省/长治市/沁源县', '沁源县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140500', '140000', '0,140000,', 140500, '0000140000,0000140500,', '0', 1, '山西省/晋城市', '晋城市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140502', '140500', '0,140000,140500,', 140502, '0000140000,0000140500,0000140502,', '1', 2, '山西省/晋城市/城区', '城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140521', '140500', '0,140000,140500,', 140521, '0000140000,0000140500,0000140521,', '1', 2, '山西省/晋城市/沁水县', '沁水县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140522', '140500', '0,140000,140500,', 140522, '0000140000,0000140500,0000140522,', '1', 2, '山西省/晋城市/阳城县', '阳城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140524', '140500', '0,140000,140500,', 140524, '0000140000,0000140500,0000140524,', '1', 2, '山西省/晋城市/陵川县', '陵川县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140525', '140500', '0,140000,140500,', 140525, '0000140000,0000140500,0000140525,', '1', 2, '山西省/晋城市/泽州县', '泽州县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140581', '140500', '0,140000,140500,', 140581, '0000140000,0000140500,0000140581,', '1', 2, '山西省/晋城市/高平市', '高平市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140600', '140000', '0,140000,', 140600, '0000140000,0000140600,', '0', 1, '山西省/朔州市', '朔州市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140602', '140600', '0,140000,140600,', 140602, '0000140000,0000140600,0000140602,', '1', 2, '山西省/朔州市/朔城区', '朔城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140603', '140600', '0,140000,140600,', 140603, '0000140000,0000140600,0000140603,', '1', 2, '山西省/朔州市/平鲁区', '平鲁区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140621', '140600', '0,140000,140600,', 140621, '0000140000,0000140600,0000140621,', '1', 2, '山西省/朔州市/山阴县', '山阴县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140622', '140600', '0,140000,140600,', 140622, '0000140000,0000140600,0000140622,', '1', 2, '山西省/朔州市/应县', '应县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140623', '140600', '0,140000,140600,', 140623, '0000140000,0000140600,0000140623,', '1', 2, '山西省/朔州市/右玉县', '右玉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140681', '140600', '0,140000,140600,', 140681, '0000140000,0000140600,0000140681,', '1', 2, '山西省/朔州市/怀仁市', '怀仁市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140700', '140000', '0,140000,', 140700, '0000140000,0000140700,', '0', 1, '山西省/晋中市', '晋中市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140702', '140700', '0,140000,140700,', 140702, '0000140000,0000140700,0000140702,', '1', 2, '山西省/晋中市/榆次区', '榆次区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140703', '140700', '0,140000,140700,', 140703, '0000140000,0000140700,0000140703,', '1', 2, '山西省/晋中市/太谷区', '太谷区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140721', '140700', '0,140000,140700,', 140721, '0000140000,0000140700,0000140721,', '1', 2, '山西省/晋中市/榆社县', '榆社县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140722', '140700', '0,140000,140700,', 140722, '0000140000,0000140700,0000140722,', '1', 2, '山西省/晋中市/左权县', '左权县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140723', '140700', '0,140000,140700,', 140723, '0000140000,0000140700,0000140723,', '1', 2, '山西省/晋中市/和顺县', '和顺县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140724', '140700', '0,140000,140700,', 140724, '0000140000,0000140700,0000140724,', '1', 2, '山西省/晋中市/昔阳县', '昔阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140725', '140700', '0,140000,140700,', 140725, '0000140000,0000140700,0000140725,', '1', 2, '山西省/晋中市/寿阳县', '寿阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140727', '140700', '0,140000,140700,', 140727, '0000140000,0000140700,0000140727,', '1', 2, '山西省/晋中市/祁县', '祁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140728', '140700', '0,140000,140700,', 140728, '0000140000,0000140700,0000140728,', '1', 2, '山西省/晋中市/平遥县', '平遥县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140729', '140700', '0,140000,140700,', 140729, '0000140000,0000140700,0000140729,', '1', 2, '山西省/晋中市/灵石县', '灵石县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140781', '140700', '0,140000,140700,', 140781, '0000140000,0000140700,0000140781,', '1', 2, '山西省/晋中市/介休市', '介休市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140800', '140000', '0,140000,', 140800, '0000140000,0000140800,', '0', 1, '山西省/运城市', '运城市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140802', '140800', '0,140000,140800,', 140802, '0000140000,0000140800,0000140802,', '1', 2, '山西省/运城市/盐湖区', '盐湖区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140821', '140800', '0,140000,140800,', 140821, '0000140000,0000140800,0000140821,', '1', 2, '山西省/运城市/临猗县', '临猗县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140822', '140800', '0,140000,140800,', 140822, '0000140000,0000140800,0000140822,', '1', 2, '山西省/运城市/万荣县', '万荣县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140823', '140800', '0,140000,140800,', 140823, '0000140000,0000140800,0000140823,', '1', 2, '山西省/运城市/闻喜县', '闻喜县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140824', '140800', '0,140000,140800,', 140824, '0000140000,0000140800,0000140824,', '1', 2, '山西省/运城市/稷山县', '稷山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140825', '140800', '0,140000,140800,', 140825, '0000140000,0000140800,0000140825,', '1', 2, '山西省/运城市/新绛县', '新绛县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140826', '140800', '0,140000,140800,', 140826, '0000140000,0000140800,0000140826,', '1', 2, '山西省/运城市/绛县', '绛县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140827', '140800', '0,140000,140800,', 140827, '0000140000,0000140800,0000140827,', '1', 2, '山西省/运城市/垣曲县', '垣曲县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140828', '140800', '0,140000,140800,', 140828, '0000140000,0000140800,0000140828,', '1', 2, '山西省/运城市/夏县', '夏县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140829', '140800', '0,140000,140800,', 140829, '0000140000,0000140800,0000140829,', '1', 2, '山西省/运城市/平陆县', '平陆县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140830', '140800', '0,140000,140800,', 140830, '0000140000,0000140800,0000140830,', '1', 2, '山西省/运城市/芮城县', '芮城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140881', '140800', '0,140000,140800,', 140881, '0000140000,0000140800,0000140881,', '1', 2, '山西省/运城市/永济市', '永济市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140882', '140800', '0,140000,140800,', 140882, '0000140000,0000140800,0000140882,', '1', 2, '山西省/运城市/河津市', '河津市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140900', '140000', '0,140000,', 140900, '0000140000,0000140900,', '0', 1, '山西省/忻州市', '忻州市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140902', '140900', '0,140000,140900,', 140902, '0000140000,0000140900,0000140902,', '1', 2, '山西省/忻州市/忻府区', '忻府区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140921', '140900', '0,140000,140900,', 140921, '0000140000,0000140900,0000140921,', '1', 2, '山西省/忻州市/定襄县', '定襄县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140922', '140900', '0,140000,140900,', 140922, '0000140000,0000140900,0000140922,', '1', 2, '山西省/忻州市/五台县', '五台县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140923', '140900', '0,140000,140900,', 140923, '0000140000,0000140900,0000140923,', '1', 2, '山西省/忻州市/代县', '代县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140924', '140900', '0,140000,140900,', 140924, '0000140000,0000140900,0000140924,', '1', 2, '山西省/忻州市/繁峙县', '繁峙县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140925', '140900', '0,140000,140900,', 140925, '0000140000,0000140900,0000140925,', '1', 2, '山西省/忻州市/宁武县', '宁武县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140926', '140900', '0,140000,140900,', 140926, '0000140000,0000140900,0000140926,', '1', 2, '山西省/忻州市/静乐县', '静乐县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140927', '140900', '0,140000,140900,', 140927, '0000140000,0000140900,0000140927,', '1', 2, '山西省/忻州市/神池县', '神池县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140928', '140900', '0,140000,140900,', 140928, '0000140000,0000140900,0000140928,', '1', 2, '山西省/忻州市/五寨县', '五寨县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140929', '140900', '0,140000,140900,', 140929, '0000140000,0000140900,0000140929,', '1', 2, '山西省/忻州市/岢岚县', '岢岚县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140930', '140900', '0,140000,140900,', 140930, '0000140000,0000140900,0000140930,', '1', 2, '山西省/忻州市/河曲县', '河曲县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140931', '140900', '0,140000,140900,', 140931, '0000140000,0000140900,0000140931,', '1', 2, '山西省/忻州市/保德县', '保德县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140932', '140900', '0,140000,140900,', 140932, '0000140000,0000140900,0000140932,', '1', 2, '山西省/忻州市/偏关县', '偏关县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('140981', '140900', '0,140000,140900,', 140981, '0000140000,0000140900,0000140981,', '1', 2, '山西省/忻州市/原平市', '原平市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141000', '140000', '0,140000,', 141000, '0000140000,0000141000,', '0', 1, '山西省/临汾市', '临汾市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141002', '141000', '0,140000,141000,', 141002, '0000140000,0000141000,0000141002,', '1', 2, '山西省/临汾市/尧都区', '尧都区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141021', '141000', '0,140000,141000,', 141021, '0000140000,0000141000,0000141021,', '1', 2, '山西省/临汾市/曲沃县', '曲沃县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141022', '141000', '0,140000,141000,', 141022, '0000140000,0000141000,0000141022,', '1', 2, '山西省/临汾市/翼城县', '翼城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141023', '141000', '0,140000,141000,', 141023, '0000140000,0000141000,0000141023,', '1', 2, '山西省/临汾市/襄汾县', '襄汾县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141024', '141000', '0,140000,141000,', 141024, '0000140000,0000141000,0000141024,', '1', 2, '山西省/临汾市/洪洞县', '洪洞县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141025', '141000', '0,140000,141000,', 141025, '0000140000,0000141000,0000141025,', '1', 2, '山西省/临汾市/古县', '古县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141026', '141000', '0,140000,141000,', 141026, '0000140000,0000141000,0000141026,', '1', 2, '山西省/临汾市/安泽县', '安泽县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141027', '141000', '0,140000,141000,', 141027, '0000140000,0000141000,0000141027,', '1', 2, '山西省/临汾市/浮山县', '浮山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141028', '141000', '0,140000,141000,', 141028, '0000140000,0000141000,0000141028,', '1', 2, '山西省/临汾市/吉县', '吉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141029', '141000', '0,140000,141000,', 141029, '0000140000,0000141000,0000141029,', '1', 2, '山西省/临汾市/乡宁县', '乡宁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141030', '141000', '0,140000,141000,', 141030, '0000140000,0000141000,0000141030,', '1', 2, '山西省/临汾市/大宁县', '大宁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141031', '141000', '0,140000,141000,', 141031, '0000140000,0000141000,0000141031,', '1', 2, '山西省/临汾市/隰县', '隰县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141032', '141000', '0,140000,141000,', 141032, '0000140000,0000141000,0000141032,', '1', 2, '山西省/临汾市/永和县', '永和县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141033', '141000', '0,140000,141000,', 141033, '0000140000,0000141000,0000141033,', '1', 2, '山西省/临汾市/蒲县', '蒲县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141034', '141000', '0,140000,141000,', 141034, '0000140000,0000141000,0000141034,', '1', 2, '山西省/临汾市/汾西县', '汾西县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141081', '141000', '0,140000,141000,', 141081, '0000140000,0000141000,0000141081,', '1', 2, '山西省/临汾市/侯马市', '侯马市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141082', '141000', '0,140000,141000,', 141082, '0000140000,0000141000,0000141082,', '1', 2, '山西省/临汾市/霍州市', '霍州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141100', '140000', '0,140000,', 141100, '0000140000,0000141100,', '0', 1, '山西省/吕梁市', '吕梁市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141102', '141100', '0,140000,141100,', 141102, '0000140000,0000141100,0000141102,', '1', 2, '山西省/吕梁市/离石区', '离石区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141121', '141100', '0,140000,141100,', 141121, '0000140000,0000141100,0000141121,', '1', 2, '山西省/吕梁市/文水县', '文水县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141122', '141100', '0,140000,141100,', 141122, '0000140000,0000141100,0000141122,', '1', 2, '山西省/吕梁市/交城县', '交城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141123', '141100', '0,140000,141100,', 141123, '0000140000,0000141100,0000141123,', '1', 2, '山西省/吕梁市/兴县', '兴县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141124', '141100', '0,140000,141100,', 141124, '0000140000,0000141100,0000141124,', '1', 2, '山西省/吕梁市/临县', '临县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141125', '141100', '0,140000,141100,', 141125, '0000140000,0000141100,0000141125,', '1', 2, '山西省/吕梁市/柳林县', '柳林县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141126', '141100', '0,140000,141100,', 141126, '0000140000,0000141100,0000141126,', '1', 2, '山西省/吕梁市/石楼县', '石楼县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141127', '141100', '0,140000,141100,', 141127, '0000140000,0000141100,0000141127,', '1', 2, '山西省/吕梁市/岚县', '岚县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141128', '141100', '0,140000,141100,', 141128, '0000140000,0000141100,0000141128,', '1', 2, '山西省/吕梁市/方山县', '方山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141129', '141100', '0,140000,141100,', 141129, '0000140000,0000141100,0000141129,', '1', 2, '山西省/吕梁市/中阳县', '中阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141130', '141100', '0,140000,141100,', 141130, '0000140000,0000141100,0000141130,', '1', 2, '山西省/吕梁市/交口县', '交口县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141181', '141100', '0,140000,141100,', 141181, '0000140000,0000141100,0000141181,', '1', 2, '山西省/吕梁市/孝义市', '孝义市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('141182', '141100', '0,140000,141100,', 141182, '0000140000,0000141100,0000141182,', '1', 2, '山西省/吕梁市/汾阳市', '汾阳市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150000', '0', '0,', 150000, '0000150000,', '0', 0, '内蒙古自治区', '内蒙古自治区', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150100', '150000', '0,150000,', 150100, '0000150000,0000150100,', '0', 1, '内蒙古自治区/呼和浩特市', '呼和浩特市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150102', '150100', '0,150000,150100,', 150102, '0000150000,0000150100,0000150102,', '1', 2, '内蒙古自治区/呼和浩特市/新城区', '新城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150103', '150100', '0,150000,150100,', 150103, '0000150000,0000150100,0000150103,', '1', 2, '内蒙古自治区/呼和浩特市/回民区', '回民区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150104', '150100', '0,150000,150100,', 150104, '0000150000,0000150100,0000150104,', '1', 2, '内蒙古自治区/呼和浩特市/玉泉区', '玉泉区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150105', '150100', '0,150000,150100,', 150105, '0000150000,0000150100,0000150105,', '1', 2, '内蒙古自治区/呼和浩特市/赛罕区', '赛罕区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150121', '150100', '0,150000,150100,', 150121, '0000150000,0000150100,0000150121,', '1', 2, '内蒙古自治区/呼和浩特市/土默特左旗', '土默特左旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150122', '150100', '0,150000,150100,', 150122, '0000150000,0000150100,0000150122,', '1', 2, '内蒙古自治区/呼和浩特市/托克托县', '托克托县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150123', '150100', '0,150000,150100,', 150123, '0000150000,0000150100,0000150123,', '1', 2, '内蒙古自治区/呼和浩特市/和林格尔县', '和林格尔县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150124', '150100', '0,150000,150100,', 150124, '0000150000,0000150100,0000150124,', '1', 2, '内蒙古自治区/呼和浩特市/清水河县', '清水河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150125', '150100', '0,150000,150100,', 150125, '0000150000,0000150100,0000150125,', '1', 2, '内蒙古自治区/呼和浩特市/武川县', '武川县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150200', '150000', '0,150000,', 150200, '0000150000,0000150200,', '0', 1, '内蒙古自治区/包头市', '包头市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150202', '150200', '0,150000,150200,', 150202, '0000150000,0000150200,0000150202,', '1', 2, '内蒙古自治区/包头市/东河区', '东河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150203', '150200', '0,150000,150200,', 150203, '0000150000,0000150200,0000150203,', '1', 2, '内蒙古自治区/包头市/昆都仑区', '昆都仑区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150204', '150200', '0,150000,150200,', 150204, '0000150000,0000150200,0000150204,', '1', 2, '内蒙古自治区/包头市/青山区', '青山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150205', '150200', '0,150000,150200,', 150205, '0000150000,0000150200,0000150205,', '1', 2, '内蒙古自治区/包头市/石拐区', '石拐区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150206', '150200', '0,150000,150200,', 150206, '0000150000,0000150200,0000150206,', '1', 2, '内蒙古自治区/包头市/白云鄂博矿区', '白云鄂博矿区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150207', '150200', '0,150000,150200,', 150207, '0000150000,0000150200,0000150207,', '1', 2, '内蒙古自治区/包头市/九原区', '九原区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150221', '150200', '0,150000,150200,', 150221, '0000150000,0000150200,0000150221,', '1', 2, '内蒙古自治区/包头市/土默特右旗', '土默特右旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150222', '150200', '0,150000,150200,', 150222, '0000150000,0000150200,0000150222,', '1', 2, '内蒙古自治区/包头市/固阳县', '固阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150223', '150200', '0,150000,150200,', 150223, '0000150000,0000150200,0000150223,', '1', 2, '内蒙古自治区/包头市/达尔罕茂明安联合旗', '达尔罕茂明安联合旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150300', '150000', '0,150000,', 150300, '0000150000,0000150300,', '0', 1, '内蒙古自治区/乌海市', '乌海市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150302', '150300', '0,150000,150300,', 150302, '0000150000,0000150300,0000150302,', '1', 2, '内蒙古自治区/乌海市/海勃湾区', '海勃湾区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150303', '150300', '0,150000,150300,', 150303, '0000150000,0000150300,0000150303,', '1', 2, '内蒙古自治区/乌海市/海南区', '海南区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150304', '150300', '0,150000,150300,', 150304, '0000150000,0000150300,0000150304,', '1', 2, '内蒙古自治区/乌海市/乌达区', '乌达区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150400', '150000', '0,150000,', 150400, '0000150000,0000150400,', '0', 1, '内蒙古自治区/赤峰市', '赤峰市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150402', '150400', '0,150000,150400,', 150402, '0000150000,0000150400,0000150402,', '1', 2, '内蒙古自治区/赤峰市/红山区', '红山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150403', '150400', '0,150000,150400,', 150403, '0000150000,0000150400,0000150403,', '1', 2, '内蒙古自治区/赤峰市/元宝山区', '元宝山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150404', '150400', '0,150000,150400,', 150404, '0000150000,0000150400,0000150404,', '1', 2, '内蒙古自治区/赤峰市/松山区', '松山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150421', '150400', '0,150000,150400,', 150421, '0000150000,0000150400,0000150421,', '1', 2, '内蒙古自治区/赤峰市/阿鲁科尔沁旗', '阿鲁科尔沁旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150422', '150400', '0,150000,150400,', 150422, '0000150000,0000150400,0000150422,', '1', 2, '内蒙古自治区/赤峰市/巴林左旗', '巴林左旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150423', '150400', '0,150000,150400,', 150423, '0000150000,0000150400,0000150423,', '1', 2, '内蒙古自治区/赤峰市/巴林右旗', '巴林右旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150424', '150400', '0,150000,150400,', 150424, '0000150000,0000150400,0000150424,', '1', 2, '内蒙古自治区/赤峰市/林西县', '林西县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150425', '150400', '0,150000,150400,', 150425, '0000150000,0000150400,0000150425,', '1', 2, '内蒙古自治区/赤峰市/克什克腾旗', '克什克腾旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150426', '150400', '0,150000,150400,', 150426, '0000150000,0000150400,0000150426,', '1', 2, '内蒙古自治区/赤峰市/翁牛特旗', '翁牛特旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150428', '150400', '0,150000,150400,', 150428, '0000150000,0000150400,0000150428,', '1', 2, '内蒙古自治区/赤峰市/喀喇沁旗', '喀喇沁旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150429', '150400', '0,150000,150400,', 150429, '0000150000,0000150400,0000150429,', '1', 2, '内蒙古自治区/赤峰市/宁城县', '宁城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150430', '150400', '0,150000,150400,', 150430, '0000150000,0000150400,0000150430,', '1', 2, '内蒙古自治区/赤峰市/敖汉旗', '敖汉旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150500', '150000', '0,150000,', 150500, '0000150000,0000150500,', '0', 1, '内蒙古自治区/通辽市', '通辽市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150502', '150500', '0,150000,150500,', 150502, '0000150000,0000150500,0000150502,', '1', 2, '内蒙古自治区/通辽市/科尔沁区', '科尔沁区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150521', '150500', '0,150000,150500,', 150521, '0000150000,0000150500,0000150521,', '1', 2, '内蒙古自治区/通辽市/科尔沁左翼中旗', '科尔沁左翼中旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150522', '150500', '0,150000,150500,', 150522, '0000150000,0000150500,0000150522,', '1', 2, '内蒙古自治区/通辽市/科尔沁左翼后旗', '科尔沁左翼后旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150523', '150500', '0,150000,150500,', 150523, '0000150000,0000150500,0000150523,', '1', 2, '内蒙古自治区/通辽市/开鲁县', '开鲁县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150524', '150500', '0,150000,150500,', 150524, '0000150000,0000150500,0000150524,', '1', 2, '内蒙古自治区/通辽市/库伦旗', '库伦旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150525', '150500', '0,150000,150500,', 150525, '0000150000,0000150500,0000150525,', '1', 2, '内蒙古自治区/通辽市/奈曼旗', '奈曼旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150526', '150500', '0,150000,150500,', 150526, '0000150000,0000150500,0000150526,', '1', 2, '内蒙古自治区/通辽市/扎鲁特旗', '扎鲁特旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150581', '150500', '0,150000,150500,', 150581, '0000150000,0000150500,0000150581,', '1', 2, '内蒙古自治区/通辽市/霍林郭勒市', '霍林郭勒市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150600', '150000', '0,150000,', 150600, '0000150000,0000150600,', '0', 1, '内蒙古自治区/鄂尔多斯市', '鄂尔多斯市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150602', '150600', '0,150000,150600,', 150602, '0000150000,0000150600,0000150602,', '1', 2, '内蒙古自治区/鄂尔多斯市/东胜区', '东胜区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150603', '150600', '0,150000,150600,', 150603, '0000150000,0000150600,0000150603,', '1', 2, '内蒙古自治区/鄂尔多斯市/康巴什区', '康巴什区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150621', '150600', '0,150000,150600,', 150621, '0000150000,0000150600,0000150621,', '1', 2, '内蒙古自治区/鄂尔多斯市/达拉特旗', '达拉特旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150622', '150600', '0,150000,150600,', 150622, '0000150000,0000150600,0000150622,', '1', 2, '内蒙古自治区/鄂尔多斯市/准格尔旗', '准格尔旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150623', '150600', '0,150000,150600,', 150623, '0000150000,0000150600,0000150623,', '1', 2, '内蒙古自治区/鄂尔多斯市/鄂托克前旗', '鄂托克前旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150624', '150600', '0,150000,150600,', 150624, '0000150000,0000150600,0000150624,', '1', 2, '内蒙古自治区/鄂尔多斯市/鄂托克旗', '鄂托克旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150625', '150600', '0,150000,150600,', 150625, '0000150000,0000150600,0000150625,', '1', 2, '内蒙古自治区/鄂尔多斯市/杭锦旗', '杭锦旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150626', '150600', '0,150000,150600,', 150626, '0000150000,0000150600,0000150626,', '1', 2, '内蒙古自治区/鄂尔多斯市/乌审旗', '乌审旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150627', '150600', '0,150000,150600,', 150627, '0000150000,0000150600,0000150627,', '1', 2, '内蒙古自治区/鄂尔多斯市/伊金霍洛旗', '伊金霍洛旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150700', '150000', '0,150000,', 150700, '0000150000,0000150700,', '0', 1, '内蒙古自治区/呼伦贝尔市', '呼伦贝尔市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150702', '150700', '0,150000,150700,', 150702, '0000150000,0000150700,0000150702,', '1', 2, '内蒙古自治区/呼伦贝尔市/海拉尔区', '海拉尔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150703', '150700', '0,150000,150700,', 150703, '0000150000,0000150700,0000150703,', '1', 2, '内蒙古自治区/呼伦贝尔市/扎赉诺尔区', '扎赉诺尔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150721', '150700', '0,150000,150700,', 150721, '0000150000,0000150700,0000150721,', '1', 2, '内蒙古自治区/呼伦贝尔市/阿荣旗', '阿荣旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150722', '150700', '0,150000,150700,', 150722, '0000150000,0000150700,0000150722,', '1', 2, '内蒙古自治区/呼伦贝尔市/莫力达瓦达斡尔族自治旗', '莫力达瓦达斡尔族自治旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150723', '150700', '0,150000,150700,', 150723, '0000150000,0000150700,0000150723,', '1', 2, '内蒙古自治区/呼伦贝尔市/鄂伦春自治旗', '鄂伦春自治旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150724', '150700', '0,150000,150700,', 150724, '0000150000,0000150700,0000150724,', '1', 2, '内蒙古自治区/呼伦贝尔市/鄂温克族自治旗', '鄂温克族自治旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150725', '150700', '0,150000,150700,', 150725, '0000150000,0000150700,0000150725,', '1', 2, '内蒙古自治区/呼伦贝尔市/陈巴尔虎旗', '陈巴尔虎旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150726', '150700', '0,150000,150700,', 150726, '0000150000,0000150700,0000150726,', '1', 2, '内蒙古自治区/呼伦贝尔市/新巴尔虎左旗', '新巴尔虎左旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150727', '150700', '0,150000,150700,', 150727, '0000150000,0000150700,0000150727,', '1', 2, '内蒙古自治区/呼伦贝尔市/新巴尔虎右旗', '新巴尔虎右旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150781', '150700', '0,150000,150700,', 150781, '0000150000,0000150700,0000150781,', '1', 2, '内蒙古自治区/呼伦贝尔市/满洲里市', '满洲里市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150782', '150700', '0,150000,150700,', 150782, '0000150000,0000150700,0000150782,', '1', 2, '内蒙古自治区/呼伦贝尔市/牙克石市', '牙克石市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150783', '150700', '0,150000,150700,', 150783, '0000150000,0000150700,0000150783,', '1', 2, '内蒙古自治区/呼伦贝尔市/扎兰屯市', '扎兰屯市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150784', '150700', '0,150000,150700,', 150784, '0000150000,0000150700,0000150784,', '1', 2, '内蒙古自治区/呼伦贝尔市/额尔古纳市', '额尔古纳市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150785', '150700', '0,150000,150700,', 150785, '0000150000,0000150700,0000150785,', '1', 2, '内蒙古自治区/呼伦贝尔市/根河市', '根河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150800', '150000', '0,150000,', 150800, '0000150000,0000150800,', '0', 1, '内蒙古自治区/巴彦淖尔市', '巴彦淖尔市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150802', '150800', '0,150000,150800,', 150802, '0000150000,0000150800,0000150802,', '1', 2, '内蒙古自治区/巴彦淖尔市/临河区', '临河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150821', '150800', '0,150000,150800,', 150821, '0000150000,0000150800,0000150821,', '1', 2, '内蒙古自治区/巴彦淖尔市/五原县', '五原县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150822', '150800', '0,150000,150800,', 150822, '0000150000,0000150800,0000150822,', '1', 2, '内蒙古自治区/巴彦淖尔市/磴口县', '磴口县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150823', '150800', '0,150000,150800,', 150823, '0000150000,0000150800,0000150823,', '1', 2, '内蒙古自治区/巴彦淖尔市/乌拉特前旗', '乌拉特前旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150824', '150800', '0,150000,150800,', 150824, '0000150000,0000150800,0000150824,', '1', 2, '内蒙古自治区/巴彦淖尔市/乌拉特中旗', '乌拉特中旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150825', '150800', '0,150000,150800,', 150825, '0000150000,0000150800,0000150825,', '1', 2, '内蒙古自治区/巴彦淖尔市/乌拉特后旗', '乌拉特后旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150826', '150800', '0,150000,150800,', 150826, '0000150000,0000150800,0000150826,', '1', 2, '内蒙古自治区/巴彦淖尔市/杭锦后旗', '杭锦后旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150900', '150000', '0,150000,', 150900, '0000150000,0000150900,', '0', 1, '内蒙古自治区/乌兰察布市', '乌兰察布市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150902', '150900', '0,150000,150900,', 150902, '0000150000,0000150900,0000150902,', '1', 2, '内蒙古自治区/乌兰察布市/集宁区', '集宁区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150921', '150900', '0,150000,150900,', 150921, '0000150000,0000150900,0000150921,', '1', 2, '内蒙古自治区/乌兰察布市/卓资县', '卓资县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150922', '150900', '0,150000,150900,', 150922, '0000150000,0000150900,0000150922,', '1', 2, '内蒙古自治区/乌兰察布市/化德县', '化德县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150923', '150900', '0,150000,150900,', 150923, '0000150000,0000150900,0000150923,', '1', 2, '内蒙古自治区/乌兰察布市/商都县', '商都县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150924', '150900', '0,150000,150900,', 150924, '0000150000,0000150900,0000150924,', '1', 2, '内蒙古自治区/乌兰察布市/兴和县', '兴和县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150925', '150900', '0,150000,150900,', 150925, '0000150000,0000150900,0000150925,', '1', 2, '内蒙古自治区/乌兰察布市/凉城县', '凉城县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150926', '150900', '0,150000,150900,', 150926, '0000150000,0000150900,0000150926,', '1', 2, '内蒙古自治区/乌兰察布市/察哈尔右翼前旗', '察哈尔右翼前旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150927', '150900', '0,150000,150900,', 150927, '0000150000,0000150900,0000150927,', '1', 2, '内蒙古自治区/乌兰察布市/察哈尔右翼中旗', '察哈尔右翼中旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150928', '150900', '0,150000,150900,', 150928, '0000150000,0000150900,0000150928,', '1', 2, '内蒙古自治区/乌兰察布市/察哈尔右翼后旗', '察哈尔右翼后旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150929', '150900', '0,150000,150900,', 150929, '0000150000,0000150900,0000150929,', '1', 2, '内蒙古自治区/乌兰察布市/四子王旗', '四子王旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('150981', '150900', '0,150000,150900,', 150981, '0000150000,0000150900,0000150981,', '1', 2, '内蒙古自治区/乌兰察布市/丰镇市', '丰镇市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152200', '150000', '0,150000,', 152200, '0000150000,0000152200,', '0', 1, '内蒙古自治区/兴安盟', '兴安盟', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152201', '152200', '0,150000,152200,', 152201, '0000150000,0000152200,0000152201,', '1', 2, '内蒙古自治区/兴安盟/乌兰浩特市', '乌兰浩特市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152202', '152200', '0,150000,152200,', 152202, '0000150000,0000152200,0000152202,', '1', 2, '内蒙古自治区/兴安盟/阿尔山市', '阿尔山市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152221', '152200', '0,150000,152200,', 152221, '0000150000,0000152200,0000152221,', '1', 2, '内蒙古自治区/兴安盟/科尔沁右翼前旗', '科尔沁右翼前旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152222', '152200', '0,150000,152200,', 152222, '0000150000,0000152200,0000152222,', '1', 2, '内蒙古自治区/兴安盟/科尔沁右翼中旗', '科尔沁右翼中旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152223', '152200', '0,150000,152200,', 152223, '0000150000,0000152200,0000152223,', '1', 2, '内蒙古自治区/兴安盟/扎赉特旗', '扎赉特旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152224', '152200', '0,150000,152200,', 152224, '0000150000,0000152200,0000152224,', '1', 2, '内蒙古自治区/兴安盟/突泉县', '突泉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152500', '150000', '0,150000,', 152500, '0000150000,0000152500,', '0', 1, '内蒙古自治区/锡林郭勒盟', '锡林郭勒盟', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152501', '152500', '0,150000,152500,', 152501, '0000150000,0000152500,0000152501,', '1', 2, '内蒙古自治区/锡林郭勒盟/二连浩特市', '二连浩特市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152502', '152500', '0,150000,152500,', 152502, '0000150000,0000152500,0000152502,', '1', 2, '内蒙古自治区/锡林郭勒盟/锡林浩特市', '锡林浩特市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152522', '152500', '0,150000,152500,', 152522, '0000150000,0000152500,0000152522,', '1', 2, '内蒙古自治区/锡林郭勒盟/阿巴嘎旗', '阿巴嘎旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152523', '152500', '0,150000,152500,', 152523, '0000150000,0000152500,0000152523,', '1', 2, '内蒙古自治区/锡林郭勒盟/苏尼特左旗', '苏尼特左旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152524', '152500', '0,150000,152500,', 152524, '0000150000,0000152500,0000152524,', '1', 2, '内蒙古自治区/锡林郭勒盟/苏尼特右旗', '苏尼特右旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152525', '152500', '0,150000,152500,', 152525, '0000150000,0000152500,0000152525,', '1', 2, '内蒙古自治区/锡林郭勒盟/东乌珠穆沁旗', '东乌珠穆沁旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152526', '152500', '0,150000,152500,', 152526, '0000150000,0000152500,0000152526,', '1', 2, '内蒙古自治区/锡林郭勒盟/西乌珠穆沁旗', '西乌珠穆沁旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152527', '152500', '0,150000,152500,', 152527, '0000150000,0000152500,0000152527,', '1', 2, '内蒙古自治区/锡林郭勒盟/太仆寺旗', '太仆寺旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152528', '152500', '0,150000,152500,', 152528, '0000150000,0000152500,0000152528,', '1', 2, '内蒙古自治区/锡林郭勒盟/镶黄旗', '镶黄旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152529', '152500', '0,150000,152500,', 152529, '0000150000,0000152500,0000152529,', '1', 2, '内蒙古自治区/锡林郭勒盟/正镶白旗', '正镶白旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152530', '152500', '0,150000,152500,', 152530, '0000150000,0000152500,0000152530,', '1', 2, '内蒙古自治区/锡林郭勒盟/正蓝旗', '正蓝旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152531', '152500', '0,150000,152500,', 152531, '0000150000,0000152500,0000152531,', '1', 2, '内蒙古自治区/锡林郭勒盟/多伦县', '多伦县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152900', '150000', '0,150000,', 152900, '0000150000,0000152900,', '0', 1, '内蒙古自治区/阿拉善盟', '阿拉善盟', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152921', '152900', '0,150000,152900,', 152921, '0000150000,0000152900,0000152921,', '1', 2, '内蒙古自治区/阿拉善盟/阿拉善左旗', '阿拉善左旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152922', '152900', '0,150000,152900,', 152922, '0000150000,0000152900,0000152922,', '1', 2, '内蒙古自治区/阿拉善盟/阿拉善右旗', '阿拉善右旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('152923', '152900', '0,150000,152900,', 152923, '0000150000,0000152900,0000152923,', '1', 2, '内蒙古自治区/阿拉善盟/额济纳旗', '额济纳旗', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210000', '0', '0,', 210000, '0000210000,', '0', 0, '辽宁省', '辽宁省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210100', '210000', '0,210000,', 210100, '0000210000,0000210100,', '0', 1, '辽宁省/沈阳市', '沈阳市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210102', '210100', '0,210000,210100,', 210102, '0000210000,0000210100,0000210102,', '1', 2, '辽宁省/沈阳市/和平区', '和平区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210103', '210100', '0,210000,210100,', 210103, '0000210000,0000210100,0000210103,', '1', 2, '辽宁省/沈阳市/沈河区', '沈河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210104', '210100', '0,210000,210100,', 210104, '0000210000,0000210100,0000210104,', '1', 2, '辽宁省/沈阳市/大东区', '大东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210105', '210100', '0,210000,210100,', 210105, '0000210000,0000210100,0000210105,', '1', 2, '辽宁省/沈阳市/皇姑区', '皇姑区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210106', '210100', '0,210000,210100,', 210106, '0000210000,0000210100,0000210106,', '1', 2, '辽宁省/沈阳市/铁西区', '铁西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210111', '210100', '0,210000,210100,', 210111, '0000210000,0000210100,0000210111,', '1', 2, '辽宁省/沈阳市/苏家屯区', '苏家屯区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210112', '210100', '0,210000,210100,', 210112, '0000210000,0000210100,0000210112,', '1', 2, '辽宁省/沈阳市/浑南区', '浑南区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210113', '210100', '0,210000,210100,', 210113, '0000210000,0000210100,0000210113,', '1', 2, '辽宁省/沈阳市/沈北新区', '沈北新区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210114', '210100', '0,210000,210100,', 210114, '0000210000,0000210100,0000210114,', '1', 2, '辽宁省/沈阳市/于洪区', '于洪区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210115', '210100', '0,210000,210100,', 210115, '0000210000,0000210100,0000210115,', '1', 2, '辽宁省/沈阳市/辽中区', '辽中区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210123', '210100', '0,210000,210100,', 210123, '0000210000,0000210100,0000210123,', '1', 2, '辽宁省/沈阳市/康平县', '康平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210124', '210100', '0,210000,210100,', 210124, '0000210000,0000210100,0000210124,', '1', 2, '辽宁省/沈阳市/法库县', '法库县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210181', '210100', '0,210000,210100,', 210181, '0000210000,0000210100,0000210181,', '1', 2, '辽宁省/沈阳市/新民市', '新民市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210200', '210000', '0,210000,', 210200, '0000210000,0000210200,', '0', 1, '辽宁省/大连市', '大连市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210202', '210200', '0,210000,210200,', 210202, '0000210000,0000210200,0000210202,', '1', 2, '辽宁省/大连市/中山区', '中山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210203', '210200', '0,210000,210200,', 210203, '0000210000,0000210200,0000210203,', '1', 2, '辽宁省/大连市/西岗区', '西岗区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210204', '210200', '0,210000,210200,', 210204, '0000210000,0000210200,0000210204,', '1', 2, '辽宁省/大连市/沙河口区', '沙河口区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210211', '210200', '0,210000,210200,', 210211, '0000210000,0000210200,0000210211,', '1', 2, '辽宁省/大连市/甘井子区', '甘井子区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210212', '210200', '0,210000,210200,', 210212, '0000210000,0000210200,0000210212,', '1', 2, '辽宁省/大连市/旅顺口区', '旅顺口区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210213', '210200', '0,210000,210200,', 210213, '0000210000,0000210200,0000210213,', '1', 2, '辽宁省/大连市/金州区', '金州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210214', '210200', '0,210000,210200,', 210214, '0000210000,0000210200,0000210214,', '1', 2, '辽宁省/大连市/普兰店区', '普兰店区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210224', '210200', '0,210000,210200,', 210224, '0000210000,0000210200,0000210224,', '1', 2, '辽宁省/大连市/长海县', '长海县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210281', '210200', '0,210000,210200,', 210281, '0000210000,0000210200,0000210281,', '1', 2, '辽宁省/大连市/瓦房店市', '瓦房店市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210283', '210200', '0,210000,210200,', 210283, '0000210000,0000210200,0000210283,', '1', 2, '辽宁省/大连市/庄河市', '庄河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210300', '210000', '0,210000,', 210300, '0000210000,0000210300,', '0', 1, '辽宁省/鞍山市', '鞍山市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210302', '210300', '0,210000,210300,', 210302, '0000210000,0000210300,0000210302,', '1', 2, '辽宁省/鞍山市/铁东区', '铁东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210303', '210300', '0,210000,210300,', 210303, '0000210000,0000210300,0000210303,', '1', 2, '辽宁省/鞍山市/铁西区', '铁西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210304', '210300', '0,210000,210300,', 210304, '0000210000,0000210300,0000210304,', '1', 2, '辽宁省/鞍山市/立山区', '立山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210311', '210300', '0,210000,210300,', 210311, '0000210000,0000210300,0000210311,', '1', 2, '辽宁省/鞍山市/千山区', '千山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210321', '210300', '0,210000,210300,', 210321, '0000210000,0000210300,0000210321,', '1', 2, '辽宁省/鞍山市/台安县', '台安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210323', '210300', '0,210000,210300,', 210323, '0000210000,0000210300,0000210323,', '1', 2, '辽宁省/鞍山市/岫岩满族自治县', '岫岩满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210381', '210300', '0,210000,210300,', 210381, '0000210000,0000210300,0000210381,', '1', 2, '辽宁省/鞍山市/海城市', '海城市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210400', '210000', '0,210000,', 210400, '0000210000,0000210400,', '0', 1, '辽宁省/抚顺市', '抚顺市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210402', '210400', '0,210000,210400,', 210402, '0000210000,0000210400,0000210402,', '1', 2, '辽宁省/抚顺市/新抚区', '新抚区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210403', '210400', '0,210000,210400,', 210403, '0000210000,0000210400,0000210403,', '1', 2, '辽宁省/抚顺市/东洲区', '东洲区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210404', '210400', '0,210000,210400,', 210404, '0000210000,0000210400,0000210404,', '1', 2, '辽宁省/抚顺市/望花区', '望花区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210411', '210400', '0,210000,210400,', 210411, '0000210000,0000210400,0000210411,', '1', 2, '辽宁省/抚顺市/顺城区', '顺城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210421', '210400', '0,210000,210400,', 210421, '0000210000,0000210400,0000210421,', '1', 2, '辽宁省/抚顺市/抚顺县', '抚顺县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210422', '210400', '0,210000,210400,', 210422, '0000210000,0000210400,0000210422,', '1', 2, '辽宁省/抚顺市/新宾满族自治县', '新宾满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210423', '210400', '0,210000,210400,', 210423, '0000210000,0000210400,0000210423,', '1', 2, '辽宁省/抚顺市/清原满族自治县', '清原满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210500', '210000', '0,210000,', 210500, '0000210000,0000210500,', '0', 1, '辽宁省/本溪市', '本溪市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210502', '210500', '0,210000,210500,', 210502, '0000210000,0000210500,0000210502,', '1', 2, '辽宁省/本溪市/平山区', '平山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210503', '210500', '0,210000,210500,', 210503, '0000210000,0000210500,0000210503,', '1', 2, '辽宁省/本溪市/溪湖区', '溪湖区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210504', '210500', '0,210000,210500,', 210504, '0000210000,0000210500,0000210504,', '1', 2, '辽宁省/本溪市/明山区', '明山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210505', '210500', '0,210000,210500,', 210505, '0000210000,0000210500,0000210505,', '1', 2, '辽宁省/本溪市/南芬区', '南芬区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210521', '210500', '0,210000,210500,', 210521, '0000210000,0000210500,0000210521,', '1', 2, '辽宁省/本溪市/本溪满族自治县', '本溪满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210522', '210500', '0,210000,210500,', 210522, '0000210000,0000210500,0000210522,', '1', 2, '辽宁省/本溪市/桓仁满族自治县', '桓仁满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210600', '210000', '0,210000,', 210600, '0000210000,0000210600,', '0', 1, '辽宁省/丹东市', '丹东市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210602', '210600', '0,210000,210600,', 210602, '0000210000,0000210600,0000210602,', '1', 2, '辽宁省/丹东市/元宝区', '元宝区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210603', '210600', '0,210000,210600,', 210603, '0000210000,0000210600,0000210603,', '1', 2, '辽宁省/丹东市/振兴区', '振兴区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210604', '210600', '0,210000,210600,', 210604, '0000210000,0000210600,0000210604,', '1', 2, '辽宁省/丹东市/振安区', '振安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210624', '210600', '0,210000,210600,', 210624, '0000210000,0000210600,0000210624,', '1', 2, '辽宁省/丹东市/宽甸满族自治县', '宽甸满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210681', '210600', '0,210000,210600,', 210681, '0000210000,0000210600,0000210681,', '1', 2, '辽宁省/丹东市/东港市', '东港市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210682', '210600', '0,210000,210600,', 210682, '0000210000,0000210600,0000210682,', '1', 2, '辽宁省/丹东市/凤城市', '凤城市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210700', '210000', '0,210000,', 210700, '0000210000,0000210700,', '0', 1, '辽宁省/锦州市', '锦州市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210702', '210700', '0,210000,210700,', 210702, '0000210000,0000210700,0000210702,', '1', 2, '辽宁省/锦州市/古塔区', '古塔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210703', '210700', '0,210000,210700,', 210703, '0000210000,0000210700,0000210703,', '1', 2, '辽宁省/锦州市/凌河区', '凌河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210711', '210700', '0,210000,210700,', 210711, '0000210000,0000210700,0000210711,', '1', 2, '辽宁省/锦州市/太和区', '太和区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210726', '210700', '0,210000,210700,', 210726, '0000210000,0000210700,0000210726,', '1', 2, '辽宁省/锦州市/黑山县', '黑山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210727', '210700', '0,210000,210700,', 210727, '0000210000,0000210700,0000210727,', '1', 2, '辽宁省/锦州市/义县', '义县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210781', '210700', '0,210000,210700,', 210781, '0000210000,0000210700,0000210781,', '1', 2, '辽宁省/锦州市/凌海市', '凌海市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210782', '210700', '0,210000,210700,', 210782, '0000210000,0000210700,0000210782,', '1', 2, '辽宁省/锦州市/北镇市', '北镇市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210800', '210000', '0,210000,', 210800, '0000210000,0000210800,', '0', 1, '辽宁省/营口市', '营口市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210802', '210800', '0,210000,210800,', 210802, '0000210000,0000210800,0000210802,', '1', 2, '辽宁省/营口市/站前区', '站前区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210803', '210800', '0,210000,210800,', 210803, '0000210000,0000210800,0000210803,', '1', 2, '辽宁省/营口市/西市区', '西市区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210804', '210800', '0,210000,210800,', 210804, '0000210000,0000210800,0000210804,', '1', 2, '辽宁省/营口市/鲅鱼圈区', '鲅鱼圈区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210811', '210800', '0,210000,210800,', 210811, '0000210000,0000210800,0000210811,', '1', 2, '辽宁省/营口市/老边区', '老边区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210881', '210800', '0,210000,210800,', 210881, '0000210000,0000210800,0000210881,', '1', 2, '辽宁省/营口市/盖州市', '盖州市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210882', '210800', '0,210000,210800,', 210882, '0000210000,0000210800,0000210882,', '1', 2, '辽宁省/营口市/大石桥市', '大石桥市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210900', '210000', '0,210000,', 210900, '0000210000,0000210900,', '0', 1, '辽宁省/阜新市', '阜新市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210902', '210900', '0,210000,210900,', 210902, '0000210000,0000210900,0000210902,', '1', 2, '辽宁省/阜新市/海州区', '海州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210903', '210900', '0,210000,210900,', 210903, '0000210000,0000210900,0000210903,', '1', 2, '辽宁省/阜新市/新邱区', '新邱区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210904', '210900', '0,210000,210900,', 210904, '0000210000,0000210900,0000210904,', '1', 2, '辽宁省/阜新市/太平区', '太平区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210905', '210900', '0,210000,210900,', 210905, '0000210000,0000210900,0000210905,', '1', 2, '辽宁省/阜新市/清河门区', '清河门区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210911', '210900', '0,210000,210900,', 210911, '0000210000,0000210900,0000210911,', '1', 2, '辽宁省/阜新市/细河区', '细河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210921', '210900', '0,210000,210900,', 210921, '0000210000,0000210900,0000210921,', '1', 2, '辽宁省/阜新市/阜新蒙古族自治县', '阜新蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('210922', '210900', '0,210000,210900,', 210922, '0000210000,0000210900,0000210922,', '1', 2, '辽宁省/阜新市/彰武县', '彰武县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211000', '210000', '0,210000,', 211000, '0000210000,0000211000,', '0', 1, '辽宁省/辽阳市', '辽阳市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211002', '211000', '0,210000,211000,', 211002, '0000210000,0000211000,0000211002,', '1', 2, '辽宁省/辽阳市/白塔区', '白塔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211003', '211000', '0,210000,211000,', 211003, '0000210000,0000211000,0000211003,', '1', 2, '辽宁省/辽阳市/文圣区', '文圣区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211004', '211000', '0,210000,211000,', 211004, '0000210000,0000211000,0000211004,', '1', 2, '辽宁省/辽阳市/宏伟区', '宏伟区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211005', '211000', '0,210000,211000,', 211005, '0000210000,0000211000,0000211005,', '1', 2, '辽宁省/辽阳市/弓长岭区', '弓长岭区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211011', '211000', '0,210000,211000,', 211011, '0000210000,0000211000,0000211011,', '1', 2, '辽宁省/辽阳市/太子河区', '太子河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211021', '211000', '0,210000,211000,', 211021, '0000210000,0000211000,0000211021,', '1', 2, '辽宁省/辽阳市/辽阳县', '辽阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211081', '211000', '0,210000,211000,', 211081, '0000210000,0000211000,0000211081,', '1', 2, '辽宁省/辽阳市/灯塔市', '灯塔市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211100', '210000', '0,210000,', 211100, '0000210000,0000211100,', '0', 1, '辽宁省/盘锦市', '盘锦市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211102', '211100', '0,210000,211100,', 211102, '0000210000,0000211100,0000211102,', '1', 2, '辽宁省/盘锦市/双台子区', '双台子区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211103', '211100', '0,210000,211100,', 211103, '0000210000,0000211100,0000211103,', '1', 2, '辽宁省/盘锦市/兴隆台区', '兴隆台区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211104', '211100', '0,210000,211100,', 211104, '0000210000,0000211100,0000211104,', '1', 2, '辽宁省/盘锦市/大洼区', '大洼区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211122', '211100', '0,210000,211100,', 211122, '0000210000,0000211100,0000211122,', '1', 2, '辽宁省/盘锦市/盘山县', '盘山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211200', '210000', '0,210000,', 211200, '0000210000,0000211200,', '0', 1, '辽宁省/铁岭市', '铁岭市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211202', '211200', '0,210000,211200,', 211202, '0000210000,0000211200,0000211202,', '1', 2, '辽宁省/铁岭市/银州区', '银州区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211204', '211200', '0,210000,211200,', 211204, '0000210000,0000211200,0000211204,', '1', 2, '辽宁省/铁岭市/清河区', '清河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211221', '211200', '0,210000,211200,', 211221, '0000210000,0000211200,0000211221,', '1', 2, '辽宁省/铁岭市/铁岭县', '铁岭县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211223', '211200', '0,210000,211200,', 211223, '0000210000,0000211200,0000211223,', '1', 2, '辽宁省/铁岭市/西丰县', '西丰县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211224', '211200', '0,210000,211200,', 211224, '0000210000,0000211200,0000211224,', '1', 2, '辽宁省/铁岭市/昌图县', '昌图县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211281', '211200', '0,210000,211200,', 211281, '0000210000,0000211200,0000211281,', '1', 2, '辽宁省/铁岭市/调兵山市', '调兵山市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211282', '211200', '0,210000,211200,', 211282, '0000210000,0000211200,0000211282,', '1', 2, '辽宁省/铁岭市/开原市', '开原市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211300', '210000', '0,210000,', 211300, '0000210000,0000211300,', '0', 1, '辽宁省/朝阳市', '朝阳市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211302', '211300', '0,210000,211300,', 211302, '0000210000,0000211300,0000211302,', '1', 2, '辽宁省/朝阳市/双塔区', '双塔区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211303', '211300', '0,210000,211300,', 211303, '0000210000,0000211300,0000211303,', '1', 2, '辽宁省/朝阳市/龙城区', '龙城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211321', '211300', '0,210000,211300,', 211321, '0000210000,0000211300,0000211321,', '1', 2, '辽宁省/朝阳市/朝阳县', '朝阳县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211322', '211300', '0,210000,211300,', 211322, '0000210000,0000211300,0000211322,', '1', 2, '辽宁省/朝阳市/建平县', '建平县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211324', '211300', '0,210000,211300,', 211324, '0000210000,0000211300,0000211324,', '1', 2, '辽宁省/朝阳市/喀喇沁左翼蒙古族自治县', '喀喇沁左翼蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211381', '211300', '0,210000,211300,', 211381, '0000210000,0000211300,0000211381,', '1', 2, '辽宁省/朝阳市/北票市', '北票市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211382', '211300', '0,210000,211300,', 211382, '0000210000,0000211300,0000211382,', '1', 2, '辽宁省/朝阳市/凌源市', '凌源市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211400', '210000', '0,210000,', 211400, '0000210000,0000211400,', '0', 1, '辽宁省/葫芦岛市', '葫芦岛市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211402', '211400', '0,210000,211400,', 211402, '0000210000,0000211400,0000211402,', '1', 2, '辽宁省/葫芦岛市/连山区', '连山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211403', '211400', '0,210000,211400,', 211403, '0000210000,0000211400,0000211403,', '1', 2, '辽宁省/葫芦岛市/龙港区', '龙港区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211404', '211400', '0,210000,211400,', 211404, '0000210000,0000211400,0000211404,', '1', 2, '辽宁省/葫芦岛市/南票区', '南票区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211421', '211400', '0,210000,211400,', 211421, '0000210000,0000211400,0000211421,', '1', 2, '辽宁省/葫芦岛市/绥中县', '绥中县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211422', '211400', '0,210000,211400,', 211422, '0000210000,0000211400,0000211422,', '1', 2, '辽宁省/葫芦岛市/建昌县', '建昌县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('211481', '211400', '0,210000,211400,', 211481, '0000210000,0000211400,0000211481,', '1', 2, '辽宁省/葫芦岛市/兴城市', '兴城市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220000', '0', '0,', 220000, '0000220000,', '0', 0, '吉林省', '吉林省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220100', '220000', '0,220000,', 220100, '0000220000,0000220100,', '0', 1, '吉林省/长春市', '长春市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220102', '220100', '0,220000,220100,', 220102, '0000220000,0000220100,0000220102,', '1', 2, '吉林省/长春市/南关区', '南关区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220103', '220100', '0,220000,220100,', 220103, '0000220000,0000220100,0000220103,', '1', 2, '吉林省/长春市/宽城区', '宽城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220104', '220100', '0,220000,220100,', 220104, '0000220000,0000220100,0000220104,', '1', 2, '吉林省/长春市/朝阳区', '朝阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220105', '220100', '0,220000,220100,', 220105, '0000220000,0000220100,0000220105,', '1', 2, '吉林省/长春市/二道区', '二道区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220106', '220100', '0,220000,220100,', 220106, '0000220000,0000220100,0000220106,', '1', 2, '吉林省/长春市/绿园区', '绿园区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220112', '220100', '0,220000,220100,', 220112, '0000220000,0000220100,0000220112,', '1', 2, '吉林省/长春市/双阳区', '双阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220113', '220100', '0,220000,220100,', 220113, '0000220000,0000220100,0000220113,', '1', 2, '吉林省/长春市/九台区', '九台区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220122', '220100', '0,220000,220100,', 220122, '0000220000,0000220100,0000220122,', '1', 2, '吉林省/长春市/农安县', '农安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220182', '220100', '0,220000,220100,', 220182, '0000220000,0000220100,0000220182,', '1', 2, '吉林省/长春市/榆树市', '榆树市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220183', '220100', '0,220000,220100,', 220183, '0000220000,0000220100,0000220183,', '1', 2, '吉林省/长春市/德惠市', '德惠市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220200', '220000', '0,220000,', 220200, '0000220000,0000220200,', '0', 1, '吉林省/吉林市', '吉林市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220202', '220200', '0,220000,220200,', 220202, '0000220000,0000220200,0000220202,', '1', 2, '吉林省/吉林市/昌邑区', '昌邑区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220203', '220200', '0,220000,220200,', 220203, '0000220000,0000220200,0000220203,', '1', 2, '吉林省/吉林市/龙潭区', '龙潭区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220204', '220200', '0,220000,220200,', 220204, '0000220000,0000220200,0000220204,', '1', 2, '吉林省/吉林市/船营区', '船营区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220211', '220200', '0,220000,220200,', 220211, '0000220000,0000220200,0000220211,', '1', 2, '吉林省/吉林市/丰满区', '丰满区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220221', '220200', '0,220000,220200,', 220221, '0000220000,0000220200,0000220221,', '1', 2, '吉林省/吉林市/永吉县', '永吉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220281', '220200', '0,220000,220200,', 220281, '0000220000,0000220200,0000220281,', '1', 2, '吉林省/吉林市/蛟河市', '蛟河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220282', '220200', '0,220000,220200,', 220282, '0000220000,0000220200,0000220282,', '1', 2, '吉林省/吉林市/桦甸市', '桦甸市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220283', '220200', '0,220000,220200,', 220283, '0000220000,0000220200,0000220283,', '1', 2, '吉林省/吉林市/舒兰市', '舒兰市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220284', '220200', '0,220000,220200,', 220284, '0000220000,0000220200,0000220284,', '1', 2, '吉林省/吉林市/磐石市', '磐石市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220300', '220000', '0,220000,', 220300, '0000220000,0000220300,', '0', 1, '吉林省/四平市', '四平市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220302', '220300', '0,220000,220300,', 220302, '0000220000,0000220300,0000220302,', '1', 2, '吉林省/四平市/铁西区', '铁西区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220303', '220300', '0,220000,220300,', 220303, '0000220000,0000220300,0000220303,', '1', 2, '吉林省/四平市/铁东区', '铁东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220322', '220300', '0,220000,220300,', 220322, '0000220000,0000220300,0000220322,', '1', 2, '吉林省/四平市/梨树县', '梨树县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220323', '220300', '0,220000,220300,', 220323, '0000220000,0000220300,0000220323,', '1', 2, '吉林省/四平市/伊通满族自治县', '伊通满族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220381', '220300', '0,220000,220300,', 220381, '0000220000,0000220300,0000220381,', '1', 2, '吉林省/四平市/公主岭市', '公主岭市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220382', '220300', '0,220000,220300,', 220382, '0000220000,0000220300,0000220382,', '1', 2, '吉林省/四平市/双辽市', '双辽市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220400', '220000', '0,220000,', 220400, '0000220000,0000220400,', '0', 1, '吉林省/辽源市', '辽源市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220402', '220400', '0,220000,220400,', 220402, '0000220000,0000220400,0000220402,', '1', 2, '吉林省/辽源市/龙山区', '龙山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220403', '220400', '0,220000,220400,', 220403, '0000220000,0000220400,0000220403,', '1', 2, '吉林省/辽源市/西安区', '西安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220421', '220400', '0,220000,220400,', 220421, '0000220000,0000220400,0000220421,', '1', 2, '吉林省/辽源市/东丰县', '东丰县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220422', '220400', '0,220000,220400,', 220422, '0000220000,0000220400,0000220422,', '1', 2, '吉林省/辽源市/东辽县', '东辽县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220500', '220000', '0,220000,', 220500, '0000220000,0000220500,', '0', 1, '吉林省/通化市', '通化市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220502', '220500', '0,220000,220500,', 220502, '0000220000,0000220500,0000220502,', '1', 2, '吉林省/通化市/东昌区', '东昌区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220503', '220500', '0,220000,220500,', 220503, '0000220000,0000220500,0000220503,', '1', 2, '吉林省/通化市/二道江区', '二道江区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220521', '220500', '0,220000,220500,', 220521, '0000220000,0000220500,0000220521,', '1', 2, '吉林省/通化市/通化县', '通化县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220523', '220500', '0,220000,220500,', 220523, '0000220000,0000220500,0000220523,', '1', 2, '吉林省/通化市/辉南县', '辉南县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220524', '220500', '0,220000,220500,', 220524, '0000220000,0000220500,0000220524,', '1', 2, '吉林省/通化市/柳河县', '柳河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220581', '220500', '0,220000,220500,', 220581, '0000220000,0000220500,0000220581,', '1', 2, '吉林省/通化市/梅河口市', '梅河口市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220582', '220500', '0,220000,220500,', 220582, '0000220000,0000220500,0000220582,', '1', 2, '吉林省/通化市/集安市', '集安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220600', '220000', '0,220000,', 220600, '0000220000,0000220600,', '0', 1, '吉林省/白山市', '白山市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220602', '220600', '0,220000,220600,', 220602, '0000220000,0000220600,0000220602,', '1', 2, '吉林省/白山市/浑江区', '浑江区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220605', '220600', '0,220000,220600,', 220605, '0000220000,0000220600,0000220605,', '1', 2, '吉林省/白山市/江源区', '江源区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220621', '220600', '0,220000,220600,', 220621, '0000220000,0000220600,0000220621,', '1', 2, '吉林省/白山市/抚松县', '抚松县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220622', '220600', '0,220000,220600,', 220622, '0000220000,0000220600,0000220622,', '1', 2, '吉林省/白山市/靖宇县', '靖宇县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220623', '220600', '0,220000,220600,', 220623, '0000220000,0000220600,0000220623,', '1', 2, '吉林省/白山市/长白朝鲜族自治县', '长白朝鲜族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220681', '220600', '0,220000,220600,', 220681, '0000220000,0000220600,0000220681,', '1', 2, '吉林省/白山市/临江市', '临江市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220700', '220000', '0,220000,', 220700, '0000220000,0000220700,', '0', 1, '吉林省/松原市', '松原市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220702', '220700', '0,220000,220700,', 220702, '0000220000,0000220700,0000220702,', '1', 2, '吉林省/松原市/宁江区', '宁江区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220721', '220700', '0,220000,220700,', 220721, '0000220000,0000220700,0000220721,', '1', 2, '吉林省/松原市/前郭尔罗斯蒙古族自治县', '前郭尔罗斯蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220722', '220700', '0,220000,220700,', 220722, '0000220000,0000220700,0000220722,', '1', 2, '吉林省/松原市/长岭县', '长岭县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220723', '220700', '0,220000,220700,', 220723, '0000220000,0000220700,0000220723,', '1', 2, '吉林省/松原市/乾安县', '乾安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220781', '220700', '0,220000,220700,', 220781, '0000220000,0000220700,0000220781,', '1', 2, '吉林省/松原市/扶余市', '扶余市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220800', '220000', '0,220000,', 220800, '0000220000,0000220800,', '0', 1, '吉林省/白城市', '白城市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220802', '220800', '0,220000,220800,', 220802, '0000220000,0000220800,0000220802,', '1', 2, '吉林省/白城市/洮北区', '洮北区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220821', '220800', '0,220000,220800,', 220821, '0000220000,0000220800,0000220821,', '1', 2, '吉林省/白城市/镇赉县', '镇赉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220822', '220800', '0,220000,220800,', 220822, '0000220000,0000220800,0000220822,', '1', 2, '吉林省/白城市/通榆县', '通榆县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220881', '220800', '0,220000,220800,', 220881, '0000220000,0000220800,0000220881,', '1', 2, '吉林省/白城市/洮南市', '洮南市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('220882', '220800', '0,220000,220800,', 220882, '0000220000,0000220800,0000220882,', '1', 2, '吉林省/白城市/大安市', '大安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222400', '220000', '0,220000,', 222400, '0000220000,0000222400,', '0', 1, '吉林省/延边朝鲜族自治州', '延边朝鲜族自治州', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222401', '222400', '0,220000,222400,', 222401, '0000220000,0000222400,0000222401,', '1', 2, '吉林省/延边朝鲜族自治州/延吉市', '延吉市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222402', '222400', '0,220000,222400,', 222402, '0000220000,0000222400,0000222402,', '1', 2, '吉林省/延边朝鲜族自治州/图们市', '图们市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222403', '222400', '0,220000,222400,', 222403, '0000220000,0000222400,0000222403,', '1', 2, '吉林省/延边朝鲜族自治州/敦化市', '敦化市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222404', '222400', '0,220000,222400,', 222404, '0000220000,0000222400,0000222404,', '1', 2, '吉林省/延边朝鲜族自治州/珲春市', '珲春市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222405', '222400', '0,220000,222400,', 222405, '0000220000,0000222400,0000222405,', '1', 2, '吉林省/延边朝鲜族自治州/龙井市', '龙井市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222406', '222400', '0,220000,222400,', 222406, '0000220000,0000222400,0000222406,', '1', 2, '吉林省/延边朝鲜族自治州/和龙市', '和龙市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222424', '222400', '0,220000,222400,', 222424, '0000220000,0000222400,0000222424,', '1', 2, '吉林省/延边朝鲜族自治州/汪清县', '汪清县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('222426', '222400', '0,220000,222400,', 222426, '0000220000,0000222400,0000222426,', '1', 2, '吉林省/延边朝鲜族自治州/安图县', '安图县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230000', '0', '0,', 230000, '0000230000,', '0', 0, '黑龙江省', '黑龙江省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230100', '230000', '0,230000,', 230100, '0000230000,0000230100,', '0', 1, '黑龙江省/哈尔滨市', '哈尔滨市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230102', '230100', '0,230000,230100,', 230102, '0000230000,0000230100,0000230102,', '1', 2, '黑龙江省/哈尔滨市/道里区', '道里区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230103', '230100', '0,230000,230100,', 230103, '0000230000,0000230100,0000230103,', '1', 2, '黑龙江省/哈尔滨市/南岗区', '南岗区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230104', '230100', '0,230000,230100,', 230104, '0000230000,0000230100,0000230104,', '1', 2, '黑龙江省/哈尔滨市/道外区', '道外区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230108', '230100', '0,230000,230100,', 230108, '0000230000,0000230100,0000230108,', '1', 2, '黑龙江省/哈尔滨市/平房区', '平房区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230109', '230100', '0,230000,230100,', 230109, '0000230000,0000230100,0000230109,', '1', 2, '黑龙江省/哈尔滨市/松北区', '松北区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230110', '230100', '0,230000,230100,', 230110, '0000230000,0000230100,0000230110,', '1', 2, '黑龙江省/哈尔滨市/香坊区', '香坊区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230111', '230100', '0,230000,230100,', 230111, '0000230000,0000230100,0000230111,', '1', 2, '黑龙江省/哈尔滨市/呼兰区', '呼兰区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230112', '230100', '0,230000,230100,', 230112, '0000230000,0000230100,0000230112,', '1', 2, '黑龙江省/哈尔滨市/阿城区', '阿城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230113', '230100', '0,230000,230100,', 230113, '0000230000,0000230100,0000230113,', '1', 2, '黑龙江省/哈尔滨市/双城区', '双城区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230123', '230100', '0,230000,230100,', 230123, '0000230000,0000230100,0000230123,', '1', 2, '黑龙江省/哈尔滨市/依兰县', '依兰县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230124', '230100', '0,230000,230100,', 230124, '0000230000,0000230100,0000230124,', '1', 2, '黑龙江省/哈尔滨市/方正县', '方正县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230125', '230100', '0,230000,230100,', 230125, '0000230000,0000230100,0000230125,', '1', 2, '黑龙江省/哈尔滨市/宾县', '宾县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230126', '230100', '0,230000,230100,', 230126, '0000230000,0000230100,0000230126,', '1', 2, '黑龙江省/哈尔滨市/巴彦县', '巴彦县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230127', '230100', '0,230000,230100,', 230127, '0000230000,0000230100,0000230127,', '1', 2, '黑龙江省/哈尔滨市/木兰县', '木兰县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230128', '230100', '0,230000,230100,', 230128, '0000230000,0000230100,0000230128,', '1', 2, '黑龙江省/哈尔滨市/通河县', '通河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230129', '230100', '0,230000,230100,', 230129, '0000230000,0000230100,0000230129,', '1', 2, '黑龙江省/哈尔滨市/延寿县', '延寿县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230183', '230100', '0,230000,230100,', 230183, '0000230000,0000230100,0000230183,', '1', 2, '黑龙江省/哈尔滨市/尚志市', '尚志市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230184', '230100', '0,230000,230100,', 230184, '0000230000,0000230100,0000230184,', '1', 2, '黑龙江省/哈尔滨市/五常市', '五常市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230200', '230000', '0,230000,', 230200, '0000230000,0000230200,', '0', 1, '黑龙江省/齐齐哈尔市', '齐齐哈尔市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230202', '230200', '0,230000,230200,', 230202, '0000230000,0000230200,0000230202,', '1', 2, '黑龙江省/齐齐哈尔市/龙沙区', '龙沙区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230203', '230200', '0,230000,230200,', 230203, '0000230000,0000230200,0000230203,', '1', 2, '黑龙江省/齐齐哈尔市/建华区', '建华区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230204', '230200', '0,230000,230200,', 230204, '0000230000,0000230200,0000230204,', '1', 2, '黑龙江省/齐齐哈尔市/铁锋区', '铁锋区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230205', '230200', '0,230000,230200,', 230205, '0000230000,0000230200,0000230205,', '1', 2, '黑龙江省/齐齐哈尔市/昂昂溪区', '昂昂溪区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230206', '230200', '0,230000,230200,', 230206, '0000230000,0000230200,0000230206,', '1', 2, '黑龙江省/齐齐哈尔市/富拉尔基区', '富拉尔基区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230207', '230200', '0,230000,230200,', 230207, '0000230000,0000230200,0000230207,', '1', 2, '黑龙江省/齐齐哈尔市/碾子山区', '碾子山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230208', '230200', '0,230000,230200,', 230208, '0000230000,0000230200,0000230208,', '1', 2, '黑龙江省/齐齐哈尔市/梅里斯达斡尔族区', '梅里斯达斡尔族区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230221', '230200', '0,230000,230200,', 230221, '0000230000,0000230200,0000230221,', '1', 2, '黑龙江省/齐齐哈尔市/龙江县', '龙江县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230223', '230200', '0,230000,230200,', 230223, '0000230000,0000230200,0000230223,', '1', 2, '黑龙江省/齐齐哈尔市/依安县', '依安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230224', '230200', '0,230000,230200,', 230224, '0000230000,0000230200,0000230224,', '1', 2, '黑龙江省/齐齐哈尔市/泰来县', '泰来县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230225', '230200', '0,230000,230200,', 230225, '0000230000,0000230200,0000230225,', '1', 2, '黑龙江省/齐齐哈尔市/甘南县', '甘南县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230227', '230200', '0,230000,230200,', 230227, '0000230000,0000230200,0000230227,', '1', 2, '黑龙江省/齐齐哈尔市/富裕县', '富裕县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230229', '230200', '0,230000,230200,', 230229, '0000230000,0000230200,0000230229,', '1', 2, '黑龙江省/齐齐哈尔市/克山县', '克山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230230', '230200', '0,230000,230200,', 230230, '0000230000,0000230200,0000230230,', '1', 2, '黑龙江省/齐齐哈尔市/克东县', '克东县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230231', '230200', '0,230000,230200,', 230231, '0000230000,0000230200,0000230231,', '1', 2, '黑龙江省/齐齐哈尔市/拜泉县', '拜泉县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230281', '230200', '0,230000,230200,', 230281, '0000230000,0000230200,0000230281,', '1', 2, '黑龙江省/齐齐哈尔市/讷河市', '讷河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230300', '230000', '0,230000,', 230300, '0000230000,0000230300,', '0', 1, '黑龙江省/鸡西市', '鸡西市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230302', '230300', '0,230000,230300,', 230302, '0000230000,0000230300,0000230302,', '1', 2, '黑龙江省/鸡西市/鸡冠区', '鸡冠区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230303', '230300', '0,230000,230300,', 230303, '0000230000,0000230300,0000230303,', '1', 2, '黑龙江省/鸡西市/恒山区', '恒山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230304', '230300', '0,230000,230300,', 230304, '0000230000,0000230300,0000230304,', '1', 2, '黑龙江省/鸡西市/滴道区', '滴道区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230305', '230300', '0,230000,230300,', 230305, '0000230000,0000230300,0000230305,', '1', 2, '黑龙江省/鸡西市/梨树区', '梨树区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230306', '230300', '0,230000,230300,', 230306, '0000230000,0000230300,0000230306,', '1', 2, '黑龙江省/鸡西市/城子河区', '城子河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230307', '230300', '0,230000,230300,', 230307, '0000230000,0000230300,0000230307,', '1', 2, '黑龙江省/鸡西市/麻山区', '麻山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230321', '230300', '0,230000,230300,', 230321, '0000230000,0000230300,0000230321,', '1', 2, '黑龙江省/鸡西市/鸡东县', '鸡东县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230381', '230300', '0,230000,230300,', 230381, '0000230000,0000230300,0000230381,', '1', 2, '黑龙江省/鸡西市/虎林市', '虎林市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230382', '230300', '0,230000,230300,', 230382, '0000230000,0000230300,0000230382,', '1', 2, '黑龙江省/鸡西市/密山市', '密山市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230400', '230000', '0,230000,', 230400, '0000230000,0000230400,', '0', 1, '黑龙江省/鹤岗市', '鹤岗市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230402', '230400', '0,230000,230400,', 230402, '0000230000,0000230400,0000230402,', '1', 2, '黑龙江省/鹤岗市/向阳区', '向阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230403', '230400', '0,230000,230400,', 230403, '0000230000,0000230400,0000230403,', '1', 2, '黑龙江省/鹤岗市/工农区', '工农区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230404', '230400', '0,230000,230400,', 230404, '0000230000,0000230400,0000230404,', '1', 2, '黑龙江省/鹤岗市/南山区', '南山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230405', '230400', '0,230000,230400,', 230405, '0000230000,0000230400,0000230405,', '1', 2, '黑龙江省/鹤岗市/兴安区', '兴安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230406', '230400', '0,230000,230400,', 230406, '0000230000,0000230400,0000230406,', '1', 2, '黑龙江省/鹤岗市/东山区', '东山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230407', '230400', '0,230000,230400,', 230407, '0000230000,0000230400,0000230407,', '1', 2, '黑龙江省/鹤岗市/兴山区', '兴山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230421', '230400', '0,230000,230400,', 230421, '0000230000,0000230400,0000230421,', '1', 2, '黑龙江省/鹤岗市/萝北县', '萝北县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230422', '230400', '0,230000,230400,', 230422, '0000230000,0000230400,0000230422,', '1', 2, '黑龙江省/鹤岗市/绥滨县', '绥滨县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230500', '230000', '0,230000,', 230500, '0000230000,0000230500,', '0', 1, '黑龙江省/双鸭山市', '双鸭山市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230502', '230500', '0,230000,230500,', 230502, '0000230000,0000230500,0000230502,', '1', 2, '黑龙江省/双鸭山市/尖山区', '尖山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230503', '230500', '0,230000,230500,', 230503, '0000230000,0000230500,0000230503,', '1', 2, '黑龙江省/双鸭山市/岭东区', '岭东区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230505', '230500', '0,230000,230500,', 230505, '0000230000,0000230500,0000230505,', '1', 2, '黑龙江省/双鸭山市/四方台区', '四方台区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230506', '230500', '0,230000,230500,', 230506, '0000230000,0000230500,0000230506,', '1', 2, '黑龙江省/双鸭山市/宝山区', '宝山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230521', '230500', '0,230000,230500,', 230521, '0000230000,0000230500,0000230521,', '1', 2, '黑龙江省/双鸭山市/集贤县', '集贤县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230522', '230500', '0,230000,230500,', 230522, '0000230000,0000230500,0000230522,', '1', 2, '黑龙江省/双鸭山市/友谊县', '友谊县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230523', '230500', '0,230000,230500,', 230523, '0000230000,0000230500,0000230523,', '1', 2, '黑龙江省/双鸭山市/宝清县', '宝清县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230524', '230500', '0,230000,230500,', 230524, '0000230000,0000230500,0000230524,', '1', 2, '黑龙江省/双鸭山市/饶河县', '饶河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230600', '230000', '0,230000,', 230600, '0000230000,0000230600,', '0', 1, '黑龙江省/大庆市', '大庆市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230602', '230600', '0,230000,230600,', 230602, '0000230000,0000230600,0000230602,', '1', 2, '黑龙江省/大庆市/萨尔图区', '萨尔图区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230603', '230600', '0,230000,230600,', 230603, '0000230000,0000230600,0000230603,', '1', 2, '黑龙江省/大庆市/龙凤区', '龙凤区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230604', '230600', '0,230000,230600,', 230604, '0000230000,0000230600,0000230604,', '1', 2, '黑龙江省/大庆市/让胡路区', '让胡路区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230605', '230600', '0,230000,230600,', 230605, '0000230000,0000230600,0000230605,', '1', 2, '黑龙江省/大庆市/红岗区', '红岗区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230606', '230600', '0,230000,230600,', 230606, '0000230000,0000230600,0000230606,', '1', 2, '黑龙江省/大庆市/大同区', '大同区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230621', '230600', '0,230000,230600,', 230621, '0000230000,0000230600,0000230621,', '1', 2, '黑龙江省/大庆市/肇州县', '肇州县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230622', '230600', '0,230000,230600,', 230622, '0000230000,0000230600,0000230622,', '1', 2, '黑龙江省/大庆市/肇源县', '肇源县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230623', '230600', '0,230000,230600,', 230623, '0000230000,0000230600,0000230623,', '1', 2, '黑龙江省/大庆市/林甸县', '林甸县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230624', '230600', '0,230000,230600,', 230624, '0000230000,0000230600,0000230624,', '1', 2, '黑龙江省/大庆市/杜尔伯特蒙古族自治县', '杜尔伯特蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230700', '230000', '0,230000,', 230700, '0000230000,0000230700,', '0', 1, '黑龙江省/伊春市', '伊春市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230717', '230700', '0,230000,230700,', 230717, '0000230000,0000230700,0000230717,', '1', 2, '黑龙江省/伊春市/伊美区', '伊美区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230718', '230700', '0,230000,230700,', 230718, '0000230000,0000230700,0000230718,', '1', 2, '黑龙江省/伊春市/乌翠区', '乌翠区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230719', '230700', '0,230000,230700,', 230719, '0000230000,0000230700,0000230719,', '1', 2, '黑龙江省/伊春市/友好区', '友好区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230722', '230700', '0,230000,230700,', 230722, '0000230000,0000230700,0000230722,', '1', 2, '黑龙江省/伊春市/嘉荫县', '嘉荫县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230723', '230700', '0,230000,230700,', 230723, '0000230000,0000230700,0000230723,', '1', 2, '黑龙江省/伊春市/汤旺县', '汤旺县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230724', '230700', '0,230000,230700,', 230724, '0000230000,0000230700,0000230724,', '1', 2, '黑龙江省/伊春市/丰林县', '丰林县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230725', '230700', '0,230000,230700,', 230725, '0000230000,0000230700,0000230725,', '1', 2, '黑龙江省/伊春市/大箐山县', '大箐山县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230726', '230700', '0,230000,230700,', 230726, '0000230000,0000230700,0000230726,', '1', 2, '黑龙江省/伊春市/南岔县', '南岔县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230751', '230700', '0,230000,230700,', 230751, '0000230000,0000230700,0000230751,', '1', 2, '黑龙江省/伊春市/金林区', '金林区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230781', '230700', '0,230000,230700,', 230781, '0000230000,0000230700,0000230781,', '1', 2, '黑龙江省/伊春市/铁力市', '铁力市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230800', '230000', '0,230000,', 230800, '0000230000,0000230800,', '0', 1, '黑龙江省/佳木斯市', '佳木斯市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230803', '230800', '0,230000,230800,', 230803, '0000230000,0000230800,0000230803,', '1', 2, '黑龙江省/佳木斯市/向阳区', '向阳区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230804', '230800', '0,230000,230800,', 230804, '0000230000,0000230800,0000230804,', '1', 2, '黑龙江省/佳木斯市/前进区', '前进区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230805', '230800', '0,230000,230800,', 230805, '0000230000,0000230800,0000230805,', '1', 2, '黑龙江省/佳木斯市/东风区', '东风区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230811', '230800', '0,230000,230800,', 230811, '0000230000,0000230800,0000230811,', '1', 2, '黑龙江省/佳木斯市/郊区', '郊区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230822', '230800', '0,230000,230800,', 230822, '0000230000,0000230800,0000230822,', '1', 2, '黑龙江省/佳木斯市/桦南县', '桦南县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230826', '230800', '0,230000,230800,', 230826, '0000230000,0000230800,0000230826,', '1', 2, '黑龙江省/佳木斯市/桦川县', '桦川县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230828', '230800', '0,230000,230800,', 230828, '0000230000,0000230800,0000230828,', '1', 2, '黑龙江省/佳木斯市/汤原县', '汤原县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230881', '230800', '0,230000,230800,', 230881, '0000230000,0000230800,0000230881,', '1', 2, '黑龙江省/佳木斯市/同江市', '同江市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230882', '230800', '0,230000,230800,', 230882, '0000230000,0000230800,0000230882,', '1', 2, '黑龙江省/佳木斯市/富锦市', '富锦市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230883', '230800', '0,230000,230800,', 230883, '0000230000,0000230800,0000230883,', '1', 2, '黑龙江省/佳木斯市/抚远市', '抚远市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230900', '230000', '0,230000,', 230900, '0000230000,0000230900,', '0', 1, '黑龙江省/七台河市', '七台河市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230902', '230900', '0,230000,230900,', 230902, '0000230000,0000230900,0000230902,', '1', 2, '黑龙江省/七台河市/新兴区', '新兴区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230903', '230900', '0,230000,230900,', 230903, '0000230000,0000230900,0000230903,', '1', 2, '黑龙江省/七台河市/桃山区', '桃山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230904', '230900', '0,230000,230900,', 230904, '0000230000,0000230900,0000230904,', '1', 2, '黑龙江省/七台河市/茄子河区', '茄子河区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('230921', '230900', '0,230000,230900,', 230921, '0000230000,0000230900,0000230921,', '1', 2, '黑龙江省/七台河市/勃利县', '勃利县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231000', '230000', '0,230000,', 231000, '0000230000,0000231000,', '0', 1, '黑龙江省/牡丹江市', '牡丹江市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231002', '231000', '0,230000,231000,', 231002, '0000230000,0000231000,0000231002,', '1', 2, '黑龙江省/牡丹江市/东安区', '东安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231003', '231000', '0,230000,231000,', 231003, '0000230000,0000231000,0000231003,', '1', 2, '黑龙江省/牡丹江市/阳明区', '阳明区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231004', '231000', '0,230000,231000,', 231004, '0000230000,0000231000,0000231004,', '1', 2, '黑龙江省/牡丹江市/爱民区', '爱民区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231005', '231000', '0,230000,231000,', 231005, '0000230000,0000231000,0000231005,', '1', 2, '黑龙江省/牡丹江市/西安区', '西安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231025', '231000', '0,230000,231000,', 231025, '0000230000,0000231000,0000231025,', '1', 2, '黑龙江省/牡丹江市/林口县', '林口县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231081', '231000', '0,230000,231000,', 231081, '0000230000,0000231000,0000231081,', '1', 2, '黑龙江省/牡丹江市/绥芬河市', '绥芬河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231083', '231000', '0,230000,231000,', 231083, '0000230000,0000231000,0000231083,', '1', 2, '黑龙江省/牡丹江市/海林市', '海林市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231084', '231000', '0,230000,231000,', 231084, '0000230000,0000231000,0000231084,', '1', 2, '黑龙江省/牡丹江市/宁安市', '宁安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231085', '231000', '0,230000,231000,', 231085, '0000230000,0000231000,0000231085,', '1', 2, '黑龙江省/牡丹江市/穆棱市', '穆棱市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231086', '231000', '0,230000,231000,', 231086, '0000230000,0000231000,0000231086,', '1', 2, '黑龙江省/牡丹江市/东宁市', '东宁市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231100', '230000', '0,230000,', 231100, '0000230000,0000231100,', '0', 1, '黑龙江省/黑河市', '黑河市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231102', '231100', '0,230000,231100,', 231102, '0000230000,0000231100,0000231102,', '1', 2, '黑龙江省/黑河市/爱辉区', '爱辉区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231123', '231100', '0,230000,231100,', 231123, '0000230000,0000231100,0000231123,', '1', 2, '黑龙江省/黑河市/逊克县', '逊克县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231124', '231100', '0,230000,231100,', 231124, '0000230000,0000231100,0000231124,', '1', 2, '黑龙江省/黑河市/孙吴县', '孙吴县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231181', '231100', '0,230000,231100,', 231181, '0000230000,0000231100,0000231181,', '1', 2, '黑龙江省/黑河市/北安市', '北安市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231182', '231100', '0,230000,231100,', 231182, '0000230000,0000231100,0000231182,', '1', 2, '黑龙江省/黑河市/五大连池市', '五大连池市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231183', '231100', '0,230000,231100,', 231183, '0000230000,0000231100,0000231183,', '1', 2, '黑龙江省/黑河市/嫩江市', '嫩江市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231200', '230000', '0,230000,', 231200, '0000230000,0000231200,', '0', 1, '黑龙江省/绥化市', '绥化市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231202', '231200', '0,230000,231200,', 231202, '0000230000,0000231200,0000231202,', '1', 2, '黑龙江省/绥化市/北林区', '北林区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231221', '231200', '0,230000,231200,', 231221, '0000230000,0000231200,0000231221,', '1', 2, '黑龙江省/绥化市/望奎县', '望奎县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231222', '231200', '0,230000,231200,', 231222, '0000230000,0000231200,0000231222,', '1', 2, '黑龙江省/绥化市/兰西县', '兰西县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231223', '231200', '0,230000,231200,', 231223, '0000230000,0000231200,0000231223,', '1', 2, '黑龙江省/绥化市/青冈县', '青冈县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231224', '231200', '0,230000,231200,', 231224, '0000230000,0000231200,0000231224,', '1', 2, '黑龙江省/绥化市/庆安县', '庆安县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231225', '231200', '0,230000,231200,', 231225, '0000230000,0000231200,0000231225,', '1', 2, '黑龙江省/绥化市/明水县', '明水县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231226', '231200', '0,230000,231200,', 231226, '0000230000,0000231200,0000231226,', '1', 2, '黑龙江省/绥化市/绥棱县', '绥棱县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231281', '231200', '0,230000,231200,', 231281, '0000230000,0000231200,0000231281,', '1', 2, '黑龙江省/绥化市/安达市', '安达市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231282', '231200', '0,230000,231200,', 231282, '0000230000,0000231200,0000231282,', '1', 2, '黑龙江省/绥化市/肇东市', '肇东市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('231283', '231200', '0,230000,231200,', 231283, '0000230000,0000231200,0000231283,', '1', 2, '黑龙江省/绥化市/海伦市', '海伦市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('232700', '230000', '0,230000,', 232700, '0000230000,0000232700,', '0', 1, '黑龙江省/大兴安岭地区', '大兴安岭地区', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('232701', '232700', '0,230000,232700,', 232701, '0000230000,0000232700,0000232701,', '1', 2, '黑龙江省/大兴安岭地区/漠河市', '漠河市', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('232718', '232700', '0,230000,232700,', 232718, '0000230000,0000232700,0000232718,', '1', 2, '黑龙江省/大兴安岭地区/加格达奇区', '加格达奇区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('232721', '232700', '0,230000,232700,', 232721, '0000230000,0000232700,0000232721,', '1', 2, '黑龙江省/大兴安岭地区/呼玛县', '呼玛县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('232722', '232700', '0,230000,232700,', 232722, '0000230000,0000232700,0000232722,', '1', 2, '黑龙江省/大兴安岭地区/塔河县', '塔河县', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310000', '0', '0,', 310000, '0000310000,', '0', 0, '上海市', '上海市', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310100', '310000', '0,310000,', 310100, '0000310000,0000310100,', '0', 1, '上海市/上海城区', '上海城区', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310101', '310100', '0,310000,310100,', 310101, '0000310000,0000310100,0000310101,', '1', 2, '上海市/上海城区/黄浦区', '黄浦区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310104', '310100', '0,310000,310100,', 310104, '0000310000,0000310100,0000310104,', '1', 2, '上海市/上海城区/徐汇区', '徐汇区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310105', '310100', '0,310000,310100,', 310105, '0000310000,0000310100,0000310105,', '1', 2, '上海市/上海城区/长宁区', '长宁区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310106', '310100', '0,310000,310100,', 310106, '0000310000,0000310100,0000310106,', '1', 2, '上海市/上海城区/静安区', '静安区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310107', '310100', '0,310000,310100,', 310107, '0000310000,0000310100,0000310107,', '1', 2, '上海市/上海城区/普陀区', '普陀区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310109', '310100', '0,310000,310100,', 310109, '0000310000,0000310100,0000310109,', '1', 2, '上海市/上海城区/虹口区', '虹口区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310110', '310100', '0,310000,310100,', 310110, '0000310000,0000310100,0000310110,', '1', 2, '上海市/上海城区/杨浦区', '杨浦区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310112', '310100', '0,310000,310100,', 310112, '0000310000,0000310100,0000310112,', '1', 2, '上海市/上海城区/闵行区', '闵行区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310113', '310100', '0,310000,310100,', 310113, '0000310000,0000310100,0000310113,', '1', 2, '上海市/上海城区/宝山区', '宝山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310114', '310100', '0,310000,310100,', 310114, '0000310000,0000310100,0000310114,', '1', 2, '上海市/上海城区/嘉定区', '嘉定区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310115', '310100', '0,310000,310100,', 310115, '0000310000,0000310100,0000310115,', '1', 2, '上海市/上海城区/浦东新区', '浦东新区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310116', '310100', '0,310000,310100,', 310116, '0000310000,0000310100,0000310116,', '1', 2, '上海市/上海城区/金山区', '金山区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310117', '310100', '0,310000,310100,', 310117, '0000310000,0000310100,0000310117,', '1', 2, '上海市/上海城区/松江区', '松江区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310118', '310100', '0,310000,310100,', 310118, '0000310000,0000310100,0000310118,', '1', 2, '上海市/上海城区/青浦区', '青浦区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310120', '310100', '0,310000,310100,', 310120, '0000310000,0000310100,0000310120,', '1', 2, '上海市/上海城区/奉贤区', '奉贤区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('310151', '310100', '0,310000,310100,', 310151, '0000310000,0000310100,0000310151,', '1', 2, '上海市/上海城区/崇明区', '崇明区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320000', '0', '0,', 320000, '0000320000,', '0', 0, '江苏省', '江苏省', '1', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320100', '320000', '0,320000,', 320100, '0000320000,0000320100,', '0', 1, '江苏省/南京市', '南京市', '2', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320102', '320100', '0,320000,320100,', 320102, '0000320000,0000320100,0000320102,', '1', 2, '江苏省/南京市/玄武区', '玄武区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320104', '320100', '0,320000,320100,', 320104, '0000320000,0000320100,0000320104,', '1', 2, '江苏省/南京市/秦淮区', '秦淮区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320105', '320100', '0,320000,320100,', 320105, '0000320000,0000320100,0000320105,', '1', 2, '江苏省/南京市/建邺区', '建邺区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320106', '320100', '0,320000,320100,', 320106, '0000320000,0000320100,0000320106,', '1', 2, '江苏省/南京市/鼓楼区', '鼓楼区', '3', '0', 'system', '2020-09-16 10:43:20', 'system', '2020-09-16 10:43:20', NULL);
INSERT INTO `js_sys_area` VALUES ('320111', '320100', '0,320000,320100,', 320111, '0000320000,0000320100,0000320111,', '1', 2, '江苏省/南京市/浦口区', '浦口区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320113', '320100', '0,320000,320100,', 320113, '0000320000,0000320100,0000320113,', '1', 2, '江苏省/南京市/栖霞区', '栖霞区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320114', '320100', '0,320000,320100,', 320114, '0000320000,0000320100,0000320114,', '1', 2, '江苏省/南京市/雨花台区', '雨花台区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320115', '320100', '0,320000,320100,', 320115, '0000320000,0000320100,0000320115,', '1', 2, '江苏省/南京市/江宁区', '江宁区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320116', '320100', '0,320000,320100,', 320116, '0000320000,0000320100,0000320116,', '1', 2, '江苏省/南京市/六合区', '六合区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320117', '320100', '0,320000,320100,', 320117, '0000320000,0000320100,0000320117,', '1', 2, '江苏省/南京市/溧水区', '溧水区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320118', '320100', '0,320000,320100,', 320118, '0000320000,0000320100,0000320118,', '1', 2, '江苏省/南京市/高淳区', '高淳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320200', '320000', '0,320000,', 320200, '0000320000,0000320200,', '0', 1, '江苏省/无锡市', '无锡市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320205', '320200', '0,320000,320200,', 320205, '0000320000,0000320200,0000320205,', '1', 2, '江苏省/无锡市/锡山区', '锡山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320206', '320200', '0,320000,320200,', 320206, '0000320000,0000320200,0000320206,', '1', 2, '江苏省/无锡市/惠山区', '惠山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320211', '320200', '0,320000,320200,', 320211, '0000320000,0000320200,0000320211,', '1', 2, '江苏省/无锡市/滨湖区', '滨湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320213', '320200', '0,320000,320200,', 320213, '0000320000,0000320200,0000320213,', '1', 2, '江苏省/无锡市/梁溪区', '梁溪区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320214', '320200', '0,320000,320200,', 320214, '0000320000,0000320200,0000320214,', '1', 2, '江苏省/无锡市/新吴区', '新吴区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320281', '320200', '0,320000,320200,', 320281, '0000320000,0000320200,0000320281,', '1', 2, '江苏省/无锡市/江阴市', '江阴市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320282', '320200', '0,320000,320200,', 320282, '0000320000,0000320200,0000320282,', '1', 2, '江苏省/无锡市/宜兴市', '宜兴市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320300', '320000', '0,320000,', 320300, '0000320000,0000320300,', '0', 1, '江苏省/徐州市', '徐州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320302', '320300', '0,320000,320300,', 320302, '0000320000,0000320300,0000320302,', '1', 2, '江苏省/徐州市/鼓楼区', '鼓楼区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320303', '320300', '0,320000,320300,', 320303, '0000320000,0000320300,0000320303,', '1', 2, '江苏省/徐州市/云龙区', '云龙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320305', '320300', '0,320000,320300,', 320305, '0000320000,0000320300,0000320305,', '1', 2, '江苏省/徐州市/贾汪区', '贾汪区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320311', '320300', '0,320000,320300,', 320311, '0000320000,0000320300,0000320311,', '1', 2, '江苏省/徐州市/泉山区', '泉山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320312', '320300', '0,320000,320300,', 320312, '0000320000,0000320300,0000320312,', '1', 2, '江苏省/徐州市/铜山区', '铜山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320321', '320300', '0,320000,320300,', 320321, '0000320000,0000320300,0000320321,', '1', 2, '江苏省/徐州市/丰县', '丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320322', '320300', '0,320000,320300,', 320322, '0000320000,0000320300,0000320322,', '1', 2, '江苏省/徐州市/沛县', '沛县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320324', '320300', '0,320000,320300,', 320324, '0000320000,0000320300,0000320324,', '1', 2, '江苏省/徐州市/睢宁县', '睢宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320381', '320300', '0,320000,320300,', 320381, '0000320000,0000320300,0000320381,', '1', 2, '江苏省/徐州市/新沂市', '新沂市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320382', '320300', '0,320000,320300,', 320382, '0000320000,0000320300,0000320382,', '1', 2, '江苏省/徐州市/邳州市', '邳州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320400', '320000', '0,320000,', 320400, '0000320000,0000320400,', '0', 1, '江苏省/常州市', '常州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320402', '320400', '0,320000,320400,', 320402, '0000320000,0000320400,0000320402,', '1', 2, '江苏省/常州市/天宁区', '天宁区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320404', '320400', '0,320000,320400,', 320404, '0000320000,0000320400,0000320404,', '1', 2, '江苏省/常州市/钟楼区', '钟楼区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320411', '320400', '0,320000,320400,', 320411, '0000320000,0000320400,0000320411,', '1', 2, '江苏省/常州市/新北区', '新北区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320412', '320400', '0,320000,320400,', 320412, '0000320000,0000320400,0000320412,', '1', 2, '江苏省/常州市/武进区', '武进区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320413', '320400', '0,320000,320400,', 320413, '0000320000,0000320400,0000320413,', '1', 2, '江苏省/常州市/金坛区', '金坛区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320481', '320400', '0,320000,320400,', 320481, '0000320000,0000320400,0000320481,', '1', 2, '江苏省/常州市/溧阳市', '溧阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320500', '320000', '0,320000,', 320500, '0000320000,0000320500,', '0', 1, '江苏省/苏州市', '苏州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320505', '320500', '0,320000,320500,', 320505, '0000320000,0000320500,0000320505,', '1', 2, '江苏省/苏州市/虎丘区', '虎丘区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320506', '320500', '0,320000,320500,', 320506, '0000320000,0000320500,0000320506,', '1', 2, '江苏省/苏州市/吴中区', '吴中区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320507', '320500', '0,320000,320500,', 320507, '0000320000,0000320500,0000320507,', '1', 2, '江苏省/苏州市/相城区', '相城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320508', '320500', '0,320000,320500,', 320508, '0000320000,0000320500,0000320508,', '1', 2, '江苏省/苏州市/姑苏区', '姑苏区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320509', '320500', '0,320000,320500,', 320509, '0000320000,0000320500,0000320509,', '1', 2, '江苏省/苏州市/吴江区', '吴江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320571', '320500', '0,320000,320500,', 320571, '0000320000,0000320500,0000320571,', '1', 2, '江苏省/苏州市/苏州工业园区', '苏州工业园区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320581', '320500', '0,320000,320500,', 320581, '0000320000,0000320500,0000320581,', '1', 2, '江苏省/苏州市/常熟市', '常熟市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320582', '320500', '0,320000,320500,', 320582, '0000320000,0000320500,0000320582,', '1', 2, '江苏省/苏州市/张家港市', '张家港市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320583', '320500', '0,320000,320500,', 320583, '0000320000,0000320500,0000320583,', '1', 2, '江苏省/苏州市/昆山市', '昆山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320585', '320500', '0,320000,320500,', 320585, '0000320000,0000320500,0000320585,', '1', 2, '江苏省/苏州市/太仓市', '太仓市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320600', '320000', '0,320000,', 320600, '0000320000,0000320600,', '0', 1, '江苏省/南通市', '南通市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320602', '320600', '0,320000,320600,', 320602, '0000320000,0000320600,0000320602,', '1', 2, '江苏省/南通市/崇川区', '崇川区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320611', '320600', '0,320000,320600,', 320611, '0000320000,0000320600,0000320611,', '1', 2, '江苏省/南通市/港闸区', '港闸区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320612', '320600', '0,320000,320600,', 320612, '0000320000,0000320600,0000320612,', '1', 2, '江苏省/南通市/通州区', '通州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320623', '320600', '0,320000,320600,', 320623, '0000320000,0000320600,0000320623,', '1', 2, '江苏省/南通市/如东县', '如东县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320681', '320600', '0,320000,320600,', 320681, '0000320000,0000320600,0000320681,', '1', 2, '江苏省/南通市/启东市', '启东市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320682', '320600', '0,320000,320600,', 320682, '0000320000,0000320600,0000320682,', '1', 2, '江苏省/南通市/如皋市', '如皋市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320684', '320600', '0,320000,320600,', 320684, '0000320000,0000320600,0000320684,', '1', 2, '江苏省/南通市/海门市', '海门市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320685', '320600', '0,320000,320600,', 320685, '0000320000,0000320600,0000320685,', '1', 2, '江苏省/南通市/海安市', '海安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320700', '320000', '0,320000,', 320700, '0000320000,0000320700,', '0', 1, '江苏省/连云港市', '连云港市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320703', '320700', '0,320000,320700,', 320703, '0000320000,0000320700,0000320703,', '1', 2, '江苏省/连云港市/连云区', '连云区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320706', '320700', '0,320000,320700,', 320706, '0000320000,0000320700,0000320706,', '1', 2, '江苏省/连云港市/海州区', '海州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320707', '320700', '0,320000,320700,', 320707, '0000320000,0000320700,0000320707,', '1', 2, '江苏省/连云港市/赣榆区', '赣榆区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320722', '320700', '0,320000,320700,', 320722, '0000320000,0000320700,0000320722,', '1', 2, '江苏省/连云港市/东海县', '东海县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320723', '320700', '0,320000,320700,', 320723, '0000320000,0000320700,0000320723,', '1', 2, '江苏省/连云港市/灌云县', '灌云县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320724', '320700', '0,320000,320700,', 320724, '0000320000,0000320700,0000320724,', '1', 2, '江苏省/连云港市/灌南县', '灌南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320800', '320000', '0,320000,', 320800, '0000320000,0000320800,', '0', 1, '江苏省/淮安市', '淮安市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320803', '320800', '0,320000,320800,', 320803, '0000320000,0000320800,0000320803,', '1', 2, '江苏省/淮安市/淮安区', '淮安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320804', '320800', '0,320000,320800,', 320804, '0000320000,0000320800,0000320804,', '1', 2, '江苏省/淮安市/淮阴区', '淮阴区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320812', '320800', '0,320000,320800,', 320812, '0000320000,0000320800,0000320812,', '1', 2, '江苏省/淮安市/清江浦区', '清江浦区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320813', '320800', '0,320000,320800,', 320813, '0000320000,0000320800,0000320813,', '1', 2, '江苏省/淮安市/洪泽区', '洪泽区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320826', '320800', '0,320000,320800,', 320826, '0000320000,0000320800,0000320826,', '1', 2, '江苏省/淮安市/涟水县', '涟水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320830', '320800', '0,320000,320800,', 320830, '0000320000,0000320800,0000320830,', '1', 2, '江苏省/淮安市/盱眙县', '盱眙县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320831', '320800', '0,320000,320800,', 320831, '0000320000,0000320800,0000320831,', '1', 2, '江苏省/淮安市/金湖县', '金湖县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320900', '320000', '0,320000,', 320900, '0000320000,0000320900,', '0', 1, '江苏省/盐城市', '盐城市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320902', '320900', '0,320000,320900,', 320902, '0000320000,0000320900,0000320902,', '1', 2, '江苏省/盐城市/亭湖区', '亭湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320903', '320900', '0,320000,320900,', 320903, '0000320000,0000320900,0000320903,', '1', 2, '江苏省/盐城市/盐都区', '盐都区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320904', '320900', '0,320000,320900,', 320904, '0000320000,0000320900,0000320904,', '1', 2, '江苏省/盐城市/大丰区', '大丰区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320921', '320900', '0,320000,320900,', 320921, '0000320000,0000320900,0000320921,', '1', 2, '江苏省/盐城市/响水县', '响水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320922', '320900', '0,320000,320900,', 320922, '0000320000,0000320900,0000320922,', '1', 2, '江苏省/盐城市/滨海县', '滨海县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320923', '320900', '0,320000,320900,', 320923, '0000320000,0000320900,0000320923,', '1', 2, '江苏省/盐城市/阜宁县', '阜宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320924', '320900', '0,320000,320900,', 320924, '0000320000,0000320900,0000320924,', '1', 2, '江苏省/盐城市/射阳县', '射阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320925', '320900', '0,320000,320900,', 320925, '0000320000,0000320900,0000320925,', '1', 2, '江苏省/盐城市/建湖县', '建湖县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('320981', '320900', '0,320000,320900,', 320981, '0000320000,0000320900,0000320981,', '1', 2, '江苏省/盐城市/东台市', '东台市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321000', '320000', '0,320000,', 321000, '0000320000,0000321000,', '0', 1, '江苏省/扬州市', '扬州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321002', '321000', '0,320000,321000,', 321002, '0000320000,0000321000,0000321002,', '1', 2, '江苏省/扬州市/广陵区', '广陵区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321003', '321000', '0,320000,321000,', 321003, '0000320000,0000321000,0000321003,', '1', 2, '江苏省/扬州市/邗江区', '邗江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321012', '321000', '0,320000,321000,', 321012, '0000320000,0000321000,0000321012,', '1', 2, '江苏省/扬州市/江都区', '江都区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321023', '321000', '0,320000,321000,', 321023, '0000320000,0000321000,0000321023,', '1', 2, '江苏省/扬州市/宝应县', '宝应县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321081', '321000', '0,320000,321000,', 321081, '0000320000,0000321000,0000321081,', '1', 2, '江苏省/扬州市/仪征市', '仪征市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321084', '321000', '0,320000,321000,', 321084, '0000320000,0000321000,0000321084,', '1', 2, '江苏省/扬州市/高邮市', '高邮市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321100', '320000', '0,320000,', 321100, '0000320000,0000321100,', '0', 1, '江苏省/镇江市', '镇江市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321102', '321100', '0,320000,321100,', 321102, '0000320000,0000321100,0000321102,', '1', 2, '江苏省/镇江市/京口区', '京口区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321111', '321100', '0,320000,321100,', 321111, '0000320000,0000321100,0000321111,', '1', 2, '江苏省/镇江市/润州区', '润州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321112', '321100', '0,320000,321100,', 321112, '0000320000,0000321100,0000321112,', '1', 2, '江苏省/镇江市/丹徒区', '丹徒区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321181', '321100', '0,320000,321100,', 321181, '0000320000,0000321100,0000321181,', '1', 2, '江苏省/镇江市/丹阳市', '丹阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321182', '321100', '0,320000,321100,', 321182, '0000320000,0000321100,0000321182,', '1', 2, '江苏省/镇江市/扬中市', '扬中市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321183', '321100', '0,320000,321100,', 321183, '0000320000,0000321100,0000321183,', '1', 2, '江苏省/镇江市/句容市', '句容市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321200', '320000', '0,320000,', 321200, '0000320000,0000321200,', '0', 1, '江苏省/泰州市', '泰州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321202', '321200', '0,320000,321200,', 321202, '0000320000,0000321200,0000321202,', '1', 2, '江苏省/泰州市/海陵区', '海陵区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321203', '321200', '0,320000,321200,', 321203, '0000320000,0000321200,0000321203,', '1', 2, '江苏省/泰州市/高港区', '高港区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321204', '321200', '0,320000,321200,', 321204, '0000320000,0000321200,0000321204,', '1', 2, '江苏省/泰州市/姜堰区', '姜堰区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321281', '321200', '0,320000,321200,', 321281, '0000320000,0000321200,0000321281,', '1', 2, '江苏省/泰州市/兴化市', '兴化市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321282', '321200', '0,320000,321200,', 321282, '0000320000,0000321200,0000321282,', '1', 2, '江苏省/泰州市/靖江市', '靖江市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321283', '321200', '0,320000,321200,', 321283, '0000320000,0000321200,0000321283,', '1', 2, '江苏省/泰州市/泰兴市', '泰兴市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321300', '320000', '0,320000,', 321300, '0000320000,0000321300,', '0', 1, '江苏省/宿迁市', '宿迁市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321302', '321300', '0,320000,321300,', 321302, '0000320000,0000321300,0000321302,', '1', 2, '江苏省/宿迁市/宿城区', '宿城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321311', '321300', '0,320000,321300,', 321311, '0000320000,0000321300,0000321311,', '1', 2, '江苏省/宿迁市/宿豫区', '宿豫区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321322', '321300', '0,320000,321300,', 321322, '0000320000,0000321300,0000321322,', '1', 2, '江苏省/宿迁市/沭阳县', '沭阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321323', '321300', '0,320000,321300,', 321323, '0000320000,0000321300,0000321323,', '1', 2, '江苏省/宿迁市/泗阳县', '泗阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('321324', '321300', '0,320000,321300,', 321324, '0000320000,0000321300,0000321324,', '1', 2, '江苏省/宿迁市/泗洪县', '泗洪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330000', '0', '0,', 330000, '0000330000,', '0', 0, '浙江省', '浙江省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330100', '330000', '0,330000,', 330100, '0000330000,0000330100,', '0', 1, '浙江省/杭州市', '杭州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330102', '330100', '0,330000,330100,', 330102, '0000330000,0000330100,0000330102,', '1', 2, '浙江省/杭州市/上城区', '上城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330103', '330100', '0,330000,330100,', 330103, '0000330000,0000330100,0000330103,', '1', 2, '浙江省/杭州市/下城区', '下城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330104', '330100', '0,330000,330100,', 330104, '0000330000,0000330100,0000330104,', '1', 2, '浙江省/杭州市/江干区', '江干区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330105', '330100', '0,330000,330100,', 330105, '0000330000,0000330100,0000330105,', '1', 2, '浙江省/杭州市/拱墅区', '拱墅区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330106', '330100', '0,330000,330100,', 330106, '0000330000,0000330100,0000330106,', '1', 2, '浙江省/杭州市/西湖区', '西湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330108', '330100', '0,330000,330100,', 330108, '0000330000,0000330100,0000330108,', '1', 2, '浙江省/杭州市/滨江区', '滨江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330109', '330100', '0,330000,330100,', 330109, '0000330000,0000330100,0000330109,', '1', 2, '浙江省/杭州市/萧山区', '萧山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330110', '330100', '0,330000,330100,', 330110, '0000330000,0000330100,0000330110,', '1', 2, '浙江省/杭州市/余杭区', '余杭区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330111', '330100', '0,330000,330100,', 330111, '0000330000,0000330100,0000330111,', '1', 2, '浙江省/杭州市/富阳区', '富阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330112', '330100', '0,330000,330100,', 330112, '0000330000,0000330100,0000330112,', '1', 2, '浙江省/杭州市/临安区', '临安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330122', '330100', '0,330000,330100,', 330122, '0000330000,0000330100,0000330122,', '1', 2, '浙江省/杭州市/桐庐县', '桐庐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330127', '330100', '0,330000,330100,', 330127, '0000330000,0000330100,0000330127,', '1', 2, '浙江省/杭州市/淳安县', '淳安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330182', '330100', '0,330000,330100,', 330182, '0000330000,0000330100,0000330182,', '1', 2, '浙江省/杭州市/建德市', '建德市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330200', '330000', '0,330000,', 330200, '0000330000,0000330200,', '0', 1, '浙江省/宁波市', '宁波市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330203', '330200', '0,330000,330200,', 330203, '0000330000,0000330200,0000330203,', '1', 2, '浙江省/宁波市/海曙区', '海曙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330205', '330200', '0,330000,330200,', 330205, '0000330000,0000330200,0000330205,', '1', 2, '浙江省/宁波市/江北区', '江北区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330206', '330200', '0,330000,330200,', 330206, '0000330000,0000330200,0000330206,', '1', 2, '浙江省/宁波市/北仑区', '北仑区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330211', '330200', '0,330000,330200,', 330211, '0000330000,0000330200,0000330211,', '1', 2, '浙江省/宁波市/镇海区', '镇海区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330212', '330200', '0,330000,330200,', 330212, '0000330000,0000330200,0000330212,', '1', 2, '浙江省/宁波市/鄞州区', '鄞州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330213', '330200', '0,330000,330200,', 330213, '0000330000,0000330200,0000330213,', '1', 2, '浙江省/宁波市/奉化区', '奉化区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330225', '330200', '0,330000,330200,', 330225, '0000330000,0000330200,0000330225,', '1', 2, '浙江省/宁波市/象山县', '象山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330226', '330200', '0,330000,330200,', 330226, '0000330000,0000330200,0000330226,', '1', 2, '浙江省/宁波市/宁海县', '宁海县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330281', '330200', '0,330000,330200,', 330281, '0000330000,0000330200,0000330281,', '1', 2, '浙江省/宁波市/余姚市', '余姚市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330282', '330200', '0,330000,330200,', 330282, '0000330000,0000330200,0000330282,', '1', 2, '浙江省/宁波市/慈溪市', '慈溪市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330300', '330000', '0,330000,', 330300, '0000330000,0000330300,', '0', 1, '浙江省/温州市', '温州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330302', '330300', '0,330000,330300,', 330302, '0000330000,0000330300,0000330302,', '1', 2, '浙江省/温州市/鹿城区', '鹿城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330303', '330300', '0,330000,330300,', 330303, '0000330000,0000330300,0000330303,', '1', 2, '浙江省/温州市/龙湾区', '龙湾区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330304', '330300', '0,330000,330300,', 330304, '0000330000,0000330300,0000330304,', '1', 2, '浙江省/温州市/瓯海区', '瓯海区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330305', '330300', '0,330000,330300,', 330305, '0000330000,0000330300,0000330305,', '1', 2, '浙江省/温州市/洞头区', '洞头区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330324', '330300', '0,330000,330300,', 330324, '0000330000,0000330300,0000330324,', '1', 2, '浙江省/温州市/永嘉县', '永嘉县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330326', '330300', '0,330000,330300,', 330326, '0000330000,0000330300,0000330326,', '1', 2, '浙江省/温州市/平阳县', '平阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330327', '330300', '0,330000,330300,', 330327, '0000330000,0000330300,0000330327,', '1', 2, '浙江省/温州市/苍南县', '苍南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330328', '330300', '0,330000,330300,', 330328, '0000330000,0000330300,0000330328,', '1', 2, '浙江省/温州市/文成县', '文成县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330329', '330300', '0,330000,330300,', 330329, '0000330000,0000330300,0000330329,', '1', 2, '浙江省/温州市/泰顺县', '泰顺县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330381', '330300', '0,330000,330300,', 330381, '0000330000,0000330300,0000330381,', '1', 2, '浙江省/温州市/瑞安市', '瑞安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330382', '330300', '0,330000,330300,', 330382, '0000330000,0000330300,0000330382,', '1', 2, '浙江省/温州市/乐清市', '乐清市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330383', '330300', '0,330000,330300,', 330383, '0000330000,0000330300,0000330383,', '1', 2, '浙江省/温州市/龙港市', '龙港市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330400', '330000', '0,330000,', 330400, '0000330000,0000330400,', '0', 1, '浙江省/嘉兴市', '嘉兴市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330402', '330400', '0,330000,330400,', 330402, '0000330000,0000330400,0000330402,', '1', 2, '浙江省/嘉兴市/南湖区', '南湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330411', '330400', '0,330000,330400,', 330411, '0000330000,0000330400,0000330411,', '1', 2, '浙江省/嘉兴市/秀洲区', '秀洲区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330421', '330400', '0,330000,330400,', 330421, '0000330000,0000330400,0000330421,', '1', 2, '浙江省/嘉兴市/嘉善县', '嘉善县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330424', '330400', '0,330000,330400,', 330424, '0000330000,0000330400,0000330424,', '1', 2, '浙江省/嘉兴市/海盐县', '海盐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330481', '330400', '0,330000,330400,', 330481, '0000330000,0000330400,0000330481,', '1', 2, '浙江省/嘉兴市/海宁市', '海宁市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330482', '330400', '0,330000,330400,', 330482, '0000330000,0000330400,0000330482,', '1', 2, '浙江省/嘉兴市/平湖市', '平湖市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330483', '330400', '0,330000,330400,', 330483, '0000330000,0000330400,0000330483,', '1', 2, '浙江省/嘉兴市/桐乡市', '桐乡市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330500', '330000', '0,330000,', 330500, '0000330000,0000330500,', '0', 1, '浙江省/湖州市', '湖州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330502', '330500', '0,330000,330500,', 330502, '0000330000,0000330500,0000330502,', '1', 2, '浙江省/湖州市/吴兴区', '吴兴区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330503', '330500', '0,330000,330500,', 330503, '0000330000,0000330500,0000330503,', '1', 2, '浙江省/湖州市/南浔区', '南浔区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330521', '330500', '0,330000,330500,', 330521, '0000330000,0000330500,0000330521,', '1', 2, '浙江省/湖州市/德清县', '德清县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330522', '330500', '0,330000,330500,', 330522, '0000330000,0000330500,0000330522,', '1', 2, '浙江省/湖州市/长兴县', '长兴县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330523', '330500', '0,330000,330500,', 330523, '0000330000,0000330500,0000330523,', '1', 2, '浙江省/湖州市/安吉县', '安吉县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330600', '330000', '0,330000,', 330600, '0000330000,0000330600,', '0', 1, '浙江省/绍兴市', '绍兴市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330602', '330600', '0,330000,330600,', 330602, '0000330000,0000330600,0000330602,', '1', 2, '浙江省/绍兴市/越城区', '越城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330603', '330600', '0,330000,330600,', 330603, '0000330000,0000330600,0000330603,', '1', 2, '浙江省/绍兴市/柯桥区', '柯桥区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330604', '330600', '0,330000,330600,', 330604, '0000330000,0000330600,0000330604,', '1', 2, '浙江省/绍兴市/上虞区', '上虞区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330624', '330600', '0,330000,330600,', 330624, '0000330000,0000330600,0000330624,', '1', 2, '浙江省/绍兴市/新昌县', '新昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330681', '330600', '0,330000,330600,', 330681, '0000330000,0000330600,0000330681,', '1', 2, '浙江省/绍兴市/诸暨市', '诸暨市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330683', '330600', '0,330000,330600,', 330683, '0000330000,0000330600,0000330683,', '1', 2, '浙江省/绍兴市/嵊州市', '嵊州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330700', '330000', '0,330000,', 330700, '0000330000,0000330700,', '0', 1, '浙江省/金华市', '金华市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330702', '330700', '0,330000,330700,', 330702, '0000330000,0000330700,0000330702,', '1', 2, '浙江省/金华市/婺城区', '婺城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330703', '330700', '0,330000,330700,', 330703, '0000330000,0000330700,0000330703,', '1', 2, '浙江省/金华市/金东区', '金东区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330723', '330700', '0,330000,330700,', 330723, '0000330000,0000330700,0000330723,', '1', 2, '浙江省/金华市/武义县', '武义县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330726', '330700', '0,330000,330700,', 330726, '0000330000,0000330700,0000330726,', '1', 2, '浙江省/金华市/浦江县', '浦江县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330727', '330700', '0,330000,330700,', 330727, '0000330000,0000330700,0000330727,', '1', 2, '浙江省/金华市/磐安县', '磐安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330781', '330700', '0,330000,330700,', 330781, '0000330000,0000330700,0000330781,', '1', 2, '浙江省/金华市/兰溪市', '兰溪市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330782', '330700', '0,330000,330700,', 330782, '0000330000,0000330700,0000330782,', '1', 2, '浙江省/金华市/义乌市', '义乌市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330783', '330700', '0,330000,330700,', 330783, '0000330000,0000330700,0000330783,', '1', 2, '浙江省/金华市/东阳市', '东阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330784', '330700', '0,330000,330700,', 330784, '0000330000,0000330700,0000330784,', '1', 2, '浙江省/金华市/永康市', '永康市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330800', '330000', '0,330000,', 330800, '0000330000,0000330800,', '0', 1, '浙江省/衢州市', '衢州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330802', '330800', '0,330000,330800,', 330802, '0000330000,0000330800,0000330802,', '1', 2, '浙江省/衢州市/柯城区', '柯城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330803', '330800', '0,330000,330800,', 330803, '0000330000,0000330800,0000330803,', '1', 2, '浙江省/衢州市/衢江区', '衢江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330822', '330800', '0,330000,330800,', 330822, '0000330000,0000330800,0000330822,', '1', 2, '浙江省/衢州市/常山县', '常山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330824', '330800', '0,330000,330800,', 330824, '0000330000,0000330800,0000330824,', '1', 2, '浙江省/衢州市/开化县', '开化县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330825', '330800', '0,330000,330800,', 330825, '0000330000,0000330800,0000330825,', '1', 2, '浙江省/衢州市/龙游县', '龙游县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330881', '330800', '0,330000,330800,', 330881, '0000330000,0000330800,0000330881,', '1', 2, '浙江省/衢州市/江山市', '江山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330900', '330000', '0,330000,', 330900, '0000330000,0000330900,', '0', 1, '浙江省/舟山市', '舟山市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330902', '330900', '0,330000,330900,', 330902, '0000330000,0000330900,0000330902,', '1', 2, '浙江省/舟山市/定海区', '定海区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330903', '330900', '0,330000,330900,', 330903, '0000330000,0000330900,0000330903,', '1', 2, '浙江省/舟山市/普陀区', '普陀区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330921', '330900', '0,330000,330900,', 330921, '0000330000,0000330900,0000330921,', '1', 2, '浙江省/舟山市/岱山县', '岱山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('330922', '330900', '0,330000,330900,', 330922, '0000330000,0000330900,0000330922,', '1', 2, '浙江省/舟山市/嵊泗县', '嵊泗县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331000', '330000', '0,330000,', 331000, '0000330000,0000331000,', '0', 1, '浙江省/台州市', '台州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331002', '331000', '0,330000,331000,', 331002, '0000330000,0000331000,0000331002,', '1', 2, '浙江省/台州市/椒江区', '椒江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331003', '331000', '0,330000,331000,', 331003, '0000330000,0000331000,0000331003,', '1', 2, '浙江省/台州市/黄岩区', '黄岩区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331004', '331000', '0,330000,331000,', 331004, '0000330000,0000331000,0000331004,', '1', 2, '浙江省/台州市/路桥区', '路桥区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331022', '331000', '0,330000,331000,', 331022, '0000330000,0000331000,0000331022,', '1', 2, '浙江省/台州市/三门县', '三门县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331023', '331000', '0,330000,331000,', 331023, '0000330000,0000331000,0000331023,', '1', 2, '浙江省/台州市/天台县', '天台县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331024', '331000', '0,330000,331000,', 331024, '0000330000,0000331000,0000331024,', '1', 2, '浙江省/台州市/仙居县', '仙居县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331081', '331000', '0,330000,331000,', 331081, '0000330000,0000331000,0000331081,', '1', 2, '浙江省/台州市/温岭市', '温岭市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331082', '331000', '0,330000,331000,', 331082, '0000330000,0000331000,0000331082,', '1', 2, '浙江省/台州市/临海市', '临海市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331083', '331000', '0,330000,331000,', 331083, '0000330000,0000331000,0000331083,', '1', 2, '浙江省/台州市/玉环市', '玉环市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331100', '330000', '0,330000,', 331100, '0000330000,0000331100,', '0', 1, '浙江省/丽水市', '丽水市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331102', '331100', '0,330000,331100,', 331102, '0000330000,0000331100,0000331102,', '1', 2, '浙江省/丽水市/莲都区', '莲都区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331121', '331100', '0,330000,331100,', 331121, '0000330000,0000331100,0000331121,', '1', 2, '浙江省/丽水市/青田县', '青田县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331122', '331100', '0,330000,331100,', 331122, '0000330000,0000331100,0000331122,', '1', 2, '浙江省/丽水市/缙云县', '缙云县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331123', '331100', '0,330000,331100,', 331123, '0000330000,0000331100,0000331123,', '1', 2, '浙江省/丽水市/遂昌县', '遂昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331124', '331100', '0,330000,331100,', 331124, '0000330000,0000331100,0000331124,', '1', 2, '浙江省/丽水市/松阳县', '松阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331125', '331100', '0,330000,331100,', 331125, '0000330000,0000331100,0000331125,', '1', 2, '浙江省/丽水市/云和县', '云和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331126', '331100', '0,330000,331100,', 331126, '0000330000,0000331100,0000331126,', '1', 2, '浙江省/丽水市/庆元县', '庆元县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331127', '331100', '0,330000,331100,', 331127, '0000330000,0000331100,0000331127,', '1', 2, '浙江省/丽水市/景宁畲族自治县', '景宁畲族自治县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('331181', '331100', '0,330000,331100,', 331181, '0000330000,0000331100,0000331181,', '1', 2, '浙江省/丽水市/龙泉市', '龙泉市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340000', '0', '0,', 340000, '0000340000,', '0', 0, '安徽省', '安徽省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340100', '340000', '0,340000,', 340100, '0000340000,0000340100,', '0', 1, '安徽省/合肥市', '合肥市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340102', '340100', '0,340000,340100,', 340102, '0000340000,0000340100,0000340102,', '1', 2, '安徽省/合肥市/瑶海区', '瑶海区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340103', '340100', '0,340000,340100,', 340103, '0000340000,0000340100,0000340103,', '1', 2, '安徽省/合肥市/庐阳区', '庐阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340104', '340100', '0,340000,340100,', 340104, '0000340000,0000340100,0000340104,', '1', 2, '安徽省/合肥市/蜀山区', '蜀山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340111', '340100', '0,340000,340100,', 340111, '0000340000,0000340100,0000340111,', '1', 2, '安徽省/合肥市/包河区', '包河区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340121', '340100', '0,340000,340100,', 340121, '0000340000,0000340100,0000340121,', '1', 2, '安徽省/合肥市/长丰县', '长丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340122', '340100', '0,340000,340100,', 340122, '0000340000,0000340100,0000340122,', '1', 2, '安徽省/合肥市/肥东县', '肥东县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340123', '340100', '0,340000,340100,', 340123, '0000340000,0000340100,0000340123,', '1', 2, '安徽省/合肥市/肥西县', '肥西县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340124', '340100', '0,340000,340100,', 340124, '0000340000,0000340100,0000340124,', '1', 2, '安徽省/合肥市/庐江县', '庐江县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340181', '340100', '0,340000,340100,', 340181, '0000340000,0000340100,0000340181,', '1', 2, '安徽省/合肥市/巢湖市', '巢湖市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340200', '340000', '0,340000,', 340200, '0000340000,0000340200,', '0', 1, '安徽省/芜湖市', '芜湖市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340202', '340200', '0,340000,340200,', 340202, '0000340000,0000340200,0000340202,', '1', 2, '安徽省/芜湖市/镜湖区', '镜湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340203', '340200', '0,340000,340200,', 340203, '0000340000,0000340200,0000340203,', '1', 2, '安徽省/芜湖市/弋江区', '弋江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340207', '340200', '0,340000,340200,', 340207, '0000340000,0000340200,0000340207,', '1', 2, '安徽省/芜湖市/鸠江区', '鸠江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340208', '340200', '0,340000,340200,', 340208, '0000340000,0000340200,0000340208,', '1', 2, '安徽省/芜湖市/三山区', '三山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340221', '340200', '0,340000,340200,', 340221, '0000340000,0000340200,0000340221,', '1', 2, '安徽省/芜湖市/芜湖县', '芜湖县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340222', '340200', '0,340000,340200,', 340222, '0000340000,0000340200,0000340222,', '1', 2, '安徽省/芜湖市/繁昌县', '繁昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340223', '340200', '0,340000,340200,', 340223, '0000340000,0000340200,0000340223,', '1', 2, '安徽省/芜湖市/南陵县', '南陵县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340281', '340200', '0,340000,340200,', 340281, '0000340000,0000340200,0000340281,', '1', 2, '安徽省/芜湖市/无为市', '无为市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340300', '340000', '0,340000,', 340300, '0000340000,0000340300,', '0', 1, '安徽省/蚌埠市', '蚌埠市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340302', '340300', '0,340000,340300,', 340302, '0000340000,0000340300,0000340302,', '1', 2, '安徽省/蚌埠市/龙子湖区', '龙子湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340303', '340300', '0,340000,340300,', 340303, '0000340000,0000340300,0000340303,', '1', 2, '安徽省/蚌埠市/蚌山区', '蚌山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340304', '340300', '0,340000,340300,', 340304, '0000340000,0000340300,0000340304,', '1', 2, '安徽省/蚌埠市/禹会区', '禹会区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340311', '340300', '0,340000,340300,', 340311, '0000340000,0000340300,0000340311,', '1', 2, '安徽省/蚌埠市/淮上区', '淮上区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340321', '340300', '0,340000,340300,', 340321, '0000340000,0000340300,0000340321,', '1', 2, '安徽省/蚌埠市/怀远县', '怀远县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340322', '340300', '0,340000,340300,', 340322, '0000340000,0000340300,0000340322,', '1', 2, '安徽省/蚌埠市/五河县', '五河县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340323', '340300', '0,340000,340300,', 340323, '0000340000,0000340300,0000340323,', '1', 2, '安徽省/蚌埠市/固镇县', '固镇县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340400', '340000', '0,340000,', 340400, '0000340000,0000340400,', '0', 1, '安徽省/淮南市', '淮南市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340402', '340400', '0,340000,340400,', 340402, '0000340000,0000340400,0000340402,', '1', 2, '安徽省/淮南市/大通区', '大通区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340403', '340400', '0,340000,340400,', 340403, '0000340000,0000340400,0000340403,', '1', 2, '安徽省/淮南市/田家庵区', '田家庵区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340404', '340400', '0,340000,340400,', 340404, '0000340000,0000340400,0000340404,', '1', 2, '安徽省/淮南市/谢家集区', '谢家集区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340405', '340400', '0,340000,340400,', 340405, '0000340000,0000340400,0000340405,', '1', 2, '安徽省/淮南市/八公山区', '八公山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340406', '340400', '0,340000,340400,', 340406, '0000340000,0000340400,0000340406,', '1', 2, '安徽省/淮南市/潘集区', '潘集区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340421', '340400', '0,340000,340400,', 340421, '0000340000,0000340400,0000340421,', '1', 2, '安徽省/淮南市/凤台县', '凤台县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340422', '340400', '0,340000,340400,', 340422, '0000340000,0000340400,0000340422,', '1', 2, '安徽省/淮南市/寿县', '寿县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340500', '340000', '0,340000,', 340500, '0000340000,0000340500,', '0', 1, '安徽省/马鞍山市', '马鞍山市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340503', '340500', '0,340000,340500,', 340503, '0000340000,0000340500,0000340503,', '1', 2, '安徽省/马鞍山市/花山区', '花山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340504', '340500', '0,340000,340500,', 340504, '0000340000,0000340500,0000340504,', '1', 2, '安徽省/马鞍山市/雨山区', '雨山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340506', '340500', '0,340000,340500,', 340506, '0000340000,0000340500,0000340506,', '1', 2, '安徽省/马鞍山市/博望区', '博望区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340521', '340500', '0,340000,340500,', 340521, '0000340000,0000340500,0000340521,', '1', 2, '安徽省/马鞍山市/当涂县', '当涂县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340522', '340500', '0,340000,340500,', 340522, '0000340000,0000340500,0000340522,', '1', 2, '安徽省/马鞍山市/含山县', '含山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340523', '340500', '0,340000,340500,', 340523, '0000340000,0000340500,0000340523,', '1', 2, '安徽省/马鞍山市/和县', '和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340600', '340000', '0,340000,', 340600, '0000340000,0000340600,', '0', 1, '安徽省/淮北市', '淮北市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340602', '340600', '0,340000,340600,', 340602, '0000340000,0000340600,0000340602,', '1', 2, '安徽省/淮北市/杜集区', '杜集区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340603', '340600', '0,340000,340600,', 340603, '0000340000,0000340600,0000340603,', '1', 2, '安徽省/淮北市/相山区', '相山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340604', '340600', '0,340000,340600,', 340604, '0000340000,0000340600,0000340604,', '1', 2, '安徽省/淮北市/烈山区', '烈山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340621', '340600', '0,340000,340600,', 340621, '0000340000,0000340600,0000340621,', '1', 2, '安徽省/淮北市/濉溪县', '濉溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340700', '340000', '0,340000,', 340700, '0000340000,0000340700,', '0', 1, '安徽省/铜陵市', '铜陵市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340705', '340700', '0,340000,340700,', 340705, '0000340000,0000340700,0000340705,', '1', 2, '安徽省/铜陵市/铜官区', '铜官区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340706', '340700', '0,340000,340700,', 340706, '0000340000,0000340700,0000340706,', '1', 2, '安徽省/铜陵市/义安区', '义安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340711', '340700', '0,340000,340700,', 340711, '0000340000,0000340700,0000340711,', '1', 2, '安徽省/铜陵市/郊区', '郊区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340722', '340700', '0,340000,340700,', 340722, '0000340000,0000340700,0000340722,', '1', 2, '安徽省/铜陵市/枞阳县', '枞阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340800', '340000', '0,340000,', 340800, '0000340000,0000340800,', '0', 1, '安徽省/安庆市', '安庆市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340802', '340800', '0,340000,340800,', 340802, '0000340000,0000340800,0000340802,', '1', 2, '安徽省/安庆市/迎江区', '迎江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340803', '340800', '0,340000,340800,', 340803, '0000340000,0000340800,0000340803,', '1', 2, '安徽省/安庆市/大观区', '大观区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340811', '340800', '0,340000,340800,', 340811, '0000340000,0000340800,0000340811,', '1', 2, '安徽省/安庆市/宜秀区', '宜秀区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340822', '340800', '0,340000,340800,', 340822, '0000340000,0000340800,0000340822,', '1', 2, '安徽省/安庆市/怀宁县', '怀宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340825', '340800', '0,340000,340800,', 340825, '0000340000,0000340800,0000340825,', '1', 2, '安徽省/安庆市/太湖县', '太湖县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340826', '340800', '0,340000,340800,', 340826, '0000340000,0000340800,0000340826,', '1', 2, '安徽省/安庆市/宿松县', '宿松县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340827', '340800', '0,340000,340800,', 340827, '0000340000,0000340800,0000340827,', '1', 2, '安徽省/安庆市/望江县', '望江县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340828', '340800', '0,340000,340800,', 340828, '0000340000,0000340800,0000340828,', '1', 2, '安徽省/安庆市/岳西县', '岳西县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340881', '340800', '0,340000,340800,', 340881, '0000340000,0000340800,0000340881,', '1', 2, '安徽省/安庆市/桐城市', '桐城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('340882', '340800', '0,340000,340800,', 340882, '0000340000,0000340800,0000340882,', '1', 2, '安徽省/安庆市/潜山市', '潜山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341000', '340000', '0,340000,', 341000, '0000340000,0000341000,', '0', 1, '安徽省/黄山市', '黄山市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341002', '341000', '0,340000,341000,', 341002, '0000340000,0000341000,0000341002,', '1', 2, '安徽省/黄山市/屯溪区', '屯溪区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341003', '341000', '0,340000,341000,', 341003, '0000340000,0000341000,0000341003,', '1', 2, '安徽省/黄山市/黄山区', '黄山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341004', '341000', '0,340000,341000,', 341004, '0000340000,0000341000,0000341004,', '1', 2, '安徽省/黄山市/徽州区', '徽州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341021', '341000', '0,340000,341000,', 341021, '0000340000,0000341000,0000341021,', '1', 2, '安徽省/黄山市/歙县', '歙县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341022', '341000', '0,340000,341000,', 341022, '0000340000,0000341000,0000341022,', '1', 2, '安徽省/黄山市/休宁县', '休宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341023', '341000', '0,340000,341000,', 341023, '0000340000,0000341000,0000341023,', '1', 2, '安徽省/黄山市/黟县', '黟县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341024', '341000', '0,340000,341000,', 341024, '0000340000,0000341000,0000341024,', '1', 2, '安徽省/黄山市/祁门县', '祁门县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341100', '340000', '0,340000,', 341100, '0000340000,0000341100,', '0', 1, '安徽省/滁州市', '滁州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341102', '341100', '0,340000,341100,', 341102, '0000340000,0000341100,0000341102,', '1', 2, '安徽省/滁州市/琅琊区', '琅琊区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341103', '341100', '0,340000,341100,', 341103, '0000340000,0000341100,0000341103,', '1', 2, '安徽省/滁州市/南谯区', '南谯区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341122', '341100', '0,340000,341100,', 341122, '0000340000,0000341100,0000341122,', '1', 2, '安徽省/滁州市/来安县', '来安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341124', '341100', '0,340000,341100,', 341124, '0000340000,0000341100,0000341124,', '1', 2, '安徽省/滁州市/全椒县', '全椒县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341125', '341100', '0,340000,341100,', 341125, '0000340000,0000341100,0000341125,', '1', 2, '安徽省/滁州市/定远县', '定远县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341126', '341100', '0,340000,341100,', 341126, '0000340000,0000341100,0000341126,', '1', 2, '安徽省/滁州市/凤阳县', '凤阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341181', '341100', '0,340000,341100,', 341181, '0000340000,0000341100,0000341181,', '1', 2, '安徽省/滁州市/天长市', '天长市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341182', '341100', '0,340000,341100,', 341182, '0000340000,0000341100,0000341182,', '1', 2, '安徽省/滁州市/明光市', '明光市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341200', '340000', '0,340000,', 341200, '0000340000,0000341200,', '0', 1, '安徽省/阜阳市', '阜阳市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341202', '341200', '0,340000,341200,', 341202, '0000340000,0000341200,0000341202,', '1', 2, '安徽省/阜阳市/颍州区', '颍州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341203', '341200', '0,340000,341200,', 341203, '0000340000,0000341200,0000341203,', '1', 2, '安徽省/阜阳市/颍东区', '颍东区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341204', '341200', '0,340000,341200,', 341204, '0000340000,0000341200,0000341204,', '1', 2, '安徽省/阜阳市/颍泉区', '颍泉区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341221', '341200', '0,340000,341200,', 341221, '0000340000,0000341200,0000341221,', '1', 2, '安徽省/阜阳市/临泉县', '临泉县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341222', '341200', '0,340000,341200,', 341222, '0000340000,0000341200,0000341222,', '1', 2, '安徽省/阜阳市/太和县', '太和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341225', '341200', '0,340000,341200,', 341225, '0000340000,0000341200,0000341225,', '1', 2, '安徽省/阜阳市/阜南县', '阜南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341226', '341200', '0,340000,341200,', 341226, '0000340000,0000341200,0000341226,', '1', 2, '安徽省/阜阳市/颍上县', '颍上县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341282', '341200', '0,340000,341200,', 341282, '0000340000,0000341200,0000341282,', '1', 2, '安徽省/阜阳市/界首市', '界首市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341300', '340000', '0,340000,', 341300, '0000340000,0000341300,', '0', 1, '安徽省/宿州市', '宿州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341302', '341300', '0,340000,341300,', 341302, '0000340000,0000341300,0000341302,', '1', 2, '安徽省/宿州市/埇桥区', '埇桥区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341321', '341300', '0,340000,341300,', 341321, '0000340000,0000341300,0000341321,', '1', 2, '安徽省/宿州市/砀山县', '砀山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341322', '341300', '0,340000,341300,', 341322, '0000340000,0000341300,0000341322,', '1', 2, '安徽省/宿州市/萧县', '萧县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341323', '341300', '0,340000,341300,', 341323, '0000340000,0000341300,0000341323,', '1', 2, '安徽省/宿州市/灵璧县', '灵璧县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341324', '341300', '0,340000,341300,', 341324, '0000340000,0000341300,0000341324,', '1', 2, '安徽省/宿州市/泗县', '泗县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341500', '340000', '0,340000,', 341500, '0000340000,0000341500,', '0', 1, '安徽省/六安市', '六安市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341502', '341500', '0,340000,341500,', 341502, '0000340000,0000341500,0000341502,', '1', 2, '安徽省/六安市/金安区', '金安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341503', '341500', '0,340000,341500,', 341503, '0000340000,0000341500,0000341503,', '1', 2, '安徽省/六安市/裕安区', '裕安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341504', '341500', '0,340000,341500,', 341504, '0000340000,0000341500,0000341504,', '1', 2, '安徽省/六安市/叶集区', '叶集区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341522', '341500', '0,340000,341500,', 341522, '0000340000,0000341500,0000341522,', '1', 2, '安徽省/六安市/霍邱县', '霍邱县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341523', '341500', '0,340000,341500,', 341523, '0000340000,0000341500,0000341523,', '1', 2, '安徽省/六安市/舒城县', '舒城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341524', '341500', '0,340000,341500,', 341524, '0000340000,0000341500,0000341524,', '1', 2, '安徽省/六安市/金寨县', '金寨县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341525', '341500', '0,340000,341500,', 341525, '0000340000,0000341500,0000341525,', '1', 2, '安徽省/六安市/霍山县', '霍山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341600', '340000', '0,340000,', 341600, '0000340000,0000341600,', '0', 1, '安徽省/亳州市', '亳州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341602', '341600', '0,340000,341600,', 341602, '0000340000,0000341600,0000341602,', '1', 2, '安徽省/亳州市/谯城区', '谯城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341621', '341600', '0,340000,341600,', 341621, '0000340000,0000341600,0000341621,', '1', 2, '安徽省/亳州市/涡阳县', '涡阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341622', '341600', '0,340000,341600,', 341622, '0000340000,0000341600,0000341622,', '1', 2, '安徽省/亳州市/蒙城县', '蒙城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341623', '341600', '0,340000,341600,', 341623, '0000340000,0000341600,0000341623,', '1', 2, '安徽省/亳州市/利辛县', '利辛县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341700', '340000', '0,340000,', 341700, '0000340000,0000341700,', '0', 1, '安徽省/池州市', '池州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341702', '341700', '0,340000,341700,', 341702, '0000340000,0000341700,0000341702,', '1', 2, '安徽省/池州市/贵池区', '贵池区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341721', '341700', '0,340000,341700,', 341721, '0000340000,0000341700,0000341721,', '1', 2, '安徽省/池州市/东至县', '东至县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341722', '341700', '0,340000,341700,', 341722, '0000340000,0000341700,0000341722,', '1', 2, '安徽省/池州市/石台县', '石台县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341723', '341700', '0,340000,341700,', 341723, '0000340000,0000341700,0000341723,', '1', 2, '安徽省/池州市/青阳县', '青阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341800', '340000', '0,340000,', 341800, '0000340000,0000341800,', '0', 1, '安徽省/宣城市', '宣城市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341802', '341800', '0,340000,341800,', 341802, '0000340000,0000341800,0000341802,', '1', 2, '安徽省/宣城市/宣州区', '宣州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341821', '341800', '0,340000,341800,', 341821, '0000340000,0000341800,0000341821,', '1', 2, '安徽省/宣城市/郎溪县', '郎溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341823', '341800', '0,340000,341800,', 341823, '0000340000,0000341800,0000341823,', '1', 2, '安徽省/宣城市/泾县', '泾县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341824', '341800', '0,340000,341800,', 341824, '0000340000,0000341800,0000341824,', '1', 2, '安徽省/宣城市/绩溪县', '绩溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341825', '341800', '0,340000,341800,', 341825, '0000340000,0000341800,0000341825,', '1', 2, '安徽省/宣城市/旌德县', '旌德县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341881', '341800', '0,340000,341800,', 341881, '0000340000,0000341800,0000341881,', '1', 2, '安徽省/宣城市/宁国市', '宁国市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('341882', '341800', '0,340000,341800,', 341882, '0000340000,0000341800,0000341882,', '1', 2, '安徽省/宣城市/广德市', '广德市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350000', '0', '0,', 350000, '0000350000,', '0', 0, '福建省', '福建省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350100', '350000', '0,350000,', 350100, '0000350000,0000350100,', '0', 1, '福建省/福州市', '福州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350102', '350100', '0,350000,350100,', 350102, '0000350000,0000350100,0000350102,', '1', 2, '福建省/福州市/鼓楼区', '鼓楼区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350103', '350100', '0,350000,350100,', 350103, '0000350000,0000350100,0000350103,', '1', 2, '福建省/福州市/台江区', '台江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350104', '350100', '0,350000,350100,', 350104, '0000350000,0000350100,0000350104,', '1', 2, '福建省/福州市/仓山区', '仓山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350105', '350100', '0,350000,350100,', 350105, '0000350000,0000350100,0000350105,', '1', 2, '福建省/福州市/马尾区', '马尾区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350111', '350100', '0,350000,350100,', 350111, '0000350000,0000350100,0000350111,', '1', 2, '福建省/福州市/晋安区', '晋安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350112', '350100', '0,350000,350100,', 350112, '0000350000,0000350100,0000350112,', '1', 2, '福建省/福州市/长乐区', '长乐区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350121', '350100', '0,350000,350100,', 350121, '0000350000,0000350100,0000350121,', '1', 2, '福建省/福州市/闽侯县', '闽侯县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350122', '350100', '0,350000,350100,', 350122, '0000350000,0000350100,0000350122,', '1', 2, '福建省/福州市/连江县', '连江县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350123', '350100', '0,350000,350100,', 350123, '0000350000,0000350100,0000350123,', '1', 2, '福建省/福州市/罗源县', '罗源县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350124', '350100', '0,350000,350100,', 350124, '0000350000,0000350100,0000350124,', '1', 2, '福建省/福州市/闽清县', '闽清县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350125', '350100', '0,350000,350100,', 350125, '0000350000,0000350100,0000350125,', '1', 2, '福建省/福州市/永泰县', '永泰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350128', '350100', '0,350000,350100,', 350128, '0000350000,0000350100,0000350128,', '1', 2, '福建省/福州市/平潭县', '平潭县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350181', '350100', '0,350000,350100,', 350181, '0000350000,0000350100,0000350181,', '1', 2, '福建省/福州市/福清市', '福清市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350200', '350000', '0,350000,', 350200, '0000350000,0000350200,', '0', 1, '福建省/厦门市', '厦门市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350203', '350200', '0,350000,350200,', 350203, '0000350000,0000350200,0000350203,', '1', 2, '福建省/厦门市/思明区', '思明区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350205', '350200', '0,350000,350200,', 350205, '0000350000,0000350200,0000350205,', '1', 2, '福建省/厦门市/海沧区', '海沧区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350206', '350200', '0,350000,350200,', 350206, '0000350000,0000350200,0000350206,', '1', 2, '福建省/厦门市/湖里区', '湖里区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350211', '350200', '0,350000,350200,', 350211, '0000350000,0000350200,0000350211,', '1', 2, '福建省/厦门市/集美区', '集美区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350212', '350200', '0,350000,350200,', 350212, '0000350000,0000350200,0000350212,', '1', 2, '福建省/厦门市/同安区', '同安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350213', '350200', '0,350000,350200,', 350213, '0000350000,0000350200,0000350213,', '1', 2, '福建省/厦门市/翔安区', '翔安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350300', '350000', '0,350000,', 350300, '0000350000,0000350300,', '0', 1, '福建省/莆田市', '莆田市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350302', '350300', '0,350000,350300,', 350302, '0000350000,0000350300,0000350302,', '1', 2, '福建省/莆田市/城厢区', '城厢区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350303', '350300', '0,350000,350300,', 350303, '0000350000,0000350300,0000350303,', '1', 2, '福建省/莆田市/涵江区', '涵江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350304', '350300', '0,350000,350300,', 350304, '0000350000,0000350300,0000350304,', '1', 2, '福建省/莆田市/荔城区', '荔城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350305', '350300', '0,350000,350300,', 350305, '0000350000,0000350300,0000350305,', '1', 2, '福建省/莆田市/秀屿区', '秀屿区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350322', '350300', '0,350000,350300,', 350322, '0000350000,0000350300,0000350322,', '1', 2, '福建省/莆田市/仙游县', '仙游县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350400', '350000', '0,350000,', 350400, '0000350000,0000350400,', '0', 1, '福建省/三明市', '三明市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350402', '350400', '0,350000,350400,', 350402, '0000350000,0000350400,0000350402,', '1', 2, '福建省/三明市/梅列区', '梅列区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350403', '350400', '0,350000,350400,', 350403, '0000350000,0000350400,0000350403,', '1', 2, '福建省/三明市/三元区', '三元区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350421', '350400', '0,350000,350400,', 350421, '0000350000,0000350400,0000350421,', '1', 2, '福建省/三明市/明溪县', '明溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350423', '350400', '0,350000,350400,', 350423, '0000350000,0000350400,0000350423,', '1', 2, '福建省/三明市/清流县', '清流县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350424', '350400', '0,350000,350400,', 350424, '0000350000,0000350400,0000350424,', '1', 2, '福建省/三明市/宁化县', '宁化县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350425', '350400', '0,350000,350400,', 350425, '0000350000,0000350400,0000350425,', '1', 2, '福建省/三明市/大田县', '大田县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350426', '350400', '0,350000,350400,', 350426, '0000350000,0000350400,0000350426,', '1', 2, '福建省/三明市/尤溪县', '尤溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350427', '350400', '0,350000,350400,', 350427, '0000350000,0000350400,0000350427,', '1', 2, '福建省/三明市/沙县', '沙县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350428', '350400', '0,350000,350400,', 350428, '0000350000,0000350400,0000350428,', '1', 2, '福建省/三明市/将乐县', '将乐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350429', '350400', '0,350000,350400,', 350429, '0000350000,0000350400,0000350429,', '1', 2, '福建省/三明市/泰宁县', '泰宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350430', '350400', '0,350000,350400,', 350430, '0000350000,0000350400,0000350430,', '1', 2, '福建省/三明市/建宁县', '建宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350481', '350400', '0,350000,350400,', 350481, '0000350000,0000350400,0000350481,', '1', 2, '福建省/三明市/永安市', '永安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350500', '350000', '0,350000,', 350500, '0000350000,0000350500,', '0', 1, '福建省/泉州市', '泉州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350502', '350500', '0,350000,350500,', 350502, '0000350000,0000350500,0000350502,', '1', 2, '福建省/泉州市/鲤城区', '鲤城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350503', '350500', '0,350000,350500,', 350503, '0000350000,0000350500,0000350503,', '1', 2, '福建省/泉州市/丰泽区', '丰泽区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350504', '350500', '0,350000,350500,', 350504, '0000350000,0000350500,0000350504,', '1', 2, '福建省/泉州市/洛江区', '洛江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350505', '350500', '0,350000,350500,', 350505, '0000350000,0000350500,0000350505,', '1', 2, '福建省/泉州市/泉港区', '泉港区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350521', '350500', '0,350000,350500,', 350521, '0000350000,0000350500,0000350521,', '1', 2, '福建省/泉州市/惠安县', '惠安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350524', '350500', '0,350000,350500,', 350524, '0000350000,0000350500,0000350524,', '1', 2, '福建省/泉州市/安溪县', '安溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350525', '350500', '0,350000,350500,', 350525, '0000350000,0000350500,0000350525,', '1', 2, '福建省/泉州市/永春县', '永春县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350526', '350500', '0,350000,350500,', 350526, '0000350000,0000350500,0000350526,', '1', 2, '福建省/泉州市/德化县', '德化县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350527', '350500', '0,350000,350500,', 350527, '0000350000,0000350500,0000350527,', '1', 2, '福建省/泉州市/金门县', '金门县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350581', '350500', '0,350000,350500,', 350581, '0000350000,0000350500,0000350581,', '1', 2, '福建省/泉州市/石狮市', '石狮市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350582', '350500', '0,350000,350500,', 350582, '0000350000,0000350500,0000350582,', '1', 2, '福建省/泉州市/晋江市', '晋江市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350583', '350500', '0,350000,350500,', 350583, '0000350000,0000350500,0000350583,', '1', 2, '福建省/泉州市/南安市', '南安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350600', '350000', '0,350000,', 350600, '0000350000,0000350600,', '0', 1, '福建省/漳州市', '漳州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350602', '350600', '0,350000,350600,', 350602, '0000350000,0000350600,0000350602,', '1', 2, '福建省/漳州市/芗城区', '芗城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350603', '350600', '0,350000,350600,', 350603, '0000350000,0000350600,0000350603,', '1', 2, '福建省/漳州市/龙文区', '龙文区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350622', '350600', '0,350000,350600,', 350622, '0000350000,0000350600,0000350622,', '1', 2, '福建省/漳州市/云霄县', '云霄县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350623', '350600', '0,350000,350600,', 350623, '0000350000,0000350600,0000350623,', '1', 2, '福建省/漳州市/漳浦县', '漳浦县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350624', '350600', '0,350000,350600,', 350624, '0000350000,0000350600,0000350624,', '1', 2, '福建省/漳州市/诏安县', '诏安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350625', '350600', '0,350000,350600,', 350625, '0000350000,0000350600,0000350625,', '1', 2, '福建省/漳州市/长泰县', '长泰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350626', '350600', '0,350000,350600,', 350626, '0000350000,0000350600,0000350626,', '1', 2, '福建省/漳州市/东山县', '东山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350627', '350600', '0,350000,350600,', 350627, '0000350000,0000350600,0000350627,', '1', 2, '福建省/漳州市/南靖县', '南靖县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350628', '350600', '0,350000,350600,', 350628, '0000350000,0000350600,0000350628,', '1', 2, '福建省/漳州市/平和县', '平和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350629', '350600', '0,350000,350600,', 350629, '0000350000,0000350600,0000350629,', '1', 2, '福建省/漳州市/华安县', '华安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350681', '350600', '0,350000,350600,', 350681, '0000350000,0000350600,0000350681,', '1', 2, '福建省/漳州市/龙海市', '龙海市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350700', '350000', '0,350000,', 350700, '0000350000,0000350700,', '0', 1, '福建省/南平市', '南平市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350702', '350700', '0,350000,350700,', 350702, '0000350000,0000350700,0000350702,', '1', 2, '福建省/南平市/延平区', '延平区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350703', '350700', '0,350000,350700,', 350703, '0000350000,0000350700,0000350703,', '1', 2, '福建省/南平市/建阳区', '建阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350721', '350700', '0,350000,350700,', 350721, '0000350000,0000350700,0000350721,', '1', 2, '福建省/南平市/顺昌县', '顺昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350722', '350700', '0,350000,350700,', 350722, '0000350000,0000350700,0000350722,', '1', 2, '福建省/南平市/浦城县', '浦城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350723', '350700', '0,350000,350700,', 350723, '0000350000,0000350700,0000350723,', '1', 2, '福建省/南平市/光泽县', '光泽县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350724', '350700', '0,350000,350700,', 350724, '0000350000,0000350700,0000350724,', '1', 2, '福建省/南平市/松溪县', '松溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350725', '350700', '0,350000,350700,', 350725, '0000350000,0000350700,0000350725,', '1', 2, '福建省/南平市/政和县', '政和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350781', '350700', '0,350000,350700,', 350781, '0000350000,0000350700,0000350781,', '1', 2, '福建省/南平市/邵武市', '邵武市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350782', '350700', '0,350000,350700,', 350782, '0000350000,0000350700,0000350782,', '1', 2, '福建省/南平市/武夷山市', '武夷山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350783', '350700', '0,350000,350700,', 350783, '0000350000,0000350700,0000350783,', '1', 2, '福建省/南平市/建瓯市', '建瓯市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350800', '350000', '0,350000,', 350800, '0000350000,0000350800,', '0', 1, '福建省/龙岩市', '龙岩市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350802', '350800', '0,350000,350800,', 350802, '0000350000,0000350800,0000350802,', '1', 2, '福建省/龙岩市/新罗区', '新罗区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350803', '350800', '0,350000,350800,', 350803, '0000350000,0000350800,0000350803,', '1', 2, '福建省/龙岩市/永定区', '永定区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350821', '350800', '0,350000,350800,', 350821, '0000350000,0000350800,0000350821,', '1', 2, '福建省/龙岩市/长汀县', '长汀县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350823', '350800', '0,350000,350800,', 350823, '0000350000,0000350800,0000350823,', '1', 2, '福建省/龙岩市/上杭县', '上杭县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350824', '350800', '0,350000,350800,', 350824, '0000350000,0000350800,0000350824,', '1', 2, '福建省/龙岩市/武平县', '武平县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350825', '350800', '0,350000,350800,', 350825, '0000350000,0000350800,0000350825,', '1', 2, '福建省/龙岩市/连城县', '连城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350881', '350800', '0,350000,350800,', 350881, '0000350000,0000350800,0000350881,', '1', 2, '福建省/龙岩市/漳平市', '漳平市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350900', '350000', '0,350000,', 350900, '0000350000,0000350900,', '0', 1, '福建省/宁德市', '宁德市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350902', '350900', '0,350000,350900,', 350902, '0000350000,0000350900,0000350902,', '1', 2, '福建省/宁德市/蕉城区', '蕉城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350921', '350900', '0,350000,350900,', 350921, '0000350000,0000350900,0000350921,', '1', 2, '福建省/宁德市/霞浦县', '霞浦县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350922', '350900', '0,350000,350900,', 350922, '0000350000,0000350900,0000350922,', '1', 2, '福建省/宁德市/古田县', '古田县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350923', '350900', '0,350000,350900,', 350923, '0000350000,0000350900,0000350923,', '1', 2, '福建省/宁德市/屏南县', '屏南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350924', '350900', '0,350000,350900,', 350924, '0000350000,0000350900,0000350924,', '1', 2, '福建省/宁德市/寿宁县', '寿宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350925', '350900', '0,350000,350900,', 350925, '0000350000,0000350900,0000350925,', '1', 2, '福建省/宁德市/周宁县', '周宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350926', '350900', '0,350000,350900,', 350926, '0000350000,0000350900,0000350926,', '1', 2, '福建省/宁德市/柘荣县', '柘荣县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350981', '350900', '0,350000,350900,', 350981, '0000350000,0000350900,0000350981,', '1', 2, '福建省/宁德市/福安市', '福安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('350982', '350900', '0,350000,350900,', 350982, '0000350000,0000350900,0000350982,', '1', 2, '福建省/宁德市/福鼎市', '福鼎市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360000', '0', '0,', 360000, '0000360000,', '0', 0, '江西省', '江西省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360100', '360000', '0,360000,', 360100, '0000360000,0000360100,', '0', 1, '江西省/南昌市', '南昌市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360102', '360100', '0,360000,360100,', 360102, '0000360000,0000360100,0000360102,', '1', 2, '江西省/南昌市/东湖区', '东湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360103', '360100', '0,360000,360100,', 360103, '0000360000,0000360100,0000360103,', '1', 2, '江西省/南昌市/西湖区', '西湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360104', '360100', '0,360000,360100,', 360104, '0000360000,0000360100,0000360104,', '1', 2, '江西省/南昌市/青云谱区', '青云谱区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360111', '360100', '0,360000,360100,', 360111, '0000360000,0000360100,0000360111,', '1', 2, '江西省/南昌市/青山湖区', '青山湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360112', '360100', '0,360000,360100,', 360112, '0000360000,0000360100,0000360112,', '1', 2, '江西省/南昌市/新建区', '新建区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360113', '360100', '0,360000,360100,', 360113, '0000360000,0000360100,0000360113,', '1', 2, '江西省/南昌市/红谷滩区', '红谷滩区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360121', '360100', '0,360000,360100,', 360121, '0000360000,0000360100,0000360121,', '1', 2, '江西省/南昌市/南昌县', '南昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360123', '360100', '0,360000,360100,', 360123, '0000360000,0000360100,0000360123,', '1', 2, '江西省/南昌市/安义县', '安义县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360124', '360100', '0,360000,360100,', 360124, '0000360000,0000360100,0000360124,', '1', 2, '江西省/南昌市/进贤县', '进贤县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360200', '360000', '0,360000,', 360200, '0000360000,0000360200,', '0', 1, '江西省/景德镇市', '景德镇市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360202', '360200', '0,360000,360200,', 360202, '0000360000,0000360200,0000360202,', '1', 2, '江西省/景德镇市/昌江区', '昌江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360203', '360200', '0,360000,360200,', 360203, '0000360000,0000360200,0000360203,', '1', 2, '江西省/景德镇市/珠山区', '珠山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360222', '360200', '0,360000,360200,', 360222, '0000360000,0000360200,0000360222,', '1', 2, '江西省/景德镇市/浮梁县', '浮梁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360281', '360200', '0,360000,360200,', 360281, '0000360000,0000360200,0000360281,', '1', 2, '江西省/景德镇市/乐平市', '乐平市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360300', '360000', '0,360000,', 360300, '0000360000,0000360300,', '0', 1, '江西省/萍乡市', '萍乡市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360302', '360300', '0,360000,360300,', 360302, '0000360000,0000360300,0000360302,', '1', 2, '江西省/萍乡市/安源区', '安源区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360313', '360300', '0,360000,360300,', 360313, '0000360000,0000360300,0000360313,', '1', 2, '江西省/萍乡市/湘东区', '湘东区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360321', '360300', '0,360000,360300,', 360321, '0000360000,0000360300,0000360321,', '1', 2, '江西省/萍乡市/莲花县', '莲花县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360322', '360300', '0,360000,360300,', 360322, '0000360000,0000360300,0000360322,', '1', 2, '江西省/萍乡市/上栗县', '上栗县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360323', '360300', '0,360000,360300,', 360323, '0000360000,0000360300,0000360323,', '1', 2, '江西省/萍乡市/芦溪县', '芦溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360400', '360000', '0,360000,', 360400, '0000360000,0000360400,', '0', 1, '江西省/九江市', '九江市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360402', '360400', '0,360000,360400,', 360402, '0000360000,0000360400,0000360402,', '1', 2, '江西省/九江市/濂溪区', '濂溪区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360403', '360400', '0,360000,360400,', 360403, '0000360000,0000360400,0000360403,', '1', 2, '江西省/九江市/浔阳区', '浔阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360404', '360400', '0,360000,360400,', 360404, '0000360000,0000360400,0000360404,', '1', 2, '江西省/九江市/柴桑区', '柴桑区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360423', '360400', '0,360000,360400,', 360423, '0000360000,0000360400,0000360423,', '1', 2, '江西省/九江市/武宁县', '武宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360424', '360400', '0,360000,360400,', 360424, '0000360000,0000360400,0000360424,', '1', 2, '江西省/九江市/修水县', '修水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360425', '360400', '0,360000,360400,', 360425, '0000360000,0000360400,0000360425,', '1', 2, '江西省/九江市/永修县', '永修县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360426', '360400', '0,360000,360400,', 360426, '0000360000,0000360400,0000360426,', '1', 2, '江西省/九江市/德安县', '德安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360428', '360400', '0,360000,360400,', 360428, '0000360000,0000360400,0000360428,', '1', 2, '江西省/九江市/都昌县', '都昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360429', '360400', '0,360000,360400,', 360429, '0000360000,0000360400,0000360429,', '1', 2, '江西省/九江市/湖口县', '湖口县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360430', '360400', '0,360000,360400,', 360430, '0000360000,0000360400,0000360430,', '1', 2, '江西省/九江市/彭泽县', '彭泽县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360481', '360400', '0,360000,360400,', 360481, '0000360000,0000360400,0000360481,', '1', 2, '江西省/九江市/瑞昌市', '瑞昌市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360482', '360400', '0,360000,360400,', 360482, '0000360000,0000360400,0000360482,', '1', 2, '江西省/九江市/共青城市', '共青城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360483', '360400', '0,360000,360400,', 360483, '0000360000,0000360400,0000360483,', '1', 2, '江西省/九江市/庐山市', '庐山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360500', '360000', '0,360000,', 360500, '0000360000,0000360500,', '0', 1, '江西省/新余市', '新余市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360502', '360500', '0,360000,360500,', 360502, '0000360000,0000360500,0000360502,', '1', 2, '江西省/新余市/渝水区', '渝水区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360521', '360500', '0,360000,360500,', 360521, '0000360000,0000360500,0000360521,', '1', 2, '江西省/新余市/分宜县', '分宜县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360600', '360000', '0,360000,', 360600, '0000360000,0000360600,', '0', 1, '江西省/鹰潭市', '鹰潭市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360602', '360600', '0,360000,360600,', 360602, '0000360000,0000360600,0000360602,', '1', 2, '江西省/鹰潭市/月湖区', '月湖区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360603', '360600', '0,360000,360600,', 360603, '0000360000,0000360600,0000360603,', '1', 2, '江西省/鹰潭市/余江区', '余江区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360681', '360600', '0,360000,360600,', 360681, '0000360000,0000360600,0000360681,', '1', 2, '江西省/鹰潭市/贵溪市', '贵溪市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360700', '360000', '0,360000,', 360700, '0000360000,0000360700,', '0', 1, '江西省/赣州市', '赣州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360702', '360700', '0,360000,360700,', 360702, '0000360000,0000360700,0000360702,', '1', 2, '江西省/赣州市/章贡区', '章贡区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360703', '360700', '0,360000,360700,', 360703, '0000360000,0000360700,0000360703,', '1', 2, '江西省/赣州市/南康区', '南康区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360704', '360700', '0,360000,360700,', 360704, '0000360000,0000360700,0000360704,', '1', 2, '江西省/赣州市/赣县区', '赣县区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360722', '360700', '0,360000,360700,', 360722, '0000360000,0000360700,0000360722,', '1', 2, '江西省/赣州市/信丰县', '信丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360723', '360700', '0,360000,360700,', 360723, '0000360000,0000360700,0000360723,', '1', 2, '江西省/赣州市/大余县', '大余县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360724', '360700', '0,360000,360700,', 360724, '0000360000,0000360700,0000360724,', '1', 2, '江西省/赣州市/上犹县', '上犹县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360725', '360700', '0,360000,360700,', 360725, '0000360000,0000360700,0000360725,', '1', 2, '江西省/赣州市/崇义县', '崇义县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360726', '360700', '0,360000,360700,', 360726, '0000360000,0000360700,0000360726,', '1', 2, '江西省/赣州市/安远县', '安远县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360727', '360700', '0,360000,360700,', 360727, '0000360000,0000360700,0000360727,', '1', 2, '江西省/赣州市/龙南县', '龙南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360728', '360700', '0,360000,360700,', 360728, '0000360000,0000360700,0000360728,', '1', 2, '江西省/赣州市/定南县', '定南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360729', '360700', '0,360000,360700,', 360729, '0000360000,0000360700,0000360729,', '1', 2, '江西省/赣州市/全南县', '全南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360730', '360700', '0,360000,360700,', 360730, '0000360000,0000360700,0000360730,', '1', 2, '江西省/赣州市/宁都县', '宁都县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360731', '360700', '0,360000,360700,', 360731, '0000360000,0000360700,0000360731,', '1', 2, '江西省/赣州市/于都县', '于都县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360732', '360700', '0,360000,360700,', 360732, '0000360000,0000360700,0000360732,', '1', 2, '江西省/赣州市/兴国县', '兴国县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360733', '360700', '0,360000,360700,', 360733, '0000360000,0000360700,0000360733,', '1', 2, '江西省/赣州市/会昌县', '会昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360734', '360700', '0,360000,360700,', 360734, '0000360000,0000360700,0000360734,', '1', 2, '江西省/赣州市/寻乌县', '寻乌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360735', '360700', '0,360000,360700,', 360735, '0000360000,0000360700,0000360735,', '1', 2, '江西省/赣州市/石城县', '石城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360781', '360700', '0,360000,360700,', 360781, '0000360000,0000360700,0000360781,', '1', 2, '江西省/赣州市/瑞金市', '瑞金市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360800', '360000', '0,360000,', 360800, '0000360000,0000360800,', '0', 1, '江西省/吉安市', '吉安市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360802', '360800', '0,360000,360800,', 360802, '0000360000,0000360800,0000360802,', '1', 2, '江西省/吉安市/吉州区', '吉州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360803', '360800', '0,360000,360800,', 360803, '0000360000,0000360800,0000360803,', '1', 2, '江西省/吉安市/青原区', '青原区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360821', '360800', '0,360000,360800,', 360821, '0000360000,0000360800,0000360821,', '1', 2, '江西省/吉安市/吉安县', '吉安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360822', '360800', '0,360000,360800,', 360822, '0000360000,0000360800,0000360822,', '1', 2, '江西省/吉安市/吉水县', '吉水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360823', '360800', '0,360000,360800,', 360823, '0000360000,0000360800,0000360823,', '1', 2, '江西省/吉安市/峡江县', '峡江县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360824', '360800', '0,360000,360800,', 360824, '0000360000,0000360800,0000360824,', '1', 2, '江西省/吉安市/新干县', '新干县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360825', '360800', '0,360000,360800,', 360825, '0000360000,0000360800,0000360825,', '1', 2, '江西省/吉安市/永丰县', '永丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360826', '360800', '0,360000,360800,', 360826, '0000360000,0000360800,0000360826,', '1', 2, '江西省/吉安市/泰和县', '泰和县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360827', '360800', '0,360000,360800,', 360827, '0000360000,0000360800,0000360827,', '1', 2, '江西省/吉安市/遂川县', '遂川县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360828', '360800', '0,360000,360800,', 360828, '0000360000,0000360800,0000360828,', '1', 2, '江西省/吉安市/万安县', '万安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360829', '360800', '0,360000,360800,', 360829, '0000360000,0000360800,0000360829,', '1', 2, '江西省/吉安市/安福县', '安福县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360830', '360800', '0,360000,360800,', 360830, '0000360000,0000360800,0000360830,', '1', 2, '江西省/吉安市/永新县', '永新县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360881', '360800', '0,360000,360800,', 360881, '0000360000,0000360800,0000360881,', '1', 2, '江西省/吉安市/井冈山市', '井冈山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360900', '360000', '0,360000,', 360900, '0000360000,0000360900,', '0', 1, '江西省/宜春市', '宜春市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360902', '360900', '0,360000,360900,', 360902, '0000360000,0000360900,0000360902,', '1', 2, '江西省/宜春市/袁州区', '袁州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360921', '360900', '0,360000,360900,', 360921, '0000360000,0000360900,0000360921,', '1', 2, '江西省/宜春市/奉新县', '奉新县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360922', '360900', '0,360000,360900,', 360922, '0000360000,0000360900,0000360922,', '1', 2, '江西省/宜春市/万载县', '万载县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360923', '360900', '0,360000,360900,', 360923, '0000360000,0000360900,0000360923,', '1', 2, '江西省/宜春市/上高县', '上高县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360924', '360900', '0,360000,360900,', 360924, '0000360000,0000360900,0000360924,', '1', 2, '江西省/宜春市/宜丰县', '宜丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360925', '360900', '0,360000,360900,', 360925, '0000360000,0000360900,0000360925,', '1', 2, '江西省/宜春市/靖安县', '靖安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360926', '360900', '0,360000,360900,', 360926, '0000360000,0000360900,0000360926,', '1', 2, '江西省/宜春市/铜鼓县', '铜鼓县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360981', '360900', '0,360000,360900,', 360981, '0000360000,0000360900,0000360981,', '1', 2, '江西省/宜春市/丰城市', '丰城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360982', '360900', '0,360000,360900,', 360982, '0000360000,0000360900,0000360982,', '1', 2, '江西省/宜春市/樟树市', '樟树市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('360983', '360900', '0,360000,360900,', 360983, '0000360000,0000360900,0000360983,', '1', 2, '江西省/宜春市/高安市', '高安市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361000', '360000', '0,360000,', 361000, '0000360000,0000361000,', '0', 1, '江西省/抚州市', '抚州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361002', '361000', '0,360000,361000,', 361002, '0000360000,0000361000,0000361002,', '1', 2, '江西省/抚州市/临川区', '临川区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361003', '361000', '0,360000,361000,', 361003, '0000360000,0000361000,0000361003,', '1', 2, '江西省/抚州市/东乡区', '东乡区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361021', '361000', '0,360000,361000,', 361021, '0000360000,0000361000,0000361021,', '1', 2, '江西省/抚州市/南城县', '南城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361022', '361000', '0,360000,361000,', 361022, '0000360000,0000361000,0000361022,', '1', 2, '江西省/抚州市/黎川县', '黎川县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361023', '361000', '0,360000,361000,', 361023, '0000360000,0000361000,0000361023,', '1', 2, '江西省/抚州市/南丰县', '南丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361024', '361000', '0,360000,361000,', 361024, '0000360000,0000361000,0000361024,', '1', 2, '江西省/抚州市/崇仁县', '崇仁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361025', '361000', '0,360000,361000,', 361025, '0000360000,0000361000,0000361025,', '1', 2, '江西省/抚州市/乐安县', '乐安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361026', '361000', '0,360000,361000,', 361026, '0000360000,0000361000,0000361026,', '1', 2, '江西省/抚州市/宜黄县', '宜黄县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361027', '361000', '0,360000,361000,', 361027, '0000360000,0000361000,0000361027,', '1', 2, '江西省/抚州市/金溪县', '金溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361028', '361000', '0,360000,361000,', 361028, '0000360000,0000361000,0000361028,', '1', 2, '江西省/抚州市/资溪县', '资溪县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361030', '361000', '0,360000,361000,', 361030, '0000360000,0000361000,0000361030,', '1', 2, '江西省/抚州市/广昌县', '广昌县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361100', '360000', '0,360000,', 361100, '0000360000,0000361100,', '0', 1, '江西省/上饶市', '上饶市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361102', '361100', '0,360000,361100,', 361102, '0000360000,0000361100,0000361102,', '1', 2, '江西省/上饶市/信州区', '信州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361103', '361100', '0,360000,361100,', 361103, '0000360000,0000361100,0000361103,', '1', 2, '江西省/上饶市/广丰区', '广丰区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361104', '361100', '0,360000,361100,', 361104, '0000360000,0000361100,0000361104,', '1', 2, '江西省/上饶市/广信区', '广信区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361123', '361100', '0,360000,361100,', 361123, '0000360000,0000361100,0000361123,', '1', 2, '江西省/上饶市/玉山县', '玉山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361124', '361100', '0,360000,361100,', 361124, '0000360000,0000361100,0000361124,', '1', 2, '江西省/上饶市/铅山县', '铅山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361125', '361100', '0,360000,361100,', 361125, '0000360000,0000361100,0000361125,', '1', 2, '江西省/上饶市/横峰县', '横峰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361126', '361100', '0,360000,361100,', 361126, '0000360000,0000361100,0000361126,', '1', 2, '江西省/上饶市/弋阳县', '弋阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361127', '361100', '0,360000,361100,', 361127, '0000360000,0000361100,0000361127,', '1', 2, '江西省/上饶市/余干县', '余干县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361128', '361100', '0,360000,361100,', 361128, '0000360000,0000361100,0000361128,', '1', 2, '江西省/上饶市/鄱阳县', '鄱阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361129', '361100', '0,360000,361100,', 361129, '0000360000,0000361100,0000361129,', '1', 2, '江西省/上饶市/万年县', '万年县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361130', '361100', '0,360000,361100,', 361130, '0000360000,0000361100,0000361130,', '1', 2, '江西省/上饶市/婺源县', '婺源县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('361181', '361100', '0,360000,361100,', 361181, '0000360000,0000361100,0000361181,', '1', 2, '江西省/上饶市/德兴市', '德兴市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370000', '0', '0,', 370000, '0000370000,', '0', 0, '山东省', '山东省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370100', '370000', '0,370000,', 370100, '0000370000,0000370100,', '0', 1, '山东省/济南市', '济南市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370102', '370100', '0,370000,370100,', 370102, '0000370000,0000370100,0000370102,', '1', 2, '山东省/济南市/历下区', '历下区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370103', '370100', '0,370000,370100,', 370103, '0000370000,0000370100,0000370103,', '1', 2, '山东省/济南市/市中区', '市中区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370104', '370100', '0,370000,370100,', 370104, '0000370000,0000370100,0000370104,', '1', 2, '山东省/济南市/槐荫区', '槐荫区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370105', '370100', '0,370000,370100,', 370105, '0000370000,0000370100,0000370105,', '1', 2, '山东省/济南市/天桥区', '天桥区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370112', '370100', '0,370000,370100,', 370112, '0000370000,0000370100,0000370112,', '1', 2, '山东省/济南市/历城区', '历城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370113', '370100', '0,370000,370100,', 370113, '0000370000,0000370100,0000370113,', '1', 2, '山东省/济南市/长清区', '长清区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370114', '370100', '0,370000,370100,', 370114, '0000370000,0000370100,0000370114,', '1', 2, '山东省/济南市/章丘区', '章丘区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370115', '370100', '0,370000,370100,', 370115, '0000370000,0000370100,0000370115,', '1', 2, '山东省/济南市/济阳区', '济阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370116', '370100', '0,370000,370100,', 370116, '0000370000,0000370100,0000370116,', '1', 2, '山东省/济南市/莱芜区', '莱芜区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370117', '370100', '0,370000,370100,', 370117, '0000370000,0000370100,0000370117,', '1', 2, '山东省/济南市/钢城区', '钢城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370124', '370100', '0,370000,370100,', 370124, '0000370000,0000370100,0000370124,', '1', 2, '山东省/济南市/平阴县', '平阴县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370126', '370100', '0,370000,370100,', 370126, '0000370000,0000370100,0000370126,', '1', 2, '山东省/济南市/商河县', '商河县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370200', '370000', '0,370000,', 370200, '0000370000,0000370200,', '0', 1, '山东省/青岛市', '青岛市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370202', '370200', '0,370000,370200,', 370202, '0000370000,0000370200,0000370202,', '1', 2, '山东省/青岛市/市南区', '市南区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370203', '370200', '0,370000,370200,', 370203, '0000370000,0000370200,0000370203,', '1', 2, '山东省/青岛市/市北区', '市北区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370211', '370200', '0,370000,370200,', 370211, '0000370000,0000370200,0000370211,', '1', 2, '山东省/青岛市/黄岛区', '黄岛区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370212', '370200', '0,370000,370200,', 370212, '0000370000,0000370200,0000370212,', '1', 2, '山东省/青岛市/崂山区', '崂山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370213', '370200', '0,370000,370200,', 370213, '0000370000,0000370200,0000370213,', '1', 2, '山东省/青岛市/李沧区', '李沧区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370214', '370200', '0,370000,370200,', 370214, '0000370000,0000370200,0000370214,', '1', 2, '山东省/青岛市/城阳区', '城阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370215', '370200', '0,370000,370200,', 370215, '0000370000,0000370200,0000370215,', '1', 2, '山东省/青岛市/即墨区', '即墨区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370281', '370200', '0,370000,370200,', 370281, '0000370000,0000370200,0000370281,', '1', 2, '山东省/青岛市/胶州市', '胶州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370283', '370200', '0,370000,370200,', 370283, '0000370000,0000370200,0000370283,', '1', 2, '山东省/青岛市/平度市', '平度市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370285', '370200', '0,370000,370200,', 370285, '0000370000,0000370200,0000370285,', '1', 2, '山东省/青岛市/莱西市', '莱西市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370300', '370000', '0,370000,', 370300, '0000370000,0000370300,', '0', 1, '山东省/淄博市', '淄博市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370302', '370300', '0,370000,370300,', 370302, '0000370000,0000370300,0000370302,', '1', 2, '山东省/淄博市/淄川区', '淄川区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370303', '370300', '0,370000,370300,', 370303, '0000370000,0000370300,0000370303,', '1', 2, '山东省/淄博市/张店区', '张店区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370304', '370300', '0,370000,370300,', 370304, '0000370000,0000370300,0000370304,', '1', 2, '山东省/淄博市/博山区', '博山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370305', '370300', '0,370000,370300,', 370305, '0000370000,0000370300,0000370305,', '1', 2, '山东省/淄博市/临淄区', '临淄区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370306', '370300', '0,370000,370300,', 370306, '0000370000,0000370300,0000370306,', '1', 2, '山东省/淄博市/周村区', '周村区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370321', '370300', '0,370000,370300,', 370321, '0000370000,0000370300,0000370321,', '1', 2, '山东省/淄博市/桓台县', '桓台县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370322', '370300', '0,370000,370300,', 370322, '0000370000,0000370300,0000370322,', '1', 2, '山东省/淄博市/高青县', '高青县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370323', '370300', '0,370000,370300,', 370323, '0000370000,0000370300,0000370323,', '1', 2, '山东省/淄博市/沂源县', '沂源县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370400', '370000', '0,370000,', 370400, '0000370000,0000370400,', '0', 1, '山东省/枣庄市', '枣庄市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370402', '370400', '0,370000,370400,', 370402, '0000370000,0000370400,0000370402,', '1', 2, '山东省/枣庄市/市中区', '市中区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370403', '370400', '0,370000,370400,', 370403, '0000370000,0000370400,0000370403,', '1', 2, '山东省/枣庄市/薛城区', '薛城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370404', '370400', '0,370000,370400,', 370404, '0000370000,0000370400,0000370404,', '1', 2, '山东省/枣庄市/峄城区', '峄城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370405', '370400', '0,370000,370400,', 370405, '0000370000,0000370400,0000370405,', '1', 2, '山东省/枣庄市/台儿庄区', '台儿庄区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370406', '370400', '0,370000,370400,', 370406, '0000370000,0000370400,0000370406,', '1', 2, '山东省/枣庄市/山亭区', '山亭区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370481', '370400', '0,370000,370400,', 370481, '0000370000,0000370400,0000370481,', '1', 2, '山东省/枣庄市/滕州市', '滕州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370500', '370000', '0,370000,', 370500, '0000370000,0000370500,', '0', 1, '山东省/东营市', '东营市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370502', '370500', '0,370000,370500,', 370502, '0000370000,0000370500,0000370502,', '1', 2, '山东省/东营市/东营区', '东营区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370503', '370500', '0,370000,370500,', 370503, '0000370000,0000370500,0000370503,', '1', 2, '山东省/东营市/河口区', '河口区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370505', '370500', '0,370000,370500,', 370505, '0000370000,0000370500,0000370505,', '1', 2, '山东省/东营市/垦利区', '垦利区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370522', '370500', '0,370000,370500,', 370522, '0000370000,0000370500,0000370522,', '1', 2, '山东省/东营市/利津县', '利津县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370523', '370500', '0,370000,370500,', 370523, '0000370000,0000370500,0000370523,', '1', 2, '山东省/东营市/广饶县', '广饶县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370600', '370000', '0,370000,', 370600, '0000370000,0000370600,', '0', 1, '山东省/烟台市', '烟台市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370602', '370600', '0,370000,370600,', 370602, '0000370000,0000370600,0000370602,', '1', 2, '山东省/烟台市/芝罘区', '芝罘区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370611', '370600', '0,370000,370600,', 370611, '0000370000,0000370600,0000370611,', '1', 2, '山东省/烟台市/福山区', '福山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370612', '370600', '0,370000,370600,', 370612, '0000370000,0000370600,0000370612,', '1', 2, '山东省/烟台市/牟平区', '牟平区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370613', '370600', '0,370000,370600,', 370613, '0000370000,0000370600,0000370613,', '1', 2, '山东省/烟台市/莱山区', '莱山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370634', '370600', '0,370000,370600,', 370634, '0000370000,0000370600,0000370634,', '1', 2, '山东省/烟台市/长岛县', '长岛县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370681', '370600', '0,370000,370600,', 370681, '0000370000,0000370600,0000370681,', '1', 2, '山东省/烟台市/龙口市', '龙口市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370682', '370600', '0,370000,370600,', 370682, '0000370000,0000370600,0000370682,', '1', 2, '山东省/烟台市/莱阳市', '莱阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370683', '370600', '0,370000,370600,', 370683, '0000370000,0000370600,0000370683,', '1', 2, '山东省/烟台市/莱州市', '莱州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370684', '370600', '0,370000,370600,', 370684, '0000370000,0000370600,0000370684,', '1', 2, '山东省/烟台市/蓬莱市', '蓬莱市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370685', '370600', '0,370000,370600,', 370685, '0000370000,0000370600,0000370685,', '1', 2, '山东省/烟台市/招远市', '招远市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370686', '370600', '0,370000,370600,', 370686, '0000370000,0000370600,0000370686,', '1', 2, '山东省/烟台市/栖霞市', '栖霞市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370687', '370600', '0,370000,370600,', 370687, '0000370000,0000370600,0000370687,', '1', 2, '山东省/烟台市/海阳市', '海阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370700', '370000', '0,370000,', 370700, '0000370000,0000370700,', '0', 1, '山东省/潍坊市', '潍坊市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370702', '370700', '0,370000,370700,', 370702, '0000370000,0000370700,0000370702,', '1', 2, '山东省/潍坊市/潍城区', '潍城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370703', '370700', '0,370000,370700,', 370703, '0000370000,0000370700,0000370703,', '1', 2, '山东省/潍坊市/寒亭区', '寒亭区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370704', '370700', '0,370000,370700,', 370704, '0000370000,0000370700,0000370704,', '1', 2, '山东省/潍坊市/坊子区', '坊子区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370705', '370700', '0,370000,370700,', 370705, '0000370000,0000370700,0000370705,', '1', 2, '山东省/潍坊市/奎文区', '奎文区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370724', '370700', '0,370000,370700,', 370724, '0000370000,0000370700,0000370724,', '1', 2, '山东省/潍坊市/临朐县', '临朐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370725', '370700', '0,370000,370700,', 370725, '0000370000,0000370700,0000370725,', '1', 2, '山东省/潍坊市/昌乐县', '昌乐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370781', '370700', '0,370000,370700,', 370781, '0000370000,0000370700,0000370781,', '1', 2, '山东省/潍坊市/青州市', '青州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370782', '370700', '0,370000,370700,', 370782, '0000370000,0000370700,0000370782,', '1', 2, '山东省/潍坊市/诸城市', '诸城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370783', '370700', '0,370000,370700,', 370783, '0000370000,0000370700,0000370783,', '1', 2, '山东省/潍坊市/寿光市', '寿光市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370784', '370700', '0,370000,370700,', 370784, '0000370000,0000370700,0000370784,', '1', 2, '山东省/潍坊市/安丘市', '安丘市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370785', '370700', '0,370000,370700,', 370785, '0000370000,0000370700,0000370785,', '1', 2, '山东省/潍坊市/高密市', '高密市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370786', '370700', '0,370000,370700,', 370786, '0000370000,0000370700,0000370786,', '1', 2, '山东省/潍坊市/昌邑市', '昌邑市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370800', '370000', '0,370000,', 370800, '0000370000,0000370800,', '0', 1, '山东省/济宁市', '济宁市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370811', '370800', '0,370000,370800,', 370811, '0000370000,0000370800,0000370811,', '1', 2, '山东省/济宁市/任城区', '任城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370812', '370800', '0,370000,370800,', 370812, '0000370000,0000370800,0000370812,', '1', 2, '山东省/济宁市/兖州区', '兖州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370826', '370800', '0,370000,370800,', 370826, '0000370000,0000370800,0000370826,', '1', 2, '山东省/济宁市/微山县', '微山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370827', '370800', '0,370000,370800,', 370827, '0000370000,0000370800,0000370827,', '1', 2, '山东省/济宁市/鱼台县', '鱼台县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370828', '370800', '0,370000,370800,', 370828, '0000370000,0000370800,0000370828,', '1', 2, '山东省/济宁市/金乡县', '金乡县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370829', '370800', '0,370000,370800,', 370829, '0000370000,0000370800,0000370829,', '1', 2, '山东省/济宁市/嘉祥县', '嘉祥县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370830', '370800', '0,370000,370800,', 370830, '0000370000,0000370800,0000370830,', '1', 2, '山东省/济宁市/汶上县', '汶上县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370831', '370800', '0,370000,370800,', 370831, '0000370000,0000370800,0000370831,', '1', 2, '山东省/济宁市/泗水县', '泗水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370832', '370800', '0,370000,370800,', 370832, '0000370000,0000370800,0000370832,', '1', 2, '山东省/济宁市/梁山县', '梁山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370881', '370800', '0,370000,370800,', 370881, '0000370000,0000370800,0000370881,', '1', 2, '山东省/济宁市/曲阜市', '曲阜市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370883', '370800', '0,370000,370800,', 370883, '0000370000,0000370800,0000370883,', '1', 2, '山东省/济宁市/邹城市', '邹城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370900', '370000', '0,370000,', 370900, '0000370000,0000370900,', '0', 1, '山东省/泰安市', '泰安市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370902', '370900', '0,370000,370900,', 370902, '0000370000,0000370900,0000370902,', '1', 2, '山东省/泰安市/泰山区', '泰山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370911', '370900', '0,370000,370900,', 370911, '0000370000,0000370900,0000370911,', '1', 2, '山东省/泰安市/岱岳区', '岱岳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370921', '370900', '0,370000,370900,', 370921, '0000370000,0000370900,0000370921,', '1', 2, '山东省/泰安市/宁阳县', '宁阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370923', '370900', '0,370000,370900,', 370923, '0000370000,0000370900,0000370923,', '1', 2, '山东省/泰安市/东平县', '东平县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370982', '370900', '0,370000,370900,', 370982, '0000370000,0000370900,0000370982,', '1', 2, '山东省/泰安市/新泰市', '新泰市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('370983', '370900', '0,370000,370900,', 370983, '0000370000,0000370900,0000370983,', '1', 2, '山东省/泰安市/肥城市', '肥城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371000', '370000', '0,370000,', 371000, '0000370000,0000371000,', '0', 1, '山东省/威海市', '威海市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371002', '371000', '0,370000,371000,', 371002, '0000370000,0000371000,0000371002,', '1', 2, '山东省/威海市/环翠区', '环翠区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371003', '371000', '0,370000,371000,', 371003, '0000370000,0000371000,0000371003,', '1', 2, '山东省/威海市/文登区', '文登区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371082', '371000', '0,370000,371000,', 371082, '0000370000,0000371000,0000371082,', '1', 2, '山东省/威海市/荣成市', '荣成市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371083', '371000', '0,370000,371000,', 371083, '0000370000,0000371000,0000371083,', '1', 2, '山东省/威海市/乳山市', '乳山市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371100', '370000', '0,370000,', 371100, '0000370000,0000371100,', '0', 1, '山东省/日照市', '日照市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371102', '371100', '0,370000,371100,', 371102, '0000370000,0000371100,0000371102,', '1', 2, '山东省/日照市/东港区', '东港区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371103', '371100', '0,370000,371100,', 371103, '0000370000,0000371100,0000371103,', '1', 2, '山东省/日照市/岚山区', '岚山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371121', '371100', '0,370000,371100,', 371121, '0000370000,0000371100,0000371121,', '1', 2, '山东省/日照市/五莲县', '五莲县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371122', '371100', '0,370000,371100,', 371122, '0000370000,0000371100,0000371122,', '1', 2, '山东省/日照市/莒县', '莒县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371300', '370000', '0,370000,', 371300, '0000370000,0000371300,', '0', 1, '山东省/临沂市', '临沂市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371302', '371300', '0,370000,371300,', 371302, '0000370000,0000371300,0000371302,', '1', 2, '山东省/临沂市/兰山区', '兰山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371311', '371300', '0,370000,371300,', 371311, '0000370000,0000371300,0000371311,', '1', 2, '山东省/临沂市/罗庄区', '罗庄区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371312', '371300', '0,370000,371300,', 371312, '0000370000,0000371300,0000371312,', '1', 2, '山东省/临沂市/河东区', '河东区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371321', '371300', '0,370000,371300,', 371321, '0000370000,0000371300,0000371321,', '1', 2, '山东省/临沂市/沂南县', '沂南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371322', '371300', '0,370000,371300,', 371322, '0000370000,0000371300,0000371322,', '1', 2, '山东省/临沂市/郯城县', '郯城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371323', '371300', '0,370000,371300,', 371323, '0000370000,0000371300,0000371323,', '1', 2, '山东省/临沂市/沂水县', '沂水县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371324', '371300', '0,370000,371300,', 371324, '0000370000,0000371300,0000371324,', '1', 2, '山东省/临沂市/兰陵县', '兰陵县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371325', '371300', '0,370000,371300,', 371325, '0000370000,0000371300,0000371325,', '1', 2, '山东省/临沂市/费县', '费县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371326', '371300', '0,370000,371300,', 371326, '0000370000,0000371300,0000371326,', '1', 2, '山东省/临沂市/平邑县', '平邑县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371327', '371300', '0,370000,371300,', 371327, '0000370000,0000371300,0000371327,', '1', 2, '山东省/临沂市/莒南县', '莒南县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371328', '371300', '0,370000,371300,', 371328, '0000370000,0000371300,0000371328,', '1', 2, '山东省/临沂市/蒙阴县', '蒙阴县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371329', '371300', '0,370000,371300,', 371329, '0000370000,0000371300,0000371329,', '1', 2, '山东省/临沂市/临沭县', '临沭县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371400', '370000', '0,370000,', 371400, '0000370000,0000371400,', '0', 1, '山东省/德州市', '德州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371402', '371400', '0,370000,371400,', 371402, '0000370000,0000371400,0000371402,', '1', 2, '山东省/德州市/德城区', '德城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371403', '371400', '0,370000,371400,', 371403, '0000370000,0000371400,0000371403,', '1', 2, '山东省/德州市/陵城区', '陵城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371422', '371400', '0,370000,371400,', 371422, '0000370000,0000371400,0000371422,', '1', 2, '山东省/德州市/宁津县', '宁津县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371423', '371400', '0,370000,371400,', 371423, '0000370000,0000371400,0000371423,', '1', 2, '山东省/德州市/庆云县', '庆云县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371424', '371400', '0,370000,371400,', 371424, '0000370000,0000371400,0000371424,', '1', 2, '山东省/德州市/临邑县', '临邑县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371425', '371400', '0,370000,371400,', 371425, '0000370000,0000371400,0000371425,', '1', 2, '山东省/德州市/齐河县', '齐河县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371426', '371400', '0,370000,371400,', 371426, '0000370000,0000371400,0000371426,', '1', 2, '山东省/德州市/平原县', '平原县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371427', '371400', '0,370000,371400,', 371427, '0000370000,0000371400,0000371427,', '1', 2, '山东省/德州市/夏津县', '夏津县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371428', '371400', '0,370000,371400,', 371428, '0000370000,0000371400,0000371428,', '1', 2, '山东省/德州市/武城县', '武城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371481', '371400', '0,370000,371400,', 371481, '0000370000,0000371400,0000371481,', '1', 2, '山东省/德州市/乐陵市', '乐陵市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371482', '371400', '0,370000,371400,', 371482, '0000370000,0000371400,0000371482,', '1', 2, '山东省/德州市/禹城市', '禹城市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371500', '370000', '0,370000,', 371500, '0000370000,0000371500,', '0', 1, '山东省/聊城市', '聊城市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371502', '371500', '0,370000,371500,', 371502, '0000370000,0000371500,0000371502,', '1', 2, '山东省/聊城市/东昌府区', '东昌府区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371503', '371500', '0,370000,371500,', 371503, '0000370000,0000371500,0000371503,', '1', 2, '山东省/聊城市/茌平区', '茌平区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371521', '371500', '0,370000,371500,', 371521, '0000370000,0000371500,0000371521,', '1', 2, '山东省/聊城市/阳谷县', '阳谷县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371522', '371500', '0,370000,371500,', 371522, '0000370000,0000371500,0000371522,', '1', 2, '山东省/聊城市/莘县', '莘县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371524', '371500', '0,370000,371500,', 371524, '0000370000,0000371500,0000371524,', '1', 2, '山东省/聊城市/东阿县', '东阿县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371525', '371500', '0,370000,371500,', 371525, '0000370000,0000371500,0000371525,', '1', 2, '山东省/聊城市/冠县', '冠县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371526', '371500', '0,370000,371500,', 371526, '0000370000,0000371500,0000371526,', '1', 2, '山东省/聊城市/高唐县', '高唐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371581', '371500', '0,370000,371500,', 371581, '0000370000,0000371500,0000371581,', '1', 2, '山东省/聊城市/临清市', '临清市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371600', '370000', '0,370000,', 371600, '0000370000,0000371600,', '0', 1, '山东省/滨州市', '滨州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371602', '371600', '0,370000,371600,', 371602, '0000370000,0000371600,0000371602,', '1', 2, '山东省/滨州市/滨城区', '滨城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371603', '371600', '0,370000,371600,', 371603, '0000370000,0000371600,0000371603,', '1', 2, '山东省/滨州市/沾化区', '沾化区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371621', '371600', '0,370000,371600,', 371621, '0000370000,0000371600,0000371621,', '1', 2, '山东省/滨州市/惠民县', '惠民县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371622', '371600', '0,370000,371600,', 371622, '0000370000,0000371600,0000371622,', '1', 2, '山东省/滨州市/阳信县', '阳信县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371623', '371600', '0,370000,371600,', 371623, '0000370000,0000371600,0000371623,', '1', 2, '山东省/滨州市/无棣县', '无棣县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371625', '371600', '0,370000,371600,', 371625, '0000370000,0000371600,0000371625,', '1', 2, '山东省/滨州市/博兴县', '博兴县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371681', '371600', '0,370000,371600,', 371681, '0000370000,0000371600,0000371681,', '1', 2, '山东省/滨州市/邹平市', '邹平市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371700', '370000', '0,370000,', 371700, '0000370000,0000371700,', '0', 1, '山东省/菏泽市', '菏泽市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371702', '371700', '0,370000,371700,', 371702, '0000370000,0000371700,0000371702,', '1', 2, '山东省/菏泽市/牡丹区', '牡丹区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371703', '371700', '0,370000,371700,', 371703, '0000370000,0000371700,0000371703,', '1', 2, '山东省/菏泽市/定陶区', '定陶区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371721', '371700', '0,370000,371700,', 371721, '0000370000,0000371700,0000371721,', '1', 2, '山东省/菏泽市/曹县', '曹县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371722', '371700', '0,370000,371700,', 371722, '0000370000,0000371700,0000371722,', '1', 2, '山东省/菏泽市/单县', '单县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371723', '371700', '0,370000,371700,', 371723, '0000370000,0000371700,0000371723,', '1', 2, '山东省/菏泽市/成武县', '成武县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371724', '371700', '0,370000,371700,', 371724, '0000370000,0000371700,0000371724,', '1', 2, '山东省/菏泽市/巨野县', '巨野县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371725', '371700', '0,370000,371700,', 371725, '0000370000,0000371700,0000371725,', '1', 2, '山东省/菏泽市/郓城县', '郓城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371726', '371700', '0,370000,371700,', 371726, '0000370000,0000371700,0000371726,', '1', 2, '山东省/菏泽市/鄄城县', '鄄城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('371728', '371700', '0,370000,371700,', 371728, '0000370000,0000371700,0000371728,', '1', 2, '山东省/菏泽市/东明县', '东明县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410000', '0', '0,', 410000, '0000410000,', '0', 0, '河南省', '河南省', '1', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410100', '410000', '0,410000,', 410100, '0000410000,0000410100,', '0', 1, '河南省/郑州市', '郑州市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410102', '410100', '0,410000,410100,', 410102, '0000410000,0000410100,0000410102,', '1', 2, '河南省/郑州市/中原区', '中原区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410103', '410100', '0,410000,410100,', 410103, '0000410000,0000410100,0000410103,', '1', 2, '河南省/郑州市/二七区', '二七区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410104', '410100', '0,410000,410100,', 410104, '0000410000,0000410100,0000410104,', '1', 2, '河南省/郑州市/管城回族区', '管城回族区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410105', '410100', '0,410000,410100,', 410105, '0000410000,0000410100,0000410105,', '1', 2, '河南省/郑州市/金水区', '金水区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410106', '410100', '0,410000,410100,', 410106, '0000410000,0000410100,0000410106,', '1', 2, '河南省/郑州市/上街区', '上街区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410108', '410100', '0,410000,410100,', 410108, '0000410000,0000410100,0000410108,', '1', 2, '河南省/郑州市/惠济区', '惠济区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410122', '410100', '0,410000,410100,', 410122, '0000410000,0000410100,0000410122,', '1', 2, '河南省/郑州市/中牟县', '中牟县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410181', '410100', '0,410000,410100,', 410181, '0000410000,0000410100,0000410181,', '1', 2, '河南省/郑州市/巩义市', '巩义市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410182', '410100', '0,410000,410100,', 410182, '0000410000,0000410100,0000410182,', '1', 2, '河南省/郑州市/荥阳市', '荥阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410183', '410100', '0,410000,410100,', 410183, '0000410000,0000410100,0000410183,', '1', 2, '河南省/郑州市/新密市', '新密市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410184', '410100', '0,410000,410100,', 410184, '0000410000,0000410100,0000410184,', '1', 2, '河南省/郑州市/新郑市', '新郑市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410185', '410100', '0,410000,410100,', 410185, '0000410000,0000410100,0000410185,', '1', 2, '河南省/郑州市/登封市', '登封市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410200', '410000', '0,410000,', 410200, '0000410000,0000410200,', '0', 1, '河南省/开封市', '开封市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410202', '410200', '0,410000,410200,', 410202, '0000410000,0000410200,0000410202,', '1', 2, '河南省/开封市/龙亭区', '龙亭区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410203', '410200', '0,410000,410200,', 410203, '0000410000,0000410200,0000410203,', '1', 2, '河南省/开封市/顺河回族区', '顺河回族区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410204', '410200', '0,410000,410200,', 410204, '0000410000,0000410200,0000410204,', '1', 2, '河南省/开封市/鼓楼区', '鼓楼区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410205', '410200', '0,410000,410200,', 410205, '0000410000,0000410200,0000410205,', '1', 2, '河南省/开封市/禹王台区', '禹王台区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410212', '410200', '0,410000,410200,', 410212, '0000410000,0000410200,0000410212,', '1', 2, '河南省/开封市/祥符区', '祥符区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410221', '410200', '0,410000,410200,', 410221, '0000410000,0000410200,0000410221,', '1', 2, '河南省/开封市/杞县', '杞县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410222', '410200', '0,410000,410200,', 410222, '0000410000,0000410200,0000410222,', '1', 2, '河南省/开封市/通许县', '通许县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410223', '410200', '0,410000,410200,', 410223, '0000410000,0000410200,0000410223,', '1', 2, '河南省/开封市/尉氏县', '尉氏县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410225', '410200', '0,410000,410200,', 410225, '0000410000,0000410200,0000410225,', '1', 2, '河南省/开封市/兰考县', '兰考县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410300', '410000', '0,410000,', 410300, '0000410000,0000410300,', '0', 1, '河南省/洛阳市', '洛阳市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410302', '410300', '0,410000,410300,', 410302, '0000410000,0000410300,0000410302,', '1', 2, '河南省/洛阳市/老城区', '老城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410303', '410300', '0,410000,410300,', 410303, '0000410000,0000410300,0000410303,', '1', 2, '河南省/洛阳市/西工区', '西工区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410304', '410300', '0,410000,410300,', 410304, '0000410000,0000410300,0000410304,', '1', 2, '河南省/洛阳市/瀍河回族区', '瀍河回族区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410305', '410300', '0,410000,410300,', 410305, '0000410000,0000410300,0000410305,', '1', 2, '河南省/洛阳市/涧西区', '涧西区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410306', '410300', '0,410000,410300,', 410306, '0000410000,0000410300,0000410306,', '1', 2, '河南省/洛阳市/吉利区', '吉利区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410311', '410300', '0,410000,410300,', 410311, '0000410000,0000410300,0000410311,', '1', 2, '河南省/洛阳市/洛龙区', '洛龙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410322', '410300', '0,410000,410300,', 410322, '0000410000,0000410300,0000410322,', '1', 2, '河南省/洛阳市/孟津县', '孟津县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410323', '410300', '0,410000,410300,', 410323, '0000410000,0000410300,0000410323,', '1', 2, '河南省/洛阳市/新安县', '新安县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410324', '410300', '0,410000,410300,', 410324, '0000410000,0000410300,0000410324,', '1', 2, '河南省/洛阳市/栾川县', '栾川县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410325', '410300', '0,410000,410300,', 410325, '0000410000,0000410300,0000410325,', '1', 2, '河南省/洛阳市/嵩县', '嵩县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410326', '410300', '0,410000,410300,', 410326, '0000410000,0000410300,0000410326,', '1', 2, '河南省/洛阳市/汝阳县', '汝阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410327', '410300', '0,410000,410300,', 410327, '0000410000,0000410300,0000410327,', '1', 2, '河南省/洛阳市/宜阳县', '宜阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410328', '410300', '0,410000,410300,', 410328, '0000410000,0000410300,0000410328,', '1', 2, '河南省/洛阳市/洛宁县', '洛宁县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410329', '410300', '0,410000,410300,', 410329, '0000410000,0000410300,0000410329,', '1', 2, '河南省/洛阳市/伊川县', '伊川县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410381', '410300', '0,410000,410300,', 410381, '0000410000,0000410300,0000410381,', '1', 2, '河南省/洛阳市/偃师市', '偃师市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410400', '410000', '0,410000,', 410400, '0000410000,0000410400,', '0', 1, '河南省/平顶山市', '平顶山市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410402', '410400', '0,410000,410400,', 410402, '0000410000,0000410400,0000410402,', '1', 2, '河南省/平顶山市/新华区', '新华区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410403', '410400', '0,410000,410400,', 410403, '0000410000,0000410400,0000410403,', '1', 2, '河南省/平顶山市/卫东区', '卫东区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410404', '410400', '0,410000,410400,', 410404, '0000410000,0000410400,0000410404,', '1', 2, '河南省/平顶山市/石龙区', '石龙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410411', '410400', '0,410000,410400,', 410411, '0000410000,0000410400,0000410411,', '1', 2, '河南省/平顶山市/湛河区', '湛河区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410421', '410400', '0,410000,410400,', 410421, '0000410000,0000410400,0000410421,', '1', 2, '河南省/平顶山市/宝丰县', '宝丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410422', '410400', '0,410000,410400,', 410422, '0000410000,0000410400,0000410422,', '1', 2, '河南省/平顶山市/叶县', '叶县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410423', '410400', '0,410000,410400,', 410423, '0000410000,0000410400,0000410423,', '1', 2, '河南省/平顶山市/鲁山县', '鲁山县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410425', '410400', '0,410000,410400,', 410425, '0000410000,0000410400,0000410425,', '1', 2, '河南省/平顶山市/郏县', '郏县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410481', '410400', '0,410000,410400,', 410481, '0000410000,0000410400,0000410481,', '1', 2, '河南省/平顶山市/舞钢市', '舞钢市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410482', '410400', '0,410000,410400,', 410482, '0000410000,0000410400,0000410482,', '1', 2, '河南省/平顶山市/汝州市', '汝州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410500', '410000', '0,410000,', 410500, '0000410000,0000410500,', '0', 1, '河南省/安阳市', '安阳市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410502', '410500', '0,410000,410500,', 410502, '0000410000,0000410500,0000410502,', '1', 2, '河南省/安阳市/文峰区', '文峰区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410503', '410500', '0,410000,410500,', 410503, '0000410000,0000410500,0000410503,', '1', 2, '河南省/安阳市/北关区', '北关区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410505', '410500', '0,410000,410500,', 410505, '0000410000,0000410500,0000410505,', '1', 2, '河南省/安阳市/殷都区', '殷都区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410506', '410500', '0,410000,410500,', 410506, '0000410000,0000410500,0000410506,', '1', 2, '河南省/安阳市/龙安区', '龙安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410522', '410500', '0,410000,410500,', 410522, '0000410000,0000410500,0000410522,', '1', 2, '河南省/安阳市/安阳县', '安阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410523', '410500', '0,410000,410500,', 410523, '0000410000,0000410500,0000410523,', '1', 2, '河南省/安阳市/汤阴县', '汤阴县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410526', '410500', '0,410000,410500,', 410526, '0000410000,0000410500,0000410526,', '1', 2, '河南省/安阳市/滑县', '滑县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410527', '410500', '0,410000,410500,', 410527, '0000410000,0000410500,0000410527,', '1', 2, '河南省/安阳市/内黄县', '内黄县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410581', '410500', '0,410000,410500,', 410581, '0000410000,0000410500,0000410581,', '1', 2, '河南省/安阳市/林州市', '林州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410600', '410000', '0,410000,', 410600, '0000410000,0000410600,', '0', 1, '河南省/鹤壁市', '鹤壁市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410602', '410600', '0,410000,410600,', 410602, '0000410000,0000410600,0000410602,', '1', 2, '河南省/鹤壁市/鹤山区', '鹤山区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410603', '410600', '0,410000,410600,', 410603, '0000410000,0000410600,0000410603,', '1', 2, '河南省/鹤壁市/山城区', '山城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410611', '410600', '0,410000,410600,', 410611, '0000410000,0000410600,0000410611,', '1', 2, '河南省/鹤壁市/淇滨区', '淇滨区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410621', '410600', '0,410000,410600,', 410621, '0000410000,0000410600,0000410621,', '1', 2, '河南省/鹤壁市/浚县', '浚县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410622', '410600', '0,410000,410600,', 410622, '0000410000,0000410600,0000410622,', '1', 2, '河南省/鹤壁市/淇县', '淇县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410700', '410000', '0,410000,', 410700, '0000410000,0000410700,', '0', 1, '河南省/新乡市', '新乡市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410702', '410700', '0,410000,410700,', 410702, '0000410000,0000410700,0000410702,', '1', 2, '河南省/新乡市/红旗区', '红旗区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410703', '410700', '0,410000,410700,', 410703, '0000410000,0000410700,0000410703,', '1', 2, '河南省/新乡市/卫滨区', '卫滨区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410704', '410700', '0,410000,410700,', 410704, '0000410000,0000410700,0000410704,', '1', 2, '河南省/新乡市/凤泉区', '凤泉区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410711', '410700', '0,410000,410700,', 410711, '0000410000,0000410700,0000410711,', '1', 2, '河南省/新乡市/牧野区', '牧野区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410721', '410700', '0,410000,410700,', 410721, '0000410000,0000410700,0000410721,', '1', 2, '河南省/新乡市/新乡县', '新乡县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410724', '410700', '0,410000,410700,', 410724, '0000410000,0000410700,0000410724,', '1', 2, '河南省/新乡市/获嘉县', '获嘉县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410725', '410700', '0,410000,410700,', 410725, '0000410000,0000410700,0000410725,', '1', 2, '河南省/新乡市/原阳县', '原阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410726', '410700', '0,410000,410700,', 410726, '0000410000,0000410700,0000410726,', '1', 2, '河南省/新乡市/延津县', '延津县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410727', '410700', '0,410000,410700,', 410727, '0000410000,0000410700,0000410727,', '1', 2, '河南省/新乡市/封丘县', '封丘县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410781', '410700', '0,410000,410700,', 410781, '0000410000,0000410700,0000410781,', '1', 2, '河南省/新乡市/卫辉市', '卫辉市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410782', '410700', '0,410000,410700,', 410782, '0000410000,0000410700,0000410782,', '1', 2, '河南省/新乡市/辉县市', '辉县市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410783', '410700', '0,410000,410700,', 410783, '0000410000,0000410700,0000410783,', '1', 2, '河南省/新乡市/长垣市', '长垣市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410800', '410000', '0,410000,', 410800, '0000410000,0000410800,', '0', 1, '河南省/焦作市', '焦作市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410802', '410800', '0,410000,410800,', 410802, '0000410000,0000410800,0000410802,', '1', 2, '河南省/焦作市/解放区', '解放区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410803', '410800', '0,410000,410800,', 410803, '0000410000,0000410800,0000410803,', '1', 2, '河南省/焦作市/中站区', '中站区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410804', '410800', '0,410000,410800,', 410804, '0000410000,0000410800,0000410804,', '1', 2, '河南省/焦作市/马村区', '马村区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410811', '410800', '0,410000,410800,', 410811, '0000410000,0000410800,0000410811,', '1', 2, '河南省/焦作市/山阳区', '山阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410821', '410800', '0,410000,410800,', 410821, '0000410000,0000410800,0000410821,', '1', 2, '河南省/焦作市/修武县', '修武县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410822', '410800', '0,410000,410800,', 410822, '0000410000,0000410800,0000410822,', '1', 2, '河南省/焦作市/博爱县', '博爱县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410823', '410800', '0,410000,410800,', 410823, '0000410000,0000410800,0000410823,', '1', 2, '河南省/焦作市/武陟县', '武陟县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410825', '410800', '0,410000,410800,', 410825, '0000410000,0000410800,0000410825,', '1', 2, '河南省/焦作市/温县', '温县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410882', '410800', '0,410000,410800,', 410882, '0000410000,0000410800,0000410882,', '1', 2, '河南省/焦作市/沁阳市', '沁阳市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410883', '410800', '0,410000,410800,', 410883, '0000410000,0000410800,0000410883,', '1', 2, '河南省/焦作市/孟州市', '孟州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410900', '410000', '0,410000,', 410900, '0000410000,0000410900,', '0', 1, '河南省/濮阳市', '濮阳市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410902', '410900', '0,410000,410900,', 410902, '0000410000,0000410900,0000410902,', '1', 2, '河南省/濮阳市/华龙区', '华龙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410922', '410900', '0,410000,410900,', 410922, '0000410000,0000410900,0000410922,', '1', 2, '河南省/濮阳市/清丰县', '清丰县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410923', '410900', '0,410000,410900,', 410923, '0000410000,0000410900,0000410923,', '1', 2, '河南省/濮阳市/南乐县', '南乐县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410926', '410900', '0,410000,410900,', 410926, '0000410000,0000410900,0000410926,', '1', 2, '河南省/濮阳市/范县', '范县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410927', '410900', '0,410000,410900,', 410927, '0000410000,0000410900,0000410927,', '1', 2, '河南省/濮阳市/台前县', '台前县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('410928', '410900', '0,410000,410900,', 410928, '0000410000,0000410900,0000410928,', '1', 2, '河南省/濮阳市/濮阳县', '濮阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411000', '410000', '0,410000,', 411000, '0000410000,0000411000,', '0', 1, '河南省/许昌市', '许昌市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411002', '411000', '0,410000,411000,', 411002, '0000410000,0000411000,0000411002,', '1', 2, '河南省/许昌市/魏都区', '魏都区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411003', '411000', '0,410000,411000,', 411003, '0000410000,0000411000,0000411003,', '1', 2, '河南省/许昌市/建安区', '建安区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411024', '411000', '0,410000,411000,', 411024, '0000410000,0000411000,0000411024,', '1', 2, '河南省/许昌市/鄢陵县', '鄢陵县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411025', '411000', '0,410000,411000,', 411025, '0000410000,0000411000,0000411025,', '1', 2, '河南省/许昌市/襄城县', '襄城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411081', '411000', '0,410000,411000,', 411081, '0000410000,0000411000,0000411081,', '1', 2, '河南省/许昌市/禹州市', '禹州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411082', '411000', '0,410000,411000,', 411082, '0000410000,0000411000,0000411082,', '1', 2, '河南省/许昌市/长葛市', '长葛市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411100', '410000', '0,410000,', 411100, '0000410000,0000411100,', '0', 1, '河南省/漯河市', '漯河市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411102', '411100', '0,410000,411100,', 411102, '0000410000,0000411100,0000411102,', '1', 2, '河南省/漯河市/源汇区', '源汇区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411103', '411100', '0,410000,411100,', 411103, '0000410000,0000411100,0000411103,', '1', 2, '河南省/漯河市/郾城区', '郾城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411104', '411100', '0,410000,411100,', 411104, '0000410000,0000411100,0000411104,', '1', 2, '河南省/漯河市/召陵区', '召陵区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411121', '411100', '0,410000,411100,', 411121, '0000410000,0000411100,0000411121,', '1', 2, '河南省/漯河市/舞阳县', '舞阳县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411122', '411100', '0,410000,411100,', 411122, '0000410000,0000411100,0000411122,', '1', 2, '河南省/漯河市/临颍县', '临颍县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411200', '410000', '0,410000,', 411200, '0000410000,0000411200,', '0', 1, '河南省/三门峡市', '三门峡市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411202', '411200', '0,410000,411200,', 411202, '0000410000,0000411200,0000411202,', '1', 2, '河南省/三门峡市/湖滨区', '湖滨区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411203', '411200', '0,410000,411200,', 411203, '0000410000,0000411200,0000411203,', '1', 2, '河南省/三门峡市/陕州区', '陕州区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411221', '411200', '0,410000,411200,', 411221, '0000410000,0000411200,0000411221,', '1', 2, '河南省/三门峡市/渑池县', '渑池县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411224', '411200', '0,410000,411200,', 411224, '0000410000,0000411200,0000411224,', '1', 2, '河南省/三门峡市/卢氏县', '卢氏县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411281', '411200', '0,410000,411200,', 411281, '0000410000,0000411200,0000411281,', '1', 2, '河南省/三门峡市/义马市', '义马市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411282', '411200', '0,410000,411200,', 411282, '0000410000,0000411200,0000411282,', '1', 2, '河南省/三门峡市/灵宝市', '灵宝市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411300', '410000', '0,410000,', 411300, '0000410000,0000411300,', '0', 1, '河南省/南阳市', '南阳市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411302', '411300', '0,410000,411300,', 411302, '0000410000,0000411300,0000411302,', '1', 2, '河南省/南阳市/宛城区', '宛城区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411303', '411300', '0,410000,411300,', 411303, '0000410000,0000411300,0000411303,', '1', 2, '河南省/南阳市/卧龙区', '卧龙区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411321', '411300', '0,410000,411300,', 411321, '0000410000,0000411300,0000411321,', '1', 2, '河南省/南阳市/南召县', '南召县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411322', '411300', '0,410000,411300,', 411322, '0000410000,0000411300,0000411322,', '1', 2, '河南省/南阳市/方城县', '方城县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411323', '411300', '0,410000,411300,', 411323, '0000410000,0000411300,0000411323,', '1', 2, '河南省/南阳市/西峡县', '西峡县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411324', '411300', '0,410000,411300,', 411324, '0000410000,0000411300,0000411324,', '1', 2, '河南省/南阳市/镇平县', '镇平县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411325', '411300', '0,410000,411300,', 411325, '0000410000,0000411300,0000411325,', '1', 2, '河南省/南阳市/内乡县', '内乡县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411326', '411300', '0,410000,411300,', 411326, '0000410000,0000411300,0000411326,', '1', 2, '河南省/南阳市/淅川县', '淅川县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411327', '411300', '0,410000,411300,', 411327, '0000410000,0000411300,0000411327,', '1', 2, '河南省/南阳市/社旗县', '社旗县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411328', '411300', '0,410000,411300,', 411328, '0000410000,0000411300,0000411328,', '1', 2, '河南省/南阳市/唐河县', '唐河县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411329', '411300', '0,410000,411300,', 411329, '0000410000,0000411300,0000411329,', '1', 2, '河南省/南阳市/新野县', '新野县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411330', '411300', '0,410000,411300,', 411330, '0000410000,0000411300,0000411330,', '1', 2, '河南省/南阳市/桐柏县', '桐柏县', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411381', '411300', '0,410000,411300,', 411381, '0000410000,0000411300,0000411381,', '1', 2, '河南省/南阳市/邓州市', '邓州市', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411400', '410000', '0,410000,', 411400, '0000410000,0000411400,', '0', 1, '河南省/商丘市', '商丘市', '2', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411402', '411400', '0,410000,411400,', 411402, '0000410000,0000411400,0000411402,', '1', 2, '河南省/商丘市/梁园区', '梁园区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411403', '411400', '0,410000,411400,', 411403, '0000410000,0000411400,0000411403,', '1', 2, '河南省/商丘市/睢阳区', '睢阳区', '3', '0', 'system', '2020-09-16 10:43:21', 'system', '2020-09-16 10:43:21', NULL);
INSERT INTO `js_sys_area` VALUES ('411421', '411400', '0,410000,411400,', 411421, '0000410000,0000411400,0000411421,', '1', 2, '河南省/商丘市/民权县', '民权县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411422', '411400', '0,410000,411400,', 411422, '0000410000,0000411400,0000411422,', '1', 2, '河南省/商丘市/睢县', '睢县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411423', '411400', '0,410000,411400,', 411423, '0000410000,0000411400,0000411423,', '1', 2, '河南省/商丘市/宁陵县', '宁陵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411424', '411400', '0,410000,411400,', 411424, '0000410000,0000411400,0000411424,', '1', 2, '河南省/商丘市/柘城县', '柘城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411425', '411400', '0,410000,411400,', 411425, '0000410000,0000411400,0000411425,', '1', 2, '河南省/商丘市/虞城县', '虞城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411426', '411400', '0,410000,411400,', 411426, '0000410000,0000411400,0000411426,', '1', 2, '河南省/商丘市/夏邑县', '夏邑县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411481', '411400', '0,410000,411400,', 411481, '0000410000,0000411400,0000411481,', '1', 2, '河南省/商丘市/永城市', '永城市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411500', '410000', '0,410000,', 411500, '0000410000,0000411500,', '0', 1, '河南省/信阳市', '信阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411502', '411500', '0,410000,411500,', 411502, '0000410000,0000411500,0000411502,', '1', 2, '河南省/信阳市/浉河区', '浉河区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411503', '411500', '0,410000,411500,', 411503, '0000410000,0000411500,0000411503,', '1', 2, '河南省/信阳市/平桥区', '平桥区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411521', '411500', '0,410000,411500,', 411521, '0000410000,0000411500,0000411521,', '1', 2, '河南省/信阳市/罗山县', '罗山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411522', '411500', '0,410000,411500,', 411522, '0000410000,0000411500,0000411522,', '1', 2, '河南省/信阳市/光山县', '光山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411523', '411500', '0,410000,411500,', 411523, '0000410000,0000411500,0000411523,', '1', 2, '河南省/信阳市/新县', '新县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411524', '411500', '0,410000,411500,', 411524, '0000410000,0000411500,0000411524,', '1', 2, '河南省/信阳市/商城县', '商城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411525', '411500', '0,410000,411500,', 411525, '0000410000,0000411500,0000411525,', '1', 2, '河南省/信阳市/固始县', '固始县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411526', '411500', '0,410000,411500,', 411526, '0000410000,0000411500,0000411526,', '1', 2, '河南省/信阳市/潢川县', '潢川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411527', '411500', '0,410000,411500,', 411527, '0000410000,0000411500,0000411527,', '1', 2, '河南省/信阳市/淮滨县', '淮滨县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411528', '411500', '0,410000,411500,', 411528, '0000410000,0000411500,0000411528,', '1', 2, '河南省/信阳市/息县', '息县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411600', '410000', '0,410000,', 411600, '0000410000,0000411600,', '0', 1, '河南省/周口市', '周口市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411602', '411600', '0,410000,411600,', 411602, '0000410000,0000411600,0000411602,', '1', 2, '河南省/周口市/川汇区', '川汇区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411603', '411600', '0,410000,411600,', 411603, '0000410000,0000411600,0000411603,', '1', 2, '河南省/周口市/淮阳区', '淮阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411621', '411600', '0,410000,411600,', 411621, '0000410000,0000411600,0000411621,', '1', 2, '河南省/周口市/扶沟县', '扶沟县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411622', '411600', '0,410000,411600,', 411622, '0000410000,0000411600,0000411622,', '1', 2, '河南省/周口市/西华县', '西华县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411623', '411600', '0,410000,411600,', 411623, '0000410000,0000411600,0000411623,', '1', 2, '河南省/周口市/商水县', '商水县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411624', '411600', '0,410000,411600,', 411624, '0000410000,0000411600,0000411624,', '1', 2, '河南省/周口市/沈丘县', '沈丘县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411625', '411600', '0,410000,411600,', 411625, '0000410000,0000411600,0000411625,', '1', 2, '河南省/周口市/郸城县', '郸城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411627', '411600', '0,410000,411600,', 411627, '0000410000,0000411600,0000411627,', '1', 2, '河南省/周口市/太康县', '太康县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411628', '411600', '0,410000,411600,', 411628, '0000410000,0000411600,0000411628,', '1', 2, '河南省/周口市/鹿邑县', '鹿邑县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411681', '411600', '0,410000,411600,', 411681, '0000410000,0000411600,0000411681,', '1', 2, '河南省/周口市/项城市', '项城市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411700', '410000', '0,410000,', 411700, '0000410000,0000411700,', '0', 1, '河南省/驻马店市', '驻马店市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411702', '411700', '0,410000,411700,', 411702, '0000410000,0000411700,0000411702,', '1', 2, '河南省/驻马店市/驿城区', '驿城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411721', '411700', '0,410000,411700,', 411721, '0000410000,0000411700,0000411721,', '1', 2, '河南省/驻马店市/西平县', '西平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411722', '411700', '0,410000,411700,', 411722, '0000410000,0000411700,0000411722,', '1', 2, '河南省/驻马店市/上蔡县', '上蔡县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411723', '411700', '0,410000,411700,', 411723, '0000410000,0000411700,0000411723,', '1', 2, '河南省/驻马店市/平舆县', '平舆县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411724', '411700', '0,410000,411700,', 411724, '0000410000,0000411700,0000411724,', '1', 2, '河南省/驻马店市/正阳县', '正阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411725', '411700', '0,410000,411700,', 411725, '0000410000,0000411700,0000411725,', '1', 2, '河南省/驻马店市/确山县', '确山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411726', '411700', '0,410000,411700,', 411726, '0000410000,0000411700,0000411726,', '1', 2, '河南省/驻马店市/泌阳县', '泌阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411727', '411700', '0,410000,411700,', 411727, '0000410000,0000411700,0000411727,', '1', 2, '河南省/驻马店市/汝南县', '汝南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411728', '411700', '0,410000,411700,', 411728, '0000410000,0000411700,0000411728,', '1', 2, '河南省/驻马店市/遂平县', '遂平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('411729', '411700', '0,410000,411700,', 411729, '0000410000,0000411700,0000411729,', '1', 2, '河南省/驻马店市/新蔡县', '新蔡县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('419001', '410000', '0,410000,', 419001, '0000410000,0000419001,', '1', 1, '河南省/济源市', '济源市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420000', '0', '0,', 420000, '0000420000,', '0', 0, '湖北省', '湖北省', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420100', '420000', '0,420000,', 420100, '0000420000,0000420100,', '0', 1, '湖北省/武汉市', '武汉市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420102', '420100', '0,420000,420100,', 420102, '0000420000,0000420100,0000420102,', '1', 2, '湖北省/武汉市/江岸区', '江岸区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420103', '420100', '0,420000,420100,', 420103, '0000420000,0000420100,0000420103,', '1', 2, '湖北省/武汉市/江汉区', '江汉区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420104', '420100', '0,420000,420100,', 420104, '0000420000,0000420100,0000420104,', '1', 2, '湖北省/武汉市/硚口区', '硚口区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420105', '420100', '0,420000,420100,', 420105, '0000420000,0000420100,0000420105,', '1', 2, '湖北省/武汉市/汉阳区', '汉阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420106', '420100', '0,420000,420100,', 420106, '0000420000,0000420100,0000420106,', '1', 2, '湖北省/武汉市/武昌区', '武昌区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420107', '420100', '0,420000,420100,', 420107, '0000420000,0000420100,0000420107,', '1', 2, '湖北省/武汉市/青山区', '青山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420111', '420100', '0,420000,420100,', 420111, '0000420000,0000420100,0000420111,', '1', 2, '湖北省/武汉市/洪山区', '洪山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420112', '420100', '0,420000,420100,', 420112, '0000420000,0000420100,0000420112,', '1', 2, '湖北省/武汉市/东西湖区', '东西湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420113', '420100', '0,420000,420100,', 420113, '0000420000,0000420100,0000420113,', '1', 2, '湖北省/武汉市/汉南区', '汉南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420114', '420100', '0,420000,420100,', 420114, '0000420000,0000420100,0000420114,', '1', 2, '湖北省/武汉市/蔡甸区', '蔡甸区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420115', '420100', '0,420000,420100,', 420115, '0000420000,0000420100,0000420115,', '1', 2, '湖北省/武汉市/江夏区', '江夏区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420116', '420100', '0,420000,420100,', 420116, '0000420000,0000420100,0000420116,', '1', 2, '湖北省/武汉市/黄陂区', '黄陂区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420117', '420100', '0,420000,420100,', 420117, '0000420000,0000420100,0000420117,', '1', 2, '湖北省/武汉市/新洲区', '新洲区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420200', '420000', '0,420000,', 420200, '0000420000,0000420200,', '0', 1, '湖北省/黄石市', '黄石市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420202', '420200', '0,420000,420200,', 420202, '0000420000,0000420200,0000420202,', '1', 2, '湖北省/黄石市/黄石港区', '黄石港区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420203', '420200', '0,420000,420200,', 420203, '0000420000,0000420200,0000420203,', '1', 2, '湖北省/黄石市/西塞山区', '西塞山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420204', '420200', '0,420000,420200,', 420204, '0000420000,0000420200,0000420204,', '1', 2, '湖北省/黄石市/下陆区', '下陆区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420205', '420200', '0,420000,420200,', 420205, '0000420000,0000420200,0000420205,', '1', 2, '湖北省/黄石市/铁山区', '铁山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420222', '420200', '0,420000,420200,', 420222, '0000420000,0000420200,0000420222,', '1', 2, '湖北省/黄石市/阳新县', '阳新县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420281', '420200', '0,420000,420200,', 420281, '0000420000,0000420200,0000420281,', '1', 2, '湖北省/黄石市/大冶市', '大冶市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420300', '420000', '0,420000,', 420300, '0000420000,0000420300,', '0', 1, '湖北省/十堰市', '十堰市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420302', '420300', '0,420000,420300,', 420302, '0000420000,0000420300,0000420302,', '1', 2, '湖北省/十堰市/茅箭区', '茅箭区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420303', '420300', '0,420000,420300,', 420303, '0000420000,0000420300,0000420303,', '1', 2, '湖北省/十堰市/张湾区', '张湾区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420304', '420300', '0,420000,420300,', 420304, '0000420000,0000420300,0000420304,', '1', 2, '湖北省/十堰市/郧阳区', '郧阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420322', '420300', '0,420000,420300,', 420322, '0000420000,0000420300,0000420322,', '1', 2, '湖北省/十堰市/郧西县', '郧西县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420323', '420300', '0,420000,420300,', 420323, '0000420000,0000420300,0000420323,', '1', 2, '湖北省/十堰市/竹山县', '竹山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420324', '420300', '0,420000,420300,', 420324, '0000420000,0000420300,0000420324,', '1', 2, '湖北省/十堰市/竹溪县', '竹溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420325', '420300', '0,420000,420300,', 420325, '0000420000,0000420300,0000420325,', '1', 2, '湖北省/十堰市/房县', '房县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420381', '420300', '0,420000,420300,', 420381, '0000420000,0000420300,0000420381,', '1', 2, '湖北省/十堰市/丹江口市', '丹江口市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420500', '420000', '0,420000,', 420500, '0000420000,0000420500,', '0', 1, '湖北省/宜昌市', '宜昌市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420502', '420500', '0,420000,420500,', 420502, '0000420000,0000420500,0000420502,', '1', 2, '湖北省/宜昌市/西陵区', '西陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420503', '420500', '0,420000,420500,', 420503, '0000420000,0000420500,0000420503,', '1', 2, '湖北省/宜昌市/伍家岗区', '伍家岗区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420504', '420500', '0,420000,420500,', 420504, '0000420000,0000420500,0000420504,', '1', 2, '湖北省/宜昌市/点军区', '点军区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420505', '420500', '0,420000,420500,', 420505, '0000420000,0000420500,0000420505,', '1', 2, '湖北省/宜昌市/猇亭区', '猇亭区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420506', '420500', '0,420000,420500,', 420506, '0000420000,0000420500,0000420506,', '1', 2, '湖北省/宜昌市/夷陵区', '夷陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420525', '420500', '0,420000,420500,', 420525, '0000420000,0000420500,0000420525,', '1', 2, '湖北省/宜昌市/远安县', '远安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420526', '420500', '0,420000,420500,', 420526, '0000420000,0000420500,0000420526,', '1', 2, '湖北省/宜昌市/兴山县', '兴山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420527', '420500', '0,420000,420500,', 420527, '0000420000,0000420500,0000420527,', '1', 2, '湖北省/宜昌市/秭归县', '秭归县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420528', '420500', '0,420000,420500,', 420528, '0000420000,0000420500,0000420528,', '1', 2, '湖北省/宜昌市/长阳土家族自治县', '长阳土家族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420529', '420500', '0,420000,420500,', 420529, '0000420000,0000420500,0000420529,', '1', 2, '湖北省/宜昌市/五峰土家族自治县', '五峰土家族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420581', '420500', '0,420000,420500,', 420581, '0000420000,0000420500,0000420581,', '1', 2, '湖北省/宜昌市/宜都市', '宜都市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420582', '420500', '0,420000,420500,', 420582, '0000420000,0000420500,0000420582,', '1', 2, '湖北省/宜昌市/当阳市', '当阳市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420583', '420500', '0,420000,420500,', 420583, '0000420000,0000420500,0000420583,', '1', 2, '湖北省/宜昌市/枝江市', '枝江市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420600', '420000', '0,420000,', 420600, '0000420000,0000420600,', '0', 1, '湖北省/襄阳市', '襄阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420602', '420600', '0,420000,420600,', 420602, '0000420000,0000420600,0000420602,', '1', 2, '湖北省/襄阳市/襄城区', '襄城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420606', '420600', '0,420000,420600,', 420606, '0000420000,0000420600,0000420606,', '1', 2, '湖北省/襄阳市/樊城区', '樊城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420607', '420600', '0,420000,420600,', 420607, '0000420000,0000420600,0000420607,', '1', 2, '湖北省/襄阳市/襄州区', '襄州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420624', '420600', '0,420000,420600,', 420624, '0000420000,0000420600,0000420624,', '1', 2, '湖北省/襄阳市/南漳县', '南漳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420625', '420600', '0,420000,420600,', 420625, '0000420000,0000420600,0000420625,', '1', 2, '湖北省/襄阳市/谷城县', '谷城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420626', '420600', '0,420000,420600,', 420626, '0000420000,0000420600,0000420626,', '1', 2, '湖北省/襄阳市/保康县', '保康县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420682', '420600', '0,420000,420600,', 420682, '0000420000,0000420600,0000420682,', '1', 2, '湖北省/襄阳市/老河口市', '老河口市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420683', '420600', '0,420000,420600,', 420683, '0000420000,0000420600,0000420683,', '1', 2, '湖北省/襄阳市/枣阳市', '枣阳市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420684', '420600', '0,420000,420600,', 420684, '0000420000,0000420600,0000420684,', '1', 2, '湖北省/襄阳市/宜城市', '宜城市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420700', '420000', '0,420000,', 420700, '0000420000,0000420700,', '0', 1, '湖北省/鄂州市', '鄂州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420702', '420700', '0,420000,420700,', 420702, '0000420000,0000420700,0000420702,', '1', 2, '湖北省/鄂州市/梁子湖区', '梁子湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420703', '420700', '0,420000,420700,', 420703, '0000420000,0000420700,0000420703,', '1', 2, '湖北省/鄂州市/华容区', '华容区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420704', '420700', '0,420000,420700,', 420704, '0000420000,0000420700,0000420704,', '1', 2, '湖北省/鄂州市/鄂城区', '鄂城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420800', '420000', '0,420000,', 420800, '0000420000,0000420800,', '0', 1, '湖北省/荆门市', '荆门市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420802', '420800', '0,420000,420800,', 420802, '0000420000,0000420800,0000420802,', '1', 2, '湖北省/荆门市/东宝区', '东宝区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420804', '420800', '0,420000,420800,', 420804, '0000420000,0000420800,0000420804,', '1', 2, '湖北省/荆门市/掇刀区', '掇刀区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420822', '420800', '0,420000,420800,', 420822, '0000420000,0000420800,0000420822,', '1', 2, '湖北省/荆门市/沙洋县', '沙洋县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420881', '420800', '0,420000,420800,', 420881, '0000420000,0000420800,0000420881,', '1', 2, '湖北省/荆门市/钟祥市', '钟祥市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420882', '420800', '0,420000,420800,', 420882, '0000420000,0000420800,0000420882,', '1', 2, '湖北省/荆门市/京山市', '京山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420900', '420000', '0,420000,', 420900, '0000420000,0000420900,', '0', 1, '湖北省/孝感市', '孝感市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420902', '420900', '0,420000,420900,', 420902, '0000420000,0000420900,0000420902,', '1', 2, '湖北省/孝感市/孝南区', '孝南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420921', '420900', '0,420000,420900,', 420921, '0000420000,0000420900,0000420921,', '1', 2, '湖北省/孝感市/孝昌县', '孝昌县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420922', '420900', '0,420000,420900,', 420922, '0000420000,0000420900,0000420922,', '1', 2, '湖北省/孝感市/大悟县', '大悟县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420923', '420900', '0,420000,420900,', 420923, '0000420000,0000420900,0000420923,', '1', 2, '湖北省/孝感市/云梦县', '云梦县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420981', '420900', '0,420000,420900,', 420981, '0000420000,0000420900,0000420981,', '1', 2, '湖北省/孝感市/应城市', '应城市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420982', '420900', '0,420000,420900,', 420982, '0000420000,0000420900,0000420982,', '1', 2, '湖北省/孝感市/安陆市', '安陆市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('420984', '420900', '0,420000,420900,', 420984, '0000420000,0000420900,0000420984,', '1', 2, '湖北省/孝感市/汉川市', '汉川市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421000', '420000', '0,420000,', 421000, '0000420000,0000421000,', '0', 1, '湖北省/荆州市', '荆州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421002', '421000', '0,420000,421000,', 421002, '0000420000,0000421000,0000421002,', '1', 2, '湖北省/荆州市/沙市区', '沙市区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421003', '421000', '0,420000,421000,', 421003, '0000420000,0000421000,0000421003,', '1', 2, '湖北省/荆州市/荆州区', '荆州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421022', '421000', '0,420000,421000,', 421022, '0000420000,0000421000,0000421022,', '1', 2, '湖北省/荆州市/公安县', '公安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421023', '421000', '0,420000,421000,', 421023, '0000420000,0000421000,0000421023,', '1', 2, '湖北省/荆州市/监利县', '监利县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421024', '421000', '0,420000,421000,', 421024, '0000420000,0000421000,0000421024,', '1', 2, '湖北省/荆州市/江陵县', '江陵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421081', '421000', '0,420000,421000,', 421081, '0000420000,0000421000,0000421081,', '1', 2, '湖北省/荆州市/石首市', '石首市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421083', '421000', '0,420000,421000,', 421083, '0000420000,0000421000,0000421083,', '1', 2, '湖北省/荆州市/洪湖市', '洪湖市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421087', '421000', '0,420000,421000,', 421087, '0000420000,0000421000,0000421087,', '1', 2, '湖北省/荆州市/松滋市', '松滋市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421100', '420000', '0,420000,', 421100, '0000420000,0000421100,', '0', 1, '湖北省/黄冈市', '黄冈市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421102', '421100', '0,420000,421100,', 421102, '0000420000,0000421100,0000421102,', '1', 2, '湖北省/黄冈市/黄州区', '黄州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421121', '421100', '0,420000,421100,', 421121, '0000420000,0000421100,0000421121,', '1', 2, '湖北省/黄冈市/团风县', '团风县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421122', '421100', '0,420000,421100,', 421122, '0000420000,0000421100,0000421122,', '1', 2, '湖北省/黄冈市/红安县', '红安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421123', '421100', '0,420000,421100,', 421123, '0000420000,0000421100,0000421123,', '1', 2, '湖北省/黄冈市/罗田县', '罗田县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421124', '421100', '0,420000,421100,', 421124, '0000420000,0000421100,0000421124,', '1', 2, '湖北省/黄冈市/英山县', '英山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421125', '421100', '0,420000,421100,', 421125, '0000420000,0000421100,0000421125,', '1', 2, '湖北省/黄冈市/浠水县', '浠水县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421126', '421100', '0,420000,421100,', 421126, '0000420000,0000421100,0000421126,', '1', 2, '湖北省/黄冈市/蕲春县', '蕲春县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421127', '421100', '0,420000,421100,', 421127, '0000420000,0000421100,0000421127,', '1', 2, '湖北省/黄冈市/黄梅县', '黄梅县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421181', '421100', '0,420000,421100,', 421181, '0000420000,0000421100,0000421181,', '1', 2, '湖北省/黄冈市/麻城市', '麻城市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421182', '421100', '0,420000,421100,', 421182, '0000420000,0000421100,0000421182,', '1', 2, '湖北省/黄冈市/武穴市', '武穴市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421200', '420000', '0,420000,', 421200, '0000420000,0000421200,', '0', 1, '湖北省/咸宁市', '咸宁市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421202', '421200', '0,420000,421200,', 421202, '0000420000,0000421200,0000421202,', '1', 2, '湖北省/咸宁市/咸安区', '咸安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421221', '421200', '0,420000,421200,', 421221, '0000420000,0000421200,0000421221,', '1', 2, '湖北省/咸宁市/嘉鱼县', '嘉鱼县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421222', '421200', '0,420000,421200,', 421222, '0000420000,0000421200,0000421222,', '1', 2, '湖北省/咸宁市/通城县', '通城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421223', '421200', '0,420000,421200,', 421223, '0000420000,0000421200,0000421223,', '1', 2, '湖北省/咸宁市/崇阳县', '崇阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421224', '421200', '0,420000,421200,', 421224, '0000420000,0000421200,0000421224,', '1', 2, '湖北省/咸宁市/通山县', '通山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421281', '421200', '0,420000,421200,', 421281, '0000420000,0000421200,0000421281,', '1', 2, '湖北省/咸宁市/赤壁市', '赤壁市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421300', '420000', '0,420000,', 421300, '0000420000,0000421300,', '0', 1, '湖北省/随州市', '随州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421303', '421300', '0,420000,421300,', 421303, '0000420000,0000421300,0000421303,', '1', 2, '湖北省/随州市/曾都区', '曾都区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421321', '421300', '0,420000,421300,', 421321, '0000420000,0000421300,0000421321,', '1', 2, '湖北省/随州市/随县', '随县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('421381', '421300', '0,420000,421300,', 421381, '0000420000,0000421300,0000421381,', '1', 2, '湖北省/随州市/广水市', '广水市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422800', '420000', '0,420000,', 422800, '0000420000,0000422800,', '0', 1, '湖北省/恩施土家族苗族自治州', '恩施土家族苗族自治州', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422801', '422800', '0,420000,422800,', 422801, '0000420000,0000422800,0000422801,', '1', 2, '湖北省/恩施土家族苗族自治州/恩施市', '恩施市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422802', '422800', '0,420000,422800,', 422802, '0000420000,0000422800,0000422802,', '1', 2, '湖北省/恩施土家族苗族自治州/利川市', '利川市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422822', '422800', '0,420000,422800,', 422822, '0000420000,0000422800,0000422822,', '1', 2, '湖北省/恩施土家族苗族自治州/建始县', '建始县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422823', '422800', '0,420000,422800,', 422823, '0000420000,0000422800,0000422823,', '1', 2, '湖北省/恩施土家族苗族自治州/巴东县', '巴东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422825', '422800', '0,420000,422800,', 422825, '0000420000,0000422800,0000422825,', '1', 2, '湖北省/恩施土家族苗族自治州/宣恩县', '宣恩县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422826', '422800', '0,420000,422800,', 422826, '0000420000,0000422800,0000422826,', '1', 2, '湖北省/恩施土家族苗族自治州/咸丰县', '咸丰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422827', '422800', '0,420000,422800,', 422827, '0000420000,0000422800,0000422827,', '1', 2, '湖北省/恩施土家族苗族自治州/来凤县', '来凤县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('422828', '422800', '0,420000,422800,', 422828, '0000420000,0000422800,0000422828,', '1', 2, '湖北省/恩施土家族苗族自治州/鹤峰县', '鹤峰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('429004', '420000', '0,420000,', 429004, '0000420000,0000429004,', '1', 1, '湖北省/仙桃市', '仙桃市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('429005', '420000', '0,420000,', 429005, '0000420000,0000429005,', '1', 1, '湖北省/潜江市', '潜江市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('429006', '420000', '0,420000,', 429006, '0000420000,0000429006,', '1', 1, '湖北省/天门市', '天门市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('429021', '420000', '0,420000,', 429021, '0000420000,0000429021,', '1', 1, '湖北省/神农架林区', '神农架林区', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430000', '0', '0,', 430000, '0000430000,', '0', 0, '湖南省', '湖南省', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430100', '430000', '0,430000,', 430100, '0000430000,0000430100,', '0', 1, '湖南省/长沙市', '长沙市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430102', '430100', '0,430000,430100,', 430102, '0000430000,0000430100,0000430102,', '1', 2, '湖南省/长沙市/芙蓉区', '芙蓉区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430103', '430100', '0,430000,430100,', 430103, '0000430000,0000430100,0000430103,', '1', 2, '湖南省/长沙市/天心区', '天心区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430104', '430100', '0,430000,430100,', 430104, '0000430000,0000430100,0000430104,', '1', 2, '湖南省/长沙市/岳麓区', '岳麓区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430105', '430100', '0,430000,430100,', 430105, '0000430000,0000430100,0000430105,', '1', 2, '湖南省/长沙市/开福区', '开福区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430111', '430100', '0,430000,430100,', 430111, '0000430000,0000430100,0000430111,', '1', 2, '湖南省/长沙市/雨花区', '雨花区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430112', '430100', '0,430000,430100,', 430112, '0000430000,0000430100,0000430112,', '1', 2, '湖南省/长沙市/望城区', '望城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430121', '430100', '0,430000,430100,', 430121, '0000430000,0000430100,0000430121,', '1', 2, '湖南省/长沙市/长沙县', '长沙县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430181', '430100', '0,430000,430100,', 430181, '0000430000,0000430100,0000430181,', '1', 2, '湖南省/长沙市/浏阳市', '浏阳市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430182', '430100', '0,430000,430100,', 430182, '0000430000,0000430100,0000430182,', '1', 2, '湖南省/长沙市/宁乡市', '宁乡市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430200', '430000', '0,430000,', 430200, '0000430000,0000430200,', '0', 1, '湖南省/株洲市', '株洲市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430202', '430200', '0,430000,430200,', 430202, '0000430000,0000430200,0000430202,', '1', 2, '湖南省/株洲市/荷塘区', '荷塘区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430203', '430200', '0,430000,430200,', 430203, '0000430000,0000430200,0000430203,', '1', 2, '湖南省/株洲市/芦淞区', '芦淞区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430204', '430200', '0,430000,430200,', 430204, '0000430000,0000430200,0000430204,', '1', 2, '湖南省/株洲市/石峰区', '石峰区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430211', '430200', '0,430000,430200,', 430211, '0000430000,0000430200,0000430211,', '1', 2, '湖南省/株洲市/天元区', '天元区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430212', '430200', '0,430000,430200,', 430212, '0000430000,0000430200,0000430212,', '1', 2, '湖南省/株洲市/渌口区', '渌口区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430223', '430200', '0,430000,430200,', 430223, '0000430000,0000430200,0000430223,', '1', 2, '湖南省/株洲市/攸县', '攸县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430224', '430200', '0,430000,430200,', 430224, '0000430000,0000430200,0000430224,', '1', 2, '湖南省/株洲市/茶陵县', '茶陵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430225', '430200', '0,430000,430200,', 430225, '0000430000,0000430200,0000430225,', '1', 2, '湖南省/株洲市/炎陵县', '炎陵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430281', '430200', '0,430000,430200,', 430281, '0000430000,0000430200,0000430281,', '1', 2, '湖南省/株洲市/醴陵市', '醴陵市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430300', '430000', '0,430000,', 430300, '0000430000,0000430300,', '0', 1, '湖南省/湘潭市', '湘潭市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430302', '430300', '0,430000,430300,', 430302, '0000430000,0000430300,0000430302,', '1', 2, '湖南省/湘潭市/雨湖区', '雨湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430304', '430300', '0,430000,430300,', 430304, '0000430000,0000430300,0000430304,', '1', 2, '湖南省/湘潭市/岳塘区', '岳塘区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430321', '430300', '0,430000,430300,', 430321, '0000430000,0000430300,0000430321,', '1', 2, '湖南省/湘潭市/湘潭县', '湘潭县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430381', '430300', '0,430000,430300,', 430381, '0000430000,0000430300,0000430381,', '1', 2, '湖南省/湘潭市/湘乡市', '湘乡市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430382', '430300', '0,430000,430300,', 430382, '0000430000,0000430300,0000430382,', '1', 2, '湖南省/湘潭市/韶山市', '韶山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430400', '430000', '0,430000,', 430400, '0000430000,0000430400,', '0', 1, '湖南省/衡阳市', '衡阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430405', '430400', '0,430000,430400,', 430405, '0000430000,0000430400,0000430405,', '1', 2, '湖南省/衡阳市/珠晖区', '珠晖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430406', '430400', '0,430000,430400,', 430406, '0000430000,0000430400,0000430406,', '1', 2, '湖南省/衡阳市/雁峰区', '雁峰区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430407', '430400', '0,430000,430400,', 430407, '0000430000,0000430400,0000430407,', '1', 2, '湖南省/衡阳市/石鼓区', '石鼓区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430408', '430400', '0,430000,430400,', 430408, '0000430000,0000430400,0000430408,', '1', 2, '湖南省/衡阳市/蒸湘区', '蒸湘区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430412', '430400', '0,430000,430400,', 430412, '0000430000,0000430400,0000430412,', '1', 2, '湖南省/衡阳市/南岳区', '南岳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430421', '430400', '0,430000,430400,', 430421, '0000430000,0000430400,0000430421,', '1', 2, '湖南省/衡阳市/衡阳县', '衡阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430422', '430400', '0,430000,430400,', 430422, '0000430000,0000430400,0000430422,', '1', 2, '湖南省/衡阳市/衡南县', '衡南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430423', '430400', '0,430000,430400,', 430423, '0000430000,0000430400,0000430423,', '1', 2, '湖南省/衡阳市/衡山县', '衡山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430424', '430400', '0,430000,430400,', 430424, '0000430000,0000430400,0000430424,', '1', 2, '湖南省/衡阳市/衡东县', '衡东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430426', '430400', '0,430000,430400,', 430426, '0000430000,0000430400,0000430426,', '1', 2, '湖南省/衡阳市/祁东县', '祁东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430481', '430400', '0,430000,430400,', 430481, '0000430000,0000430400,0000430481,', '1', 2, '湖南省/衡阳市/耒阳市', '耒阳市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430482', '430400', '0,430000,430400,', 430482, '0000430000,0000430400,0000430482,', '1', 2, '湖南省/衡阳市/常宁市', '常宁市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430500', '430000', '0,430000,', 430500, '0000430000,0000430500,', '0', 1, '湖南省/邵阳市', '邵阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430502', '430500', '0,430000,430500,', 430502, '0000430000,0000430500,0000430502,', '1', 2, '湖南省/邵阳市/双清区', '双清区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430503', '430500', '0,430000,430500,', 430503, '0000430000,0000430500,0000430503,', '1', 2, '湖南省/邵阳市/大祥区', '大祥区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430511', '430500', '0,430000,430500,', 430511, '0000430000,0000430500,0000430511,', '1', 2, '湖南省/邵阳市/北塔区', '北塔区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430522', '430500', '0,430000,430500,', 430522, '0000430000,0000430500,0000430522,', '1', 2, '湖南省/邵阳市/新邵县', '新邵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430523', '430500', '0,430000,430500,', 430523, '0000430000,0000430500,0000430523,', '1', 2, '湖南省/邵阳市/邵阳县', '邵阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430524', '430500', '0,430000,430500,', 430524, '0000430000,0000430500,0000430524,', '1', 2, '湖南省/邵阳市/隆回县', '隆回县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430525', '430500', '0,430000,430500,', 430525, '0000430000,0000430500,0000430525,', '1', 2, '湖南省/邵阳市/洞口县', '洞口县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430527', '430500', '0,430000,430500,', 430527, '0000430000,0000430500,0000430527,', '1', 2, '湖南省/邵阳市/绥宁县', '绥宁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430528', '430500', '0,430000,430500,', 430528, '0000430000,0000430500,0000430528,', '1', 2, '湖南省/邵阳市/新宁县', '新宁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430529', '430500', '0,430000,430500,', 430529, '0000430000,0000430500,0000430529,', '1', 2, '湖南省/邵阳市/城步苗族自治县', '城步苗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430581', '430500', '0,430000,430500,', 430581, '0000430000,0000430500,0000430581,', '1', 2, '湖南省/邵阳市/武冈市', '武冈市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430582', '430500', '0,430000,430500,', 430582, '0000430000,0000430500,0000430582,', '1', 2, '湖南省/邵阳市/邵东市', '邵东市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430600', '430000', '0,430000,', 430600, '0000430000,0000430600,', '0', 1, '湖南省/岳阳市', '岳阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430602', '430600', '0,430000,430600,', 430602, '0000430000,0000430600,0000430602,', '1', 2, '湖南省/岳阳市/岳阳楼区', '岳阳楼区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430603', '430600', '0,430000,430600,', 430603, '0000430000,0000430600,0000430603,', '1', 2, '湖南省/岳阳市/云溪区', '云溪区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430611', '430600', '0,430000,430600,', 430611, '0000430000,0000430600,0000430611,', '1', 2, '湖南省/岳阳市/君山区', '君山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430621', '430600', '0,430000,430600,', 430621, '0000430000,0000430600,0000430621,', '1', 2, '湖南省/岳阳市/岳阳县', '岳阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430623', '430600', '0,430000,430600,', 430623, '0000430000,0000430600,0000430623,', '1', 2, '湖南省/岳阳市/华容县', '华容县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430624', '430600', '0,430000,430600,', 430624, '0000430000,0000430600,0000430624,', '1', 2, '湖南省/岳阳市/湘阴县', '湘阴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430626', '430600', '0,430000,430600,', 430626, '0000430000,0000430600,0000430626,', '1', 2, '湖南省/岳阳市/平江县', '平江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430681', '430600', '0,430000,430600,', 430681, '0000430000,0000430600,0000430681,', '1', 2, '湖南省/岳阳市/汨罗市', '汨罗市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430682', '430600', '0,430000,430600,', 430682, '0000430000,0000430600,0000430682,', '1', 2, '湖南省/岳阳市/临湘市', '临湘市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430700', '430000', '0,430000,', 430700, '0000430000,0000430700,', '0', 1, '湖南省/常德市', '常德市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430702', '430700', '0,430000,430700,', 430702, '0000430000,0000430700,0000430702,', '1', 2, '湖南省/常德市/武陵区', '武陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430703', '430700', '0,430000,430700,', 430703, '0000430000,0000430700,0000430703,', '1', 2, '湖南省/常德市/鼎城区', '鼎城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430721', '430700', '0,430000,430700,', 430721, '0000430000,0000430700,0000430721,', '1', 2, '湖南省/常德市/安乡县', '安乡县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430722', '430700', '0,430000,430700,', 430722, '0000430000,0000430700,0000430722,', '1', 2, '湖南省/常德市/汉寿县', '汉寿县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430723', '430700', '0,430000,430700,', 430723, '0000430000,0000430700,0000430723,', '1', 2, '湖南省/常德市/澧县', '澧县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430724', '430700', '0,430000,430700,', 430724, '0000430000,0000430700,0000430724,', '1', 2, '湖南省/常德市/临澧县', '临澧县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430725', '430700', '0,430000,430700,', 430725, '0000430000,0000430700,0000430725,', '1', 2, '湖南省/常德市/桃源县', '桃源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430726', '430700', '0,430000,430700,', 430726, '0000430000,0000430700,0000430726,', '1', 2, '湖南省/常德市/石门县', '石门县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430781', '430700', '0,430000,430700,', 430781, '0000430000,0000430700,0000430781,', '1', 2, '湖南省/常德市/津市市', '津市市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430800', '430000', '0,430000,', 430800, '0000430000,0000430800,', '0', 1, '湖南省/张家界市', '张家界市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430802', '430800', '0,430000,430800,', 430802, '0000430000,0000430800,0000430802,', '1', 2, '湖南省/张家界市/永定区', '永定区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430811', '430800', '0,430000,430800,', 430811, '0000430000,0000430800,0000430811,', '1', 2, '湖南省/张家界市/武陵源区', '武陵源区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430821', '430800', '0,430000,430800,', 430821, '0000430000,0000430800,0000430821,', '1', 2, '湖南省/张家界市/慈利县', '慈利县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430822', '430800', '0,430000,430800,', 430822, '0000430000,0000430800,0000430822,', '1', 2, '湖南省/张家界市/桑植县', '桑植县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430900', '430000', '0,430000,', 430900, '0000430000,0000430900,', '0', 1, '湖南省/益阳市', '益阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430902', '430900', '0,430000,430900,', 430902, '0000430000,0000430900,0000430902,', '1', 2, '湖南省/益阳市/资阳区', '资阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430903', '430900', '0,430000,430900,', 430903, '0000430000,0000430900,0000430903,', '1', 2, '湖南省/益阳市/赫山区', '赫山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430921', '430900', '0,430000,430900,', 430921, '0000430000,0000430900,0000430921,', '1', 2, '湖南省/益阳市/南县', '南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430922', '430900', '0,430000,430900,', 430922, '0000430000,0000430900,0000430922,', '1', 2, '湖南省/益阳市/桃江县', '桃江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430923', '430900', '0,430000,430900,', 430923, '0000430000,0000430900,0000430923,', '1', 2, '湖南省/益阳市/安化县', '安化县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('430981', '430900', '0,430000,430900,', 430981, '0000430000,0000430900,0000430981,', '1', 2, '湖南省/益阳市/沅江市', '沅江市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431000', '430000', '0,430000,', 431000, '0000430000,0000431000,', '0', 1, '湖南省/郴州市', '郴州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431002', '431000', '0,430000,431000,', 431002, '0000430000,0000431000,0000431002,', '1', 2, '湖南省/郴州市/北湖区', '北湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431003', '431000', '0,430000,431000,', 431003, '0000430000,0000431000,0000431003,', '1', 2, '湖南省/郴州市/苏仙区', '苏仙区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431021', '431000', '0,430000,431000,', 431021, '0000430000,0000431000,0000431021,', '1', 2, '湖南省/郴州市/桂阳县', '桂阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431022', '431000', '0,430000,431000,', 431022, '0000430000,0000431000,0000431022,', '1', 2, '湖南省/郴州市/宜章县', '宜章县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431023', '431000', '0,430000,431000,', 431023, '0000430000,0000431000,0000431023,', '1', 2, '湖南省/郴州市/永兴县', '永兴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431024', '431000', '0,430000,431000,', 431024, '0000430000,0000431000,0000431024,', '1', 2, '湖南省/郴州市/嘉禾县', '嘉禾县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431025', '431000', '0,430000,431000,', 431025, '0000430000,0000431000,0000431025,', '1', 2, '湖南省/郴州市/临武县', '临武县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431026', '431000', '0,430000,431000,', 431026, '0000430000,0000431000,0000431026,', '1', 2, '湖南省/郴州市/汝城县', '汝城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431027', '431000', '0,430000,431000,', 431027, '0000430000,0000431000,0000431027,', '1', 2, '湖南省/郴州市/桂东县', '桂东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431028', '431000', '0,430000,431000,', 431028, '0000430000,0000431000,0000431028,', '1', 2, '湖南省/郴州市/安仁县', '安仁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431081', '431000', '0,430000,431000,', 431081, '0000430000,0000431000,0000431081,', '1', 2, '湖南省/郴州市/资兴市', '资兴市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431100', '430000', '0,430000,', 431100, '0000430000,0000431100,', '0', 1, '湖南省/永州市', '永州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431102', '431100', '0,430000,431100,', 431102, '0000430000,0000431100,0000431102,', '1', 2, '湖南省/永州市/零陵区', '零陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431103', '431100', '0,430000,431100,', 431103, '0000430000,0000431100,0000431103,', '1', 2, '湖南省/永州市/冷水滩区', '冷水滩区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431121', '431100', '0,430000,431100,', 431121, '0000430000,0000431100,0000431121,', '1', 2, '湖南省/永州市/祁阳县', '祁阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431122', '431100', '0,430000,431100,', 431122, '0000430000,0000431100,0000431122,', '1', 2, '湖南省/永州市/东安县', '东安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431123', '431100', '0,430000,431100,', 431123, '0000430000,0000431100,0000431123,', '1', 2, '湖南省/永州市/双牌县', '双牌县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431124', '431100', '0,430000,431100,', 431124, '0000430000,0000431100,0000431124,', '1', 2, '湖南省/永州市/道县', '道县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431125', '431100', '0,430000,431100,', 431125, '0000430000,0000431100,0000431125,', '1', 2, '湖南省/永州市/江永县', '江永县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431126', '431100', '0,430000,431100,', 431126, '0000430000,0000431100,0000431126,', '1', 2, '湖南省/永州市/宁远县', '宁远县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431127', '431100', '0,430000,431100,', 431127, '0000430000,0000431100,0000431127,', '1', 2, '湖南省/永州市/蓝山县', '蓝山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431128', '431100', '0,430000,431100,', 431128, '0000430000,0000431100,0000431128,', '1', 2, '湖南省/永州市/新田县', '新田县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431129', '431100', '0,430000,431100,', 431129, '0000430000,0000431100,0000431129,', '1', 2, '湖南省/永州市/江华瑶族自治县', '江华瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431200', '430000', '0,430000,', 431200, '0000430000,0000431200,', '0', 1, '湖南省/怀化市', '怀化市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431202', '431200', '0,430000,431200,', 431202, '0000430000,0000431200,0000431202,', '1', 2, '湖南省/怀化市/鹤城区', '鹤城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431221', '431200', '0,430000,431200,', 431221, '0000430000,0000431200,0000431221,', '1', 2, '湖南省/怀化市/中方县', '中方县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431222', '431200', '0,430000,431200,', 431222, '0000430000,0000431200,0000431222,', '1', 2, '湖南省/怀化市/沅陵县', '沅陵县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431223', '431200', '0,430000,431200,', 431223, '0000430000,0000431200,0000431223,', '1', 2, '湖南省/怀化市/辰溪县', '辰溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431224', '431200', '0,430000,431200,', 431224, '0000430000,0000431200,0000431224,', '1', 2, '湖南省/怀化市/溆浦县', '溆浦县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431225', '431200', '0,430000,431200,', 431225, '0000430000,0000431200,0000431225,', '1', 2, '湖南省/怀化市/会同县', '会同县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431226', '431200', '0,430000,431200,', 431226, '0000430000,0000431200,0000431226,', '1', 2, '湖南省/怀化市/麻阳苗族自治县', '麻阳苗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431227', '431200', '0,430000,431200,', 431227, '0000430000,0000431200,0000431227,', '1', 2, '湖南省/怀化市/新晃侗族自治县', '新晃侗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431228', '431200', '0,430000,431200,', 431228, '0000430000,0000431200,0000431228,', '1', 2, '湖南省/怀化市/芷江侗族自治县', '芷江侗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431229', '431200', '0,430000,431200,', 431229, '0000430000,0000431200,0000431229,', '1', 2, '湖南省/怀化市/靖州苗族侗族自治县', '靖州苗族侗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431230', '431200', '0,430000,431200,', 431230, '0000430000,0000431200,0000431230,', '1', 2, '湖南省/怀化市/通道侗族自治县', '通道侗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431281', '431200', '0,430000,431200,', 431281, '0000430000,0000431200,0000431281,', '1', 2, '湖南省/怀化市/洪江市', '洪江市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431300', '430000', '0,430000,', 431300, '0000430000,0000431300,', '0', 1, '湖南省/娄底市', '娄底市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431302', '431300', '0,430000,431300,', 431302, '0000430000,0000431300,0000431302,', '1', 2, '湖南省/娄底市/娄星区', '娄星区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431321', '431300', '0,430000,431300,', 431321, '0000430000,0000431300,0000431321,', '1', 2, '湖南省/娄底市/双峰县', '双峰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431322', '431300', '0,430000,431300,', 431322, '0000430000,0000431300,0000431322,', '1', 2, '湖南省/娄底市/新化县', '新化县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431381', '431300', '0,430000,431300,', 431381, '0000430000,0000431300,0000431381,', '1', 2, '湖南省/娄底市/冷水江市', '冷水江市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('431382', '431300', '0,430000,431300,', 431382, '0000430000,0000431300,0000431382,', '1', 2, '湖南省/娄底市/涟源市', '涟源市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433100', '430000', '0,430000,', 433100, '0000430000,0000433100,', '0', 1, '湖南省/湘西土家族苗族自治州', '湘西土家族苗族自治州', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433101', '433100', '0,430000,433100,', 433101, '0000430000,0000433100,0000433101,', '1', 2, '湖南省/湘西土家族苗族自治州/吉首市', '吉首市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433122', '433100', '0,430000,433100,', 433122, '0000430000,0000433100,0000433122,', '1', 2, '湖南省/湘西土家族苗族自治州/泸溪县', '泸溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433123', '433100', '0,430000,433100,', 433123, '0000430000,0000433100,0000433123,', '1', 2, '湖南省/湘西土家族苗族自治州/凤凰县', '凤凰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433124', '433100', '0,430000,433100,', 433124, '0000430000,0000433100,0000433124,', '1', 2, '湖南省/湘西土家族苗族自治州/花垣县', '花垣县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433125', '433100', '0,430000,433100,', 433125, '0000430000,0000433100,0000433125,', '1', 2, '湖南省/湘西土家族苗族自治州/保靖县', '保靖县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433126', '433100', '0,430000,433100,', 433126, '0000430000,0000433100,0000433126,', '1', 2, '湖南省/湘西土家族苗族自治州/古丈县', '古丈县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433127', '433100', '0,430000,433100,', 433127, '0000430000,0000433100,0000433127,', '1', 2, '湖南省/湘西土家族苗族自治州/永顺县', '永顺县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('433130', '433100', '0,430000,433100,', 433130, '0000430000,0000433100,0000433130,', '1', 2, '湖南省/湘西土家族苗族自治州/龙山县', '龙山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440000', '0', '0,', 440000, '0000440000,', '0', 0, '广东省', '广东省', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440100', '440000', '0,440000,', 440100, '0000440000,0000440100,', '0', 1, '广东省/广州市', '广州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440103', '440100', '0,440000,440100,', 440103, '0000440000,0000440100,0000440103,', '1', 2, '广东省/广州市/荔湾区', '荔湾区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440104', '440100', '0,440000,440100,', 440104, '0000440000,0000440100,0000440104,', '1', 2, '广东省/广州市/越秀区', '越秀区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440105', '440100', '0,440000,440100,', 440105, '0000440000,0000440100,0000440105,', '1', 2, '广东省/广州市/海珠区', '海珠区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440106', '440100', '0,440000,440100,', 440106, '0000440000,0000440100,0000440106,', '1', 2, '广东省/广州市/天河区', '天河区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440111', '440100', '0,440000,440100,', 440111, '0000440000,0000440100,0000440111,', '1', 2, '广东省/广州市/白云区', '白云区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440112', '440100', '0,440000,440100,', 440112, '0000440000,0000440100,0000440112,', '1', 2, '广东省/广州市/黄埔区', '黄埔区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440113', '440100', '0,440000,440100,', 440113, '0000440000,0000440100,0000440113,', '1', 2, '广东省/广州市/番禺区', '番禺区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440114', '440100', '0,440000,440100,', 440114, '0000440000,0000440100,0000440114,', '1', 2, '广东省/广州市/花都区', '花都区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440115', '440100', '0,440000,440100,', 440115, '0000440000,0000440100,0000440115,', '1', 2, '广东省/广州市/南沙区', '南沙区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440117', '440100', '0,440000,440100,', 440117, '0000440000,0000440100,0000440117,', '1', 2, '广东省/广州市/从化区', '从化区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440118', '440100', '0,440000,440100,', 440118, '0000440000,0000440100,0000440118,', '1', 2, '广东省/广州市/增城区', '增城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440200', '440000', '0,440000,', 440200, '0000440000,0000440200,', '0', 1, '广东省/韶关市', '韶关市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440203', '440200', '0,440000,440200,', 440203, '0000440000,0000440200,0000440203,', '1', 2, '广东省/韶关市/武江区', '武江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440204', '440200', '0,440000,440200,', 440204, '0000440000,0000440200,0000440204,', '1', 2, '广东省/韶关市/浈江区', '浈江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440205', '440200', '0,440000,440200,', 440205, '0000440000,0000440200,0000440205,', '1', 2, '广东省/韶关市/曲江区', '曲江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440222', '440200', '0,440000,440200,', 440222, '0000440000,0000440200,0000440222,', '1', 2, '广东省/韶关市/始兴县', '始兴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440224', '440200', '0,440000,440200,', 440224, '0000440000,0000440200,0000440224,', '1', 2, '广东省/韶关市/仁化县', '仁化县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440229', '440200', '0,440000,440200,', 440229, '0000440000,0000440200,0000440229,', '1', 2, '广东省/韶关市/翁源县', '翁源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440232', '440200', '0,440000,440200,', 440232, '0000440000,0000440200,0000440232,', '1', 2, '广东省/韶关市/乳源瑶族自治县', '乳源瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440233', '440200', '0,440000,440200,', 440233, '0000440000,0000440200,0000440233,', '1', 2, '广东省/韶关市/新丰县', '新丰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440281', '440200', '0,440000,440200,', 440281, '0000440000,0000440200,0000440281,', '1', 2, '广东省/韶关市/乐昌市', '乐昌市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440282', '440200', '0,440000,440200,', 440282, '0000440000,0000440200,0000440282,', '1', 2, '广东省/韶关市/南雄市', '南雄市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440300', '440000', '0,440000,', 440300, '0000440000,0000440300,', '0', 1, '广东省/深圳市', '深圳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440303', '440300', '0,440000,440300,', 440303, '0000440000,0000440300,0000440303,', '1', 2, '广东省/深圳市/罗湖区', '罗湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440304', '440300', '0,440000,440300,', 440304, '0000440000,0000440300,0000440304,', '1', 2, '广东省/深圳市/福田区', '福田区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440305', '440300', '0,440000,440300,', 440305, '0000440000,0000440300,0000440305,', '1', 2, '广东省/深圳市/南山区', '南山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440306', '440300', '0,440000,440300,', 440306, '0000440000,0000440300,0000440306,', '1', 2, '广东省/深圳市/宝安区', '宝安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440307', '440300', '0,440000,440300,', 440307, '0000440000,0000440300,0000440307,', '1', 2, '广东省/深圳市/龙岗区', '龙岗区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440308', '440300', '0,440000,440300,', 440308, '0000440000,0000440300,0000440308,', '1', 2, '广东省/深圳市/盐田区', '盐田区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440309', '440300', '0,440000,440300,', 440309, '0000440000,0000440300,0000440309,', '1', 2, '广东省/深圳市/龙华区', '龙华区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440310', '440300', '0,440000,440300,', 440310, '0000440000,0000440300,0000440310,', '1', 2, '广东省/深圳市/坪山区', '坪山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440311', '440300', '0,440000,440300,', 440311, '0000440000,0000440300,0000440311,', '1', 2, '广东省/深圳市/光明区', '光明区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440400', '440000', '0,440000,', 440400, '0000440000,0000440400,', '0', 1, '广东省/珠海市', '珠海市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440402', '440400', '0,440000,440400,', 440402, '0000440000,0000440400,0000440402,', '1', 2, '广东省/珠海市/香洲区', '香洲区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440403', '440400', '0,440000,440400,', 440403, '0000440000,0000440400,0000440403,', '1', 2, '广东省/珠海市/斗门区', '斗门区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440404', '440400', '0,440000,440400,', 440404, '0000440000,0000440400,0000440404,', '1', 2, '广东省/珠海市/金湾区', '金湾区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440500', '440000', '0,440000,', 440500, '0000440000,0000440500,', '0', 1, '广东省/汕头市', '汕头市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440507', '440500', '0,440000,440500,', 440507, '0000440000,0000440500,0000440507,', '1', 2, '广东省/汕头市/龙湖区', '龙湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440511', '440500', '0,440000,440500,', 440511, '0000440000,0000440500,0000440511,', '1', 2, '广东省/汕头市/金平区', '金平区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440512', '440500', '0,440000,440500,', 440512, '0000440000,0000440500,0000440512,', '1', 2, '广东省/汕头市/濠江区', '濠江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440513', '440500', '0,440000,440500,', 440513, '0000440000,0000440500,0000440513,', '1', 2, '广东省/汕头市/潮阳区', '潮阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440514', '440500', '0,440000,440500,', 440514, '0000440000,0000440500,0000440514,', '1', 2, '广东省/汕头市/潮南区', '潮南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440515', '440500', '0,440000,440500,', 440515, '0000440000,0000440500,0000440515,', '1', 2, '广东省/汕头市/澄海区', '澄海区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440523', '440500', '0,440000,440500,', 440523, '0000440000,0000440500,0000440523,', '1', 2, '广东省/汕头市/南澳县', '南澳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440600', '440000', '0,440000,', 440600, '0000440000,0000440600,', '0', 1, '广东省/佛山市', '佛山市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440604', '440600', '0,440000,440600,', 440604, '0000440000,0000440600,0000440604,', '1', 2, '广东省/佛山市/禅城区', '禅城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440605', '440600', '0,440000,440600,', 440605, '0000440000,0000440600,0000440605,', '1', 2, '广东省/佛山市/南海区', '南海区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440606', '440600', '0,440000,440600,', 440606, '0000440000,0000440600,0000440606,', '1', 2, '广东省/佛山市/顺德区', '顺德区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440607', '440600', '0,440000,440600,', 440607, '0000440000,0000440600,0000440607,', '1', 2, '广东省/佛山市/三水区', '三水区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440608', '440600', '0,440000,440600,', 440608, '0000440000,0000440600,0000440608,', '1', 2, '广东省/佛山市/高明区', '高明区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440700', '440000', '0,440000,', 440700, '0000440000,0000440700,', '0', 1, '广东省/江门市', '江门市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440703', '440700', '0,440000,440700,', 440703, '0000440000,0000440700,0000440703,', '1', 2, '广东省/江门市/蓬江区', '蓬江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440704', '440700', '0,440000,440700,', 440704, '0000440000,0000440700,0000440704,', '1', 2, '广东省/江门市/江海区', '江海区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440705', '440700', '0,440000,440700,', 440705, '0000440000,0000440700,0000440705,', '1', 2, '广东省/江门市/新会区', '新会区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440781', '440700', '0,440000,440700,', 440781, '0000440000,0000440700,0000440781,', '1', 2, '广东省/江门市/台山市', '台山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440783', '440700', '0,440000,440700,', 440783, '0000440000,0000440700,0000440783,', '1', 2, '广东省/江门市/开平市', '开平市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440784', '440700', '0,440000,440700,', 440784, '0000440000,0000440700,0000440784,', '1', 2, '广东省/江门市/鹤山市', '鹤山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440785', '440700', '0,440000,440700,', 440785, '0000440000,0000440700,0000440785,', '1', 2, '广东省/江门市/恩平市', '恩平市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440800', '440000', '0,440000,', 440800, '0000440000,0000440800,', '0', 1, '广东省/湛江市', '湛江市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440802', '440800', '0,440000,440800,', 440802, '0000440000,0000440800,0000440802,', '1', 2, '广东省/湛江市/赤坎区', '赤坎区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440803', '440800', '0,440000,440800,', 440803, '0000440000,0000440800,0000440803,', '1', 2, '广东省/湛江市/霞山区', '霞山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440804', '440800', '0,440000,440800,', 440804, '0000440000,0000440800,0000440804,', '1', 2, '广东省/湛江市/坡头区', '坡头区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440811', '440800', '0,440000,440800,', 440811, '0000440000,0000440800,0000440811,', '1', 2, '广东省/湛江市/麻章区', '麻章区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440823', '440800', '0,440000,440800,', 440823, '0000440000,0000440800,0000440823,', '1', 2, '广东省/湛江市/遂溪县', '遂溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440825', '440800', '0,440000,440800,', 440825, '0000440000,0000440800,0000440825,', '1', 2, '广东省/湛江市/徐闻县', '徐闻县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440881', '440800', '0,440000,440800,', 440881, '0000440000,0000440800,0000440881,', '1', 2, '广东省/湛江市/廉江市', '廉江市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440882', '440800', '0,440000,440800,', 440882, '0000440000,0000440800,0000440882,', '1', 2, '广东省/湛江市/雷州市', '雷州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440883', '440800', '0,440000,440800,', 440883, '0000440000,0000440800,0000440883,', '1', 2, '广东省/湛江市/吴川市', '吴川市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440900', '440000', '0,440000,', 440900, '0000440000,0000440900,', '0', 1, '广东省/茂名市', '茂名市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440902', '440900', '0,440000,440900,', 440902, '0000440000,0000440900,0000440902,', '1', 2, '广东省/茂名市/茂南区', '茂南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440904', '440900', '0,440000,440900,', 440904, '0000440000,0000440900,0000440904,', '1', 2, '广东省/茂名市/电白区', '电白区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440981', '440900', '0,440000,440900,', 440981, '0000440000,0000440900,0000440981,', '1', 2, '广东省/茂名市/高州市', '高州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440982', '440900', '0,440000,440900,', 440982, '0000440000,0000440900,0000440982,', '1', 2, '广东省/茂名市/化州市', '化州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('440983', '440900', '0,440000,440900,', 440983, '0000440000,0000440900,0000440983,', '1', 2, '广东省/茂名市/信宜市', '信宜市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441200', '440000', '0,440000,', 441200, '0000440000,0000441200,', '0', 1, '广东省/肇庆市', '肇庆市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441202', '441200', '0,440000,441200,', 441202, '0000440000,0000441200,0000441202,', '1', 2, '广东省/肇庆市/端州区', '端州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441203', '441200', '0,440000,441200,', 441203, '0000440000,0000441200,0000441203,', '1', 2, '广东省/肇庆市/鼎湖区', '鼎湖区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441204', '441200', '0,440000,441200,', 441204, '0000440000,0000441200,0000441204,', '1', 2, '广东省/肇庆市/高要区', '高要区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441223', '441200', '0,440000,441200,', 441223, '0000440000,0000441200,0000441223,', '1', 2, '广东省/肇庆市/广宁县', '广宁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441224', '441200', '0,440000,441200,', 441224, '0000440000,0000441200,0000441224,', '1', 2, '广东省/肇庆市/怀集县', '怀集县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441225', '441200', '0,440000,441200,', 441225, '0000440000,0000441200,0000441225,', '1', 2, '广东省/肇庆市/封开县', '封开县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441226', '441200', '0,440000,441200,', 441226, '0000440000,0000441200,0000441226,', '1', 2, '广东省/肇庆市/德庆县', '德庆县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441284', '441200', '0,440000,441200,', 441284, '0000440000,0000441200,0000441284,', '1', 2, '广东省/肇庆市/四会市', '四会市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441300', '440000', '0,440000,', 441300, '0000440000,0000441300,', '0', 1, '广东省/惠州市', '惠州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441302', '441300', '0,440000,441300,', 441302, '0000440000,0000441300,0000441302,', '1', 2, '广东省/惠州市/惠城区', '惠城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441303', '441300', '0,440000,441300,', 441303, '0000440000,0000441300,0000441303,', '1', 2, '广东省/惠州市/惠阳区', '惠阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441322', '441300', '0,440000,441300,', 441322, '0000440000,0000441300,0000441322,', '1', 2, '广东省/惠州市/博罗县', '博罗县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441323', '441300', '0,440000,441300,', 441323, '0000440000,0000441300,0000441323,', '1', 2, '广东省/惠州市/惠东县', '惠东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441324', '441300', '0,440000,441300,', 441324, '0000440000,0000441300,0000441324,', '1', 2, '广东省/惠州市/龙门县', '龙门县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441400', '440000', '0,440000,', 441400, '0000440000,0000441400,', '0', 1, '广东省/梅州市', '梅州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441402', '441400', '0,440000,441400,', 441402, '0000440000,0000441400,0000441402,', '1', 2, '广东省/梅州市/梅江区', '梅江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441403', '441400', '0,440000,441400,', 441403, '0000440000,0000441400,0000441403,', '1', 2, '广东省/梅州市/梅县区', '梅县区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441422', '441400', '0,440000,441400,', 441422, '0000440000,0000441400,0000441422,', '1', 2, '广东省/梅州市/大埔县', '大埔县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441423', '441400', '0,440000,441400,', 441423, '0000440000,0000441400,0000441423,', '1', 2, '广东省/梅州市/丰顺县', '丰顺县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441424', '441400', '0,440000,441400,', 441424, '0000440000,0000441400,0000441424,', '1', 2, '广东省/梅州市/五华县', '五华县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441426', '441400', '0,440000,441400,', 441426, '0000440000,0000441400,0000441426,', '1', 2, '广东省/梅州市/平远县', '平远县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441427', '441400', '0,440000,441400,', 441427, '0000440000,0000441400,0000441427,', '1', 2, '广东省/梅州市/蕉岭县', '蕉岭县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441481', '441400', '0,440000,441400,', 441481, '0000440000,0000441400,0000441481,', '1', 2, '广东省/梅州市/兴宁市', '兴宁市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441500', '440000', '0,440000,', 441500, '0000440000,0000441500,', '0', 1, '广东省/汕尾市', '汕尾市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441502', '441500', '0,440000,441500,', 441502, '0000440000,0000441500,0000441502,', '1', 2, '广东省/汕尾市/城区', '城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441521', '441500', '0,440000,441500,', 441521, '0000440000,0000441500,0000441521,', '1', 2, '广东省/汕尾市/海丰县', '海丰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441523', '441500', '0,440000,441500,', 441523, '0000440000,0000441500,0000441523,', '1', 2, '广东省/汕尾市/陆河县', '陆河县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441581', '441500', '0,440000,441500,', 441581, '0000440000,0000441500,0000441581,', '1', 2, '广东省/汕尾市/陆丰市', '陆丰市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441600', '440000', '0,440000,', 441600, '0000440000,0000441600,', '0', 1, '广东省/河源市', '河源市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441602', '441600', '0,440000,441600,', 441602, '0000440000,0000441600,0000441602,', '1', 2, '广东省/河源市/源城区', '源城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441621', '441600', '0,440000,441600,', 441621, '0000440000,0000441600,0000441621,', '1', 2, '广东省/河源市/紫金县', '紫金县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441622', '441600', '0,440000,441600,', 441622, '0000440000,0000441600,0000441622,', '1', 2, '广东省/河源市/龙川县', '龙川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441623', '441600', '0,440000,441600,', 441623, '0000440000,0000441600,0000441623,', '1', 2, '广东省/河源市/连平县', '连平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441624', '441600', '0,440000,441600,', 441624, '0000440000,0000441600,0000441624,', '1', 2, '广东省/河源市/和平县', '和平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441625', '441600', '0,440000,441600,', 441625, '0000440000,0000441600,0000441625,', '1', 2, '广东省/河源市/东源县', '东源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441700', '440000', '0,440000,', 441700, '0000440000,0000441700,', '0', 1, '广东省/阳江市', '阳江市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441702', '441700', '0,440000,441700,', 441702, '0000440000,0000441700,0000441702,', '1', 2, '广东省/阳江市/江城区', '江城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441704', '441700', '0,440000,441700,', 441704, '0000440000,0000441700,0000441704,', '1', 2, '广东省/阳江市/阳东区', '阳东区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441721', '441700', '0,440000,441700,', 441721, '0000440000,0000441700,0000441721,', '1', 2, '广东省/阳江市/阳西县', '阳西县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441781', '441700', '0,440000,441700,', 441781, '0000440000,0000441700,0000441781,', '1', 2, '广东省/阳江市/阳春市', '阳春市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441800', '440000', '0,440000,', 441800, '0000440000,0000441800,', '0', 1, '广东省/清远市', '清远市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441802', '441800', '0,440000,441800,', 441802, '0000440000,0000441800,0000441802,', '1', 2, '广东省/清远市/清城区', '清城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441803', '441800', '0,440000,441800,', 441803, '0000440000,0000441800,0000441803,', '1', 2, '广东省/清远市/清新区', '清新区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441821', '441800', '0,440000,441800,', 441821, '0000440000,0000441800,0000441821,', '1', 2, '广东省/清远市/佛冈县', '佛冈县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441823', '441800', '0,440000,441800,', 441823, '0000440000,0000441800,0000441823,', '1', 2, '广东省/清远市/阳山县', '阳山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441825', '441800', '0,440000,441800,', 441825, '0000440000,0000441800,0000441825,', '1', 2, '广东省/清远市/连山壮族瑶族自治县', '连山壮族瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441826', '441800', '0,440000,441800,', 441826, '0000440000,0000441800,0000441826,', '1', 2, '广东省/清远市/连南瑶族自治县', '连南瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441881', '441800', '0,440000,441800,', 441881, '0000440000,0000441800,0000441881,', '1', 2, '广东省/清远市/英德市', '英德市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441882', '441800', '0,440000,441800,', 441882, '0000440000,0000441800,0000441882,', '1', 2, '广东省/清远市/连州市', '连州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('441900', '440000', '0,440000,', 441900, '0000440000,0000441900,', '1', 1, '广东省/东莞市', '东莞市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('442000', '440000', '0,440000,', 442000, '0000440000,0000442000,', '1', 1, '广东省/中山市', '中山市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('442100', '440000', '0,440000,', 442100, '0000440000,0000442100,', '1', 1, '广东省/东沙群岛', '东沙群岛', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445100', '440000', '0,440000,', 445100, '0000440000,0000445100,', '0', 1, '广东省/潮州市', '潮州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445102', '445100', '0,440000,445100,', 445102, '0000440000,0000445100,0000445102,', '1', 2, '广东省/潮州市/湘桥区', '湘桥区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445103', '445100', '0,440000,445100,', 445103, '0000440000,0000445100,0000445103,', '1', 2, '广东省/潮州市/潮安区', '潮安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445122', '445100', '0,440000,445100,', 445122, '0000440000,0000445100,0000445122,', '1', 2, '广东省/潮州市/饶平县', '饶平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445200', '440000', '0,440000,', 445200, '0000440000,0000445200,', '0', 1, '广东省/揭阳市', '揭阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445202', '445200', '0,440000,445200,', 445202, '0000440000,0000445200,0000445202,', '1', 2, '广东省/揭阳市/榕城区', '榕城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445203', '445200', '0,440000,445200,', 445203, '0000440000,0000445200,0000445203,', '1', 2, '广东省/揭阳市/揭东区', '揭东区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445222', '445200', '0,440000,445200,', 445222, '0000440000,0000445200,0000445222,', '1', 2, '广东省/揭阳市/揭西县', '揭西县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445224', '445200', '0,440000,445200,', 445224, '0000440000,0000445200,0000445224,', '1', 2, '广东省/揭阳市/惠来县', '惠来县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445281', '445200', '0,440000,445200,', 445281, '0000440000,0000445200,0000445281,', '1', 2, '广东省/揭阳市/普宁市', '普宁市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445300', '440000', '0,440000,', 445300, '0000440000,0000445300,', '0', 1, '广东省/云浮市', '云浮市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445302', '445300', '0,440000,445300,', 445302, '0000440000,0000445300,0000445302,', '1', 2, '广东省/云浮市/云城区', '云城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445303', '445300', '0,440000,445300,', 445303, '0000440000,0000445300,0000445303,', '1', 2, '广东省/云浮市/云安区', '云安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445321', '445300', '0,440000,445300,', 445321, '0000440000,0000445300,0000445321,', '1', 2, '广东省/云浮市/新兴县', '新兴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445322', '445300', '0,440000,445300,', 445322, '0000440000,0000445300,0000445322,', '1', 2, '广东省/云浮市/郁南县', '郁南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('445381', '445300', '0,440000,445300,', 445381, '0000440000,0000445300,0000445381,', '1', 2, '广东省/云浮市/罗定市', '罗定市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450000', '0', '0,', 450000, '0000450000,', '0', 0, '广西壮族自治区', '广西壮族自治区', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450100', '450000', '0,450000,', 450100, '0000450000,0000450100,', '0', 1, '广西壮族自治区/南宁市', '南宁市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450102', '450100', '0,450000,450100,', 450102, '0000450000,0000450100,0000450102,', '1', 2, '广西壮族自治区/南宁市/兴宁区', '兴宁区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450103', '450100', '0,450000,450100,', 450103, '0000450000,0000450100,0000450103,', '1', 2, '广西壮族自治区/南宁市/青秀区', '青秀区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450105', '450100', '0,450000,450100,', 450105, '0000450000,0000450100,0000450105,', '1', 2, '广西壮族自治区/南宁市/江南区', '江南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450107', '450100', '0,450000,450100,', 450107, '0000450000,0000450100,0000450107,', '1', 2, '广西壮族自治区/南宁市/西乡塘区', '西乡塘区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450108', '450100', '0,450000,450100,', 450108, '0000450000,0000450100,0000450108,', '1', 2, '广西壮族自治区/南宁市/良庆区', '良庆区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450109', '450100', '0,450000,450100,', 450109, '0000450000,0000450100,0000450109,', '1', 2, '广西壮族自治区/南宁市/邕宁区', '邕宁区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450110', '450100', '0,450000,450100,', 450110, '0000450000,0000450100,0000450110,', '1', 2, '广西壮族自治区/南宁市/武鸣区', '武鸣区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450123', '450100', '0,450000,450100,', 450123, '0000450000,0000450100,0000450123,', '1', 2, '广西壮族自治区/南宁市/隆安县', '隆安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450124', '450100', '0,450000,450100,', 450124, '0000450000,0000450100,0000450124,', '1', 2, '广西壮族自治区/南宁市/马山县', '马山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450125', '450100', '0,450000,450100,', 450125, '0000450000,0000450100,0000450125,', '1', 2, '广西壮族自治区/南宁市/上林县', '上林县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450126', '450100', '0,450000,450100,', 450126, '0000450000,0000450100,0000450126,', '1', 2, '广西壮族自治区/南宁市/宾阳县', '宾阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450127', '450100', '0,450000,450100,', 450127, '0000450000,0000450100,0000450127,', '1', 2, '广西壮族自治区/南宁市/横县', '横县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450200', '450000', '0,450000,', 450200, '0000450000,0000450200,', '0', 1, '广西壮族自治区/柳州市', '柳州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450202', '450200', '0,450000,450200,', 450202, '0000450000,0000450200,0000450202,', '1', 2, '广西壮族自治区/柳州市/城中区', '城中区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450203', '450200', '0,450000,450200,', 450203, '0000450000,0000450200,0000450203,', '1', 2, '广西壮族自治区/柳州市/鱼峰区', '鱼峰区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450204', '450200', '0,450000,450200,', 450204, '0000450000,0000450200,0000450204,', '1', 2, '广西壮族自治区/柳州市/柳南区', '柳南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450205', '450200', '0,450000,450200,', 450205, '0000450000,0000450200,0000450205,', '1', 2, '广西壮族自治区/柳州市/柳北区', '柳北区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450206', '450200', '0,450000,450200,', 450206, '0000450000,0000450200,0000450206,', '1', 2, '广西壮族自治区/柳州市/柳江区', '柳江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450222', '450200', '0,450000,450200,', 450222, '0000450000,0000450200,0000450222,', '1', 2, '广西壮族自治区/柳州市/柳城县', '柳城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450223', '450200', '0,450000,450200,', 450223, '0000450000,0000450200,0000450223,', '1', 2, '广西壮族自治区/柳州市/鹿寨县', '鹿寨县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450224', '450200', '0,450000,450200,', 450224, '0000450000,0000450200,0000450224,', '1', 2, '广西壮族自治区/柳州市/融安县', '融安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450225', '450200', '0,450000,450200,', 450225, '0000450000,0000450200,0000450225,', '1', 2, '广西壮族自治区/柳州市/融水苗族自治县', '融水苗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450226', '450200', '0,450000,450200,', 450226, '0000450000,0000450200,0000450226,', '1', 2, '广西壮族自治区/柳州市/三江侗族自治县', '三江侗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450300', '450000', '0,450000,', 450300, '0000450000,0000450300,', '0', 1, '广西壮族自治区/桂林市', '桂林市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450302', '450300', '0,450000,450300,', 450302, '0000450000,0000450300,0000450302,', '1', 2, '广西壮族自治区/桂林市/秀峰区', '秀峰区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450303', '450300', '0,450000,450300,', 450303, '0000450000,0000450300,0000450303,', '1', 2, '广西壮族自治区/桂林市/叠彩区', '叠彩区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450304', '450300', '0,450000,450300,', 450304, '0000450000,0000450300,0000450304,', '1', 2, '广西壮族自治区/桂林市/象山区', '象山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450305', '450300', '0,450000,450300,', 450305, '0000450000,0000450300,0000450305,', '1', 2, '广西壮族自治区/桂林市/七星区', '七星区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450311', '450300', '0,450000,450300,', 450311, '0000450000,0000450300,0000450311,', '1', 2, '广西壮族自治区/桂林市/雁山区', '雁山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450312', '450300', '0,450000,450300,', 450312, '0000450000,0000450300,0000450312,', '1', 2, '广西壮族自治区/桂林市/临桂区', '临桂区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450321', '450300', '0,450000,450300,', 450321, '0000450000,0000450300,0000450321,', '1', 2, '广西壮族自治区/桂林市/阳朔县', '阳朔县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450323', '450300', '0,450000,450300,', 450323, '0000450000,0000450300,0000450323,', '1', 2, '广西壮族自治区/桂林市/灵川县', '灵川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450324', '450300', '0,450000,450300,', 450324, '0000450000,0000450300,0000450324,', '1', 2, '广西壮族自治区/桂林市/全州县', '全州县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450325', '450300', '0,450000,450300,', 450325, '0000450000,0000450300,0000450325,', '1', 2, '广西壮族自治区/桂林市/兴安县', '兴安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450326', '450300', '0,450000,450300,', 450326, '0000450000,0000450300,0000450326,', '1', 2, '广西壮族自治区/桂林市/永福县', '永福县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450327', '450300', '0,450000,450300,', 450327, '0000450000,0000450300,0000450327,', '1', 2, '广西壮族自治区/桂林市/灌阳县', '灌阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450328', '450300', '0,450000,450300,', 450328, '0000450000,0000450300,0000450328,', '1', 2, '广西壮族自治区/桂林市/龙胜各族自治县', '龙胜各族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450329', '450300', '0,450000,450300,', 450329, '0000450000,0000450300,0000450329,', '1', 2, '广西壮族自治区/桂林市/资源县', '资源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450330', '450300', '0,450000,450300,', 450330, '0000450000,0000450300,0000450330,', '1', 2, '广西壮族自治区/桂林市/平乐县', '平乐县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450332', '450300', '0,450000,450300,', 450332, '0000450000,0000450300,0000450332,', '1', 2, '广西壮族自治区/桂林市/恭城瑶族自治县', '恭城瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450381', '450300', '0,450000,450300,', 450381, '0000450000,0000450300,0000450381,', '1', 2, '广西壮族自治区/桂林市/荔浦市', '荔浦市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450400', '450000', '0,450000,', 450400, '0000450000,0000450400,', '0', 1, '广西壮族自治区/梧州市', '梧州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450403', '450400', '0,450000,450400,', 450403, '0000450000,0000450400,0000450403,', '1', 2, '广西壮族自治区/梧州市/万秀区', '万秀区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450405', '450400', '0,450000,450400,', 450405, '0000450000,0000450400,0000450405,', '1', 2, '广西壮族自治区/梧州市/长洲区', '长洲区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450406', '450400', '0,450000,450400,', 450406, '0000450000,0000450400,0000450406,', '1', 2, '广西壮族自治区/梧州市/龙圩区', '龙圩区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450421', '450400', '0,450000,450400,', 450421, '0000450000,0000450400,0000450421,', '1', 2, '广西壮族自治区/梧州市/苍梧县', '苍梧县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450422', '450400', '0,450000,450400,', 450422, '0000450000,0000450400,0000450422,', '1', 2, '广西壮族自治区/梧州市/藤县', '藤县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450423', '450400', '0,450000,450400,', 450423, '0000450000,0000450400,0000450423,', '1', 2, '广西壮族自治区/梧州市/蒙山县', '蒙山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450481', '450400', '0,450000,450400,', 450481, '0000450000,0000450400,0000450481,', '1', 2, '广西壮族自治区/梧州市/岑溪市', '岑溪市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450500', '450000', '0,450000,', 450500, '0000450000,0000450500,', '0', 1, '广西壮族自治区/北海市', '北海市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450502', '450500', '0,450000,450500,', 450502, '0000450000,0000450500,0000450502,', '1', 2, '广西壮族自治区/北海市/海城区', '海城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450503', '450500', '0,450000,450500,', 450503, '0000450000,0000450500,0000450503,', '1', 2, '广西壮族自治区/北海市/银海区', '银海区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450512', '450500', '0,450000,450500,', 450512, '0000450000,0000450500,0000450512,', '1', 2, '广西壮族自治区/北海市/铁山港区', '铁山港区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450521', '450500', '0,450000,450500,', 450521, '0000450000,0000450500,0000450521,', '1', 2, '广西壮族自治区/北海市/合浦县', '合浦县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450600', '450000', '0,450000,', 450600, '0000450000,0000450600,', '0', 1, '广西壮族自治区/防城港市', '防城港市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450602', '450600', '0,450000,450600,', 450602, '0000450000,0000450600,0000450602,', '1', 2, '广西壮族自治区/防城港市/港口区', '港口区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450603', '450600', '0,450000,450600,', 450603, '0000450000,0000450600,0000450603,', '1', 2, '广西壮族自治区/防城港市/防城区', '防城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450621', '450600', '0,450000,450600,', 450621, '0000450000,0000450600,0000450621,', '1', 2, '广西壮族自治区/防城港市/上思县', '上思县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450681', '450600', '0,450000,450600,', 450681, '0000450000,0000450600,0000450681,', '1', 2, '广西壮族自治区/防城港市/东兴市', '东兴市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450700', '450000', '0,450000,', 450700, '0000450000,0000450700,', '0', 1, '广西壮族自治区/钦州市', '钦州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450702', '450700', '0,450000,450700,', 450702, '0000450000,0000450700,0000450702,', '1', 2, '广西壮族自治区/钦州市/钦南区', '钦南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450703', '450700', '0,450000,450700,', 450703, '0000450000,0000450700,0000450703,', '1', 2, '广西壮族自治区/钦州市/钦北区', '钦北区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450721', '450700', '0,450000,450700,', 450721, '0000450000,0000450700,0000450721,', '1', 2, '广西壮族自治区/钦州市/灵山县', '灵山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450722', '450700', '0,450000,450700,', 450722, '0000450000,0000450700,0000450722,', '1', 2, '广西壮族自治区/钦州市/浦北县', '浦北县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450800', '450000', '0,450000,', 450800, '0000450000,0000450800,', '0', 1, '广西壮族自治区/贵港市', '贵港市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450802', '450800', '0,450000,450800,', 450802, '0000450000,0000450800,0000450802,', '1', 2, '广西壮族自治区/贵港市/港北区', '港北区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450803', '450800', '0,450000,450800,', 450803, '0000450000,0000450800,0000450803,', '1', 2, '广西壮族自治区/贵港市/港南区', '港南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450804', '450800', '0,450000,450800,', 450804, '0000450000,0000450800,0000450804,', '1', 2, '广西壮族自治区/贵港市/覃塘区', '覃塘区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450821', '450800', '0,450000,450800,', 450821, '0000450000,0000450800,0000450821,', '1', 2, '广西壮族自治区/贵港市/平南县', '平南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450881', '450800', '0,450000,450800,', 450881, '0000450000,0000450800,0000450881,', '1', 2, '广西壮族自治区/贵港市/桂平市', '桂平市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450900', '450000', '0,450000,', 450900, '0000450000,0000450900,', '0', 1, '广西壮族自治区/玉林市', '玉林市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450902', '450900', '0,450000,450900,', 450902, '0000450000,0000450900,0000450902,', '1', 2, '广西壮族自治区/玉林市/玉州区', '玉州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450903', '450900', '0,450000,450900,', 450903, '0000450000,0000450900,0000450903,', '1', 2, '广西壮族自治区/玉林市/福绵区', '福绵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450921', '450900', '0,450000,450900,', 450921, '0000450000,0000450900,0000450921,', '1', 2, '广西壮族自治区/玉林市/容县', '容县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450922', '450900', '0,450000,450900,', 450922, '0000450000,0000450900,0000450922,', '1', 2, '广西壮族自治区/玉林市/陆川县', '陆川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450923', '450900', '0,450000,450900,', 450923, '0000450000,0000450900,0000450923,', '1', 2, '广西壮族自治区/玉林市/博白县', '博白县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450924', '450900', '0,450000,450900,', 450924, '0000450000,0000450900,0000450924,', '1', 2, '广西壮族自治区/玉林市/兴业县', '兴业县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('450981', '450900', '0,450000,450900,', 450981, '0000450000,0000450900,0000450981,', '1', 2, '广西壮族自治区/玉林市/北流市', '北流市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451000', '450000', '0,450000,', 451000, '0000450000,0000451000,', '0', 1, '广西壮族自治区/百色市', '百色市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451002', '451000', '0,450000,451000,', 451002, '0000450000,0000451000,0000451002,', '1', 2, '广西壮族自治区/百色市/右江区', '右江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451003', '451000', '0,450000,451000,', 451003, '0000450000,0000451000,0000451003,', '1', 2, '广西壮族自治区/百色市/田阳区', '田阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451022', '451000', '0,450000,451000,', 451022, '0000450000,0000451000,0000451022,', '1', 2, '广西壮族自治区/百色市/田东县', '田东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451024', '451000', '0,450000,451000,', 451024, '0000450000,0000451000,0000451024,', '1', 2, '广西壮族自治区/百色市/德保县', '德保县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451026', '451000', '0,450000,451000,', 451026, '0000450000,0000451000,0000451026,', '1', 2, '广西壮族自治区/百色市/那坡县', '那坡县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451027', '451000', '0,450000,451000,', 451027, '0000450000,0000451000,0000451027,', '1', 2, '广西壮族自治区/百色市/凌云县', '凌云县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451028', '451000', '0,450000,451000,', 451028, '0000450000,0000451000,0000451028,', '1', 2, '广西壮族自治区/百色市/乐业县', '乐业县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451029', '451000', '0,450000,451000,', 451029, '0000450000,0000451000,0000451029,', '1', 2, '广西壮族自治区/百色市/田林县', '田林县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451030', '451000', '0,450000,451000,', 451030, '0000450000,0000451000,0000451030,', '1', 2, '广西壮族自治区/百色市/西林县', '西林县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451031', '451000', '0,450000,451000,', 451031, '0000450000,0000451000,0000451031,', '1', 2, '广西壮族自治区/百色市/隆林各族自治县', '隆林各族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451081', '451000', '0,450000,451000,', 451081, '0000450000,0000451000,0000451081,', '1', 2, '广西壮族自治区/百色市/靖西市', '靖西市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451082', '451000', '0,450000,451000,', 451082, '0000450000,0000451000,0000451082,', '1', 2, '广西壮族自治区/百色市/平果市', '平果市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451100', '450000', '0,450000,', 451100, '0000450000,0000451100,', '0', 1, '广西壮族自治区/贺州市', '贺州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451102', '451100', '0,450000,451100,', 451102, '0000450000,0000451100,0000451102,', '1', 2, '广西壮族自治区/贺州市/八步区', '八步区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451103', '451100', '0,450000,451100,', 451103, '0000450000,0000451100,0000451103,', '1', 2, '广西壮族自治区/贺州市/平桂区', '平桂区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451121', '451100', '0,450000,451100,', 451121, '0000450000,0000451100,0000451121,', '1', 2, '广西壮族自治区/贺州市/昭平县', '昭平县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451122', '451100', '0,450000,451100,', 451122, '0000450000,0000451100,0000451122,', '1', 2, '广西壮族自治区/贺州市/钟山县', '钟山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451123', '451100', '0,450000,451100,', 451123, '0000450000,0000451100,0000451123,', '1', 2, '广西壮族自治区/贺州市/富川瑶族自治县', '富川瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451200', '450000', '0,450000,', 451200, '0000450000,0000451200,', '0', 1, '广西壮族自治区/河池市', '河池市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451202', '451200', '0,450000,451200,', 451202, '0000450000,0000451200,0000451202,', '1', 2, '广西壮族自治区/河池市/金城江区', '金城江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451203', '451200', '0,450000,451200,', 451203, '0000450000,0000451200,0000451203,', '1', 2, '广西壮族自治区/河池市/宜州区', '宜州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451221', '451200', '0,450000,451200,', 451221, '0000450000,0000451200,0000451221,', '1', 2, '广西壮族自治区/河池市/南丹县', '南丹县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451222', '451200', '0,450000,451200,', 451222, '0000450000,0000451200,0000451222,', '1', 2, '广西壮族自治区/河池市/天峨县', '天峨县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451223', '451200', '0,450000,451200,', 451223, '0000450000,0000451200,0000451223,', '1', 2, '广西壮族自治区/河池市/凤山县', '凤山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451224', '451200', '0,450000,451200,', 451224, '0000450000,0000451200,0000451224,', '1', 2, '广西壮族自治区/河池市/东兰县', '东兰县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451225', '451200', '0,450000,451200,', 451225, '0000450000,0000451200,0000451225,', '1', 2, '广西壮族自治区/河池市/罗城仫佬族自治县', '罗城仫佬族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451226', '451200', '0,450000,451200,', 451226, '0000450000,0000451200,0000451226,', '1', 2, '广西壮族自治区/河池市/环江毛南族自治县', '环江毛南族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451227', '451200', '0,450000,451200,', 451227, '0000450000,0000451200,0000451227,', '1', 2, '广西壮族自治区/河池市/巴马瑶族自治县', '巴马瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451228', '451200', '0,450000,451200,', 451228, '0000450000,0000451200,0000451228,', '1', 2, '广西壮族自治区/河池市/都安瑶族自治县', '都安瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451229', '451200', '0,450000,451200,', 451229, '0000450000,0000451200,0000451229,', '1', 2, '广西壮族自治区/河池市/大化瑶族自治县', '大化瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451300', '450000', '0,450000,', 451300, '0000450000,0000451300,', '0', 1, '广西壮族自治区/来宾市', '来宾市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451302', '451300', '0,450000,451300,', 451302, '0000450000,0000451300,0000451302,', '1', 2, '广西壮族自治区/来宾市/兴宾区', '兴宾区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451321', '451300', '0,450000,451300,', 451321, '0000450000,0000451300,0000451321,', '1', 2, '广西壮族自治区/来宾市/忻城县', '忻城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451322', '451300', '0,450000,451300,', 451322, '0000450000,0000451300,0000451322,', '1', 2, '广西壮族自治区/来宾市/象州县', '象州县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451323', '451300', '0,450000,451300,', 451323, '0000450000,0000451300,0000451323,', '1', 2, '广西壮族自治区/来宾市/武宣县', '武宣县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451324', '451300', '0,450000,451300,', 451324, '0000450000,0000451300,0000451324,', '1', 2, '广西壮族自治区/来宾市/金秀瑶族自治县', '金秀瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451381', '451300', '0,450000,451300,', 451381, '0000450000,0000451300,0000451381,', '1', 2, '广西壮族自治区/来宾市/合山市', '合山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451400', '450000', '0,450000,', 451400, '0000450000,0000451400,', '0', 1, '广西壮族自治区/崇左市', '崇左市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451402', '451400', '0,450000,451400,', 451402, '0000450000,0000451400,0000451402,', '1', 2, '广西壮族自治区/崇左市/江州区', '江州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451421', '451400', '0,450000,451400,', 451421, '0000450000,0000451400,0000451421,', '1', 2, '广西壮族自治区/崇左市/扶绥县', '扶绥县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451422', '451400', '0,450000,451400,', 451422, '0000450000,0000451400,0000451422,', '1', 2, '广西壮族自治区/崇左市/宁明县', '宁明县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451423', '451400', '0,450000,451400,', 451423, '0000450000,0000451400,0000451423,', '1', 2, '广西壮族自治区/崇左市/龙州县', '龙州县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451424', '451400', '0,450000,451400,', 451424, '0000450000,0000451400,0000451424,', '1', 2, '广西壮族自治区/崇左市/大新县', '大新县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451425', '451400', '0,450000,451400,', 451425, '0000450000,0000451400,0000451425,', '1', 2, '广西壮族自治区/崇左市/天等县', '天等县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('451481', '451400', '0,450000,451400,', 451481, '0000450000,0000451400,0000451481,', '1', 2, '广西壮族自治区/崇左市/凭祥市', '凭祥市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460000', '0', '0,', 460000, '0000460000,', '0', 0, '海南省', '海南省', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460100', '460000', '0,460000,', 460100, '0000460000,0000460100,', '0', 1, '海南省/海口市', '海口市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460105', '460100', '0,460000,460100,', 460105, '0000460000,0000460100,0000460105,', '1', 2, '海南省/海口市/秀英区', '秀英区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460106', '460100', '0,460000,460100,', 460106, '0000460000,0000460100,0000460106,', '1', 2, '海南省/海口市/龙华区', '龙华区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460107', '460100', '0,460000,460100,', 460107, '0000460000,0000460100,0000460107,', '1', 2, '海南省/海口市/琼山区', '琼山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460108', '460100', '0,460000,460100,', 460108, '0000460000,0000460100,0000460108,', '1', 2, '海南省/海口市/美兰区', '美兰区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460200', '460000', '0,460000,', 460200, '0000460000,0000460200,', '0', 1, '海南省/三亚市', '三亚市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460202', '460200', '0,460000,460200,', 460202, '0000460000,0000460200,0000460202,', '1', 2, '海南省/三亚市/海棠区', '海棠区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460203', '460200', '0,460000,460200,', 460203, '0000460000,0000460200,0000460203,', '1', 2, '海南省/三亚市/吉阳区', '吉阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460204', '460200', '0,460000,460200,', 460204, '0000460000,0000460200,0000460204,', '1', 2, '海南省/三亚市/天涯区', '天涯区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460205', '460200', '0,460000,460200,', 460205, '0000460000,0000460200,0000460205,', '1', 2, '海南省/三亚市/崖州区', '崖州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460300', '460000', '0,460000,', 460300, '0000460000,0000460300,', '0', 1, '海南省/三沙市', '三沙市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460321', '460300', '0,460000,460300,', 460321, '0000460000,0000460300,0000460321,', '1', 2, '海南省/三沙市/西沙群岛', '西沙群岛', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460322', '460300', '0,460000,460300,', 460322, '0000460000,0000460300,0000460322,', '1', 2, '海南省/三沙市/南沙群岛', '南沙群岛', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460323', '460300', '0,460000,460300,', 460323, '0000460000,0000460300,0000460323,', '1', 2, '海南省/三沙市/中沙群岛的岛礁及其海域', '中沙群岛的岛礁及其海域', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('460400', '460000', '0,460000,', 460400, '0000460000,0000460400,', '1', 1, '海南省/儋州市', '儋州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469001', '460000', '0,460000,', 469001, '0000460000,0000469001,', '1', 1, '海南省/五指山市', '五指山市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469002', '460000', '0,460000,', 469002, '0000460000,0000469002,', '1', 1, '海南省/琼海市', '琼海市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469005', '460000', '0,460000,', 469005, '0000460000,0000469005,', '1', 1, '海南省/文昌市', '文昌市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469006', '460000', '0,460000,', 469006, '0000460000,0000469006,', '1', 1, '海南省/万宁市', '万宁市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469007', '460000', '0,460000,', 469007, '0000460000,0000469007,', '1', 1, '海南省/东方市', '东方市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469021', '460000', '0,460000,', 469021, '0000460000,0000469021,', '1', 1, '海南省/定安县', '定安县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469022', '460000', '0,460000,', 469022, '0000460000,0000469022,', '1', 1, '海南省/屯昌县', '屯昌县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469023', '460000', '0,460000,', 469023, '0000460000,0000469023,', '1', 1, '海南省/澄迈县', '澄迈县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469024', '460000', '0,460000,', 469024, '0000460000,0000469024,', '1', 1, '海南省/临高县', '临高县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469025', '460000', '0,460000,', 469025, '0000460000,0000469025,', '1', 1, '海南省/白沙黎族自治县', '白沙黎族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469026', '460000', '0,460000,', 469026, '0000460000,0000469026,', '1', 1, '海南省/昌江黎族自治县', '昌江黎族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469027', '460000', '0,460000,', 469027, '0000460000,0000469027,', '1', 1, '海南省/乐东黎族自治县', '乐东黎族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469028', '460000', '0,460000,', 469028, '0000460000,0000469028,', '1', 1, '海南省/陵水黎族自治县', '陵水黎族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469029', '460000', '0,460000,', 469029, '0000460000,0000469029,', '1', 1, '海南省/保亭黎族苗族自治县', '保亭黎族苗族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('469030', '460000', '0,460000,', 469030, '0000460000,0000469030,', '1', 1, '海南省/琼中黎族苗族自治县', '琼中黎族苗族自治县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500000', '0', '0,', 500000, '0000500000,', '0', 0, '重庆市', '重庆市', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500100', '500000', '0,500000,', 500100, '0000500000,0000500100,', '0', 1, '重庆市/重庆城区', '重庆城区', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500101', '500100', '0,500000,500100,', 500101, '0000500000,0000500100,0000500101,', '1', 2, '重庆市/重庆城区/万州区', '万州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500102', '500100', '0,500000,500100,', 500102, '0000500000,0000500100,0000500102,', '1', 2, '重庆市/重庆城区/涪陵区', '涪陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500103', '500100', '0,500000,500100,', 500103, '0000500000,0000500100,0000500103,', '1', 2, '重庆市/重庆城区/渝中区', '渝中区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500104', '500100', '0,500000,500100,', 500104, '0000500000,0000500100,0000500104,', '1', 2, '重庆市/重庆城区/大渡口区', '大渡口区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500105', '500100', '0,500000,500100,', 500105, '0000500000,0000500100,0000500105,', '1', 2, '重庆市/重庆城区/江北区', '江北区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500106', '500100', '0,500000,500100,', 500106, '0000500000,0000500100,0000500106,', '1', 2, '重庆市/重庆城区/沙坪坝区', '沙坪坝区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500107', '500100', '0,500000,500100,', 500107, '0000500000,0000500100,0000500107,', '1', 2, '重庆市/重庆城区/九龙坡区', '九龙坡区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500108', '500100', '0,500000,500100,', 500108, '0000500000,0000500100,0000500108,', '1', 2, '重庆市/重庆城区/南岸区', '南岸区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500109', '500100', '0,500000,500100,', 500109, '0000500000,0000500100,0000500109,', '1', 2, '重庆市/重庆城区/北碚区', '北碚区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500110', '500100', '0,500000,500100,', 500110, '0000500000,0000500100,0000500110,', '1', 2, '重庆市/重庆城区/綦江区', '綦江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500111', '500100', '0,500000,500100,', 500111, '0000500000,0000500100,0000500111,', '1', 2, '重庆市/重庆城区/大足区', '大足区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500112', '500100', '0,500000,500100,', 500112, '0000500000,0000500100,0000500112,', '1', 2, '重庆市/重庆城区/渝北区', '渝北区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500113', '500100', '0,500000,500100,', 500113, '0000500000,0000500100,0000500113,', '1', 2, '重庆市/重庆城区/巴南区', '巴南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500114', '500100', '0,500000,500100,', 500114, '0000500000,0000500100,0000500114,', '1', 2, '重庆市/重庆城区/黔江区', '黔江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500115', '500100', '0,500000,500100,', 500115, '0000500000,0000500100,0000500115,', '1', 2, '重庆市/重庆城区/长寿区', '长寿区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500116', '500100', '0,500000,500100,', 500116, '0000500000,0000500100,0000500116,', '1', 2, '重庆市/重庆城区/江津区', '江津区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500117', '500100', '0,500000,500100,', 500117, '0000500000,0000500100,0000500117,', '1', 2, '重庆市/重庆城区/合川区', '合川区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500118', '500100', '0,500000,500100,', 500118, '0000500000,0000500100,0000500118,', '1', 2, '重庆市/重庆城区/永川区', '永川区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500119', '500100', '0,500000,500100,', 500119, '0000500000,0000500100,0000500119,', '1', 2, '重庆市/重庆城区/南川区', '南川区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500120', '500100', '0,500000,500100,', 500120, '0000500000,0000500100,0000500120,', '1', 2, '重庆市/重庆城区/璧山区', '璧山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500151', '500100', '0,500000,500100,', 500151, '0000500000,0000500100,0000500151,', '1', 2, '重庆市/重庆城区/铜梁区', '铜梁区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500152', '500100', '0,500000,500100,', 500152, '0000500000,0000500100,0000500152,', '1', 2, '重庆市/重庆城区/潼南区', '潼南区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500153', '500100', '0,500000,500100,', 500153, '0000500000,0000500100,0000500153,', '1', 2, '重庆市/重庆城区/荣昌区', '荣昌区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500154', '500100', '0,500000,500100,', 500154, '0000500000,0000500100,0000500154,', '1', 2, '重庆市/重庆城区/开州区', '开州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500155', '500100', '0,500000,500100,', 500155, '0000500000,0000500100,0000500155,', '1', 2, '重庆市/重庆城区/梁平区', '梁平区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500156', '500100', '0,500000,500100,', 500156, '0000500000,0000500100,0000500156,', '1', 2, '重庆市/重庆城区/武隆区', '武隆区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500200', '500000', '0,500000,', 500200, '0000500000,0000500200,', '0', 1, '重庆市/重庆郊县', '重庆郊县', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500229', '500200', '0,500000,500200,', 500229, '0000500000,0000500200,0000500229,', '1', 2, '重庆市/重庆郊县/城口县', '城口县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500230', '500200', '0,500000,500200,', 500230, '0000500000,0000500200,0000500230,', '1', 2, '重庆市/重庆郊县/丰都县', '丰都县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500231', '500200', '0,500000,500200,', 500231, '0000500000,0000500200,0000500231,', '1', 2, '重庆市/重庆郊县/垫江县', '垫江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500233', '500200', '0,500000,500200,', 500233, '0000500000,0000500200,0000500233,', '1', 2, '重庆市/重庆郊县/忠县', '忠县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500235', '500200', '0,500000,500200,', 500235, '0000500000,0000500200,0000500235,', '1', 2, '重庆市/重庆郊县/云阳县', '云阳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500236', '500200', '0,500000,500200,', 500236, '0000500000,0000500200,0000500236,', '1', 2, '重庆市/重庆郊县/奉节县', '奉节县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500237', '500200', '0,500000,500200,', 500237, '0000500000,0000500200,0000500237,', '1', 2, '重庆市/重庆郊县/巫山县', '巫山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500238', '500200', '0,500000,500200,', 500238, '0000500000,0000500200,0000500238,', '1', 2, '重庆市/重庆郊县/巫溪县', '巫溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500240', '500200', '0,500000,500200,', 500240, '0000500000,0000500200,0000500240,', '1', 2, '重庆市/重庆郊县/石柱土家族自治县', '石柱土家族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500241', '500200', '0,500000,500200,', 500241, '0000500000,0000500200,0000500241,', '1', 2, '重庆市/重庆郊县/秀山土家族苗族自治县', '秀山土家族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500242', '500200', '0,500000,500200,', 500242, '0000500000,0000500200,0000500242,', '1', 2, '重庆市/重庆郊县/酉阳土家族苗族自治县', '酉阳土家族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('500243', '500200', '0,500000,500200,', 500243, '0000500000,0000500200,0000500243,', '1', 2, '重庆市/重庆郊县/彭水苗族土家族自治县', '彭水苗族土家族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510000', '0', '0,', 510000, '0000510000,', '0', 0, '四川省', '四川省', '1', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510100', '510000', '0,510000,', 510100, '0000510000,0000510100,', '0', 1, '四川省/成都市', '成都市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510104', '510100', '0,510000,510100,', 510104, '0000510000,0000510100,0000510104,', '1', 2, '四川省/成都市/锦江区', '锦江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510105', '510100', '0,510000,510100,', 510105, '0000510000,0000510100,0000510105,', '1', 2, '四川省/成都市/青羊区', '青羊区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510106', '510100', '0,510000,510100,', 510106, '0000510000,0000510100,0000510106,', '1', 2, '四川省/成都市/金牛区', '金牛区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510107', '510100', '0,510000,510100,', 510107, '0000510000,0000510100,0000510107,', '1', 2, '四川省/成都市/武侯区', '武侯区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510108', '510100', '0,510000,510100,', 510108, '0000510000,0000510100,0000510108,', '1', 2, '四川省/成都市/成华区', '成华区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510112', '510100', '0,510000,510100,', 510112, '0000510000,0000510100,0000510112,', '1', 2, '四川省/成都市/龙泉驿区', '龙泉驿区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510113', '510100', '0,510000,510100,', 510113, '0000510000,0000510100,0000510113,', '1', 2, '四川省/成都市/青白江区', '青白江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510114', '510100', '0,510000,510100,', 510114, '0000510000,0000510100,0000510114,', '1', 2, '四川省/成都市/新都区', '新都区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510115', '510100', '0,510000,510100,', 510115, '0000510000,0000510100,0000510115,', '1', 2, '四川省/成都市/温江区', '温江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510116', '510100', '0,510000,510100,', 510116, '0000510000,0000510100,0000510116,', '1', 2, '四川省/成都市/双流区', '双流区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510117', '510100', '0,510000,510100,', 510117, '0000510000,0000510100,0000510117,', '1', 2, '四川省/成都市/郫都区', '郫都区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510121', '510100', '0,510000,510100,', 510121, '0000510000,0000510100,0000510121,', '1', 2, '四川省/成都市/金堂县', '金堂县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510129', '510100', '0,510000,510100,', 510129, '0000510000,0000510100,0000510129,', '1', 2, '四川省/成都市/大邑县', '大邑县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510131', '510100', '0,510000,510100,', 510131, '0000510000,0000510100,0000510131,', '1', 2, '四川省/成都市/蒲江县', '蒲江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510132', '510100', '0,510000,510100,', 510132, '0000510000,0000510100,0000510132,', '1', 2, '四川省/成都市/新津县', '新津县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510181', '510100', '0,510000,510100,', 510181, '0000510000,0000510100,0000510181,', '1', 2, '四川省/成都市/都江堰市', '都江堰市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510182', '510100', '0,510000,510100,', 510182, '0000510000,0000510100,0000510182,', '1', 2, '四川省/成都市/彭州市', '彭州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510183', '510100', '0,510000,510100,', 510183, '0000510000,0000510100,0000510183,', '1', 2, '四川省/成都市/邛崃市', '邛崃市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510184', '510100', '0,510000,510100,', 510184, '0000510000,0000510100,0000510184,', '1', 2, '四川省/成都市/崇州市', '崇州市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510185', '510100', '0,510000,510100,', 510185, '0000510000,0000510100,0000510185,', '1', 2, '四川省/成都市/简阳市', '简阳市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510300', '510000', '0,510000,', 510300, '0000510000,0000510300,', '0', 1, '四川省/自贡市', '自贡市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510302', '510300', '0,510000,510300,', 510302, '0000510000,0000510300,0000510302,', '1', 2, '四川省/自贡市/自流井区', '自流井区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510303', '510300', '0,510000,510300,', 510303, '0000510000,0000510300,0000510303,', '1', 2, '四川省/自贡市/贡井区', '贡井区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510304', '510300', '0,510000,510300,', 510304, '0000510000,0000510300,0000510304,', '1', 2, '四川省/自贡市/大安区', '大安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510311', '510300', '0,510000,510300,', 510311, '0000510000,0000510300,0000510311,', '1', 2, '四川省/自贡市/沿滩区', '沿滩区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510321', '510300', '0,510000,510300,', 510321, '0000510000,0000510300,0000510321,', '1', 2, '四川省/自贡市/荣县', '荣县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510322', '510300', '0,510000,510300,', 510322, '0000510000,0000510300,0000510322,', '1', 2, '四川省/自贡市/富顺县', '富顺县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510400', '510000', '0,510000,', 510400, '0000510000,0000510400,', '0', 1, '四川省/攀枝花市', '攀枝花市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510402', '510400', '0,510000,510400,', 510402, '0000510000,0000510400,0000510402,', '1', 2, '四川省/攀枝花市/东区', '东区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510403', '510400', '0,510000,510400,', 510403, '0000510000,0000510400,0000510403,', '1', 2, '四川省/攀枝花市/西区', '西区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510411', '510400', '0,510000,510400,', 510411, '0000510000,0000510400,0000510411,', '1', 2, '四川省/攀枝花市/仁和区', '仁和区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510421', '510400', '0,510000,510400,', 510421, '0000510000,0000510400,0000510421,', '1', 2, '四川省/攀枝花市/米易县', '米易县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510422', '510400', '0,510000,510400,', 510422, '0000510000,0000510400,0000510422,', '1', 2, '四川省/攀枝花市/盐边县', '盐边县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510500', '510000', '0,510000,', 510500, '0000510000,0000510500,', '0', 1, '四川省/泸州市', '泸州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510502', '510500', '0,510000,510500,', 510502, '0000510000,0000510500,0000510502,', '1', 2, '四川省/泸州市/江阳区', '江阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510503', '510500', '0,510000,510500,', 510503, '0000510000,0000510500,0000510503,', '1', 2, '四川省/泸州市/纳溪区', '纳溪区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510504', '510500', '0,510000,510500,', 510504, '0000510000,0000510500,0000510504,', '1', 2, '四川省/泸州市/龙马潭区', '龙马潭区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510521', '510500', '0,510000,510500,', 510521, '0000510000,0000510500,0000510521,', '1', 2, '四川省/泸州市/泸县', '泸县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510522', '510500', '0,510000,510500,', 510522, '0000510000,0000510500,0000510522,', '1', 2, '四川省/泸州市/合江县', '合江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510524', '510500', '0,510000,510500,', 510524, '0000510000,0000510500,0000510524,', '1', 2, '四川省/泸州市/叙永县', '叙永县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510525', '510500', '0,510000,510500,', 510525, '0000510000,0000510500,0000510525,', '1', 2, '四川省/泸州市/古蔺县', '古蔺县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510600', '510000', '0,510000,', 510600, '0000510000,0000510600,', '0', 1, '四川省/德阳市', '德阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510603', '510600', '0,510000,510600,', 510603, '0000510000,0000510600,0000510603,', '1', 2, '四川省/德阳市/旌阳区', '旌阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510604', '510600', '0,510000,510600,', 510604, '0000510000,0000510600,0000510604,', '1', 2, '四川省/德阳市/罗江区', '罗江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510623', '510600', '0,510000,510600,', 510623, '0000510000,0000510600,0000510623,', '1', 2, '四川省/德阳市/中江县', '中江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510681', '510600', '0,510000,510600,', 510681, '0000510000,0000510600,0000510681,', '1', 2, '四川省/德阳市/广汉市', '广汉市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510682', '510600', '0,510000,510600,', 510682, '0000510000,0000510600,0000510682,', '1', 2, '四川省/德阳市/什邡市', '什邡市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510683', '510600', '0,510000,510600,', 510683, '0000510000,0000510600,0000510683,', '1', 2, '四川省/德阳市/绵竹市', '绵竹市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510700', '510000', '0,510000,', 510700, '0000510000,0000510700,', '0', 1, '四川省/绵阳市', '绵阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510703', '510700', '0,510000,510700,', 510703, '0000510000,0000510700,0000510703,', '1', 2, '四川省/绵阳市/涪城区', '涪城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510704', '510700', '0,510000,510700,', 510704, '0000510000,0000510700,0000510704,', '1', 2, '四川省/绵阳市/游仙区', '游仙区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510705', '510700', '0,510000,510700,', 510705, '0000510000,0000510700,0000510705,', '1', 2, '四川省/绵阳市/安州区', '安州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510722', '510700', '0,510000,510700,', 510722, '0000510000,0000510700,0000510722,', '1', 2, '四川省/绵阳市/三台县', '三台县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510723', '510700', '0,510000,510700,', 510723, '0000510000,0000510700,0000510723,', '1', 2, '四川省/绵阳市/盐亭县', '盐亭县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510725', '510700', '0,510000,510700,', 510725, '0000510000,0000510700,0000510725,', '1', 2, '四川省/绵阳市/梓潼县', '梓潼县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510726', '510700', '0,510000,510700,', 510726, '0000510000,0000510700,0000510726,', '1', 2, '四川省/绵阳市/北川羌族自治县', '北川羌族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510727', '510700', '0,510000,510700,', 510727, '0000510000,0000510700,0000510727,', '1', 2, '四川省/绵阳市/平武县', '平武县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510781', '510700', '0,510000,510700,', 510781, '0000510000,0000510700,0000510781,', '1', 2, '四川省/绵阳市/江油市', '江油市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510800', '510000', '0,510000,', 510800, '0000510000,0000510800,', '0', 1, '四川省/广元市', '广元市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510802', '510800', '0,510000,510800,', 510802, '0000510000,0000510800,0000510802,', '1', 2, '四川省/广元市/利州区', '利州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510811', '510800', '0,510000,510800,', 510811, '0000510000,0000510800,0000510811,', '1', 2, '四川省/广元市/昭化区', '昭化区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510812', '510800', '0,510000,510800,', 510812, '0000510000,0000510800,0000510812,', '1', 2, '四川省/广元市/朝天区', '朝天区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510821', '510800', '0,510000,510800,', 510821, '0000510000,0000510800,0000510821,', '1', 2, '四川省/广元市/旺苍县', '旺苍县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510822', '510800', '0,510000,510800,', 510822, '0000510000,0000510800,0000510822,', '1', 2, '四川省/广元市/青川县', '青川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510823', '510800', '0,510000,510800,', 510823, '0000510000,0000510800,0000510823,', '1', 2, '四川省/广元市/剑阁县', '剑阁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510824', '510800', '0,510000,510800,', 510824, '0000510000,0000510800,0000510824,', '1', 2, '四川省/广元市/苍溪县', '苍溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510900', '510000', '0,510000,', 510900, '0000510000,0000510900,', '0', 1, '四川省/遂宁市', '遂宁市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510903', '510900', '0,510000,510900,', 510903, '0000510000,0000510900,0000510903,', '1', 2, '四川省/遂宁市/船山区', '船山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510904', '510900', '0,510000,510900,', 510904, '0000510000,0000510900,0000510904,', '1', 2, '四川省/遂宁市/安居区', '安居区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510921', '510900', '0,510000,510900,', 510921, '0000510000,0000510900,0000510921,', '1', 2, '四川省/遂宁市/蓬溪县', '蓬溪县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510923', '510900', '0,510000,510900,', 510923, '0000510000,0000510900,0000510923,', '1', 2, '四川省/遂宁市/大英县', '大英县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('510981', '510900', '0,510000,510900,', 510981, '0000510000,0000510900,0000510981,', '1', 2, '四川省/遂宁市/射洪市', '射洪市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511000', '510000', '0,510000,', 511000, '0000510000,0000511000,', '0', 1, '四川省/内江市', '内江市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511002', '511000', '0,510000,511000,', 511002, '0000510000,0000511000,0000511002,', '1', 2, '四川省/内江市/市中区', '市中区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511011', '511000', '0,510000,511000,', 511011, '0000510000,0000511000,0000511011,', '1', 2, '四川省/内江市/东兴区', '东兴区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511024', '511000', '0,510000,511000,', 511024, '0000510000,0000511000,0000511024,', '1', 2, '四川省/内江市/威远县', '威远县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511025', '511000', '0,510000,511000,', 511025, '0000510000,0000511000,0000511025,', '1', 2, '四川省/内江市/资中县', '资中县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511083', '511000', '0,510000,511000,', 511083, '0000510000,0000511000,0000511083,', '1', 2, '四川省/内江市/隆昌市', '隆昌市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511100', '510000', '0,510000,', 511100, '0000510000,0000511100,', '0', 1, '四川省/乐山市', '乐山市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511102', '511100', '0,510000,511100,', 511102, '0000510000,0000511100,0000511102,', '1', 2, '四川省/乐山市/市中区', '市中区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511111', '511100', '0,510000,511100,', 511111, '0000510000,0000511100,0000511111,', '1', 2, '四川省/乐山市/沙湾区', '沙湾区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511112', '511100', '0,510000,511100,', 511112, '0000510000,0000511100,0000511112,', '1', 2, '四川省/乐山市/五通桥区', '五通桥区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511113', '511100', '0,510000,511100,', 511113, '0000510000,0000511100,0000511113,', '1', 2, '四川省/乐山市/金口河区', '金口河区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511123', '511100', '0,510000,511100,', 511123, '0000510000,0000511100,0000511123,', '1', 2, '四川省/乐山市/犍为县', '犍为县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511124', '511100', '0,510000,511100,', 511124, '0000510000,0000511100,0000511124,', '1', 2, '四川省/乐山市/井研县', '井研县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511126', '511100', '0,510000,511100,', 511126, '0000510000,0000511100,0000511126,', '1', 2, '四川省/乐山市/夹江县', '夹江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511129', '511100', '0,510000,511100,', 511129, '0000510000,0000511100,0000511129,', '1', 2, '四川省/乐山市/沐川县', '沐川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511132', '511100', '0,510000,511100,', 511132, '0000510000,0000511100,0000511132,', '1', 2, '四川省/乐山市/峨边彝族自治县', '峨边彝族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511133', '511100', '0,510000,511100,', 511133, '0000510000,0000511100,0000511133,', '1', 2, '四川省/乐山市/马边彝族自治县', '马边彝族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511181', '511100', '0,510000,511100,', 511181, '0000510000,0000511100,0000511181,', '1', 2, '四川省/乐山市/峨眉山市', '峨眉山市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511300', '510000', '0,510000,', 511300, '0000510000,0000511300,', '0', 1, '四川省/南充市', '南充市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511302', '511300', '0,510000,511300,', 511302, '0000510000,0000511300,0000511302,', '1', 2, '四川省/南充市/顺庆区', '顺庆区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511303', '511300', '0,510000,511300,', 511303, '0000510000,0000511300,0000511303,', '1', 2, '四川省/南充市/高坪区', '高坪区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511304', '511300', '0,510000,511300,', 511304, '0000510000,0000511300,0000511304,', '1', 2, '四川省/南充市/嘉陵区', '嘉陵区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511321', '511300', '0,510000,511300,', 511321, '0000510000,0000511300,0000511321,', '1', 2, '四川省/南充市/南部县', '南部县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511322', '511300', '0,510000,511300,', 511322, '0000510000,0000511300,0000511322,', '1', 2, '四川省/南充市/营山县', '营山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511323', '511300', '0,510000,511300,', 511323, '0000510000,0000511300,0000511323,', '1', 2, '四川省/南充市/蓬安县', '蓬安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511324', '511300', '0,510000,511300,', 511324, '0000510000,0000511300,0000511324,', '1', 2, '四川省/南充市/仪陇县', '仪陇县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511325', '511300', '0,510000,511300,', 511325, '0000510000,0000511300,0000511325,', '1', 2, '四川省/南充市/西充县', '西充县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511381', '511300', '0,510000,511300,', 511381, '0000510000,0000511300,0000511381,', '1', 2, '四川省/南充市/阆中市', '阆中市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511400', '510000', '0,510000,', 511400, '0000510000,0000511400,', '0', 1, '四川省/眉山市', '眉山市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511402', '511400', '0,510000,511400,', 511402, '0000510000,0000511400,0000511402,', '1', 2, '四川省/眉山市/东坡区', '东坡区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511403', '511400', '0,510000,511400,', 511403, '0000510000,0000511400,0000511403,', '1', 2, '四川省/眉山市/彭山区', '彭山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511421', '511400', '0,510000,511400,', 511421, '0000510000,0000511400,0000511421,', '1', 2, '四川省/眉山市/仁寿县', '仁寿县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511423', '511400', '0,510000,511400,', 511423, '0000510000,0000511400,0000511423,', '1', 2, '四川省/眉山市/洪雅县', '洪雅县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511424', '511400', '0,510000,511400,', 511424, '0000510000,0000511400,0000511424,', '1', 2, '四川省/眉山市/丹棱县', '丹棱县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511425', '511400', '0,510000,511400,', 511425, '0000510000,0000511400,0000511425,', '1', 2, '四川省/眉山市/青神县', '青神县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511500', '510000', '0,510000,', 511500, '0000510000,0000511500,', '0', 1, '四川省/宜宾市', '宜宾市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511502', '511500', '0,510000,511500,', 511502, '0000510000,0000511500,0000511502,', '1', 2, '四川省/宜宾市/翠屏区', '翠屏区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511503', '511500', '0,510000,511500,', 511503, '0000510000,0000511500,0000511503,', '1', 2, '四川省/宜宾市/南溪区', '南溪区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511504', '511500', '0,510000,511500,', 511504, '0000510000,0000511500,0000511504,', '1', 2, '四川省/宜宾市/叙州区', '叙州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511523', '511500', '0,510000,511500,', 511523, '0000510000,0000511500,0000511523,', '1', 2, '四川省/宜宾市/江安县', '江安县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511524', '511500', '0,510000,511500,', 511524, '0000510000,0000511500,0000511524,', '1', 2, '四川省/宜宾市/长宁县', '长宁县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511525', '511500', '0,510000,511500,', 511525, '0000510000,0000511500,0000511525,', '1', 2, '四川省/宜宾市/高县', '高县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511526', '511500', '0,510000,511500,', 511526, '0000510000,0000511500,0000511526,', '1', 2, '四川省/宜宾市/珙县', '珙县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511527', '511500', '0,510000,511500,', 511527, '0000510000,0000511500,0000511527,', '1', 2, '四川省/宜宾市/筠连县', '筠连县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511528', '511500', '0,510000,511500,', 511528, '0000510000,0000511500,0000511528,', '1', 2, '四川省/宜宾市/兴文县', '兴文县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511529', '511500', '0,510000,511500,', 511529, '0000510000,0000511500,0000511529,', '1', 2, '四川省/宜宾市/屏山县', '屏山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511600', '510000', '0,510000,', 511600, '0000510000,0000511600,', '0', 1, '四川省/广安市', '广安市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511602', '511600', '0,510000,511600,', 511602, '0000510000,0000511600,0000511602,', '1', 2, '四川省/广安市/广安区', '广安区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511603', '511600', '0,510000,511600,', 511603, '0000510000,0000511600,0000511603,', '1', 2, '四川省/广安市/前锋区', '前锋区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511621', '511600', '0,510000,511600,', 511621, '0000510000,0000511600,0000511621,', '1', 2, '四川省/广安市/岳池县', '岳池县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511622', '511600', '0,510000,511600,', 511622, '0000510000,0000511600,0000511622,', '1', 2, '四川省/广安市/武胜县', '武胜县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511623', '511600', '0,510000,511600,', 511623, '0000510000,0000511600,0000511623,', '1', 2, '四川省/广安市/邻水县', '邻水县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511681', '511600', '0,510000,511600,', 511681, '0000510000,0000511600,0000511681,', '1', 2, '四川省/广安市/华蓥市', '华蓥市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511700', '510000', '0,510000,', 511700, '0000510000,0000511700,', '0', 1, '四川省/达州市', '达州市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511702', '511700', '0,510000,511700,', 511702, '0000510000,0000511700,0000511702,', '1', 2, '四川省/达州市/通川区', '通川区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511703', '511700', '0,510000,511700,', 511703, '0000510000,0000511700,0000511703,', '1', 2, '四川省/达州市/达川区', '达川区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511722', '511700', '0,510000,511700,', 511722, '0000510000,0000511700,0000511722,', '1', 2, '四川省/达州市/宣汉县', '宣汉县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511723', '511700', '0,510000,511700,', 511723, '0000510000,0000511700,0000511723,', '1', 2, '四川省/达州市/开江县', '开江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511724', '511700', '0,510000,511700,', 511724, '0000510000,0000511700,0000511724,', '1', 2, '四川省/达州市/大竹县', '大竹县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511725', '511700', '0,510000,511700,', 511725, '0000510000,0000511700,0000511725,', '1', 2, '四川省/达州市/渠县', '渠县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511781', '511700', '0,510000,511700,', 511781, '0000510000,0000511700,0000511781,', '1', 2, '四川省/达州市/万源市', '万源市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511800', '510000', '0,510000,', 511800, '0000510000,0000511800,', '0', 1, '四川省/雅安市', '雅安市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511802', '511800', '0,510000,511800,', 511802, '0000510000,0000511800,0000511802,', '1', 2, '四川省/雅安市/雨城区', '雨城区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511803', '511800', '0,510000,511800,', 511803, '0000510000,0000511800,0000511803,', '1', 2, '四川省/雅安市/名山区', '名山区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511822', '511800', '0,510000,511800,', 511822, '0000510000,0000511800,0000511822,', '1', 2, '四川省/雅安市/荥经县', '荥经县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511823', '511800', '0,510000,511800,', 511823, '0000510000,0000511800,0000511823,', '1', 2, '四川省/雅安市/汉源县', '汉源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511824', '511800', '0,510000,511800,', 511824, '0000510000,0000511800,0000511824,', '1', 2, '四川省/雅安市/石棉县', '石棉县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511825', '511800', '0,510000,511800,', 511825, '0000510000,0000511800,0000511825,', '1', 2, '四川省/雅安市/天全县', '天全县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511826', '511800', '0,510000,511800,', 511826, '0000510000,0000511800,0000511826,', '1', 2, '四川省/雅安市/芦山县', '芦山县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511827', '511800', '0,510000,511800,', 511827, '0000510000,0000511800,0000511827,', '1', 2, '四川省/雅安市/宝兴县', '宝兴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511900', '510000', '0,510000,', 511900, '0000510000,0000511900,', '0', 1, '四川省/巴中市', '巴中市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511902', '511900', '0,510000,511900,', 511902, '0000510000,0000511900,0000511902,', '1', 2, '四川省/巴中市/巴州区', '巴州区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511903', '511900', '0,510000,511900,', 511903, '0000510000,0000511900,0000511903,', '1', 2, '四川省/巴中市/恩阳区', '恩阳区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511921', '511900', '0,510000,511900,', 511921, '0000510000,0000511900,0000511921,', '1', 2, '四川省/巴中市/通江县', '通江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511922', '511900', '0,510000,511900,', 511922, '0000510000,0000511900,0000511922,', '1', 2, '四川省/巴中市/南江县', '南江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('511923', '511900', '0,510000,511900,', 511923, '0000510000,0000511900,0000511923,', '1', 2, '四川省/巴中市/平昌县', '平昌县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('512000', '510000', '0,510000,', 512000, '0000510000,0000512000,', '0', 1, '四川省/资阳市', '资阳市', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('512002', '512000', '0,510000,512000,', 512002, '0000510000,0000512000,0000512002,', '1', 2, '四川省/资阳市/雁江区', '雁江区', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('512021', '512000', '0,510000,512000,', 512021, '0000510000,0000512000,0000512021,', '1', 2, '四川省/资阳市/安岳县', '安岳县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('512022', '512000', '0,510000,512000,', 512022, '0000510000,0000512000,0000512022,', '1', 2, '四川省/资阳市/乐至县', '乐至县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513200', '510000', '0,510000,', 513200, '0000510000,0000513200,', '0', 1, '四川省/阿坝藏族羌族自治州', '阿坝藏族羌族自治州', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513201', '513200', '0,510000,513200,', 513201, '0000510000,0000513200,0000513201,', '1', 2, '四川省/阿坝藏族羌族自治州/马尔康市', '马尔康市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513221', '513200', '0,510000,513200,', 513221, '0000510000,0000513200,0000513221,', '1', 2, '四川省/阿坝藏族羌族自治州/汶川县', '汶川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513222', '513200', '0,510000,513200,', 513222, '0000510000,0000513200,0000513222,', '1', 2, '四川省/阿坝藏族羌族自治州/理县', '理县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513223', '513200', '0,510000,513200,', 513223, '0000510000,0000513200,0000513223,', '1', 2, '四川省/阿坝藏族羌族自治州/茂县', '茂县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513224', '513200', '0,510000,513200,', 513224, '0000510000,0000513200,0000513224,', '1', 2, '四川省/阿坝藏族羌族自治州/松潘县', '松潘县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513225', '513200', '0,510000,513200,', 513225, '0000510000,0000513200,0000513225,', '1', 2, '四川省/阿坝藏族羌族自治州/九寨沟县', '九寨沟县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513226', '513200', '0,510000,513200,', 513226, '0000510000,0000513200,0000513226,', '1', 2, '四川省/阿坝藏族羌族自治州/金川县', '金川县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513227', '513200', '0,510000,513200,', 513227, '0000510000,0000513200,0000513227,', '1', 2, '四川省/阿坝藏族羌族自治州/小金县', '小金县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513228', '513200', '0,510000,513200,', 513228, '0000510000,0000513200,0000513228,', '1', 2, '四川省/阿坝藏族羌族自治州/黑水县', '黑水县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513230', '513200', '0,510000,513200,', 513230, '0000510000,0000513200,0000513230,', '1', 2, '四川省/阿坝藏族羌族自治州/壤塘县', '壤塘县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513231', '513200', '0,510000,513200,', 513231, '0000510000,0000513200,0000513231,', '1', 2, '四川省/阿坝藏族羌族自治州/阿坝县', '阿坝县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513232', '513200', '0,510000,513200,', 513232, '0000510000,0000513200,0000513232,', '1', 2, '四川省/阿坝藏族羌族自治州/若尔盖县', '若尔盖县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513233', '513200', '0,510000,513200,', 513233, '0000510000,0000513200,0000513233,', '1', 2, '四川省/阿坝藏族羌族自治州/红原县', '红原县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513300', '510000', '0,510000,', 513300, '0000510000,0000513300,', '0', 1, '四川省/甘孜藏族自治州', '甘孜藏族自治州', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513301', '513300', '0,510000,513300,', 513301, '0000510000,0000513300,0000513301,', '1', 2, '四川省/甘孜藏族自治州/康定市', '康定市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513322', '513300', '0,510000,513300,', 513322, '0000510000,0000513300,0000513322,', '1', 2, '四川省/甘孜藏族自治州/泸定县', '泸定县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513323', '513300', '0,510000,513300,', 513323, '0000510000,0000513300,0000513323,', '1', 2, '四川省/甘孜藏族自治州/丹巴县', '丹巴县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513324', '513300', '0,510000,513300,', 513324, '0000510000,0000513300,0000513324,', '1', 2, '四川省/甘孜藏族自治州/九龙县', '九龙县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513325', '513300', '0,510000,513300,', 513325, '0000510000,0000513300,0000513325,', '1', 2, '四川省/甘孜藏族自治州/雅江县', '雅江县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513326', '513300', '0,510000,513300,', 513326, '0000510000,0000513300,0000513326,', '1', 2, '四川省/甘孜藏族自治州/道孚县', '道孚县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513327', '513300', '0,510000,513300,', 513327, '0000510000,0000513300,0000513327,', '1', 2, '四川省/甘孜藏族自治州/炉霍县', '炉霍县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513328', '513300', '0,510000,513300,', 513328, '0000510000,0000513300,0000513328,', '1', 2, '四川省/甘孜藏族自治州/甘孜县', '甘孜县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513329', '513300', '0,510000,513300,', 513329, '0000510000,0000513300,0000513329,', '1', 2, '四川省/甘孜藏族自治州/新龙县', '新龙县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513330', '513300', '0,510000,513300,', 513330, '0000510000,0000513300,0000513330,', '1', 2, '四川省/甘孜藏族自治州/德格县', '德格县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513331', '513300', '0,510000,513300,', 513331, '0000510000,0000513300,0000513331,', '1', 2, '四川省/甘孜藏族自治州/白玉县', '白玉县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513332', '513300', '0,510000,513300,', 513332, '0000510000,0000513300,0000513332,', '1', 2, '四川省/甘孜藏族自治州/石渠县', '石渠县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513333', '513300', '0,510000,513300,', 513333, '0000510000,0000513300,0000513333,', '1', 2, '四川省/甘孜藏族自治州/色达县', '色达县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513334', '513300', '0,510000,513300,', 513334, '0000510000,0000513300,0000513334,', '1', 2, '四川省/甘孜藏族自治州/理塘县', '理塘县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513335', '513300', '0,510000,513300,', 513335, '0000510000,0000513300,0000513335,', '1', 2, '四川省/甘孜藏族自治州/巴塘县', '巴塘县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513336', '513300', '0,510000,513300,', 513336, '0000510000,0000513300,0000513336,', '1', 2, '四川省/甘孜藏族自治州/乡城县', '乡城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513337', '513300', '0,510000,513300,', 513337, '0000510000,0000513300,0000513337,', '1', 2, '四川省/甘孜藏族自治州/稻城县', '稻城县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513338', '513300', '0,510000,513300,', 513338, '0000510000,0000513300,0000513338,', '1', 2, '四川省/甘孜藏族自治州/得荣县', '得荣县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513400', '510000', '0,510000,', 513400, '0000510000,0000513400,', '0', 1, '四川省/凉山彝族自治州', '凉山彝族自治州', '2', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513401', '513400', '0,510000,513400,', 513401, '0000510000,0000513400,0000513401,', '1', 2, '四川省/凉山彝族自治州/西昌市', '西昌市', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513422', '513400', '0,510000,513400,', 513422, '0000510000,0000513400,0000513422,', '1', 2, '四川省/凉山彝族自治州/木里藏族自治县', '木里藏族自治县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513423', '513400', '0,510000,513400,', 513423, '0000510000,0000513400,0000513423,', '1', 2, '四川省/凉山彝族自治州/盐源县', '盐源县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513424', '513400', '0,510000,513400,', 513424, '0000510000,0000513400,0000513424,', '1', 2, '四川省/凉山彝族自治州/德昌县', '德昌县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513425', '513400', '0,510000,513400,', 513425, '0000510000,0000513400,0000513425,', '1', 2, '四川省/凉山彝族自治州/会理县', '会理县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513426', '513400', '0,510000,513400,', 513426, '0000510000,0000513400,0000513426,', '1', 2, '四川省/凉山彝族自治州/会东县', '会东县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513427', '513400', '0,510000,513400,', 513427, '0000510000,0000513400,0000513427,', '1', 2, '四川省/凉山彝族自治州/宁南县', '宁南县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513428', '513400', '0,510000,513400,', 513428, '0000510000,0000513400,0000513428,', '1', 2, '四川省/凉山彝族自治州/普格县', '普格县', '3', '0', 'system', '2020-09-16 10:43:22', 'system', '2020-09-16 10:43:22', NULL);
INSERT INTO `js_sys_area` VALUES ('513429', '513400', '0,510000,513400,', 513429, '0000510000,0000513400,0000513429,', '1', 2, '四川省/凉山彝族自治州/布拖县', '布拖县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513430', '513400', '0,510000,513400,', 513430, '0000510000,0000513400,0000513430,', '1', 2, '四川省/凉山彝族自治州/金阳县', '金阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513431', '513400', '0,510000,513400,', 513431, '0000510000,0000513400,0000513431,', '1', 2, '四川省/凉山彝族自治州/昭觉县', '昭觉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513432', '513400', '0,510000,513400,', 513432, '0000510000,0000513400,0000513432,', '1', 2, '四川省/凉山彝族自治州/喜德县', '喜德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513433', '513400', '0,510000,513400,', 513433, '0000510000,0000513400,0000513433,', '1', 2, '四川省/凉山彝族自治州/冕宁县', '冕宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513434', '513400', '0,510000,513400,', 513434, '0000510000,0000513400,0000513434,', '1', 2, '四川省/凉山彝族自治州/越西县', '越西县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513435', '513400', '0,510000,513400,', 513435, '0000510000,0000513400,0000513435,', '1', 2, '四川省/凉山彝族自治州/甘洛县', '甘洛县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513436', '513400', '0,510000,513400,', 513436, '0000510000,0000513400,0000513436,', '1', 2, '四川省/凉山彝族自治州/美姑县', '美姑县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('513437', '513400', '0,510000,513400,', 513437, '0000510000,0000513400,0000513437,', '1', 2, '四川省/凉山彝族自治州/雷波县', '雷波县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520000', '0', '0,', 520000, '0000520000,', '0', 0, '贵州省', '贵州省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520100', '520000', '0,520000,', 520100, '0000520000,0000520100,', '0', 1, '贵州省/贵阳市', '贵阳市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520102', '520100', '0,520000,520100,', 520102, '0000520000,0000520100,0000520102,', '1', 2, '贵州省/贵阳市/南明区', '南明区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520103', '520100', '0,520000,520100,', 520103, '0000520000,0000520100,0000520103,', '1', 2, '贵州省/贵阳市/云岩区', '云岩区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520111', '520100', '0,520000,520100,', 520111, '0000520000,0000520100,0000520111,', '1', 2, '贵州省/贵阳市/花溪区', '花溪区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520112', '520100', '0,520000,520100,', 520112, '0000520000,0000520100,0000520112,', '1', 2, '贵州省/贵阳市/乌当区', '乌当区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520113', '520100', '0,520000,520100,', 520113, '0000520000,0000520100,0000520113,', '1', 2, '贵州省/贵阳市/白云区', '白云区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520115', '520100', '0,520000,520100,', 520115, '0000520000,0000520100,0000520115,', '1', 2, '贵州省/贵阳市/观山湖区', '观山湖区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520121', '520100', '0,520000,520100,', 520121, '0000520000,0000520100,0000520121,', '1', 2, '贵州省/贵阳市/开阳县', '开阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520122', '520100', '0,520000,520100,', 520122, '0000520000,0000520100,0000520122,', '1', 2, '贵州省/贵阳市/息烽县', '息烽县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520123', '520100', '0,520000,520100,', 520123, '0000520000,0000520100,0000520123,', '1', 2, '贵州省/贵阳市/修文县', '修文县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520181', '520100', '0,520000,520100,', 520181, '0000520000,0000520100,0000520181,', '1', 2, '贵州省/贵阳市/清镇市', '清镇市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520200', '520000', '0,520000,', 520200, '0000520000,0000520200,', '0', 1, '贵州省/六盘水市', '六盘水市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520201', '520200', '0,520000,520200,', 520201, '0000520000,0000520200,0000520201,', '1', 2, '贵州省/六盘水市/钟山区', '钟山区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520203', '520200', '0,520000,520200,', 520203, '0000520000,0000520200,0000520203,', '1', 2, '贵州省/六盘水市/六枝特区', '六枝特区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520221', '520200', '0,520000,520200,', 520221, '0000520000,0000520200,0000520221,', '1', 2, '贵州省/六盘水市/水城县', '水城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520281', '520200', '0,520000,520200,', 520281, '0000520000,0000520200,0000520281,', '1', 2, '贵州省/六盘水市/盘州市', '盘州市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520300', '520000', '0,520000,', 520300, '0000520000,0000520300,', '0', 1, '贵州省/遵义市', '遵义市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520302', '520300', '0,520000,520300,', 520302, '0000520000,0000520300,0000520302,', '1', 2, '贵州省/遵义市/红花岗区', '红花岗区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520303', '520300', '0,520000,520300,', 520303, '0000520000,0000520300,0000520303,', '1', 2, '贵州省/遵义市/汇川区', '汇川区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520304', '520300', '0,520000,520300,', 520304, '0000520000,0000520300,0000520304,', '1', 2, '贵州省/遵义市/播州区', '播州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520322', '520300', '0,520000,520300,', 520322, '0000520000,0000520300,0000520322,', '1', 2, '贵州省/遵义市/桐梓县', '桐梓县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520323', '520300', '0,520000,520300,', 520323, '0000520000,0000520300,0000520323,', '1', 2, '贵州省/遵义市/绥阳县', '绥阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520324', '520300', '0,520000,520300,', 520324, '0000520000,0000520300,0000520324,', '1', 2, '贵州省/遵义市/正安县', '正安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520325', '520300', '0,520000,520300,', 520325, '0000520000,0000520300,0000520325,', '1', 2, '贵州省/遵义市/道真仡佬族苗族自治县', '道真仡佬族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520326', '520300', '0,520000,520300,', 520326, '0000520000,0000520300,0000520326,', '1', 2, '贵州省/遵义市/务川仡佬族苗族自治县', '务川仡佬族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520327', '520300', '0,520000,520300,', 520327, '0000520000,0000520300,0000520327,', '1', 2, '贵州省/遵义市/凤冈县', '凤冈县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520328', '520300', '0,520000,520300,', 520328, '0000520000,0000520300,0000520328,', '1', 2, '贵州省/遵义市/湄潭县', '湄潭县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520329', '520300', '0,520000,520300,', 520329, '0000520000,0000520300,0000520329,', '1', 2, '贵州省/遵义市/余庆县', '余庆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520330', '520300', '0,520000,520300,', 520330, '0000520000,0000520300,0000520330,', '1', 2, '贵州省/遵义市/习水县', '习水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520381', '520300', '0,520000,520300,', 520381, '0000520000,0000520300,0000520381,', '1', 2, '贵州省/遵义市/赤水市', '赤水市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520382', '520300', '0,520000,520300,', 520382, '0000520000,0000520300,0000520382,', '1', 2, '贵州省/遵义市/仁怀市', '仁怀市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520400', '520000', '0,520000,', 520400, '0000520000,0000520400,', '0', 1, '贵州省/安顺市', '安顺市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520402', '520400', '0,520000,520400,', 520402, '0000520000,0000520400,0000520402,', '1', 2, '贵州省/安顺市/西秀区', '西秀区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520403', '520400', '0,520000,520400,', 520403, '0000520000,0000520400,0000520403,', '1', 2, '贵州省/安顺市/平坝区', '平坝区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520422', '520400', '0,520000,520400,', 520422, '0000520000,0000520400,0000520422,', '1', 2, '贵州省/安顺市/普定县', '普定县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520423', '520400', '0,520000,520400,', 520423, '0000520000,0000520400,0000520423,', '1', 2, '贵州省/安顺市/镇宁布依族苗族自治县', '镇宁布依族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520424', '520400', '0,520000,520400,', 520424, '0000520000,0000520400,0000520424,', '1', 2, '贵州省/安顺市/关岭布依族苗族自治县', '关岭布依族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520425', '520400', '0,520000,520400,', 520425, '0000520000,0000520400,0000520425,', '1', 2, '贵州省/安顺市/紫云苗族布依族自治县', '紫云苗族布依族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520500', '520000', '0,520000,', 520500, '0000520000,0000520500,', '0', 1, '贵州省/毕节市', '毕节市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520502', '520500', '0,520000,520500,', 520502, '0000520000,0000520500,0000520502,', '1', 2, '贵州省/毕节市/七星关区', '七星关区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520521', '520500', '0,520000,520500,', 520521, '0000520000,0000520500,0000520521,', '1', 2, '贵州省/毕节市/大方县', '大方县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520522', '520500', '0,520000,520500,', 520522, '0000520000,0000520500,0000520522,', '1', 2, '贵州省/毕节市/黔西县', '黔西县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520523', '520500', '0,520000,520500,', 520523, '0000520000,0000520500,0000520523,', '1', 2, '贵州省/毕节市/金沙县', '金沙县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520524', '520500', '0,520000,520500,', 520524, '0000520000,0000520500,0000520524,', '1', 2, '贵州省/毕节市/织金县', '织金县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520525', '520500', '0,520000,520500,', 520525, '0000520000,0000520500,0000520525,', '1', 2, '贵州省/毕节市/纳雍县', '纳雍县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520526', '520500', '0,520000,520500,', 520526, '0000520000,0000520500,0000520526,', '1', 2, '贵州省/毕节市/威宁彝族回族苗族自治县', '威宁彝族回族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520527', '520500', '0,520000,520500,', 520527, '0000520000,0000520500,0000520527,', '1', 2, '贵州省/毕节市/赫章县', '赫章县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520600', '520000', '0,520000,', 520600, '0000520000,0000520600,', '0', 1, '贵州省/铜仁市', '铜仁市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520602', '520600', '0,520000,520600,', 520602, '0000520000,0000520600,0000520602,', '1', 2, '贵州省/铜仁市/碧江区', '碧江区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520603', '520600', '0,520000,520600,', 520603, '0000520000,0000520600,0000520603,', '1', 2, '贵州省/铜仁市/万山区', '万山区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520621', '520600', '0,520000,520600,', 520621, '0000520000,0000520600,0000520621,', '1', 2, '贵州省/铜仁市/江口县', '江口县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520622', '520600', '0,520000,520600,', 520622, '0000520000,0000520600,0000520622,', '1', 2, '贵州省/铜仁市/玉屏侗族自治县', '玉屏侗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520623', '520600', '0,520000,520600,', 520623, '0000520000,0000520600,0000520623,', '1', 2, '贵州省/铜仁市/石阡县', '石阡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520624', '520600', '0,520000,520600,', 520624, '0000520000,0000520600,0000520624,', '1', 2, '贵州省/铜仁市/思南县', '思南县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520625', '520600', '0,520000,520600,', 520625, '0000520000,0000520600,0000520625,', '1', 2, '贵州省/铜仁市/印江土家族苗族自治县', '印江土家族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520626', '520600', '0,520000,520600,', 520626, '0000520000,0000520600,0000520626,', '1', 2, '贵州省/铜仁市/德江县', '德江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520627', '520600', '0,520000,520600,', 520627, '0000520000,0000520600,0000520627,', '1', 2, '贵州省/铜仁市/沿河土家族自治县', '沿河土家族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('520628', '520600', '0,520000,520600,', 520628, '0000520000,0000520600,0000520628,', '1', 2, '贵州省/铜仁市/松桃苗族自治县', '松桃苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522300', '520000', '0,520000,', 522300, '0000520000,0000522300,', '0', 1, '贵州省/黔西南布依族苗族自治州', '黔西南布依族苗族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522301', '522300', '0,520000,522300,', 522301, '0000520000,0000522300,0000522301,', '1', 2, '贵州省/黔西南布依族苗族自治州/兴义市', '兴义市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522302', '522300', '0,520000,522300,', 522302, '0000520000,0000522300,0000522302,', '1', 2, '贵州省/黔西南布依族苗族自治州/兴仁市', '兴仁市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522323', '522300', '0,520000,522300,', 522323, '0000520000,0000522300,0000522323,', '1', 2, '贵州省/黔西南布依族苗族自治州/普安县', '普安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522324', '522300', '0,520000,522300,', 522324, '0000520000,0000522300,0000522324,', '1', 2, '贵州省/黔西南布依族苗族自治州/晴隆县', '晴隆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522325', '522300', '0,520000,522300,', 522325, '0000520000,0000522300,0000522325,', '1', 2, '贵州省/黔西南布依族苗族自治州/贞丰县', '贞丰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522326', '522300', '0,520000,522300,', 522326, '0000520000,0000522300,0000522326,', '1', 2, '贵州省/黔西南布依族苗族自治州/望谟县', '望谟县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522327', '522300', '0,520000,522300,', 522327, '0000520000,0000522300,0000522327,', '1', 2, '贵州省/黔西南布依族苗族自治州/册亨县', '册亨县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522328', '522300', '0,520000,522300,', 522328, '0000520000,0000522300,0000522328,', '1', 2, '贵州省/黔西南布依族苗族自治州/安龙县', '安龙县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522600', '520000', '0,520000,', 522600, '0000520000,0000522600,', '0', 1, '贵州省/黔东南苗族侗族自治州', '黔东南苗族侗族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522601', '522600', '0,520000,522600,', 522601, '0000520000,0000522600,0000522601,', '1', 2, '贵州省/黔东南苗族侗族自治州/凯里市', '凯里市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522622', '522600', '0,520000,522600,', 522622, '0000520000,0000522600,0000522622,', '1', 2, '贵州省/黔东南苗族侗族自治州/黄平县', '黄平县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522623', '522600', '0,520000,522600,', 522623, '0000520000,0000522600,0000522623,', '1', 2, '贵州省/黔东南苗族侗族自治州/施秉县', '施秉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522624', '522600', '0,520000,522600,', 522624, '0000520000,0000522600,0000522624,', '1', 2, '贵州省/黔东南苗族侗族自治州/三穗县', '三穗县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522625', '522600', '0,520000,522600,', 522625, '0000520000,0000522600,0000522625,', '1', 2, '贵州省/黔东南苗族侗族自治州/镇远县', '镇远县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522626', '522600', '0,520000,522600,', 522626, '0000520000,0000522600,0000522626,', '1', 2, '贵州省/黔东南苗族侗族自治州/岑巩县', '岑巩县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522627', '522600', '0,520000,522600,', 522627, '0000520000,0000522600,0000522627,', '1', 2, '贵州省/黔东南苗族侗族自治州/天柱县', '天柱县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522628', '522600', '0,520000,522600,', 522628, '0000520000,0000522600,0000522628,', '1', 2, '贵州省/黔东南苗族侗族自治州/锦屏县', '锦屏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522629', '522600', '0,520000,522600,', 522629, '0000520000,0000522600,0000522629,', '1', 2, '贵州省/黔东南苗族侗族自治州/剑河县', '剑河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522630', '522600', '0,520000,522600,', 522630, '0000520000,0000522600,0000522630,', '1', 2, '贵州省/黔东南苗族侗族自治州/台江县', '台江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522631', '522600', '0,520000,522600,', 522631, '0000520000,0000522600,0000522631,', '1', 2, '贵州省/黔东南苗族侗族自治州/黎平县', '黎平县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522632', '522600', '0,520000,522600,', 522632, '0000520000,0000522600,0000522632,', '1', 2, '贵州省/黔东南苗族侗族自治州/榕江县', '榕江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522633', '522600', '0,520000,522600,', 522633, '0000520000,0000522600,0000522633,', '1', 2, '贵州省/黔东南苗族侗族自治州/从江县', '从江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522634', '522600', '0,520000,522600,', 522634, '0000520000,0000522600,0000522634,', '1', 2, '贵州省/黔东南苗族侗族自治州/雷山县', '雷山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522635', '522600', '0,520000,522600,', 522635, '0000520000,0000522600,0000522635,', '1', 2, '贵州省/黔东南苗族侗族自治州/麻江县', '麻江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522636', '522600', '0,520000,522600,', 522636, '0000520000,0000522600,0000522636,', '1', 2, '贵州省/黔东南苗族侗族自治州/丹寨县', '丹寨县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522700', '520000', '0,520000,', 522700, '0000520000,0000522700,', '0', 1, '贵州省/黔南布依族苗族自治州', '黔南布依族苗族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522701', '522700', '0,520000,522700,', 522701, '0000520000,0000522700,0000522701,', '1', 2, '贵州省/黔南布依族苗族自治州/都匀市', '都匀市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522702', '522700', '0,520000,522700,', 522702, '0000520000,0000522700,0000522702,', '1', 2, '贵州省/黔南布依族苗族自治州/福泉市', '福泉市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522722', '522700', '0,520000,522700,', 522722, '0000520000,0000522700,0000522722,', '1', 2, '贵州省/黔南布依族苗族自治州/荔波县', '荔波县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522723', '522700', '0,520000,522700,', 522723, '0000520000,0000522700,0000522723,', '1', 2, '贵州省/黔南布依族苗族自治州/贵定县', '贵定县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522725', '522700', '0,520000,522700,', 522725, '0000520000,0000522700,0000522725,', '1', 2, '贵州省/黔南布依族苗族自治州/瓮安县', '瓮安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522726', '522700', '0,520000,522700,', 522726, '0000520000,0000522700,0000522726,', '1', 2, '贵州省/黔南布依族苗族自治州/独山县', '独山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522727', '522700', '0,520000,522700,', 522727, '0000520000,0000522700,0000522727,', '1', 2, '贵州省/黔南布依族苗族自治州/平塘县', '平塘县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522728', '522700', '0,520000,522700,', 522728, '0000520000,0000522700,0000522728,', '1', 2, '贵州省/黔南布依族苗族自治州/罗甸县', '罗甸县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522729', '522700', '0,520000,522700,', 522729, '0000520000,0000522700,0000522729,', '1', 2, '贵州省/黔南布依族苗族自治州/长顺县', '长顺县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522730', '522700', '0,520000,522700,', 522730, '0000520000,0000522700,0000522730,', '1', 2, '贵州省/黔南布依族苗族自治州/龙里县', '龙里县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522731', '522700', '0,520000,522700,', 522731, '0000520000,0000522700,0000522731,', '1', 2, '贵州省/黔南布依族苗族自治州/惠水县', '惠水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('522732', '522700', '0,520000,522700,', 522732, '0000520000,0000522700,0000522732,', '1', 2, '贵州省/黔南布依族苗族自治州/三都水族自治县', '三都水族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530000', '0', '0,', 530000, '0000530000,', '0', 0, '云南省', '云南省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530100', '530000', '0,530000,', 530100, '0000530000,0000530100,', '0', 1, '云南省/昆明市', '昆明市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530102', '530100', '0,530000,530100,', 530102, '0000530000,0000530100,0000530102,', '1', 2, '云南省/昆明市/五华区', '五华区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530103', '530100', '0,530000,530100,', 530103, '0000530000,0000530100,0000530103,', '1', 2, '云南省/昆明市/盘龙区', '盘龙区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530111', '530100', '0,530000,530100,', 530111, '0000530000,0000530100,0000530111,', '1', 2, '云南省/昆明市/官渡区', '官渡区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530112', '530100', '0,530000,530100,', 530112, '0000530000,0000530100,0000530112,', '1', 2, '云南省/昆明市/西山区', '西山区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530113', '530100', '0,530000,530100,', 530113, '0000530000,0000530100,0000530113,', '1', 2, '云南省/昆明市/东川区', '东川区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530114', '530100', '0,530000,530100,', 530114, '0000530000,0000530100,0000530114,', '1', 2, '云南省/昆明市/呈贡区', '呈贡区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530115', '530100', '0,530000,530100,', 530115, '0000530000,0000530100,0000530115,', '1', 2, '云南省/昆明市/晋宁区', '晋宁区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530124', '530100', '0,530000,530100,', 530124, '0000530000,0000530100,0000530124,', '1', 2, '云南省/昆明市/富民县', '富民县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530125', '530100', '0,530000,530100,', 530125, '0000530000,0000530100,0000530125,', '1', 2, '云南省/昆明市/宜良县', '宜良县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530126', '530100', '0,530000,530100,', 530126, '0000530000,0000530100,0000530126,', '1', 2, '云南省/昆明市/石林彝族自治县', '石林彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530127', '530100', '0,530000,530100,', 530127, '0000530000,0000530100,0000530127,', '1', 2, '云南省/昆明市/嵩明县', '嵩明县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530128', '530100', '0,530000,530100,', 530128, '0000530000,0000530100,0000530128,', '1', 2, '云南省/昆明市/禄劝彝族苗族自治县', '禄劝彝族苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530129', '530100', '0,530000,530100,', 530129, '0000530000,0000530100,0000530129,', '1', 2, '云南省/昆明市/寻甸回族彝族自治县', '寻甸回族彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530181', '530100', '0,530000,530100,', 530181, '0000530000,0000530100,0000530181,', '1', 2, '云南省/昆明市/安宁市', '安宁市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530300', '530000', '0,530000,', 530300, '0000530000,0000530300,', '0', 1, '云南省/曲靖市', '曲靖市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530302', '530300', '0,530000,530300,', 530302, '0000530000,0000530300,0000530302,', '1', 2, '云南省/曲靖市/麒麟区', '麒麟区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530303', '530300', '0,530000,530300,', 530303, '0000530000,0000530300,0000530303,', '1', 2, '云南省/曲靖市/沾益区', '沾益区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530304', '530300', '0,530000,530300,', 530304, '0000530000,0000530300,0000530304,', '1', 2, '云南省/曲靖市/马龙区', '马龙区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530322', '530300', '0,530000,530300,', 530322, '0000530000,0000530300,0000530322,', '1', 2, '云南省/曲靖市/陆良县', '陆良县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530323', '530300', '0,530000,530300,', 530323, '0000530000,0000530300,0000530323,', '1', 2, '云南省/曲靖市/师宗县', '师宗县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530324', '530300', '0,530000,530300,', 530324, '0000530000,0000530300,0000530324,', '1', 2, '云南省/曲靖市/罗平县', '罗平县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530325', '530300', '0,530000,530300,', 530325, '0000530000,0000530300,0000530325,', '1', 2, '云南省/曲靖市/富源县', '富源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530326', '530300', '0,530000,530300,', 530326, '0000530000,0000530300,0000530326,', '1', 2, '云南省/曲靖市/会泽县', '会泽县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530381', '530300', '0,530000,530300,', 530381, '0000530000,0000530300,0000530381,', '1', 2, '云南省/曲靖市/宣威市', '宣威市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530400', '530000', '0,530000,', 530400, '0000530000,0000530400,', '0', 1, '云南省/玉溪市', '玉溪市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530402', '530400', '0,530000,530400,', 530402, '0000530000,0000530400,0000530402,', '1', 2, '云南省/玉溪市/红塔区', '红塔区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530403', '530400', '0,530000,530400,', 530403, '0000530000,0000530400,0000530403,', '1', 2, '云南省/玉溪市/江川区', '江川区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530423', '530400', '0,530000,530400,', 530423, '0000530000,0000530400,0000530423,', '1', 2, '云南省/玉溪市/通海县', '通海县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530424', '530400', '0,530000,530400,', 530424, '0000530000,0000530400,0000530424,', '1', 2, '云南省/玉溪市/华宁县', '华宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530425', '530400', '0,530000,530400,', 530425, '0000530000,0000530400,0000530425,', '1', 2, '云南省/玉溪市/易门县', '易门县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530426', '530400', '0,530000,530400,', 530426, '0000530000,0000530400,0000530426,', '1', 2, '云南省/玉溪市/峨山彝族自治县', '峨山彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530427', '530400', '0,530000,530400,', 530427, '0000530000,0000530400,0000530427,', '1', 2, '云南省/玉溪市/新平彝族傣族自治县', '新平彝族傣族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530428', '530400', '0,530000,530400,', 530428, '0000530000,0000530400,0000530428,', '1', 2, '云南省/玉溪市/元江哈尼族彝族傣族自治县', '元江哈尼族彝族傣族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530481', '530400', '0,530000,530400,', 530481, '0000530000,0000530400,0000530481,', '1', 2, '云南省/玉溪市/澄江市', '澄江市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530500', '530000', '0,530000,', 530500, '0000530000,0000530500,', '0', 1, '云南省/保山市', '保山市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530502', '530500', '0,530000,530500,', 530502, '0000530000,0000530500,0000530502,', '1', 2, '云南省/保山市/隆阳区', '隆阳区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530521', '530500', '0,530000,530500,', 530521, '0000530000,0000530500,0000530521,', '1', 2, '云南省/保山市/施甸县', '施甸县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530523', '530500', '0,530000,530500,', 530523, '0000530000,0000530500,0000530523,', '1', 2, '云南省/保山市/龙陵县', '龙陵县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530524', '530500', '0,530000,530500,', 530524, '0000530000,0000530500,0000530524,', '1', 2, '云南省/保山市/昌宁县', '昌宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530581', '530500', '0,530000,530500,', 530581, '0000530000,0000530500,0000530581,', '1', 2, '云南省/保山市/腾冲市', '腾冲市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530600', '530000', '0,530000,', 530600, '0000530000,0000530600,', '0', 1, '云南省/昭通市', '昭通市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530602', '530600', '0,530000,530600,', 530602, '0000530000,0000530600,0000530602,', '1', 2, '云南省/昭通市/昭阳区', '昭阳区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530621', '530600', '0,530000,530600,', 530621, '0000530000,0000530600,0000530621,', '1', 2, '云南省/昭通市/鲁甸县', '鲁甸县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530622', '530600', '0,530000,530600,', 530622, '0000530000,0000530600,0000530622,', '1', 2, '云南省/昭通市/巧家县', '巧家县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530623', '530600', '0,530000,530600,', 530623, '0000530000,0000530600,0000530623,', '1', 2, '云南省/昭通市/盐津县', '盐津县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530624', '530600', '0,530000,530600,', 530624, '0000530000,0000530600,0000530624,', '1', 2, '云南省/昭通市/大关县', '大关县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530625', '530600', '0,530000,530600,', 530625, '0000530000,0000530600,0000530625,', '1', 2, '云南省/昭通市/永善县', '永善县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530626', '530600', '0,530000,530600,', 530626, '0000530000,0000530600,0000530626,', '1', 2, '云南省/昭通市/绥江县', '绥江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530627', '530600', '0,530000,530600,', 530627, '0000530000,0000530600,0000530627,', '1', 2, '云南省/昭通市/镇雄县', '镇雄县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530628', '530600', '0,530000,530600,', 530628, '0000530000,0000530600,0000530628,', '1', 2, '云南省/昭通市/彝良县', '彝良县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530629', '530600', '0,530000,530600,', 530629, '0000530000,0000530600,0000530629,', '1', 2, '云南省/昭通市/威信县', '威信县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530681', '530600', '0,530000,530600,', 530681, '0000530000,0000530600,0000530681,', '1', 2, '云南省/昭通市/水富市', '水富市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530700', '530000', '0,530000,', 530700, '0000530000,0000530700,', '0', 1, '云南省/丽江市', '丽江市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530702', '530700', '0,530000,530700,', 530702, '0000530000,0000530700,0000530702,', '1', 2, '云南省/丽江市/古城区', '古城区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530721', '530700', '0,530000,530700,', 530721, '0000530000,0000530700,0000530721,', '1', 2, '云南省/丽江市/玉龙纳西族自治县', '玉龙纳西族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530722', '530700', '0,530000,530700,', 530722, '0000530000,0000530700,0000530722,', '1', 2, '云南省/丽江市/永胜县', '永胜县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530723', '530700', '0,530000,530700,', 530723, '0000530000,0000530700,0000530723,', '1', 2, '云南省/丽江市/华坪县', '华坪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530724', '530700', '0,530000,530700,', 530724, '0000530000,0000530700,0000530724,', '1', 2, '云南省/丽江市/宁蒗彝族自治县', '宁蒗彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530800', '530000', '0,530000,', 530800, '0000530000,0000530800,', '0', 1, '云南省/普洱市', '普洱市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530802', '530800', '0,530000,530800,', 530802, '0000530000,0000530800,0000530802,', '1', 2, '云南省/普洱市/思茅区', '思茅区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530821', '530800', '0,530000,530800,', 530821, '0000530000,0000530800,0000530821,', '1', 2, '云南省/普洱市/宁洱哈尼族彝族自治县', '宁洱哈尼族彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530822', '530800', '0,530000,530800,', 530822, '0000530000,0000530800,0000530822,', '1', 2, '云南省/普洱市/墨江哈尼族自治县', '墨江哈尼族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530823', '530800', '0,530000,530800,', 530823, '0000530000,0000530800,0000530823,', '1', 2, '云南省/普洱市/景东彝族自治县', '景东彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530824', '530800', '0,530000,530800,', 530824, '0000530000,0000530800,0000530824,', '1', 2, '云南省/普洱市/景谷傣族彝族自治县', '景谷傣族彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530825', '530800', '0,530000,530800,', 530825, '0000530000,0000530800,0000530825,', '1', 2, '云南省/普洱市/镇沅彝族哈尼族拉祜族自治县', '镇沅彝族哈尼族拉祜族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530826', '530800', '0,530000,530800,', 530826, '0000530000,0000530800,0000530826,', '1', 2, '云南省/普洱市/江城哈尼族彝族自治县', '江城哈尼族彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530827', '530800', '0,530000,530800,', 530827, '0000530000,0000530800,0000530827,', '1', 2, '云南省/普洱市/孟连傣族拉祜族佤族自治县', '孟连傣族拉祜族佤族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530828', '530800', '0,530000,530800,', 530828, '0000530000,0000530800,0000530828,', '1', 2, '云南省/普洱市/澜沧拉祜族自治县', '澜沧拉祜族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530829', '530800', '0,530000,530800,', 530829, '0000530000,0000530800,0000530829,', '1', 2, '云南省/普洱市/西盟佤族自治县', '西盟佤族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530900', '530000', '0,530000,', 530900, '0000530000,0000530900,', '0', 1, '云南省/临沧市', '临沧市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530902', '530900', '0,530000,530900,', 530902, '0000530000,0000530900,0000530902,', '1', 2, '云南省/临沧市/临翔区', '临翔区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530921', '530900', '0,530000,530900,', 530921, '0000530000,0000530900,0000530921,', '1', 2, '云南省/临沧市/凤庆县', '凤庆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530922', '530900', '0,530000,530900,', 530922, '0000530000,0000530900,0000530922,', '1', 2, '云南省/临沧市/云县', '云县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530923', '530900', '0,530000,530900,', 530923, '0000530000,0000530900,0000530923,', '1', 2, '云南省/临沧市/永德县', '永德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530924', '530900', '0,530000,530900,', 530924, '0000530000,0000530900,0000530924,', '1', 2, '云南省/临沧市/镇康县', '镇康县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530925', '530900', '0,530000,530900,', 530925, '0000530000,0000530900,0000530925,', '1', 2, '云南省/临沧市/双江拉祜族佤族布朗族傣族自治县', '双江拉祜族佤族布朗族傣族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530926', '530900', '0,530000,530900,', 530926, '0000530000,0000530900,0000530926,', '1', 2, '云南省/临沧市/耿马傣族佤族自治县', '耿马傣族佤族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('530927', '530900', '0,530000,530900,', 530927, '0000530000,0000530900,0000530927,', '1', 2, '云南省/临沧市/沧源佤族自治县', '沧源佤族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532300', '530000', '0,530000,', 532300, '0000530000,0000532300,', '0', 1, '云南省/楚雄彝族自治州', '楚雄彝族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532301', '532300', '0,530000,532300,', 532301, '0000530000,0000532300,0000532301,', '1', 2, '云南省/楚雄彝族自治州/楚雄市', '楚雄市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532322', '532300', '0,530000,532300,', 532322, '0000530000,0000532300,0000532322,', '1', 2, '云南省/楚雄彝族自治州/双柏县', '双柏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532323', '532300', '0,530000,532300,', 532323, '0000530000,0000532300,0000532323,', '1', 2, '云南省/楚雄彝族自治州/牟定县', '牟定县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532324', '532300', '0,530000,532300,', 532324, '0000530000,0000532300,0000532324,', '1', 2, '云南省/楚雄彝族自治州/南华县', '南华县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532325', '532300', '0,530000,532300,', 532325, '0000530000,0000532300,0000532325,', '1', 2, '云南省/楚雄彝族自治州/姚安县', '姚安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532326', '532300', '0,530000,532300,', 532326, '0000530000,0000532300,0000532326,', '1', 2, '云南省/楚雄彝族自治州/大姚县', '大姚县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532327', '532300', '0,530000,532300,', 532327, '0000530000,0000532300,0000532327,', '1', 2, '云南省/楚雄彝族自治州/永仁县', '永仁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532328', '532300', '0,530000,532300,', 532328, '0000530000,0000532300,0000532328,', '1', 2, '云南省/楚雄彝族自治州/元谋县', '元谋县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532329', '532300', '0,530000,532300,', 532329, '0000530000,0000532300,0000532329,', '1', 2, '云南省/楚雄彝族自治州/武定县', '武定县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532331', '532300', '0,530000,532300,', 532331, '0000530000,0000532300,0000532331,', '1', 2, '云南省/楚雄彝族自治州/禄丰县', '禄丰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532500', '530000', '0,530000,', 532500, '0000530000,0000532500,', '0', 1, '云南省/红河哈尼族彝族自治州', '红河哈尼族彝族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532501', '532500', '0,530000,532500,', 532501, '0000530000,0000532500,0000532501,', '1', 2, '云南省/红河哈尼族彝族自治州/个旧市', '个旧市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532502', '532500', '0,530000,532500,', 532502, '0000530000,0000532500,0000532502,', '1', 2, '云南省/红河哈尼族彝族自治州/开远市', '开远市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532503', '532500', '0,530000,532500,', 532503, '0000530000,0000532500,0000532503,', '1', 2, '云南省/红河哈尼族彝族自治州/蒙自市', '蒙自市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532504', '532500', '0,530000,532500,', 532504, '0000530000,0000532500,0000532504,', '1', 2, '云南省/红河哈尼族彝族自治州/弥勒市', '弥勒市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532523', '532500', '0,530000,532500,', 532523, '0000530000,0000532500,0000532523,', '1', 2, '云南省/红河哈尼族彝族自治州/屏边苗族自治县', '屏边苗族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532524', '532500', '0,530000,532500,', 532524, '0000530000,0000532500,0000532524,', '1', 2, '云南省/红河哈尼族彝族自治州/建水县', '建水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532525', '532500', '0,530000,532500,', 532525, '0000530000,0000532500,0000532525,', '1', 2, '云南省/红河哈尼族彝族自治州/石屏县', '石屏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532527', '532500', '0,530000,532500,', 532527, '0000530000,0000532500,0000532527,', '1', 2, '云南省/红河哈尼族彝族自治州/泸西县', '泸西县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532528', '532500', '0,530000,532500,', 532528, '0000530000,0000532500,0000532528,', '1', 2, '云南省/红河哈尼族彝族自治州/元阳县', '元阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532529', '532500', '0,530000,532500,', 532529, '0000530000,0000532500,0000532529,', '1', 2, '云南省/红河哈尼族彝族自治州/红河县', '红河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532530', '532500', '0,530000,532500,', 532530, '0000530000,0000532500,0000532530,', '1', 2, '云南省/红河哈尼族彝族自治州/金平苗族瑶族傣族自治县', '金平苗族瑶族傣族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532531', '532500', '0,530000,532500,', 532531, '0000530000,0000532500,0000532531,', '1', 2, '云南省/红河哈尼族彝族自治州/绿春县', '绿春县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532532', '532500', '0,530000,532500,', 532532, '0000530000,0000532500,0000532532,', '1', 2, '云南省/红河哈尼族彝族自治州/河口瑶族自治县', '河口瑶族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532600', '530000', '0,530000,', 532600, '0000530000,0000532600,', '0', 1, '云南省/文山壮族苗族自治州', '文山壮族苗族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532601', '532600', '0,530000,532600,', 532601, '0000530000,0000532600,0000532601,', '1', 2, '云南省/文山壮族苗族自治州/文山市', '文山市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532622', '532600', '0,530000,532600,', 532622, '0000530000,0000532600,0000532622,', '1', 2, '云南省/文山壮族苗族自治州/砚山县', '砚山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532623', '532600', '0,530000,532600,', 532623, '0000530000,0000532600,0000532623,', '1', 2, '云南省/文山壮族苗族自治州/西畴县', '西畴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532624', '532600', '0,530000,532600,', 532624, '0000530000,0000532600,0000532624,', '1', 2, '云南省/文山壮族苗族自治州/麻栗坡县', '麻栗坡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532625', '532600', '0,530000,532600,', 532625, '0000530000,0000532600,0000532625,', '1', 2, '云南省/文山壮族苗族自治州/马关县', '马关县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532626', '532600', '0,530000,532600,', 532626, '0000530000,0000532600,0000532626,', '1', 2, '云南省/文山壮族苗族自治州/丘北县', '丘北县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532627', '532600', '0,530000,532600,', 532627, '0000530000,0000532600,0000532627,', '1', 2, '云南省/文山壮族苗族自治州/广南县', '广南县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532628', '532600', '0,530000,532600,', 532628, '0000530000,0000532600,0000532628,', '1', 2, '云南省/文山壮族苗族自治州/富宁县', '富宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532800', '530000', '0,530000,', 532800, '0000530000,0000532800,', '0', 1, '云南省/西双版纳傣族自治州', '西双版纳傣族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532801', '532800', '0,530000,532800,', 532801, '0000530000,0000532800,0000532801,', '1', 2, '云南省/西双版纳傣族自治州/景洪市', '景洪市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532822', '532800', '0,530000,532800,', 532822, '0000530000,0000532800,0000532822,', '1', 2, '云南省/西双版纳傣族自治州/勐海县', '勐海县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532823', '532800', '0,530000,532800,', 532823, '0000530000,0000532800,0000532823,', '1', 2, '云南省/西双版纳傣族自治州/勐腊县', '勐腊县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532900', '530000', '0,530000,', 532900, '0000530000,0000532900,', '0', 1, '云南省/大理白族自治州', '大理白族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532901', '532900', '0,530000,532900,', 532901, '0000530000,0000532900,0000532901,', '1', 2, '云南省/大理白族自治州/大理市', '大理市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532922', '532900', '0,530000,532900,', 532922, '0000530000,0000532900,0000532922,', '1', 2, '云南省/大理白族自治州/漾濞彝族自治县', '漾濞彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532923', '532900', '0,530000,532900,', 532923, '0000530000,0000532900,0000532923,', '1', 2, '云南省/大理白族自治州/祥云县', '祥云县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532924', '532900', '0,530000,532900,', 532924, '0000530000,0000532900,0000532924,', '1', 2, '云南省/大理白族自治州/宾川县', '宾川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532925', '532900', '0,530000,532900,', 532925, '0000530000,0000532900,0000532925,', '1', 2, '云南省/大理白族自治州/弥渡县', '弥渡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532926', '532900', '0,530000,532900,', 532926, '0000530000,0000532900,0000532926,', '1', 2, '云南省/大理白族自治州/南涧彝族自治县', '南涧彝族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532927', '532900', '0,530000,532900,', 532927, '0000530000,0000532900,0000532927,', '1', 2, '云南省/大理白族自治州/巍山彝族回族自治县', '巍山彝族回族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532928', '532900', '0,530000,532900,', 532928, '0000530000,0000532900,0000532928,', '1', 2, '云南省/大理白族自治州/永平县', '永平县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532929', '532900', '0,530000,532900,', 532929, '0000530000,0000532900,0000532929,', '1', 2, '云南省/大理白族自治州/云龙县', '云龙县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532930', '532900', '0,530000,532900,', 532930, '0000530000,0000532900,0000532930,', '1', 2, '云南省/大理白族自治州/洱源县', '洱源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532931', '532900', '0,530000,532900,', 532931, '0000530000,0000532900,0000532931,', '1', 2, '云南省/大理白族自治州/剑川县', '剑川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('532932', '532900', '0,530000,532900,', 532932, '0000530000,0000532900,0000532932,', '1', 2, '云南省/大理白族自治州/鹤庆县', '鹤庆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533100', '530000', '0,530000,', 533100, '0000530000,0000533100,', '0', 1, '云南省/德宏傣族景颇族自治州', '德宏傣族景颇族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533102', '533100', '0,530000,533100,', 533102, '0000530000,0000533100,0000533102,', '1', 2, '云南省/德宏傣族景颇族自治州/瑞丽市', '瑞丽市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533103', '533100', '0,530000,533100,', 533103, '0000530000,0000533100,0000533103,', '1', 2, '云南省/德宏傣族景颇族自治州/芒市', '芒市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533122', '533100', '0,530000,533100,', 533122, '0000530000,0000533100,0000533122,', '1', 2, '云南省/德宏傣族景颇族自治州/梁河县', '梁河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533123', '533100', '0,530000,533100,', 533123, '0000530000,0000533100,0000533123,', '1', 2, '云南省/德宏傣族景颇族自治州/盈江县', '盈江县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533124', '533100', '0,530000,533100,', 533124, '0000530000,0000533100,0000533124,', '1', 2, '云南省/德宏傣族景颇族自治州/陇川县', '陇川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533300', '530000', '0,530000,', 533300, '0000530000,0000533300,', '0', 1, '云南省/怒江傈僳族自治州', '怒江傈僳族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533301', '533300', '0,530000,533300,', 533301, '0000530000,0000533300,0000533301,', '1', 2, '云南省/怒江傈僳族自治州/泸水市', '泸水市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533323', '533300', '0,530000,533300,', 533323, '0000530000,0000533300,0000533323,', '1', 2, '云南省/怒江傈僳族自治州/福贡县', '福贡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533324', '533300', '0,530000,533300,', 533324, '0000530000,0000533300,0000533324,', '1', 2, '云南省/怒江傈僳族自治州/贡山独龙族怒族自治县', '贡山独龙族怒族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533325', '533300', '0,530000,533300,', 533325, '0000530000,0000533300,0000533325,', '1', 2, '云南省/怒江傈僳族自治州/兰坪白族普米族自治县', '兰坪白族普米族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533400', '530000', '0,530000,', 533400, '0000530000,0000533400,', '0', 1, '云南省/迪庆藏族自治州', '迪庆藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533401', '533400', '0,530000,533400,', 533401, '0000530000,0000533400,0000533401,', '1', 2, '云南省/迪庆藏族自治州/香格里拉市', '香格里拉市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533422', '533400', '0,530000,533400,', 533422, '0000530000,0000533400,0000533422,', '1', 2, '云南省/迪庆藏族自治州/德钦县', '德钦县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('533423', '533400', '0,530000,533400,', 533423, '0000530000,0000533400,0000533423,', '1', 2, '云南省/迪庆藏族自治州/维西傈僳族自治县', '维西傈僳族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540000', '0', '0,', 540000, '0000540000,', '0', 0, '西藏自治区', '西藏自治区', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540100', '540000', '0,540000,', 540100, '0000540000,0000540100,', '0', 1, '西藏自治区/拉萨市', '拉萨市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540102', '540100', '0,540000,540100,', 540102, '0000540000,0000540100,0000540102,', '1', 2, '西藏自治区/拉萨市/城关区', '城关区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540103', '540100', '0,540000,540100,', 540103, '0000540000,0000540100,0000540103,', '1', 2, '西藏自治区/拉萨市/堆龙德庆区', '堆龙德庆区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540104', '540100', '0,540000,540100,', 540104, '0000540000,0000540100,0000540104,', '1', 2, '西藏自治区/拉萨市/达孜区', '达孜区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540121', '540100', '0,540000,540100,', 540121, '0000540000,0000540100,0000540121,', '1', 2, '西藏自治区/拉萨市/林周县', '林周县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540122', '540100', '0,540000,540100,', 540122, '0000540000,0000540100,0000540122,', '1', 2, '西藏自治区/拉萨市/当雄县', '当雄县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540123', '540100', '0,540000,540100,', 540123, '0000540000,0000540100,0000540123,', '1', 2, '西藏自治区/拉萨市/尼木县', '尼木县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540124', '540100', '0,540000,540100,', 540124, '0000540000,0000540100,0000540124,', '1', 2, '西藏自治区/拉萨市/曲水县', '曲水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540127', '540100', '0,540000,540100,', 540127, '0000540000,0000540100,0000540127,', '1', 2, '西藏自治区/拉萨市/墨竹工卡县', '墨竹工卡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540200', '540000', '0,540000,', 540200, '0000540000,0000540200,', '0', 1, '西藏自治区/日喀则市', '日喀则市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540202', '540200', '0,540000,540200,', 540202, '0000540000,0000540200,0000540202,', '1', 2, '西藏自治区/日喀则市/桑珠孜区', '桑珠孜区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540221', '540200', '0,540000,540200,', 540221, '0000540000,0000540200,0000540221,', '1', 2, '西藏自治区/日喀则市/南木林县', '南木林县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540222', '540200', '0,540000,540200,', 540222, '0000540000,0000540200,0000540222,', '1', 2, '西藏自治区/日喀则市/江孜县', '江孜县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540223', '540200', '0,540000,540200,', 540223, '0000540000,0000540200,0000540223,', '1', 2, '西藏自治区/日喀则市/定日县', '定日县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540224', '540200', '0,540000,540200,', 540224, '0000540000,0000540200,0000540224,', '1', 2, '西藏自治区/日喀则市/萨迦县', '萨迦县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540225', '540200', '0,540000,540200,', 540225, '0000540000,0000540200,0000540225,', '1', 2, '西藏自治区/日喀则市/拉孜县', '拉孜县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540226', '540200', '0,540000,540200,', 540226, '0000540000,0000540200,0000540226,', '1', 2, '西藏自治区/日喀则市/昂仁县', '昂仁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540227', '540200', '0,540000,540200,', 540227, '0000540000,0000540200,0000540227,', '1', 2, '西藏自治区/日喀则市/谢通门县', '谢通门县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540228', '540200', '0,540000,540200,', 540228, '0000540000,0000540200,0000540228,', '1', 2, '西藏自治区/日喀则市/白朗县', '白朗县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540229', '540200', '0,540000,540200,', 540229, '0000540000,0000540200,0000540229,', '1', 2, '西藏自治区/日喀则市/仁布县', '仁布县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540230', '540200', '0,540000,540200,', 540230, '0000540000,0000540200,0000540230,', '1', 2, '西藏自治区/日喀则市/康马县', '康马县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540231', '540200', '0,540000,540200,', 540231, '0000540000,0000540200,0000540231,', '1', 2, '西藏自治区/日喀则市/定结县', '定结县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540232', '540200', '0,540000,540200,', 540232, '0000540000,0000540200,0000540232,', '1', 2, '西藏自治区/日喀则市/仲巴县', '仲巴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540233', '540200', '0,540000,540200,', 540233, '0000540000,0000540200,0000540233,', '1', 2, '西藏自治区/日喀则市/亚东县', '亚东县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540234', '540200', '0,540000,540200,', 540234, '0000540000,0000540200,0000540234,', '1', 2, '西藏自治区/日喀则市/吉隆县', '吉隆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540235', '540200', '0,540000,540200,', 540235, '0000540000,0000540200,0000540235,', '1', 2, '西藏自治区/日喀则市/聂拉木县', '聂拉木县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540236', '540200', '0,540000,540200,', 540236, '0000540000,0000540200,0000540236,', '1', 2, '西藏自治区/日喀则市/萨嘎县', '萨嘎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540237', '540200', '0,540000,540200,', 540237, '0000540000,0000540200,0000540237,', '1', 2, '西藏自治区/日喀则市/岗巴县', '岗巴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540300', '540000', '0,540000,', 540300, '0000540000,0000540300,', '0', 1, '西藏自治区/昌都市', '昌都市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540302', '540300', '0,540000,540300,', 540302, '0000540000,0000540300,0000540302,', '1', 2, '西藏自治区/昌都市/卡若区', '卡若区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540321', '540300', '0,540000,540300,', 540321, '0000540000,0000540300,0000540321,', '1', 2, '西藏自治区/昌都市/江达县', '江达县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540322', '540300', '0,540000,540300,', 540322, '0000540000,0000540300,0000540322,', '1', 2, '西藏自治区/昌都市/贡觉县', '贡觉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540323', '540300', '0,540000,540300,', 540323, '0000540000,0000540300,0000540323,', '1', 2, '西藏自治区/昌都市/类乌齐县', '类乌齐县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540324', '540300', '0,540000,540300,', 540324, '0000540000,0000540300,0000540324,', '1', 2, '西藏自治区/昌都市/丁青县', '丁青县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540325', '540300', '0,540000,540300,', 540325, '0000540000,0000540300,0000540325,', '1', 2, '西藏自治区/昌都市/察雅县', '察雅县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540326', '540300', '0,540000,540300,', 540326, '0000540000,0000540300,0000540326,', '1', 2, '西藏自治区/昌都市/八宿县', '八宿县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540327', '540300', '0,540000,540300,', 540327, '0000540000,0000540300,0000540327,', '1', 2, '西藏自治区/昌都市/左贡县', '左贡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540328', '540300', '0,540000,540300,', 540328, '0000540000,0000540300,0000540328,', '1', 2, '西藏自治区/昌都市/芒康县', '芒康县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540329', '540300', '0,540000,540300,', 540329, '0000540000,0000540300,0000540329,', '1', 2, '西藏自治区/昌都市/洛隆县', '洛隆县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540330', '540300', '0,540000,540300,', 540330, '0000540000,0000540300,0000540330,', '1', 2, '西藏自治区/昌都市/边坝县', '边坝县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540400', '540000', '0,540000,', 540400, '0000540000,0000540400,', '0', 1, '西藏自治区/林芝市', '林芝市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540402', '540400', '0,540000,540400,', 540402, '0000540000,0000540400,0000540402,', '1', 2, '西藏自治区/林芝市/巴宜区', '巴宜区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540421', '540400', '0,540000,540400,', 540421, '0000540000,0000540400,0000540421,', '1', 2, '西藏自治区/林芝市/工布江达县', '工布江达县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540422', '540400', '0,540000,540400,', 540422, '0000540000,0000540400,0000540422,', '1', 2, '西藏自治区/林芝市/米林县', '米林县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540423', '540400', '0,540000,540400,', 540423, '0000540000,0000540400,0000540423,', '1', 2, '西藏自治区/林芝市/墨脱县', '墨脱县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540424', '540400', '0,540000,540400,', 540424, '0000540000,0000540400,0000540424,', '1', 2, '西藏自治区/林芝市/波密县', '波密县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540425', '540400', '0,540000,540400,', 540425, '0000540000,0000540400,0000540425,', '1', 2, '西藏自治区/林芝市/察隅县', '察隅县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540426', '540400', '0,540000,540400,', 540426, '0000540000,0000540400,0000540426,', '1', 2, '西藏自治区/林芝市/朗县', '朗县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540500', '540000', '0,540000,', 540500, '0000540000,0000540500,', '0', 1, '西藏自治区/山南市', '山南市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540502', '540500', '0,540000,540500,', 540502, '0000540000,0000540500,0000540502,', '1', 2, '西藏自治区/山南市/乃东区', '乃东区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540521', '540500', '0,540000,540500,', 540521, '0000540000,0000540500,0000540521,', '1', 2, '西藏自治区/山南市/扎囊县', '扎囊县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540522', '540500', '0,540000,540500,', 540522, '0000540000,0000540500,0000540522,', '1', 2, '西藏自治区/山南市/贡嘎县', '贡嘎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540523', '540500', '0,540000,540500,', 540523, '0000540000,0000540500,0000540523,', '1', 2, '西藏自治区/山南市/桑日县', '桑日县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540524', '540500', '0,540000,540500,', 540524, '0000540000,0000540500,0000540524,', '1', 2, '西藏自治区/山南市/琼结县', '琼结县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540525', '540500', '0,540000,540500,', 540525, '0000540000,0000540500,0000540525,', '1', 2, '西藏自治区/山南市/曲松县', '曲松县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540526', '540500', '0,540000,540500,', 540526, '0000540000,0000540500,0000540526,', '1', 2, '西藏自治区/山南市/措美县', '措美县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540527', '540500', '0,540000,540500,', 540527, '0000540000,0000540500,0000540527,', '1', 2, '西藏自治区/山南市/洛扎县', '洛扎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540528', '540500', '0,540000,540500,', 540528, '0000540000,0000540500,0000540528,', '1', 2, '西藏自治区/山南市/加查县', '加查县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540529', '540500', '0,540000,540500,', 540529, '0000540000,0000540500,0000540529,', '1', 2, '西藏自治区/山南市/隆子县', '隆子县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540530', '540500', '0,540000,540500,', 540530, '0000540000,0000540500,0000540530,', '1', 2, '西藏自治区/山南市/错那县', '错那县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540531', '540500', '0,540000,540500,', 540531, '0000540000,0000540500,0000540531,', '1', 2, '西藏自治区/山南市/浪卡子县', '浪卡子县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540600', '540000', '0,540000,', 540600, '0000540000,0000540600,', '0', 1, '西藏自治区/那曲市', '那曲市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540602', '540600', '0,540000,540600,', 540602, '0000540000,0000540600,0000540602,', '1', 2, '西藏自治区/那曲市/色尼区', '色尼区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540621', '540600', '0,540000,540600,', 540621, '0000540000,0000540600,0000540621,', '1', 2, '西藏自治区/那曲市/嘉黎县', '嘉黎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540622', '540600', '0,540000,540600,', 540622, '0000540000,0000540600,0000540622,', '1', 2, '西藏自治区/那曲市/比如县', '比如县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540623', '540600', '0,540000,540600,', 540623, '0000540000,0000540600,0000540623,', '1', 2, '西藏自治区/那曲市/聂荣县', '聂荣县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540624', '540600', '0,540000,540600,', 540624, '0000540000,0000540600,0000540624,', '1', 2, '西藏自治区/那曲市/安多县', '安多县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540625', '540600', '0,540000,540600,', 540625, '0000540000,0000540600,0000540625,', '1', 2, '西藏自治区/那曲市/申扎县', '申扎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540626', '540600', '0,540000,540600,', 540626, '0000540000,0000540600,0000540626,', '1', 2, '西藏自治区/那曲市/索县', '索县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540627', '540600', '0,540000,540600,', 540627, '0000540000,0000540600,0000540627,', '1', 2, '西藏自治区/那曲市/班戈县', '班戈县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540628', '540600', '0,540000,540600,', 540628, '0000540000,0000540600,0000540628,', '1', 2, '西藏自治区/那曲市/巴青县', '巴青县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540629', '540600', '0,540000,540600,', 540629, '0000540000,0000540600,0000540629,', '1', 2, '西藏自治区/那曲市/尼玛县', '尼玛县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('540630', '540600', '0,540000,540600,', 540630, '0000540000,0000540600,0000540630,', '1', 2, '西藏自治区/那曲市/双湖县', '双湖县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542500', '540000', '0,540000,', 542500, '0000540000,0000542500,', '0', 1, '西藏自治区/阿里地区', '阿里地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542521', '542500', '0,540000,542500,', 542521, '0000540000,0000542500,0000542521,', '1', 2, '西藏自治区/阿里地区/普兰县', '普兰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542522', '542500', '0,540000,542500,', 542522, '0000540000,0000542500,0000542522,', '1', 2, '西藏自治区/阿里地区/札达县', '札达县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542523', '542500', '0,540000,542500,', 542523, '0000540000,0000542500,0000542523,', '1', 2, '西藏自治区/阿里地区/噶尔县', '噶尔县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542524', '542500', '0,540000,542500,', 542524, '0000540000,0000542500,0000542524,', '1', 2, '西藏自治区/阿里地区/日土县', '日土县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542525', '542500', '0,540000,542500,', 542525, '0000540000,0000542500,0000542525,', '1', 2, '西藏自治区/阿里地区/革吉县', '革吉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542526', '542500', '0,540000,542500,', 542526, '0000540000,0000542500,0000542526,', '1', 2, '西藏自治区/阿里地区/改则县', '改则县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('542527', '542500', '0,540000,542500,', 542527, '0000540000,0000542500,0000542527,', '1', 2, '西藏自治区/阿里地区/措勤县', '措勤县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610000', '0', '0,', 610000, '0000610000,', '0', 0, '陕西省', '陕西省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610100', '610000', '0,610000,', 610100, '0000610000,0000610100,', '0', 1, '陕西省/西安市', '西安市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610102', '610100', '0,610000,610100,', 610102, '0000610000,0000610100,0000610102,', '1', 2, '陕西省/西安市/新城区', '新城区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610103', '610100', '0,610000,610100,', 610103, '0000610000,0000610100,0000610103,', '1', 2, '陕西省/西安市/碑林区', '碑林区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610104', '610100', '0,610000,610100,', 610104, '0000610000,0000610100,0000610104,', '1', 2, '陕西省/西安市/莲湖区', '莲湖区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610111', '610100', '0,610000,610100,', 610111, '0000610000,0000610100,0000610111,', '1', 2, '陕西省/西安市/灞桥区', '灞桥区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610112', '610100', '0,610000,610100,', 610112, '0000610000,0000610100,0000610112,', '1', 2, '陕西省/西安市/未央区', '未央区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610113', '610100', '0,610000,610100,', 610113, '0000610000,0000610100,0000610113,', '1', 2, '陕西省/西安市/雁塔区', '雁塔区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610114', '610100', '0,610000,610100,', 610114, '0000610000,0000610100,0000610114,', '1', 2, '陕西省/西安市/阎良区', '阎良区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610115', '610100', '0,610000,610100,', 610115, '0000610000,0000610100,0000610115,', '1', 2, '陕西省/西安市/临潼区', '临潼区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610116', '610100', '0,610000,610100,', 610116, '0000610000,0000610100,0000610116,', '1', 2, '陕西省/西安市/长安区', '长安区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610117', '610100', '0,610000,610100,', 610117, '0000610000,0000610100,0000610117,', '1', 2, '陕西省/西安市/高陵区', '高陵区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610118', '610100', '0,610000,610100,', 610118, '0000610000,0000610100,0000610118,', '1', 2, '陕西省/西安市/鄠邑区', '鄠邑区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610122', '610100', '0,610000,610100,', 610122, '0000610000,0000610100,0000610122,', '1', 2, '陕西省/西安市/蓝田县', '蓝田县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610124', '610100', '0,610000,610100,', 610124, '0000610000,0000610100,0000610124,', '1', 2, '陕西省/西安市/周至县', '周至县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610200', '610000', '0,610000,', 610200, '0000610000,0000610200,', '0', 1, '陕西省/铜川市', '铜川市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610202', '610200', '0,610000,610200,', 610202, '0000610000,0000610200,0000610202,', '1', 2, '陕西省/铜川市/王益区', '王益区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610203', '610200', '0,610000,610200,', 610203, '0000610000,0000610200,0000610203,', '1', 2, '陕西省/铜川市/印台区', '印台区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610204', '610200', '0,610000,610200,', 610204, '0000610000,0000610200,0000610204,', '1', 2, '陕西省/铜川市/耀州区', '耀州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610222', '610200', '0,610000,610200,', 610222, '0000610000,0000610200,0000610222,', '1', 2, '陕西省/铜川市/宜君县', '宜君县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610300', '610000', '0,610000,', 610300, '0000610000,0000610300,', '0', 1, '陕西省/宝鸡市', '宝鸡市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610302', '610300', '0,610000,610300,', 610302, '0000610000,0000610300,0000610302,', '1', 2, '陕西省/宝鸡市/渭滨区', '渭滨区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610303', '610300', '0,610000,610300,', 610303, '0000610000,0000610300,0000610303,', '1', 2, '陕西省/宝鸡市/金台区', '金台区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610304', '610300', '0,610000,610300,', 610304, '0000610000,0000610300,0000610304,', '1', 2, '陕西省/宝鸡市/陈仓区', '陈仓区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610322', '610300', '0,610000,610300,', 610322, '0000610000,0000610300,0000610322,', '1', 2, '陕西省/宝鸡市/凤翔县', '凤翔县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610323', '610300', '0,610000,610300,', 610323, '0000610000,0000610300,0000610323,', '1', 2, '陕西省/宝鸡市/岐山县', '岐山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610324', '610300', '0,610000,610300,', 610324, '0000610000,0000610300,0000610324,', '1', 2, '陕西省/宝鸡市/扶风县', '扶风县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610326', '610300', '0,610000,610300,', 610326, '0000610000,0000610300,0000610326,', '1', 2, '陕西省/宝鸡市/眉县', '眉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610327', '610300', '0,610000,610300,', 610327, '0000610000,0000610300,0000610327,', '1', 2, '陕西省/宝鸡市/陇县', '陇县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610328', '610300', '0,610000,610300,', 610328, '0000610000,0000610300,0000610328,', '1', 2, '陕西省/宝鸡市/千阳县', '千阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610329', '610300', '0,610000,610300,', 610329, '0000610000,0000610300,0000610329,', '1', 2, '陕西省/宝鸡市/麟游县', '麟游县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610330', '610300', '0,610000,610300,', 610330, '0000610000,0000610300,0000610330,', '1', 2, '陕西省/宝鸡市/凤县', '凤县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610331', '610300', '0,610000,610300,', 610331, '0000610000,0000610300,0000610331,', '1', 2, '陕西省/宝鸡市/太白县', '太白县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610400', '610000', '0,610000,', 610400, '0000610000,0000610400,', '0', 1, '陕西省/咸阳市', '咸阳市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610402', '610400', '0,610000,610400,', 610402, '0000610000,0000610400,0000610402,', '1', 2, '陕西省/咸阳市/秦都区', '秦都区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610403', '610400', '0,610000,610400,', 610403, '0000610000,0000610400,0000610403,', '1', 2, '陕西省/咸阳市/杨陵区', '杨陵区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610404', '610400', '0,610000,610400,', 610404, '0000610000,0000610400,0000610404,', '1', 2, '陕西省/咸阳市/渭城区', '渭城区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610422', '610400', '0,610000,610400,', 610422, '0000610000,0000610400,0000610422,', '1', 2, '陕西省/咸阳市/三原县', '三原县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610423', '610400', '0,610000,610400,', 610423, '0000610000,0000610400,0000610423,', '1', 2, '陕西省/咸阳市/泾阳县', '泾阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610424', '610400', '0,610000,610400,', 610424, '0000610000,0000610400,0000610424,', '1', 2, '陕西省/咸阳市/乾县', '乾县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610425', '610400', '0,610000,610400,', 610425, '0000610000,0000610400,0000610425,', '1', 2, '陕西省/咸阳市/礼泉县', '礼泉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610426', '610400', '0,610000,610400,', 610426, '0000610000,0000610400,0000610426,', '1', 2, '陕西省/咸阳市/永寿县', '永寿县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610428', '610400', '0,610000,610400,', 610428, '0000610000,0000610400,0000610428,', '1', 2, '陕西省/咸阳市/长武县', '长武县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610429', '610400', '0,610000,610400,', 610429, '0000610000,0000610400,0000610429,', '1', 2, '陕西省/咸阳市/旬邑县', '旬邑县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610430', '610400', '0,610000,610400,', 610430, '0000610000,0000610400,0000610430,', '1', 2, '陕西省/咸阳市/淳化县', '淳化县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610431', '610400', '0,610000,610400,', 610431, '0000610000,0000610400,0000610431,', '1', 2, '陕西省/咸阳市/武功县', '武功县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610481', '610400', '0,610000,610400,', 610481, '0000610000,0000610400,0000610481,', '1', 2, '陕西省/咸阳市/兴平市', '兴平市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610482', '610400', '0,610000,610400,', 610482, '0000610000,0000610400,0000610482,', '1', 2, '陕西省/咸阳市/彬州市', '彬州市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610500', '610000', '0,610000,', 610500, '0000610000,0000610500,', '0', 1, '陕西省/渭南市', '渭南市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610502', '610500', '0,610000,610500,', 610502, '0000610000,0000610500,0000610502,', '1', 2, '陕西省/渭南市/临渭区', '临渭区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610503', '610500', '0,610000,610500,', 610503, '0000610000,0000610500,0000610503,', '1', 2, '陕西省/渭南市/华州区', '华州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610522', '610500', '0,610000,610500,', 610522, '0000610000,0000610500,0000610522,', '1', 2, '陕西省/渭南市/潼关县', '潼关县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610523', '610500', '0,610000,610500,', 610523, '0000610000,0000610500,0000610523,', '1', 2, '陕西省/渭南市/大荔县', '大荔县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610524', '610500', '0,610000,610500,', 610524, '0000610000,0000610500,0000610524,', '1', 2, '陕西省/渭南市/合阳县', '合阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610525', '610500', '0,610000,610500,', 610525, '0000610000,0000610500,0000610525,', '1', 2, '陕西省/渭南市/澄城县', '澄城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610526', '610500', '0,610000,610500,', 610526, '0000610000,0000610500,0000610526,', '1', 2, '陕西省/渭南市/蒲城县', '蒲城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610527', '610500', '0,610000,610500,', 610527, '0000610000,0000610500,0000610527,', '1', 2, '陕西省/渭南市/白水县', '白水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610528', '610500', '0,610000,610500,', 610528, '0000610000,0000610500,0000610528,', '1', 2, '陕西省/渭南市/富平县', '富平县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610581', '610500', '0,610000,610500,', 610581, '0000610000,0000610500,0000610581,', '1', 2, '陕西省/渭南市/韩城市', '韩城市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610582', '610500', '0,610000,610500,', 610582, '0000610000,0000610500,0000610582,', '1', 2, '陕西省/渭南市/华阴市', '华阴市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610600', '610000', '0,610000,', 610600, '0000610000,0000610600,', '0', 1, '陕西省/延安市', '延安市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610602', '610600', '0,610000,610600,', 610602, '0000610000,0000610600,0000610602,', '1', 2, '陕西省/延安市/宝塔区', '宝塔区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610603', '610600', '0,610000,610600,', 610603, '0000610000,0000610600,0000610603,', '1', 2, '陕西省/延安市/安塞区', '安塞区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610621', '610600', '0,610000,610600,', 610621, '0000610000,0000610600,0000610621,', '1', 2, '陕西省/延安市/延长县', '延长县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610622', '610600', '0,610000,610600,', 610622, '0000610000,0000610600,0000610622,', '1', 2, '陕西省/延安市/延川县', '延川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610625', '610600', '0,610000,610600,', 610625, '0000610000,0000610600,0000610625,', '1', 2, '陕西省/延安市/志丹县', '志丹县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610626', '610600', '0,610000,610600,', 610626, '0000610000,0000610600,0000610626,', '1', 2, '陕西省/延安市/吴起县', '吴起县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610627', '610600', '0,610000,610600,', 610627, '0000610000,0000610600,0000610627,', '1', 2, '陕西省/延安市/甘泉县', '甘泉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610628', '610600', '0,610000,610600,', 610628, '0000610000,0000610600,0000610628,', '1', 2, '陕西省/延安市/富县', '富县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610629', '610600', '0,610000,610600,', 610629, '0000610000,0000610600,0000610629,', '1', 2, '陕西省/延安市/洛川县', '洛川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610630', '610600', '0,610000,610600,', 610630, '0000610000,0000610600,0000610630,', '1', 2, '陕西省/延安市/宜川县', '宜川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610631', '610600', '0,610000,610600,', 610631, '0000610000,0000610600,0000610631,', '1', 2, '陕西省/延安市/黄龙县', '黄龙县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610632', '610600', '0,610000,610600,', 610632, '0000610000,0000610600,0000610632,', '1', 2, '陕西省/延安市/黄陵县', '黄陵县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610681', '610600', '0,610000,610600,', 610681, '0000610000,0000610600,0000610681,', '1', 2, '陕西省/延安市/子长市', '子长市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610700', '610000', '0,610000,', 610700, '0000610000,0000610700,', '0', 1, '陕西省/汉中市', '汉中市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610702', '610700', '0,610000,610700,', 610702, '0000610000,0000610700,0000610702,', '1', 2, '陕西省/汉中市/汉台区', '汉台区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610703', '610700', '0,610000,610700,', 610703, '0000610000,0000610700,0000610703,', '1', 2, '陕西省/汉中市/南郑区', '南郑区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610722', '610700', '0,610000,610700,', 610722, '0000610000,0000610700,0000610722,', '1', 2, '陕西省/汉中市/城固县', '城固县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610723', '610700', '0,610000,610700,', 610723, '0000610000,0000610700,0000610723,', '1', 2, '陕西省/汉中市/洋县', '洋县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610724', '610700', '0,610000,610700,', 610724, '0000610000,0000610700,0000610724,', '1', 2, '陕西省/汉中市/西乡县', '西乡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610725', '610700', '0,610000,610700,', 610725, '0000610000,0000610700,0000610725,', '1', 2, '陕西省/汉中市/勉县', '勉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610726', '610700', '0,610000,610700,', 610726, '0000610000,0000610700,0000610726,', '1', 2, '陕西省/汉中市/宁强县', '宁强县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610727', '610700', '0,610000,610700,', 610727, '0000610000,0000610700,0000610727,', '1', 2, '陕西省/汉中市/略阳县', '略阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610728', '610700', '0,610000,610700,', 610728, '0000610000,0000610700,0000610728,', '1', 2, '陕西省/汉中市/镇巴县', '镇巴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610729', '610700', '0,610000,610700,', 610729, '0000610000,0000610700,0000610729,', '1', 2, '陕西省/汉中市/留坝县', '留坝县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610730', '610700', '0,610000,610700,', 610730, '0000610000,0000610700,0000610730,', '1', 2, '陕西省/汉中市/佛坪县', '佛坪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610800', '610000', '0,610000,', 610800, '0000610000,0000610800,', '0', 1, '陕西省/榆林市', '榆林市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610802', '610800', '0,610000,610800,', 610802, '0000610000,0000610800,0000610802,', '1', 2, '陕西省/榆林市/榆阳区', '榆阳区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610803', '610800', '0,610000,610800,', 610803, '0000610000,0000610800,0000610803,', '1', 2, '陕西省/榆林市/横山区', '横山区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610822', '610800', '0,610000,610800,', 610822, '0000610000,0000610800,0000610822,', '1', 2, '陕西省/榆林市/府谷县', '府谷县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610824', '610800', '0,610000,610800,', 610824, '0000610000,0000610800,0000610824,', '1', 2, '陕西省/榆林市/靖边县', '靖边县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610825', '610800', '0,610000,610800,', 610825, '0000610000,0000610800,0000610825,', '1', 2, '陕西省/榆林市/定边县', '定边县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610826', '610800', '0,610000,610800,', 610826, '0000610000,0000610800,0000610826,', '1', 2, '陕西省/榆林市/绥德县', '绥德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610827', '610800', '0,610000,610800,', 610827, '0000610000,0000610800,0000610827,', '1', 2, '陕西省/榆林市/米脂县', '米脂县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610828', '610800', '0,610000,610800,', 610828, '0000610000,0000610800,0000610828,', '1', 2, '陕西省/榆林市/佳县', '佳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610829', '610800', '0,610000,610800,', 610829, '0000610000,0000610800,0000610829,', '1', 2, '陕西省/榆林市/吴堡县', '吴堡县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610830', '610800', '0,610000,610800,', 610830, '0000610000,0000610800,0000610830,', '1', 2, '陕西省/榆林市/清涧县', '清涧县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610831', '610800', '0,610000,610800,', 610831, '0000610000,0000610800,0000610831,', '1', 2, '陕西省/榆林市/子洲县', '子洲县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610881', '610800', '0,610000,610800,', 610881, '0000610000,0000610800,0000610881,', '1', 2, '陕西省/榆林市/神木市', '神木市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610900', '610000', '0,610000,', 610900, '0000610000,0000610900,', '0', 1, '陕西省/安康市', '安康市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610902', '610900', '0,610000,610900,', 610902, '0000610000,0000610900,0000610902,', '1', 2, '陕西省/安康市/汉滨区', '汉滨区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610921', '610900', '0,610000,610900,', 610921, '0000610000,0000610900,0000610921,', '1', 2, '陕西省/安康市/汉阴县', '汉阴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610922', '610900', '0,610000,610900,', 610922, '0000610000,0000610900,0000610922,', '1', 2, '陕西省/安康市/石泉县', '石泉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610923', '610900', '0,610000,610900,', 610923, '0000610000,0000610900,0000610923,', '1', 2, '陕西省/安康市/宁陕县', '宁陕县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610924', '610900', '0,610000,610900,', 610924, '0000610000,0000610900,0000610924,', '1', 2, '陕西省/安康市/紫阳县', '紫阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610925', '610900', '0,610000,610900,', 610925, '0000610000,0000610900,0000610925,', '1', 2, '陕西省/安康市/岚皋县', '岚皋县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610926', '610900', '0,610000,610900,', 610926, '0000610000,0000610900,0000610926,', '1', 2, '陕西省/安康市/平利县', '平利县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610927', '610900', '0,610000,610900,', 610927, '0000610000,0000610900,0000610927,', '1', 2, '陕西省/安康市/镇坪县', '镇坪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610928', '610900', '0,610000,610900,', 610928, '0000610000,0000610900,0000610928,', '1', 2, '陕西省/安康市/旬阳县', '旬阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('610929', '610900', '0,610000,610900,', 610929, '0000610000,0000610900,0000610929,', '1', 2, '陕西省/安康市/白河县', '白河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611000', '610000', '0,610000,', 611000, '0000610000,0000611000,', '0', 1, '陕西省/商洛市', '商洛市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611002', '611000', '0,610000,611000,', 611002, '0000610000,0000611000,0000611002,', '1', 2, '陕西省/商洛市/商州区', '商州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611021', '611000', '0,610000,611000,', 611021, '0000610000,0000611000,0000611021,', '1', 2, '陕西省/商洛市/洛南县', '洛南县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611022', '611000', '0,610000,611000,', 611022, '0000610000,0000611000,0000611022,', '1', 2, '陕西省/商洛市/丹凤县', '丹凤县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611023', '611000', '0,610000,611000,', 611023, '0000610000,0000611000,0000611023,', '1', 2, '陕西省/商洛市/商南县', '商南县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611024', '611000', '0,610000,611000,', 611024, '0000610000,0000611000,0000611024,', '1', 2, '陕西省/商洛市/山阳县', '山阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611025', '611000', '0,610000,611000,', 611025, '0000610000,0000611000,0000611025,', '1', 2, '陕西省/商洛市/镇安县', '镇安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('611026', '611000', '0,610000,611000,', 611026, '0000610000,0000611000,0000611026,', '1', 2, '陕西省/商洛市/柞水县', '柞水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620000', '0', '0,', 620000, '0000620000,', '0', 0, '甘肃省', '甘肃省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620100', '620000', '0,620000,', 620100, '0000620000,0000620100,', '0', 1, '甘肃省/兰州市', '兰州市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620102', '620100', '0,620000,620100,', 620102, '0000620000,0000620100,0000620102,', '1', 2, '甘肃省/兰州市/城关区', '城关区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620103', '620100', '0,620000,620100,', 620103, '0000620000,0000620100,0000620103,', '1', 2, '甘肃省/兰州市/七里河区', '七里河区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620104', '620100', '0,620000,620100,', 620104, '0000620000,0000620100,0000620104,', '1', 2, '甘肃省/兰州市/西固区', '西固区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620105', '620100', '0,620000,620100,', 620105, '0000620000,0000620100,0000620105,', '1', 2, '甘肃省/兰州市/安宁区', '安宁区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620111', '620100', '0,620000,620100,', 620111, '0000620000,0000620100,0000620111,', '1', 2, '甘肃省/兰州市/红古区', '红古区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620121', '620100', '0,620000,620100,', 620121, '0000620000,0000620100,0000620121,', '1', 2, '甘肃省/兰州市/永登县', '永登县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620122', '620100', '0,620000,620100,', 620122, '0000620000,0000620100,0000620122,', '1', 2, '甘肃省/兰州市/皋兰县', '皋兰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620123', '620100', '0,620000,620100,', 620123, '0000620000,0000620100,0000620123,', '1', 2, '甘肃省/兰州市/榆中县', '榆中县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620200', '620000', '0,620000,', 620200, '0000620000,0000620200,', '1', 1, '甘肃省/嘉峪关市', '嘉峪关市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620300', '620000', '0,620000,', 620300, '0000620000,0000620300,', '0', 1, '甘肃省/金昌市', '金昌市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620302', '620300', '0,620000,620300,', 620302, '0000620000,0000620300,0000620302,', '1', 2, '甘肃省/金昌市/金川区', '金川区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620321', '620300', '0,620000,620300,', 620321, '0000620000,0000620300,0000620321,', '1', 2, '甘肃省/金昌市/永昌县', '永昌县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620400', '620000', '0,620000,', 620400, '0000620000,0000620400,', '0', 1, '甘肃省/白银市', '白银市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620402', '620400', '0,620000,620400,', 620402, '0000620000,0000620400,0000620402,', '1', 2, '甘肃省/白银市/白银区', '白银区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620403', '620400', '0,620000,620400,', 620403, '0000620000,0000620400,0000620403,', '1', 2, '甘肃省/白银市/平川区', '平川区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620421', '620400', '0,620000,620400,', 620421, '0000620000,0000620400,0000620421,', '1', 2, '甘肃省/白银市/靖远县', '靖远县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620422', '620400', '0,620000,620400,', 620422, '0000620000,0000620400,0000620422,', '1', 2, '甘肃省/白银市/会宁县', '会宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620423', '620400', '0,620000,620400,', 620423, '0000620000,0000620400,0000620423,', '1', 2, '甘肃省/白银市/景泰县', '景泰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620500', '620000', '0,620000,', 620500, '0000620000,0000620500,', '0', 1, '甘肃省/天水市', '天水市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620502', '620500', '0,620000,620500,', 620502, '0000620000,0000620500,0000620502,', '1', 2, '甘肃省/天水市/秦州区', '秦州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620503', '620500', '0,620000,620500,', 620503, '0000620000,0000620500,0000620503,', '1', 2, '甘肃省/天水市/麦积区', '麦积区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620521', '620500', '0,620000,620500,', 620521, '0000620000,0000620500,0000620521,', '1', 2, '甘肃省/天水市/清水县', '清水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620522', '620500', '0,620000,620500,', 620522, '0000620000,0000620500,0000620522,', '1', 2, '甘肃省/天水市/秦安县', '秦安县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620523', '620500', '0,620000,620500,', 620523, '0000620000,0000620500,0000620523,', '1', 2, '甘肃省/天水市/甘谷县', '甘谷县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620524', '620500', '0,620000,620500,', 620524, '0000620000,0000620500,0000620524,', '1', 2, '甘肃省/天水市/武山县', '武山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620525', '620500', '0,620000,620500,', 620525, '0000620000,0000620500,0000620525,', '1', 2, '甘肃省/天水市/张家川回族自治县', '张家川回族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620600', '620000', '0,620000,', 620600, '0000620000,0000620600,', '0', 1, '甘肃省/武威市', '武威市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620602', '620600', '0,620000,620600,', 620602, '0000620000,0000620600,0000620602,', '1', 2, '甘肃省/武威市/凉州区', '凉州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620621', '620600', '0,620000,620600,', 620621, '0000620000,0000620600,0000620621,', '1', 2, '甘肃省/武威市/民勤县', '民勤县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620622', '620600', '0,620000,620600,', 620622, '0000620000,0000620600,0000620622,', '1', 2, '甘肃省/武威市/古浪县', '古浪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620623', '620600', '0,620000,620600,', 620623, '0000620000,0000620600,0000620623,', '1', 2, '甘肃省/武威市/天祝藏族自治县', '天祝藏族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620700', '620000', '0,620000,', 620700, '0000620000,0000620700,', '0', 1, '甘肃省/张掖市', '张掖市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620702', '620700', '0,620000,620700,', 620702, '0000620000,0000620700,0000620702,', '1', 2, '甘肃省/张掖市/甘州区', '甘州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620721', '620700', '0,620000,620700,', 620721, '0000620000,0000620700,0000620721,', '1', 2, '甘肃省/张掖市/肃南裕固族自治县', '肃南裕固族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620722', '620700', '0,620000,620700,', 620722, '0000620000,0000620700,0000620722,', '1', 2, '甘肃省/张掖市/民乐县', '民乐县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620723', '620700', '0,620000,620700,', 620723, '0000620000,0000620700,0000620723,', '1', 2, '甘肃省/张掖市/临泽县', '临泽县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620724', '620700', '0,620000,620700,', 620724, '0000620000,0000620700,0000620724,', '1', 2, '甘肃省/张掖市/高台县', '高台县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620725', '620700', '0,620000,620700,', 620725, '0000620000,0000620700,0000620725,', '1', 2, '甘肃省/张掖市/山丹县', '山丹县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620800', '620000', '0,620000,', 620800, '0000620000,0000620800,', '0', 1, '甘肃省/平凉市', '平凉市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620802', '620800', '0,620000,620800,', 620802, '0000620000,0000620800,0000620802,', '1', 2, '甘肃省/平凉市/崆峒区', '崆峒区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620821', '620800', '0,620000,620800,', 620821, '0000620000,0000620800,0000620821,', '1', 2, '甘肃省/平凉市/泾川县', '泾川县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620822', '620800', '0,620000,620800,', 620822, '0000620000,0000620800,0000620822,', '1', 2, '甘肃省/平凉市/灵台县', '灵台县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620823', '620800', '0,620000,620800,', 620823, '0000620000,0000620800,0000620823,', '1', 2, '甘肃省/平凉市/崇信县', '崇信县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620825', '620800', '0,620000,620800,', 620825, '0000620000,0000620800,0000620825,', '1', 2, '甘肃省/平凉市/庄浪县', '庄浪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620826', '620800', '0,620000,620800,', 620826, '0000620000,0000620800,0000620826,', '1', 2, '甘肃省/平凉市/静宁县', '静宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620881', '620800', '0,620000,620800,', 620881, '0000620000,0000620800,0000620881,', '1', 2, '甘肃省/平凉市/华亭市', '华亭市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620900', '620000', '0,620000,', 620900, '0000620000,0000620900,', '0', 1, '甘肃省/酒泉市', '酒泉市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620902', '620900', '0,620000,620900,', 620902, '0000620000,0000620900,0000620902,', '1', 2, '甘肃省/酒泉市/肃州区', '肃州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620921', '620900', '0,620000,620900,', 620921, '0000620000,0000620900,0000620921,', '1', 2, '甘肃省/酒泉市/金塔县', '金塔县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620922', '620900', '0,620000,620900,', 620922, '0000620000,0000620900,0000620922,', '1', 2, '甘肃省/酒泉市/瓜州县', '瓜州县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620923', '620900', '0,620000,620900,', 620923, '0000620000,0000620900,0000620923,', '1', 2, '甘肃省/酒泉市/肃北蒙古族自治县', '肃北蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620924', '620900', '0,620000,620900,', 620924, '0000620000,0000620900,0000620924,', '1', 2, '甘肃省/酒泉市/阿克塞哈萨克族自治县', '阿克塞哈萨克族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620981', '620900', '0,620000,620900,', 620981, '0000620000,0000620900,0000620981,', '1', 2, '甘肃省/酒泉市/玉门市', '玉门市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('620982', '620900', '0,620000,620900,', 620982, '0000620000,0000620900,0000620982,', '1', 2, '甘肃省/酒泉市/敦煌市', '敦煌市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621000', '620000', '0,620000,', 621000, '0000620000,0000621000,', '0', 1, '甘肃省/庆阳市', '庆阳市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621002', '621000', '0,620000,621000,', 621002, '0000620000,0000621000,0000621002,', '1', 2, '甘肃省/庆阳市/西峰区', '西峰区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621021', '621000', '0,620000,621000,', 621021, '0000620000,0000621000,0000621021,', '1', 2, '甘肃省/庆阳市/庆城县', '庆城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621022', '621000', '0,620000,621000,', 621022, '0000620000,0000621000,0000621022,', '1', 2, '甘肃省/庆阳市/环县', '环县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621023', '621000', '0,620000,621000,', 621023, '0000620000,0000621000,0000621023,', '1', 2, '甘肃省/庆阳市/华池县', '华池县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621024', '621000', '0,620000,621000,', 621024, '0000620000,0000621000,0000621024,', '1', 2, '甘肃省/庆阳市/合水县', '合水县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621025', '621000', '0,620000,621000,', 621025, '0000620000,0000621000,0000621025,', '1', 2, '甘肃省/庆阳市/正宁县', '正宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621026', '621000', '0,620000,621000,', 621026, '0000620000,0000621000,0000621026,', '1', 2, '甘肃省/庆阳市/宁县', '宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621027', '621000', '0,620000,621000,', 621027, '0000620000,0000621000,0000621027,', '1', 2, '甘肃省/庆阳市/镇原县', '镇原县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621100', '620000', '0,620000,', 621100, '0000620000,0000621100,', '0', 1, '甘肃省/定西市', '定西市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621102', '621100', '0,620000,621100,', 621102, '0000620000,0000621100,0000621102,', '1', 2, '甘肃省/定西市/安定区', '安定区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621121', '621100', '0,620000,621100,', 621121, '0000620000,0000621100,0000621121,', '1', 2, '甘肃省/定西市/通渭县', '通渭县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621122', '621100', '0,620000,621100,', 621122, '0000620000,0000621100,0000621122,', '1', 2, '甘肃省/定西市/陇西县', '陇西县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621123', '621100', '0,620000,621100,', 621123, '0000620000,0000621100,0000621123,', '1', 2, '甘肃省/定西市/渭源县', '渭源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621124', '621100', '0,620000,621100,', 621124, '0000620000,0000621100,0000621124,', '1', 2, '甘肃省/定西市/临洮县', '临洮县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621125', '621100', '0,620000,621100,', 621125, '0000620000,0000621100,0000621125,', '1', 2, '甘肃省/定西市/漳县', '漳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621126', '621100', '0,620000,621100,', 621126, '0000620000,0000621100,0000621126,', '1', 2, '甘肃省/定西市/岷县', '岷县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621200', '620000', '0,620000,', 621200, '0000620000,0000621200,', '0', 1, '甘肃省/陇南市', '陇南市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621202', '621200', '0,620000,621200,', 621202, '0000620000,0000621200,0000621202,', '1', 2, '甘肃省/陇南市/武都区', '武都区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621221', '621200', '0,620000,621200,', 621221, '0000620000,0000621200,0000621221,', '1', 2, '甘肃省/陇南市/成县', '成县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621222', '621200', '0,620000,621200,', 621222, '0000620000,0000621200,0000621222,', '1', 2, '甘肃省/陇南市/文县', '文县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621223', '621200', '0,620000,621200,', 621223, '0000620000,0000621200,0000621223,', '1', 2, '甘肃省/陇南市/宕昌县', '宕昌县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621224', '621200', '0,620000,621200,', 621224, '0000620000,0000621200,0000621224,', '1', 2, '甘肃省/陇南市/康县', '康县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621225', '621200', '0,620000,621200,', 621225, '0000620000,0000621200,0000621225,', '1', 2, '甘肃省/陇南市/西和县', '西和县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621226', '621200', '0,620000,621200,', 621226, '0000620000,0000621200,0000621226,', '1', 2, '甘肃省/陇南市/礼县', '礼县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621227', '621200', '0,620000,621200,', 621227, '0000620000,0000621200,0000621227,', '1', 2, '甘肃省/陇南市/徽县', '徽县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('621228', '621200', '0,620000,621200,', 621228, '0000620000,0000621200,0000621228,', '1', 2, '甘肃省/陇南市/两当县', '两当县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622900', '620000', '0,620000,', 622900, '0000620000,0000622900,', '0', 1, '甘肃省/临夏回族自治州', '临夏回族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622901', '622900', '0,620000,622900,', 622901, '0000620000,0000622900,0000622901,', '1', 2, '甘肃省/临夏回族自治州/临夏市', '临夏市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622921', '622900', '0,620000,622900,', 622921, '0000620000,0000622900,0000622921,', '1', 2, '甘肃省/临夏回族自治州/临夏县', '临夏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622922', '622900', '0,620000,622900,', 622922, '0000620000,0000622900,0000622922,', '1', 2, '甘肃省/临夏回族自治州/康乐县', '康乐县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622923', '622900', '0,620000,622900,', 622923, '0000620000,0000622900,0000622923,', '1', 2, '甘肃省/临夏回族自治州/永靖县', '永靖县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622924', '622900', '0,620000,622900,', 622924, '0000620000,0000622900,0000622924,', '1', 2, '甘肃省/临夏回族自治州/广河县', '广河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622925', '622900', '0,620000,622900,', 622925, '0000620000,0000622900,0000622925,', '1', 2, '甘肃省/临夏回族自治州/和政县', '和政县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622926', '622900', '0,620000,622900,', 622926, '0000620000,0000622900,0000622926,', '1', 2, '甘肃省/临夏回族自治州/东乡族自治县', '东乡族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('622927', '622900', '0,620000,622900,', 622927, '0000620000,0000622900,0000622927,', '1', 2, '甘肃省/临夏回族自治州/积石山保安族东乡族撒拉族自治县', '积石山保安族东乡族撒拉族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623000', '620000', '0,620000,', 623000, '0000620000,0000623000,', '0', 1, '甘肃省/甘南藏族自治州', '甘南藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623001', '623000', '0,620000,623000,', 623001, '0000620000,0000623000,0000623001,', '1', 2, '甘肃省/甘南藏族自治州/合作市', '合作市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623021', '623000', '0,620000,623000,', 623021, '0000620000,0000623000,0000623021,', '1', 2, '甘肃省/甘南藏族自治州/临潭县', '临潭县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623022', '623000', '0,620000,623000,', 623022, '0000620000,0000623000,0000623022,', '1', 2, '甘肃省/甘南藏族自治州/卓尼县', '卓尼县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623023', '623000', '0,620000,623000,', 623023, '0000620000,0000623000,0000623023,', '1', 2, '甘肃省/甘南藏族自治州/舟曲县', '舟曲县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623024', '623000', '0,620000,623000,', 623024, '0000620000,0000623000,0000623024,', '1', 2, '甘肃省/甘南藏族自治州/迭部县', '迭部县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623025', '623000', '0,620000,623000,', 623025, '0000620000,0000623000,0000623025,', '1', 2, '甘肃省/甘南藏族自治州/玛曲县', '玛曲县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623026', '623000', '0,620000,623000,', 623026, '0000620000,0000623000,0000623026,', '1', 2, '甘肃省/甘南藏族自治州/碌曲县', '碌曲县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('623027', '623000', '0,620000,623000,', 623027, '0000620000,0000623000,0000623027,', '1', 2, '甘肃省/甘南藏族自治州/夏河县', '夏河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630000', '0', '0,', 630000, '0000630000,', '0', 0, '青海省', '青海省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630100', '630000', '0,630000,', 630100, '0000630000,0000630100,', '0', 1, '青海省/西宁市', '西宁市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630102', '630100', '0,630000,630100,', 630102, '0000630000,0000630100,0000630102,', '1', 2, '青海省/西宁市/城东区', '城东区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630103', '630100', '0,630000,630100,', 630103, '0000630000,0000630100,0000630103,', '1', 2, '青海省/西宁市/城中区', '城中区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630104', '630100', '0,630000,630100,', 630104, '0000630000,0000630100,0000630104,', '1', 2, '青海省/西宁市/城西区', '城西区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630105', '630100', '0,630000,630100,', 630105, '0000630000,0000630100,0000630105,', '1', 2, '青海省/西宁市/城北区', '城北区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630106', '630100', '0,630000,630100,', 630106, '0000630000,0000630100,0000630106,', '1', 2, '青海省/西宁市/湟中区', '湟中区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630121', '630100', '0,630000,630100,', 630121, '0000630000,0000630100,0000630121,', '1', 2, '青海省/西宁市/大通回族土族自治县', '大通回族土族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630123', '630100', '0,630000,630100,', 630123, '0000630000,0000630100,0000630123,', '1', 2, '青海省/西宁市/湟源县', '湟源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630200', '630000', '0,630000,', 630200, '0000630000,0000630200,', '0', 1, '青海省/海东市', '海东市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630202', '630200', '0,630000,630200,', 630202, '0000630000,0000630200,0000630202,', '1', 2, '青海省/海东市/乐都区', '乐都区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630203', '630200', '0,630000,630200,', 630203, '0000630000,0000630200,0000630203,', '1', 2, '青海省/海东市/平安区', '平安区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630222', '630200', '0,630000,630200,', 630222, '0000630000,0000630200,0000630222,', '1', 2, '青海省/海东市/民和回族土族自治县', '民和回族土族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630223', '630200', '0,630000,630200,', 630223, '0000630000,0000630200,0000630223,', '1', 2, '青海省/海东市/互助土族自治县', '互助土族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630224', '630200', '0,630000,630200,', 630224, '0000630000,0000630200,0000630224,', '1', 2, '青海省/海东市/化隆回族自治县', '化隆回族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('630225', '630200', '0,630000,630200,', 630225, '0000630000,0000630200,0000630225,', '1', 2, '青海省/海东市/循化撒拉族自治县', '循化撒拉族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632200', '630000', '0,630000,', 632200, '0000630000,0000632200,', '0', 1, '青海省/海北藏族自治州', '海北藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632221', '632200', '0,630000,632200,', 632221, '0000630000,0000632200,0000632221,', '1', 2, '青海省/海北藏族自治州/门源回族自治县', '门源回族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632222', '632200', '0,630000,632200,', 632222, '0000630000,0000632200,0000632222,', '1', 2, '青海省/海北藏族自治州/祁连县', '祁连县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632223', '632200', '0,630000,632200,', 632223, '0000630000,0000632200,0000632223,', '1', 2, '青海省/海北藏族自治州/海晏县', '海晏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632224', '632200', '0,630000,632200,', 632224, '0000630000,0000632200,0000632224,', '1', 2, '青海省/海北藏族自治州/刚察县', '刚察县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632300', '630000', '0,630000,', 632300, '0000630000,0000632300,', '0', 1, '青海省/黄南藏族自治州', '黄南藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632321', '632300', '0,630000,632300,', 632321, '0000630000,0000632300,0000632321,', '1', 2, '青海省/黄南藏族自治州/同仁县', '同仁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632322', '632300', '0,630000,632300,', 632322, '0000630000,0000632300,0000632322,', '1', 2, '青海省/黄南藏族自治州/尖扎县', '尖扎县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632323', '632300', '0,630000,632300,', 632323, '0000630000,0000632300,0000632323,', '1', 2, '青海省/黄南藏族自治州/泽库县', '泽库县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632324', '632300', '0,630000,632300,', 632324, '0000630000,0000632300,0000632324,', '1', 2, '青海省/黄南藏族自治州/河南蒙古族自治县', '河南蒙古族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632500', '630000', '0,630000,', 632500, '0000630000,0000632500,', '0', 1, '青海省/海南藏族自治州', '海南藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632521', '632500', '0,630000,632500,', 632521, '0000630000,0000632500,0000632521,', '1', 2, '青海省/海南藏族自治州/共和县', '共和县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632522', '632500', '0,630000,632500,', 632522, '0000630000,0000632500,0000632522,', '1', 2, '青海省/海南藏族自治州/同德县', '同德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632523', '632500', '0,630000,632500,', 632523, '0000630000,0000632500,0000632523,', '1', 2, '青海省/海南藏族自治州/贵德县', '贵德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632524', '632500', '0,630000,632500,', 632524, '0000630000,0000632500,0000632524,', '1', 2, '青海省/海南藏族自治州/兴海县', '兴海县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632525', '632500', '0,630000,632500,', 632525, '0000630000,0000632500,0000632525,', '1', 2, '青海省/海南藏族自治州/贵南县', '贵南县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632600', '630000', '0,630000,', 632600, '0000630000,0000632600,', '0', 1, '青海省/果洛藏族自治州', '果洛藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632621', '632600', '0,630000,632600,', 632621, '0000630000,0000632600,0000632621,', '1', 2, '青海省/果洛藏族自治州/玛沁县', '玛沁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632622', '632600', '0,630000,632600,', 632622, '0000630000,0000632600,0000632622,', '1', 2, '青海省/果洛藏族自治州/班玛县', '班玛县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632623', '632600', '0,630000,632600,', 632623, '0000630000,0000632600,0000632623,', '1', 2, '青海省/果洛藏族自治州/甘德县', '甘德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632624', '632600', '0,630000,632600,', 632624, '0000630000,0000632600,0000632624,', '1', 2, '青海省/果洛藏族自治州/达日县', '达日县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632625', '632600', '0,630000,632600,', 632625, '0000630000,0000632600,0000632625,', '1', 2, '青海省/果洛藏族自治州/久治县', '久治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632626', '632600', '0,630000,632600,', 632626, '0000630000,0000632600,0000632626,', '1', 2, '青海省/果洛藏族自治州/玛多县', '玛多县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632700', '630000', '0,630000,', 632700, '0000630000,0000632700,', '0', 1, '青海省/玉树藏族自治州', '玉树藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632701', '632700', '0,630000,632700,', 632701, '0000630000,0000632700,0000632701,', '1', 2, '青海省/玉树藏族自治州/玉树市', '玉树市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632722', '632700', '0,630000,632700,', 632722, '0000630000,0000632700,0000632722,', '1', 2, '青海省/玉树藏族自治州/杂多县', '杂多县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632723', '632700', '0,630000,632700,', 632723, '0000630000,0000632700,0000632723,', '1', 2, '青海省/玉树藏族自治州/称多县', '称多县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632724', '632700', '0,630000,632700,', 632724, '0000630000,0000632700,0000632724,', '1', 2, '青海省/玉树藏族自治州/治多县', '治多县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632725', '632700', '0,630000,632700,', 632725, '0000630000,0000632700,0000632725,', '1', 2, '青海省/玉树藏族自治州/囊谦县', '囊谦县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632726', '632700', '0,630000,632700,', 632726, '0000630000,0000632700,0000632726,', '1', 2, '青海省/玉树藏族自治州/曲麻莱县', '曲麻莱县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632800', '630000', '0,630000,', 632800, '0000630000,0000632800,', '0', 1, '青海省/海西蒙古族藏族自治州', '海西蒙古族藏族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632801', '632800', '0,630000,632800,', 632801, '0000630000,0000632800,0000632801,', '1', 2, '青海省/海西蒙古族藏族自治州/格尔木市', '格尔木市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632802', '632800', '0,630000,632800,', 632802, '0000630000,0000632800,0000632802,', '1', 2, '青海省/海西蒙古族藏族自治州/德令哈市', '德令哈市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632803', '632800', '0,630000,632800,', 632803, '0000630000,0000632800,0000632803,', '1', 2, '青海省/海西蒙古族藏族自治州/茫崖市', '茫崖市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632821', '632800', '0,630000,632800,', 632821, '0000630000,0000632800,0000632821,', '1', 2, '青海省/海西蒙古族藏族自治州/乌兰县', '乌兰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632822', '632800', '0,630000,632800,', 632822, '0000630000,0000632800,0000632822,', '1', 2, '青海省/海西蒙古族藏族自治州/都兰县', '都兰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632823', '632800', '0,630000,632800,', 632823, '0000630000,0000632800,0000632823,', '1', 2, '青海省/海西蒙古族藏族自治州/天峻县', '天峻县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('632825', '632800', '0,630000,632800,', 632825, '0000630000,0000632800,0000632825,', '1', 2, '青海省/海西蒙古族藏族自治州/海西蒙古族藏族自治州直辖', '海西蒙古族藏族自治州直辖', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640000', '0', '0,', 640000, '0000640000,', '0', 0, '宁夏回族自治区', '宁夏回族自治区', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640100', '640000', '0,640000,', 640100, '0000640000,0000640100,', '0', 1, '宁夏回族自治区/银川市', '银川市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640104', '640100', '0,640000,640100,', 640104, '0000640000,0000640100,0000640104,', '1', 2, '宁夏回族自治区/银川市/兴庆区', '兴庆区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640105', '640100', '0,640000,640100,', 640105, '0000640000,0000640100,0000640105,', '1', 2, '宁夏回族自治区/银川市/西夏区', '西夏区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640106', '640100', '0,640000,640100,', 640106, '0000640000,0000640100,0000640106,', '1', 2, '宁夏回族自治区/银川市/金凤区', '金凤区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640121', '640100', '0,640000,640100,', 640121, '0000640000,0000640100,0000640121,', '1', 2, '宁夏回族自治区/银川市/永宁县', '永宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640122', '640100', '0,640000,640100,', 640122, '0000640000,0000640100,0000640122,', '1', 2, '宁夏回族自治区/银川市/贺兰县', '贺兰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640181', '640100', '0,640000,640100,', 640181, '0000640000,0000640100,0000640181,', '1', 2, '宁夏回族自治区/银川市/灵武市', '灵武市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640200', '640000', '0,640000,', 640200, '0000640000,0000640200,', '0', 1, '宁夏回族自治区/石嘴山市', '石嘴山市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640202', '640200', '0,640000,640200,', 640202, '0000640000,0000640200,0000640202,', '1', 2, '宁夏回族自治区/石嘴山市/大武口区', '大武口区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640205', '640200', '0,640000,640200,', 640205, '0000640000,0000640200,0000640205,', '1', 2, '宁夏回族自治区/石嘴山市/惠农区', '惠农区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640221', '640200', '0,640000,640200,', 640221, '0000640000,0000640200,0000640221,', '1', 2, '宁夏回族自治区/石嘴山市/平罗县', '平罗县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640300', '640000', '0,640000,', 640300, '0000640000,0000640300,', '0', 1, '宁夏回族自治区/吴忠市', '吴忠市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640302', '640300', '0,640000,640300,', 640302, '0000640000,0000640300,0000640302,', '1', 2, '宁夏回族自治区/吴忠市/利通区', '利通区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640303', '640300', '0,640000,640300,', 640303, '0000640000,0000640300,0000640303,', '1', 2, '宁夏回族自治区/吴忠市/红寺堡区', '红寺堡区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640323', '640300', '0,640000,640300,', 640323, '0000640000,0000640300,0000640323,', '1', 2, '宁夏回族自治区/吴忠市/盐池县', '盐池县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640324', '640300', '0,640000,640300,', 640324, '0000640000,0000640300,0000640324,', '1', 2, '宁夏回族自治区/吴忠市/同心县', '同心县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640381', '640300', '0,640000,640300,', 640381, '0000640000,0000640300,0000640381,', '1', 2, '宁夏回族自治区/吴忠市/青铜峡市', '青铜峡市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640400', '640000', '0,640000,', 640400, '0000640000,0000640400,', '0', 1, '宁夏回族自治区/固原市', '固原市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640402', '640400', '0,640000,640400,', 640402, '0000640000,0000640400,0000640402,', '1', 2, '宁夏回族自治区/固原市/原州区', '原州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640422', '640400', '0,640000,640400,', 640422, '0000640000,0000640400,0000640422,', '1', 2, '宁夏回族自治区/固原市/西吉县', '西吉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640423', '640400', '0,640000,640400,', 640423, '0000640000,0000640400,0000640423,', '1', 2, '宁夏回族自治区/固原市/隆德县', '隆德县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640424', '640400', '0,640000,640400,', 640424, '0000640000,0000640400,0000640424,', '1', 2, '宁夏回族自治区/固原市/泾源县', '泾源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640425', '640400', '0,640000,640400,', 640425, '0000640000,0000640400,0000640425,', '1', 2, '宁夏回族自治区/固原市/彭阳县', '彭阳县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640500', '640000', '0,640000,', 640500, '0000640000,0000640500,', '0', 1, '宁夏回族自治区/中卫市', '中卫市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640502', '640500', '0,640000,640500,', 640502, '0000640000,0000640500,0000640502,', '1', 2, '宁夏回族自治区/中卫市/沙坡头区', '沙坡头区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640521', '640500', '0,640000,640500,', 640521, '0000640000,0000640500,0000640521,', '1', 2, '宁夏回族自治区/中卫市/中宁县', '中宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('640522', '640500', '0,640000,640500,', 640522, '0000640000,0000640500,0000640522,', '1', 2, '宁夏回族自治区/中卫市/海原县', '海原县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650000', '0', '0,', 650000, '0000650000,', '0', 0, '新疆维吾尔自治区', '新疆维吾尔自治区', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650100', '650000', '0,650000,', 650100, '0000650000,0000650100,', '0', 1, '新疆维吾尔自治区/乌鲁木齐市', '乌鲁木齐市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650102', '650100', '0,650000,650100,', 650102, '0000650000,0000650100,0000650102,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/天山区', '天山区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650103', '650100', '0,650000,650100,', 650103, '0000650000,0000650100,0000650103,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/沙依巴克区', '沙依巴克区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650104', '650100', '0,650000,650100,', 650104, '0000650000,0000650100,0000650104,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/新市区', '新市区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650105', '650100', '0,650000,650100,', 650105, '0000650000,0000650100,0000650105,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/水磨沟区', '水磨沟区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650106', '650100', '0,650000,650100,', 650106, '0000650000,0000650100,0000650106,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/头屯河区', '头屯河区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650107', '650100', '0,650000,650100,', 650107, '0000650000,0000650100,0000650107,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/达坂城区', '达坂城区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650109', '650100', '0,650000,650100,', 650109, '0000650000,0000650100,0000650109,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/米东区', '米东区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650121', '650100', '0,650000,650100,', 650121, '0000650000,0000650100,0000650121,', '1', 2, '新疆维吾尔自治区/乌鲁木齐市/乌鲁木齐县', '乌鲁木齐县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650200', '650000', '0,650000,', 650200, '0000650000,0000650200,', '0', 1, '新疆维吾尔自治区/克拉玛依市', '克拉玛依市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650202', '650200', '0,650000,650200,', 650202, '0000650000,0000650200,0000650202,', '1', 2, '新疆维吾尔自治区/克拉玛依市/独山子区', '独山子区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650203', '650200', '0,650000,650200,', 650203, '0000650000,0000650200,0000650203,', '1', 2, '新疆维吾尔自治区/克拉玛依市/克拉玛依区', '克拉玛依区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650204', '650200', '0,650000,650200,', 650204, '0000650000,0000650200,0000650204,', '1', 2, '新疆维吾尔自治区/克拉玛依市/白碱滩区', '白碱滩区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650205', '650200', '0,650000,650200,', 650205, '0000650000,0000650200,0000650205,', '1', 2, '新疆维吾尔自治区/克拉玛依市/乌尔禾区', '乌尔禾区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650400', '650000', '0,650000,', 650400, '0000650000,0000650400,', '0', 1, '新疆维吾尔自治区/吐鲁番市', '吐鲁番市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650402', '650400', '0,650000,650400,', 650402, '0000650000,0000650400,0000650402,', '1', 2, '新疆维吾尔自治区/吐鲁番市/高昌区', '高昌区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650421', '650400', '0,650000,650400,', 650421, '0000650000,0000650400,0000650421,', '1', 2, '新疆维吾尔自治区/吐鲁番市/鄯善县', '鄯善县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650422', '650400', '0,650000,650400,', 650422, '0000650000,0000650400,0000650422,', '1', 2, '新疆维吾尔自治区/吐鲁番市/托克逊县', '托克逊县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650500', '650000', '0,650000,', 650500, '0000650000,0000650500,', '0', 1, '新疆维吾尔自治区/哈密市', '哈密市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650502', '650500', '0,650000,650500,', 650502, '0000650000,0000650500,0000650502,', '1', 2, '新疆维吾尔自治区/哈密市/伊州区', '伊州区', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650521', '650500', '0,650000,650500,', 650521, '0000650000,0000650500,0000650521,', '1', 2, '新疆维吾尔自治区/哈密市/巴里坤哈萨克自治县', '巴里坤哈萨克自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('650522', '650500', '0,650000,650500,', 650522, '0000650000,0000650500,0000650522,', '1', 2, '新疆维吾尔自治区/哈密市/伊吾县', '伊吾县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652300', '650000', '0,650000,', 652300, '0000650000,0000652300,', '0', 1, '新疆维吾尔自治区/昌吉回族自治州', '昌吉回族自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652301', '652300', '0,650000,652300,', 652301, '0000650000,0000652300,0000652301,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/昌吉市', '昌吉市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652302', '652300', '0,650000,652300,', 652302, '0000650000,0000652300,0000652302,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/阜康市', '阜康市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652323', '652300', '0,650000,652300,', 652323, '0000650000,0000652300,0000652323,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/呼图壁县', '呼图壁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652324', '652300', '0,650000,652300,', 652324, '0000650000,0000652300,0000652324,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/玛纳斯县', '玛纳斯县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652325', '652300', '0,650000,652300,', 652325, '0000650000,0000652300,0000652325,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/奇台县', '奇台县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652327', '652300', '0,650000,652300,', 652327, '0000650000,0000652300,0000652327,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/吉木萨尔县', '吉木萨尔县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652328', '652300', '0,650000,652300,', 652328, '0000650000,0000652300,0000652328,', '1', 2, '新疆维吾尔自治区/昌吉回族自治州/木垒哈萨克自治县', '木垒哈萨克自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652700', '650000', '0,650000,', 652700, '0000650000,0000652700,', '0', 1, '新疆维吾尔自治区/博尔塔拉蒙古自治州', '博尔塔拉蒙古自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652701', '652700', '0,650000,652700,', 652701, '0000650000,0000652700,0000652701,', '1', 2, '新疆维吾尔自治区/博尔塔拉蒙古自治州/博乐市', '博乐市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652702', '652700', '0,650000,652700,', 652702, '0000650000,0000652700,0000652702,', '1', 2, '新疆维吾尔自治区/博尔塔拉蒙古自治州/阿拉山口市', '阿拉山口市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652722', '652700', '0,650000,652700,', 652722, '0000650000,0000652700,0000652722,', '1', 2, '新疆维吾尔自治区/博尔塔拉蒙古自治州/精河县', '精河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652723', '652700', '0,650000,652700,', 652723, '0000650000,0000652700,0000652723,', '1', 2, '新疆维吾尔自治区/博尔塔拉蒙古自治州/温泉县', '温泉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652800', '650000', '0,650000,', 652800, '0000650000,0000652800,', '0', 1, '新疆维吾尔自治区/巴音郭楞蒙古自治州', '巴音郭楞蒙古自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652801', '652800', '0,650000,652800,', 652801, '0000650000,0000652800,0000652801,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/库尔勒市', '库尔勒市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652822', '652800', '0,650000,652800,', 652822, '0000650000,0000652800,0000652822,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/轮台县', '轮台县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652823', '652800', '0,650000,652800,', 652823, '0000650000,0000652800,0000652823,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/尉犁县', '尉犁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652824', '652800', '0,650000,652800,', 652824, '0000650000,0000652800,0000652824,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/若羌县', '若羌县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652825', '652800', '0,650000,652800,', 652825, '0000650000,0000652800,0000652825,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/且末县', '且末县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652826', '652800', '0,650000,652800,', 652826, '0000650000,0000652800,0000652826,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/焉耆回族自治县', '焉耆回族自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652827', '652800', '0,650000,652800,', 652827, '0000650000,0000652800,0000652827,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/和静县', '和静县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652828', '652800', '0,650000,652800,', 652828, '0000650000,0000652800,0000652828,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/和硕县', '和硕县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652829', '652800', '0,650000,652800,', 652829, '0000650000,0000652800,0000652829,', '1', 2, '新疆维吾尔自治区/巴音郭楞蒙古自治州/博湖县', '博湖县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652900', '650000', '0,650000,', 652900, '0000650000,0000652900,', '0', 1, '新疆维吾尔自治区/阿克苏地区', '阿克苏地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652901', '652900', '0,650000,652900,', 652901, '0000650000,0000652900,0000652901,', '1', 2, '新疆维吾尔自治区/阿克苏地区/阿克苏市', '阿克苏市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652902', '652900', '0,650000,652900,', 652902, '0000650000,0000652900,0000652902,', '1', 2, '新疆维吾尔自治区/阿克苏地区/库车市', '库车市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652922', '652900', '0,650000,652900,', 652922, '0000650000,0000652900,0000652922,', '1', 2, '新疆维吾尔自治区/阿克苏地区/温宿县', '温宿县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652924', '652900', '0,650000,652900,', 652924, '0000650000,0000652900,0000652924,', '1', 2, '新疆维吾尔自治区/阿克苏地区/沙雅县', '沙雅县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652925', '652900', '0,650000,652900,', 652925, '0000650000,0000652900,0000652925,', '1', 2, '新疆维吾尔自治区/阿克苏地区/新和县', '新和县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652926', '652900', '0,650000,652900,', 652926, '0000650000,0000652900,0000652926,', '1', 2, '新疆维吾尔自治区/阿克苏地区/拜城县', '拜城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652927', '652900', '0,650000,652900,', 652927, '0000650000,0000652900,0000652927,', '1', 2, '新疆维吾尔自治区/阿克苏地区/乌什县', '乌什县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652928', '652900', '0,650000,652900,', 652928, '0000650000,0000652900,0000652928,', '1', 2, '新疆维吾尔自治区/阿克苏地区/阿瓦提县', '阿瓦提县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('652929', '652900', '0,650000,652900,', 652929, '0000650000,0000652900,0000652929,', '1', 2, '新疆维吾尔自治区/阿克苏地区/柯坪县', '柯坪县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653000', '650000', '0,650000,', 653000, '0000650000,0000653000,', '0', 1, '新疆维吾尔自治区/克孜勒苏柯尔克孜自治州', '克孜勒苏柯尔克孜自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653001', '653000', '0,650000,653000,', 653001, '0000650000,0000653000,0000653001,', '1', 2, '新疆维吾尔自治区/克孜勒苏柯尔克孜自治州/阿图什市', '阿图什市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653022', '653000', '0,650000,653000,', 653022, '0000650000,0000653000,0000653022,', '1', 2, '新疆维吾尔自治区/克孜勒苏柯尔克孜自治州/阿克陶县', '阿克陶县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653023', '653000', '0,650000,653000,', 653023, '0000650000,0000653000,0000653023,', '1', 2, '新疆维吾尔自治区/克孜勒苏柯尔克孜自治州/阿合奇县', '阿合奇县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653024', '653000', '0,650000,653000,', 653024, '0000650000,0000653000,0000653024,', '1', 2, '新疆维吾尔自治区/克孜勒苏柯尔克孜自治州/乌恰县', '乌恰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653100', '650000', '0,650000,', 653100, '0000650000,0000653100,', '0', 1, '新疆维吾尔自治区/喀什地区', '喀什地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653101', '653100', '0,650000,653100,', 653101, '0000650000,0000653100,0000653101,', '1', 2, '新疆维吾尔自治区/喀什地区/喀什市', '喀什市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653121', '653100', '0,650000,653100,', 653121, '0000650000,0000653100,0000653121,', '1', 2, '新疆维吾尔自治区/喀什地区/疏附县', '疏附县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653122', '653100', '0,650000,653100,', 653122, '0000650000,0000653100,0000653122,', '1', 2, '新疆维吾尔自治区/喀什地区/疏勒县', '疏勒县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653123', '653100', '0,650000,653100,', 653123, '0000650000,0000653100,0000653123,', '1', 2, '新疆维吾尔自治区/喀什地区/英吉沙县', '英吉沙县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653124', '653100', '0,650000,653100,', 653124, '0000650000,0000653100,0000653124,', '1', 2, '新疆维吾尔自治区/喀什地区/泽普县', '泽普县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653125', '653100', '0,650000,653100,', 653125, '0000650000,0000653100,0000653125,', '1', 2, '新疆维吾尔自治区/喀什地区/莎车县', '莎车县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653126', '653100', '0,650000,653100,', 653126, '0000650000,0000653100,0000653126,', '1', 2, '新疆维吾尔自治区/喀什地区/叶城县', '叶城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653127', '653100', '0,650000,653100,', 653127, '0000650000,0000653100,0000653127,', '1', 2, '新疆维吾尔自治区/喀什地区/麦盖提县', '麦盖提县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653128', '653100', '0,650000,653100,', 653128, '0000650000,0000653100,0000653128,', '1', 2, '新疆维吾尔自治区/喀什地区/岳普湖县', '岳普湖县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653129', '653100', '0,650000,653100,', 653129, '0000650000,0000653100,0000653129,', '1', 2, '新疆维吾尔自治区/喀什地区/伽师县', '伽师县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653130', '653100', '0,650000,653100,', 653130, '0000650000,0000653100,0000653130,', '1', 2, '新疆维吾尔自治区/喀什地区/巴楚县', '巴楚县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653131', '653100', '0,650000,653100,', 653131, '0000650000,0000653100,0000653131,', '1', 2, '新疆维吾尔自治区/喀什地区/塔什库尔干塔吉克自治县', '塔什库尔干塔吉克自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653200', '650000', '0,650000,', 653200, '0000650000,0000653200,', '0', 1, '新疆维吾尔自治区/和田地区', '和田地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653201', '653200', '0,650000,653200,', 653201, '0000650000,0000653200,0000653201,', '1', 2, '新疆维吾尔自治区/和田地区/和田市', '和田市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653221', '653200', '0,650000,653200,', 653221, '0000650000,0000653200,0000653221,', '1', 2, '新疆维吾尔自治区/和田地区/和田县', '和田县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653222', '653200', '0,650000,653200,', 653222, '0000650000,0000653200,0000653222,', '1', 2, '新疆维吾尔自治区/和田地区/墨玉县', '墨玉县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653223', '653200', '0,650000,653200,', 653223, '0000650000,0000653200,0000653223,', '1', 2, '新疆维吾尔自治区/和田地区/皮山县', '皮山县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653224', '653200', '0,650000,653200,', 653224, '0000650000,0000653200,0000653224,', '1', 2, '新疆维吾尔自治区/和田地区/洛浦县', '洛浦县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653225', '653200', '0,650000,653200,', 653225, '0000650000,0000653200,0000653225,', '1', 2, '新疆维吾尔自治区/和田地区/策勒县', '策勒县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653226', '653200', '0,650000,653200,', 653226, '0000650000,0000653200,0000653226,', '1', 2, '新疆维吾尔自治区/和田地区/于田县', '于田县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('653227', '653200', '0,650000,653200,', 653227, '0000650000,0000653200,0000653227,', '1', 2, '新疆维吾尔自治区/和田地区/民丰县', '民丰县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654000', '650000', '0,650000,', 654000, '0000650000,0000654000,', '0', 1, '新疆维吾尔自治区/伊犁哈萨克自治州', '伊犁哈萨克自治州', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654002', '654000', '0,650000,654000,', 654002, '0000650000,0000654000,0000654002,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/伊宁市', '伊宁市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654003', '654000', '0,650000,654000,', 654003, '0000650000,0000654000,0000654003,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/奎屯市', '奎屯市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654004', '654000', '0,650000,654000,', 654004, '0000650000,0000654000,0000654004,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/霍尔果斯市', '霍尔果斯市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654021', '654000', '0,650000,654000,', 654021, '0000650000,0000654000,0000654021,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/伊宁县', '伊宁县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654022', '654000', '0,650000,654000,', 654022, '0000650000,0000654000,0000654022,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/察布查尔锡伯自治县', '察布查尔锡伯自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654023', '654000', '0,650000,654000,', 654023, '0000650000,0000654000,0000654023,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/霍城县', '霍城县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654024', '654000', '0,650000,654000,', 654024, '0000650000,0000654000,0000654024,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/巩留县', '巩留县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654025', '654000', '0,650000,654000,', 654025, '0000650000,0000654000,0000654025,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/新源县', '新源县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654026', '654000', '0,650000,654000,', 654026, '0000650000,0000654000,0000654026,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/昭苏县', '昭苏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654027', '654000', '0,650000,654000,', 654027, '0000650000,0000654000,0000654027,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/特克斯县', '特克斯县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654028', '654000', '0,650000,654000,', 654028, '0000650000,0000654000,0000654028,', '1', 2, '新疆维吾尔自治区/伊犁哈萨克自治州/尼勒克县', '尼勒克县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654200', '650000', '0,650000,', 654200, '0000650000,0000654200,', '0', 1, '新疆维吾尔自治区/塔城地区', '塔城地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654201', '654200', '0,650000,654200,', 654201, '0000650000,0000654200,0000654201,', '1', 2, '新疆维吾尔自治区/塔城地区/塔城市', '塔城市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654202', '654200', '0,650000,654200,', 654202, '0000650000,0000654200,0000654202,', '1', 2, '新疆维吾尔自治区/塔城地区/乌苏市', '乌苏市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654221', '654200', '0,650000,654200,', 654221, '0000650000,0000654200,0000654221,', '1', 2, '新疆维吾尔自治区/塔城地区/额敏县', '额敏县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654223', '654200', '0,650000,654200,', 654223, '0000650000,0000654200,0000654223,', '1', 2, '新疆维吾尔自治区/塔城地区/沙湾县', '沙湾县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654224', '654200', '0,650000,654200,', 654224, '0000650000,0000654200,0000654224,', '1', 2, '新疆维吾尔自治区/塔城地区/托里县', '托里县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654225', '654200', '0,650000,654200,', 654225, '0000650000,0000654200,0000654225,', '1', 2, '新疆维吾尔自治区/塔城地区/裕民县', '裕民县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654226', '654200', '0,650000,654200,', 654226, '0000650000,0000654200,0000654226,', '1', 2, '新疆维吾尔自治区/塔城地区/和布克赛尔蒙古自治县', '和布克赛尔蒙古自治县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654300', '650000', '0,650000,', 654300, '0000650000,0000654300,', '0', 1, '新疆维吾尔自治区/阿勒泰地区', '阿勒泰地区', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654301', '654300', '0,650000,654300,', 654301, '0000650000,0000654300,0000654301,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/阿勒泰市', '阿勒泰市', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654321', '654300', '0,650000,654300,', 654321, '0000650000,0000654300,0000654321,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/布尔津县', '布尔津县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654322', '654300', '0,650000,654300,', 654322, '0000650000,0000654300,0000654322,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/富蕴县', '富蕴县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654323', '654300', '0,650000,654300,', 654323, '0000650000,0000654300,0000654323,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/福海县', '福海县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654324', '654300', '0,650000,654300,', 654324, '0000650000,0000654300,0000654324,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/哈巴河县', '哈巴河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654325', '654300', '0,650000,654300,', 654325, '0000650000,0000654300,0000654325,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/青河县', '青河县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('654326', '654300', '0,650000,654300,', 654326, '0000650000,0000654300,0000654326,', '1', 2, '新疆维吾尔自治区/阿勒泰地区/吉木乃县', '吉木乃县', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659001', '650000', '0,650000,', 659001, '0000650000,0000659001,', '1', 1, '新疆维吾尔自治区/石河子市', '石河子市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659002', '650000', '0,650000,', 659002, '0000650000,0000659002,', '1', 1, '新疆维吾尔自治区/阿拉尔市', '阿拉尔市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659003', '650000', '0,650000,', 659003, '0000650000,0000659003,', '1', 1, '新疆维吾尔自治区/图木舒克市', '图木舒克市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659004', '650000', '0,650000,', 659004, '0000650000,0000659004,', '1', 1, '新疆维吾尔自治区/五家渠市', '五家渠市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659005', '650000', '0,650000,', 659005, '0000650000,0000659005,', '1', 1, '新疆维吾尔自治区/北屯市', '北屯市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659006', '650000', '0,650000,', 659006, '0000650000,0000659006,', '1', 1, '新疆维吾尔自治区/铁门关市', '铁门关市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659007', '650000', '0,650000,', 659007, '0000650000,0000659007,', '1', 1, '新疆维吾尔自治区/双河市', '双河市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659008', '650000', '0,650000,', 659008, '0000650000,0000659008,', '1', 1, '新疆维吾尔自治区/可克达拉市', '可克达拉市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659009', '650000', '0,650000,', 659009, '0000650000,0000659009,', '1', 1, '新疆维吾尔自治区/昆玉市', '昆玉市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('659010', '650000', '0,650000,', 659010, '0000650000,0000659010,', '1', 1, '新疆维吾尔自治区/胡杨河市', '胡杨河市', '2', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('710000', '0', '0,', 710000, '0000710000,', '1', 0, '台湾省', '台湾省', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810000', '0', '0,', 810000, '0000810000,', '0', 0, '香港特别行政区', '香港特别行政区', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810001', '810000', '0,810000,', 810001, '0000810000,0000810001,', '1', 1, '香港特别行政区/中西區', '中西區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810002', '810000', '0,810000,', 810002, '0000810000,0000810002,', '1', 1, '香港特别行政区/灣仔區', '灣仔區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810003', '810000', '0,810000,', 810003, '0000810000,0000810003,', '1', 1, '香港特别行政区/東區', '東區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810004', '810000', '0,810000,', 810004, '0000810000,0000810004,', '1', 1, '香港特别行政区/南區', '南區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810005', '810000', '0,810000,', 810005, '0000810000,0000810005,', '1', 1, '香港特别行政区/油尖旺區', '油尖旺區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810006', '810000', '0,810000,', 810006, '0000810000,0000810006,', '1', 1, '香港特别行政区/深水埗區', '深水埗區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810007', '810000', '0,810000,', 810007, '0000810000,0000810007,', '1', 1, '香港特别行政区/九龍城區', '九龍城區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810008', '810000', '0,810000,', 810008, '0000810000,0000810008,', '1', 1, '香港特别行政区/黃大仙區', '黃大仙區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810009', '810000', '0,810000,', 810009, '0000810000,0000810009,', '1', 1, '香港特别行政区/觀塘區', '觀塘區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810010', '810000', '0,810000,', 810010, '0000810000,0000810010,', '1', 1, '香港特别行政区/荃灣區', '荃灣區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810011', '810000', '0,810000,', 810011, '0000810000,0000810011,', '1', 1, '香港特别行政区/屯門區', '屯門區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810012', '810000', '0,810000,', 810012, '0000810000,0000810012,', '1', 1, '香港特别行政区/元朗區', '元朗區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810013', '810000', '0,810000,', 810013, '0000810000,0000810013,', '1', 1, '香港特别行政区/北區', '北區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810014', '810000', '0,810000,', 810014, '0000810000,0000810014,', '1', 1, '香港特别行政区/大埔區', '大埔區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810015', '810000', '0,810000,', 810015, '0000810000,0000810015,', '1', 1, '香港特别行政区/西貢區', '西貢區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810016', '810000', '0,810000,', 810016, '0000810000,0000810016,', '1', 1, '香港特别行政区/沙田區', '沙田區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810017', '810000', '0,810000,', 810017, '0000810000,0000810017,', '1', 1, '香港特别行政区/葵青區', '葵青區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('810018', '810000', '0,810000,', 810018, '0000810000,0000810018,', '1', 1, '香港特别行政区/離島區', '離島區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820000', '0', '0,', 820000, '0000820000,', '0', 0, '澳门特别行政区', '澳门特别行政区', '1', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820001', '820000', '0,820000,', 820001, '0000820000,0000820001,', '1', 1, '澳门特别行政区/花地瑪堂區', '花地瑪堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820002', '820000', '0,820000,', 820002, '0000820000,0000820002,', '1', 1, '澳门特别行政区/花王堂區', '花王堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820003', '820000', '0,820000,', 820003, '0000820000,0000820003,', '1', 1, '澳门特别行政区/望德堂區', '望德堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820004', '820000', '0,820000,', 820004, '0000820000,0000820004,', '1', 1, '澳门特别行政区/大堂區', '大堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820005', '820000', '0,820000,', 820005, '0000820000,0000820005,', '1', 1, '澳门特别行政区/風順堂區', '風順堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820006', '820000', '0,820000,', 820006, '0000820000,0000820006,', '1', 1, '澳门特别行政区/嘉模堂區', '嘉模堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820007', '820000', '0,820000,', 820007, '0000820000,0000820007,', '1', 1, '澳门特别行政区/路氹填海區', '路氹填海區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);
INSERT INTO `js_sys_area` VALUES ('820008', '820000', '0,820000,', 820008, '0000820000,0000820008,', '1', 1, '澳门特别行政区/聖方濟各堂區', '聖方濟各堂區', '3', '0', 'system', '2020-09-16 10:43:23', 'system', '2020-09-16 10:43:23', NULL);

-- ----------------------------
-- Table structure for js_sys_company
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_company`;
CREATE TABLE `js_sys_company`  (
  `company_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `view_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司代码',
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司名称',
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司全称',
  `area_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域编码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`company_code`) USING BTREE,
  INDEX `idx_sys_company_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_company_pc`(`parent_code`) USING BTREE,
  INDEX `idx_sys_company_ts`(`tree_sort`) USING BTREE,
  INDEX `idx_sys_company_status`(`status`) USING BTREE,
  INDEX `idx_sys_company_vc`(`view_code`) USING BTREE,
  INDEX `idx_sys_company_pcs`(`parent_codes`) USING BTREE,
  INDEX `idx_sys_company_tss`(`tree_sorts`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_company
-- ----------------------------
INSERT INTO `js_sys_company` VALUES ('SD', '0', '0,', 40, '0000000040,', '0', 0, '山东公司', 'SD', '山东公司', '山东公司', NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_company` VALUES ('SDJN', 'SD', '0,SD,', 30, '0000000040,0000000030,', '1', 1, '山东公司/济南公司', 'SDJN', '济南公司', '山东济南公司', NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_company` VALUES ('SDQD', 'SD', '0,SD,', 40, '0000000040,0000000040,', '1', 1, '山东公司/青岛公司', 'SDQD', '青岛公司', '山东青岛公司', NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_company_office
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_company_office`;
CREATE TABLE `js_sys_company_office`  (
  `company_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司编码',
  `office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构编码',
  PRIMARY KEY (`company_code`, `office_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '公司部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_config`;
CREATE TABLE `js_sys_config`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '参数键',
  `config_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '参数值',
  `is_sys` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '系统内置（1是 0否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_sys_config_key`(`config_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_config
-- ----------------------------
INSERT INTO `js_sys_config` VALUES ('1306181894398926848', '研发工具-代码生成默认包名', 'gen.defaultPackageName', 'com.jeesite.modules', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '新建项目后，修改该键值，在生成代码的时候就不要再修改了');
INSERT INTO `js_sys_config` VALUES ('1306181897376882688', '主框架页-桌面仪表盘首页地址', 'sys.index.desktopUrl', '/desktop', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '主页面的第一个页签首页桌面地址');
INSERT INTO `js_sys_config` VALUES ('1306181897452380160', '主框架页-主导航菜单显示风格', 'sys.index.menuStyle', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '1：菜单全部在左侧；2：根菜单显示在顶部');
INSERT INTO `js_sys_config` VALUES ('1306181897519489024', '主框架页-侧边栏的默认显示样式', 'sys.index.sidebarStyle', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '1：默认显示侧边栏；2：默认折叠侧边栏');
INSERT INTO `js_sys_config` VALUES ('1306181897582403584', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue-light2', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '蓝：skin-blue、黑：skin-black2、白：skin-black、紫：skin-purple、绿：skin-green、红：skin-red、黄：skin-yellow、蓝灰：skin-blue-light、黑灰：skin-black-light2、白灰：skin-black-light、紫灰：skin-purple-light、绿灰：skin-green-light、红灰：skin-red-light、黄灰skin-yellow-light、深蓝：skin-blue2、浅蓝：skin-blue-light2');
INSERT INTO `js_sys_config` VALUES ('1306181897641123840', '用户登录-登录失败多少次数后显示验证码', 'sys.login.failedNumAfterValidCode', '100', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '设置为0强制使用验证码登录');
INSERT INTO `js_sys_config` VALUES ('1306181897691455488', '用户登录-登录失败多少次数后锁定账号', 'sys.login.failedNumAfterLockAccount', '200', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '登录失败多少次数后锁定账号');
INSERT INTO `js_sys_config` VALUES ('1306181897750175744', '用户登录-登录失败多少次数后锁定账号的时间', 'sys.login.failedNumAfterLockMinute', '20', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '锁定账号的时间（单位：分钟）');
INSERT INTO `js_sys_config` VALUES ('1306181897821478912', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '是否开启注册用户功能');
INSERT INTO `js_sys_config` VALUES ('1306181897884393472', '账号自助-允许自助注册的用户类型', 'sys.account.registerUser.userTypes', 'member', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '允许注册的用户类型（多个用逗号隔开，例如：employee,member）');
INSERT INTO `js_sys_config` VALUES ('1306181897943113728', '账号自助-验证码有效时间（分钟）', 'sys.account.validCodeTimeout', '10', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '找回密码时，短信/邮件验证码有效时间（单位：分钟，0表示不限制）');
INSERT INTO `js_sys_config` VALUES ('1306181898001833984', '用户管理-账号默认角色-员工类型', 'sys.user.defaultRoleCodes.employee', 'default', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '所有员工用户都拥有的角色权限（适用于菜单授权查询）');
INSERT INTO `js_sys_config` VALUES ('1306181898064748544', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '创建用户和重置密码的时候用户的密码');
INSERT INTO `js_sys_config` VALUES ('1306181898123468800', '用户管理-初始密码修改策略', 'sys.user.initPasswordModify', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '0：初始密码修改策略关闭，没有任何提示；1：提醒用户，如果未修改初始密码，则在登录时和点击菜单就会提醒修改密码对话框；2：强制实行初始密码修改，登录后若不修改密码则不能进行系统操作');
INSERT INTO `js_sys_config` VALUES ('1306181898182189056', '用户管理-账号密码修改策略', 'sys.user.passwordModify', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '0：密码修改策略关闭，没有任何提示；1：提醒用户，如果未修改初始密码，则在登录时和点击菜单就会提醒修改密码对话框；2：强制实行初始密码修改，登录后若不修改密码则不能进行系统操作。');
INSERT INTO `js_sys_config` VALUES ('1306181898253492224', '用户管理-账号密码修改策略验证周期', 'sys.user.passwordModifyCycle', '30', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '密码安全修改周期是指定时间内提醒或必须修改密码（例如设置30天）的验证时间（天），超过这个时间登录系统时需，提醒用户修改密码或强制修改密码才能继续使用系统。单位：天，如果设置30天，则第31天开始强制修改密码');
INSERT INTO `js_sys_config` VALUES ('1306181898316406784', '用户管理-密码修改多少次内不允许重复', 'sys.user.passwordModifyNotRepeatNum', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '默认1次，表示不能与上次密码重复；若设置为3，表示并与前3次密码重复');
INSERT INTO `js_sys_config` VALUES ('1306181898370932736', '用户管理-账号密码修改最低安全等级', 'sys.user.passwordModifySecurityLevel', '0', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', '0：不限制等级（用户在修改密码的时候不进行等级验证）；1：限制最低等级为很弱；2：限制最低等级为弱；3：限制最低等级为安全；4：限制最低等级为很安全');

-- ----------------------------
-- Table structure for js_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_dict_data`;
CREATE TABLE `js_sys_dict_data`  (
  `dict_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典类型',
  `is_sys` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '系统内置（1是 0否）',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典描述',
  `css_style` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'css样式（如：color:red)',
  `css_class` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'css类名（如：red）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`dict_code`) USING BTREE,
  INDEX `idx_sys_dict_data_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_dict_data_dt`(`dict_type`) USING BTREE,
  INDEX `idx_sys_dict_data_pc`(`parent_code`) USING BTREE,
  INDEX `idx_sys_dict_data_status`(`status`) USING BTREE,
  INDEX `idx_sys_dict_data_pcs`(`parent_codes`) USING BTREE,
  INDEX `idx_sys_dict_data_ts`(`tree_sort`) USING BTREE,
  INDEX `idx_sys_dict_data_tss`(`tree_sorts`) USING BTREE,
  INDEX `idx_sys_dict_data_dv`(`dict_value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_dict_data
-- ----------------------------
INSERT INTO `js_sys_dict_data` VALUES ('1306181901239836672', '0', '0,', 30, '0000000030,', '1', 0, '是', '是', '1', 'sys_yes_no', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901319528448', '0', '0,', 40, '0000000040,', '1', 0, '否', '否', '0', 'sys_yes_no', '1', '', 'color:#aaa;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901357277184', '0', '0,', 20, '0000000020,', '1', 0, '正常', '正常', '0', 'sys_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901386637312', '0', '0,', 30, '0000000030,', '1', 0, '删除', '删除', '1', 'sys_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901420191744', '0', '0,', 40, '0000000040,', '1', 0, '停用', '停用', '2', 'sys_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901449551872', '0', '0,', 50, '0000000050,', '1', 0, '冻结', '冻结', '3', 'sys_status', '1', '', 'color:#fa0;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901483106304', '0', '0,', 60, '0000000060,', '1', 0, '待审', '待审', '4', 'sys_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901520855040', '0', '0,', 70, '0000000070,', '1', 0, '驳回', '驳回', '5', 'sys_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901558603776', '0', '0,', 80, '0000000080,', '1', 0, '草稿', '草稿', '9', 'sys_status', '1', '', 'color:#aaa;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901592158208', '0', '0,', 30, '0000000030,', '1', 0, '显示', '显示', '1', 'sys_show_hide', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901617324032', '0', '0,', 40, '0000000040,', '1', 0, '隐藏', '隐藏', '0', 'sys_show_hide', '1', '', 'color:#aaa;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901650878464', '0', '0,', 30, '0000000030,', '1', 0, '简体中文', '简体中文', 'zh_CN', 'sys_lang_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901680238592', '0', '0,', 40, '0000000040,', '1', 0, 'English', 'English', 'en', 'sys_lang_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901709598720', '0', '0,', 60, '0000000060,', '1', 0, '日本語', '日本語', 'ja_JP', 'sys_lang_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901738958848', '0', '0,', 30, '0000000030,', '1', 0, 'PC电脑', 'PC电脑', 'pc', 'sys_device_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901768318976', '0', '0,', 40, '0000000040,', '1', 0, '手机APP', '手机APP', 'mobileApp', 'sys_device_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901806067712', '0', '0,', 50, '0000000050,', '1', 0, '手机Web', '手机Web', 'mobileWeb', 'sys_device_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901835427840', '0', '0,', 60, '0000000060,', '1', 0, '微信设备', '微信设备', 'weixin', 'sys_device_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901864787968', '0', '0,', 30, '0000000030,', '1', 0, '主导航菜单', '主导航菜单', 'default', 'sys_menu_sys_code', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901898342400', '0', '0,', 30, '0000000030,', '1', 0, '菜单', '菜单', '1', 'sys_menu_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901923508224', '0', '0,', 40, '0000000040,', '1', 0, '权限', '权限', '2', 'sys_menu_type', '1', '', 'color:#c243d6;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901948674048', '0', '0,', 30, '0000000030,', '1', 0, '默认权重', '默认权重', '20', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181901978034176', '0', '0,', 40, '0000000040,', '1', 0, '二级管理员', '二级管理员', '40', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902007394304', '0', '0,', 50, '0000000050,', '1', 0, '系统管理员', '系统管理员', '60', 'sys_menu_weight', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902036754432', '0', '0,', 60, '0000000060,', '1', 0, '超级管理员', '超级管理员', '80', 'sys_menu_weight', '1', '', 'color:#c243d6;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902061920256', '0', '0,', 30, '0000000030,', '1', 0, '国家', '国家', '0', 'sys_area_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902087086080', '0', '0,', 40, '0000000040,', '1', 0, '省份直辖市', '省份直辖市', '1', 'sys_area_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902112251904', '0', '0,', 50, '0000000050,', '1', 0, '地市', '地市', '2', 'sys_area_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902150000640', '0', '0,', 60, '0000000060,', '1', 0, '区县', '区县', '3', 'sys_area_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902175166464', '0', '0,', 30, '0000000030,', '1', 0, '省级公司', '省级公司', '1', 'sys_office_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902200332288', '0', '0,', 40, '0000000040,', '1', 0, '市级公司', '市级公司', '2', 'sys_office_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902225498112', '0', '0,', 50, '0000000050,', '1', 0, '部门', '部门', '3', 'sys_office_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902250663936', '0', '0,', 30, '0000000030,', '1', 0, '正常', '正常', '0', 'sys_search_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902280024064', '0', '0,', 40, '0000000040,', '1', 0, '停用', '停用', '2', 'sys_search_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902305189888', '0', '0,', 30, '0000000030,', '1', 0, '男', '男', '1', 'sys_user_sex', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902330355712', '0', '0,', 40, '0000000040,', '1', 0, '女', '女', '2', 'sys_user_sex', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902359715840', '0', '0,', 30, '0000000030,', '1', 0, '正常', '正常', '0', 'sys_user_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902384881664', '0', '0,', 40, '0000000040,', '1', 0, '停用', '停用', '2', 'sys_user_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902410047488', '0', '0,', 50, '0000000050,', '1', 0, '冻结', '冻结', '3', 'sys_user_status', '1', '', 'color:#fa0;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902439407616', '0', '0,', 30, '0000000030,', '1', 0, '员工', '员工', 'employee', 'sys_user_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902468767744', '0', '0,', 40, '0000000040,', '1', 0, '会员', '会员', 'member', 'sys_user_type', '1', '', '', '', '2', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902493933568', '0', '0,', 50, '0000000050,', '1', 0, '单位', '单位', 'btype', 'sys_user_type', '1', '', '', '', '2', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902519099392', '0', '0,', 60, '0000000060,', '1', 0, '个人', '个人', 'persion', 'sys_user_type', '1', '', '', '', '2', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902548459520', '0', '0,', 70, '0000000070,', '1', 0, '专家', '专家', 'expert', 'sys_user_type', '1', '', '', '', '2', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902573625344', '0', '0,', 30, '0000000030,', '1', 0, '高管', '高管', '1', 'sys_role_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902602985472', '0', '0,', 40, '0000000040,', '1', 0, '中层', '中层', '2', 'sys_role_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902632345600', '0', '0,', 50, '0000000050,', '1', 0, '基层', '基层', '3', 'sys_role_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902657511424', '0', '0,', 60, '0000000060,', '1', 0, '其它', '其它', '4', 'sys_role_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902686871552', '0', '0,', 30, '0000000030,', '1', 0, '未设置', '未设置', '0', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902707843072', '0', '0,', 40, '0000000040,', '1', 0, '全部数据', '全部数据', '1', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902733008896', '0', '0,', 50, '0000000050,', '1', 0, '自定义数据', '自定义数据', '2', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902762369024', '0', '0,', 60, '0000000060,', '1', 0, '本部门数据', '本部门数据', '3', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902787534848', '0', '0,', 70, '0000000070,', '1', 0, '本公司数据', '本公司数据', '4', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902808506368', '0', '0,', 80, '0000000080,', '1', 0, '本部门和本公司数据', '本部门和本公司数据', '5', 'sys_role_data_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902833672192', '0', '0,', 30, '0000000030,', '1', 0, '组织管理', '组织管理', 'office_user', 'sys_role_biz_scope', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902858838016', '0', '0,', 30, '0000000030,', '1', 0, '高管', '高管', '1', 'sys_post_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902884003840', '0', '0,', 40, '0000000040,', '1', 0, '中层', '中层', '2', 'sys_post_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902904975360', '0', '0,', 50, '0000000050,', '1', 0, '基层', '基层', '3', 'sys_post_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902930141184', '0', '0,', 60, '0000000060,', '1', 0, '其它', '其它', '4', 'sys_post_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902946918400', '0', '0,', 30, '0000000030,', '1', 0, '接入日志', '接入日志', 'access', 'sys_log_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902967889920', '0', '0,', 40, '0000000040,', '1', 0, '修改日志', '修改日志', 'update', 'sys_log_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181902988861440', '0', '0,', 50, '0000000050,', '1', 0, '查询日志', '查询日志', 'select', 'sys_log_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903009832960', '0', '0,', 60, '0000000060,', '1', 0, '登录登出', '登录登出', 'loginLogout', 'sys_log_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903034998784', '0', '0,', 30, '0000000030,', '1', 0, '默认', '默认', 'DEFAULT', 'sys_job_group', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903060164608', '0', '0,', 40, '0000000040,', '1', 0, '系统', '系统', 'SYSTEM', 'sys_job_group', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903081136128', '0', '0,', 30, '0000000030,', '1', 0, '错过计划等待本次计划完成后立即执行一次', '错过计划等待本次计划完成后立即执行一次', '1', 'sys_job_misfire_instruction', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903102107648', '0', '0,', 40, '0000000040,', '1', 0, '本次执行时间根据上次结束时间重新计算（时间间隔方式）', '本次执行时间根据上次结束时间重新计算（时间间隔方式）', '2', 'sys_job_misfire_instruction', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903127273472', '0', '0,', 30, '0000000030,', '1', 0, '正常', '正常', '0', 'sys_job_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903152439296', '0', '0,', 40, '0000000040,', '1', 0, '删除', '删除', '1', 'sys_job_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903173410816', '0', '0,', 50, '0000000050,', '1', 0, '暂停', '暂停', '2', 'sys_job_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903198576640', '0', '0,', 30, '0000000030,', '1', 0, '完成', '完成', '3', 'sys_job_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903223742464', '0', '0,', 40, '0000000040,', '1', 0, '错误', '错误', '4', 'sys_job_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903248908288', '0', '0,', 50, '0000000050,', '1', 0, '运行', '运行', '5', 'sys_job_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903265685504', '0', '0,', 30, '0000000030,', '1', 0, '计划日志', '计划日志', 'scheduler', 'sys_job_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903286657024', '0', '0,', 40, '0000000040,', '1', 0, '任务日志', '任务日志', 'job', 'sys_job_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903311822848', '0', '0,', 50, '0000000050,', '1', 0, '触发日志', '触发日志', 'trigger', 'sys_job_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903336988672', '0', '0,', 30, '0000000030,', '1', 0, '计划创建', '计划创建', 'jobScheduled', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903357960192', '0', '0,', 40, '0000000040,', '1', 0, '计划移除', '计划移除', 'jobUnscheduled', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903378931712', '0', '0,', 50, '0000000050,', '1', 0, '计划暂停', '计划暂停', 'triggerPaused', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903399903232', '0', '0,', 60, '0000000060,', '1', 0, '计划恢复', '计划恢复', 'triggerResumed', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903425069056', '0', '0,', 70, '0000000070,', '1', 0, '调度错误', '调度错误', 'schedulerError', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903446040576', '0', '0,', 80, '0000000080,', '1', 0, '任务执行', '任务执行', 'jobToBeExecuted', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903462817792', '0', '0,', 90, '0000000090,', '1', 0, '任务结束', '任务结束', 'jobWasExecuted', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903483789312', '0', '0,', 100, '0000000100,', '1', 0, '任务停止', '任务停止', 'jobExecutionVetoed', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903508955136', '0', '0,', 110, '0000000110,', '1', 0, '触发计划', '触发计划', 'triggerFired', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903542509568', '0', '0,', 120, '0000000120,', '1', 0, '触发验证', '触发验证', 'vetoJobExecution', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903563481088', '0', '0,', 130, '0000000130,', '1', 0, '触发完成', '触发完成', 'triggerComplete', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903592841216', '0', '0,', 140, '0000000140,', '1', 0, '触发错过', '触发错过', 'triggerMisfired', 'sys_job_event', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903613812736', '0', '0,', 30, '0000000030,', '1', 0, 'PC', 'PC', 'pc', 'sys_msg_type', '1', '消息类型', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903634784256', '0', '0,', 40, '0000000040,', '1', 0, 'APP', 'APP', 'app', 'sys_msg_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903664144384', '0', '0,', 50, '0000000050,', '1', 0, '短信', '短信', 'sms', 'sys_msg_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903685115904', '0', '0,', 60, '0000000060,', '1', 0, '邮件', '邮件', 'email', 'sys_msg_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903718670336', '0', '0,', 70, '0000000070,', '1', 0, '微信', '微信', 'weixin', 'sys_msg_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903748030464', '0', '0,', 30, '0000000030,', '1', 0, '待推送', '待推送', '0', 'sys_msg_push_status', '1', '推送状态', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903773196288', '0', '0,', 30, '0000000030,', '1', 0, '成功', '成功', '1', 'sys_msg_push_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903798362112', '0', '0,', 40, '0000000040,', '1', 0, '失败', '失败', '2', 'sys_msg_push_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903823527936', '0', '0,', 30, '0000000030,', '1', 0, '未送达', '未送达', '0', 'sys_msg_read_status', '1', '读取状态', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903852888064', '0', '0,', 40, '0000000040,', '1', 0, '已读', '已读', '1', 'sys_msg_read_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903878053888', '0', '0,', 50, '0000000050,', '1', 0, '未读', '未读', '2', 'sys_msg_read_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903899025408', '0', '0,', 30, '0000000030,', '1', 0, '普通', '普通', '1', 'msg_inner_content_level', '1', '内容级别', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903924191232', '0', '0,', 40, '0000000040,', '1', 0, '一般', '一般', '2', 'msg_inner_content_level', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903953551360', '0', '0,', 50, '0000000050,', '1', 0, '紧急', '紧急', '3', 'msg_inner_content_level', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181903987105792', '0', '0,', 30, '0000000030,', '1', 0, '公告', '公告', '1', 'msg_inner_content_type', '1', '内容类型', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904012271616', '0', '0,', 40, '0000000040,', '1', 0, '新闻', '新闻', '2', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904037437440', '0', '0,', 50, '0000000050,', '1', 0, '会议', '会议', '3', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904062603264', '0', '0,', 60, '0000000060,', '1', 0, '其它', '其它', '4', 'msg_inner_content_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904087769088', '0', '0,', 30, '0000000030,', '1', 0, '全部', '全部', '0', 'msg_inner_receiver_type', '1', '接受类型', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904112934912', '0', '0,', 30, '0000000030,', '1', 0, '用户', '用户', '1', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904133906432', '0', '0,', 40, '0000000040,', '1', 0, '部门', '部门', '2', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904159072256', '0', '0,', 50, '0000000050,', '1', 0, '角色', '角色', '3', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904180043776', '0', '0,', 60, '0000000060,', '1', 0, '岗位', '岗位', '4', 'msg_inner_receiver_type', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904201015296', '0', '0,', 30, '0000000030,', '1', 0, '正常', '正常', '0', 'msg_inner_msg_status', '1', '消息状态', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904226181120', '0', '0,', 40, '0000000040,', '1', 0, '删除', '删除', '1', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904251346944', '0', '0,', 50, '0000000050,', '1', 0, '审核', '审核', '4', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904276512768', '0', '0,', 60, '0000000060,', '1', 0, '驳回', '驳回', '5', 'msg_inner_msg_status', '1', '', 'color:#f00;', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_dict_data` VALUES ('1306181904301678592', '0', '0,', 70, '0000000070,', '1', 0, '草稿', '草稿', '9', 'msg_inner_msg_status', '1', '', '', '', '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_dict_type`;
CREATE TABLE `js_sys_dict_type`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '字典类型',
  `is_sys` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否系统字典',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_dict_type_is`(`is_sys`) USING BTREE,
  INDEX `idx_sys_dict_type_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_dict_type
-- ----------------------------
INSERT INTO `js_sys_dict_type` VALUES ('1306181900061237248', '是否', 'sys_yes_no', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900111568896', '状态', 'sys_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900136734720', '显示隐藏', 'sys_show_hide', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900157706240', '国际化语言类型', 'sys_lang_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900187066368', '客户端设备类型', 'sys_device_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900208037888', '菜单归属系统', 'sys_menu_sys_code', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900233203712', '菜单类型', 'sys_menu_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900249980928', '菜单权重', 'sys_menu_weight', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900275146752', '区域类型', 'sys_area_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900291923968', '机构类型', 'sys_office_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900317089792', '查询状态', 'sys_search_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900342255616', '用户性别', 'sys_user_sex', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900363227136', '用户状态', 'sys_user_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900384198656', '用户类型', 'sys_user_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900405170176', '角色分类', 'sys_role_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900426141696', '角色数据范围', 'sys_role_data_scope', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900451307520', '角色业务范围', 'sys_role_biz_scope', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900472279040', '岗位分类', 'sys_post_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900489056256', '日志类型', 'sys_log_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900510027776', '作业分组', 'sys_job_group', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900530999296', '作业错过策略', 'sys_job_misfire_instruction', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900551970816', '作业状态', 'sys_job_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900572942336', '作业任务类型', 'sys_job_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900593913856', '作业任务事件', 'sys_job_event', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900610691072', '消息类型', 'sys_msg_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900631662592', '推送状态', 'sys_msg_push_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900652634112', '读取状态', 'sys_msg_read_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900673605632', '内容级别', 'msg_inner_content_level', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900690382848', '内容类型', 'msg_inner_content_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900711354368', '接受类型', 'msg_inner_receiver_type', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_dict_type` VALUES ('1306181900728131584', '消息状态', 'msg_inner_msg_status', '1', '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);

-- ----------------------------
-- Table structure for js_sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_employee`;
CREATE TABLE `js_sys_employee`  (
  `emp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工编码',
  `emp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工姓名',
  `emp_name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工英文名',
  `emp_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '员工工号',
  `office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构编码',
  `office_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构名称',
  `company_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司编码',
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公司名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0在职 1删除 2离职）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`emp_code`) USING BTREE,
  INDEX `idx_sys_employee_cco`(`company_code`) USING BTREE,
  INDEX `idx_sys_employee_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_employee_ud`(`update_date`) USING BTREE,
  INDEX `idx_sys_employee_oc`(`office_code`) USING BTREE,
  INDEX `idx_sys_employee_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_employee_office
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_employee_office`;
CREATE TABLE `js_sys_employee_office`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `emp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工编码',
  `office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构编码',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '岗位编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工附属机构关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_employee_post
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_employee_post`;
CREATE TABLE `js_sys_employee_post`  (
  `emp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '员工编码',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  PRIMARY KEY (`emp_code`, `post_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_file_entity
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_file_entity`;
CREATE TABLE `js_sys_file_entity`  (
  `file_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件编号',
  `file_md5` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件MD5',
  `file_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件相对路径',
  `file_content_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件内容类型',
  `file_extension` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件后缀扩展名',
  `file_size` decimal(31, 0) NOT NULL COMMENT '文件大小(单位B)',
  `file_meta` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文件信息(JSON格式)',
  `file_preview` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文件预览标记',
  PRIMARY KEY (`file_id`) USING BTREE,
  INDEX `idx_sys_file_entity_md5`(`file_md5`) USING BTREE,
  INDEX `idx_sys_file_entity_size`(`file_size`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件实体表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_file_upload
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_file_upload`;
CREATE TABLE `js_sys_file_upload`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `file_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件编号',
  `file_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件名称',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件分类（image、media、file）',
  `file_sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '文件排序（升序）',
  `biz_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_file_biz_ft`(`file_type`) USING BTREE,
  INDEX `idx_sys_file_biz_fi`(`file_id`) USING BTREE,
  INDEX `idx_sys_file_biz_status`(`status`) USING BTREE,
  INDEX `idx_sys_file_biz_cb`(`create_by`) USING BTREE,
  INDEX `idx_sys_file_biz_ud`(`update_date`) USING BTREE,
  INDEX `idx_sys_file_biz_bt`(`biz_type`) USING BTREE,
  INDEX `idx_sys_file_biz_bk`(`biz_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件上传表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_job
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_job`;
CREATE TABLE `js_sys_job`  (
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务描述',
  `invoke_target` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Cron执行表达式',
  `misfire_instruction` decimal(1, 0) NOT NULL COMMENT '计划执行错误策略',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否并发执行',
  `instance_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSiteScheduler' COMMENT '集群的实例名字',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1删除 2暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`job_name`, `job_group`) USING BTREE,
  INDEX `idx_sys_job_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '作业调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_job
-- ----------------------------
INSERT INTO `js_sys_job` VALUES ('MsgLocalMergePushTask', 'SYSTEM', '消息推送服务 (合并推送)', 'msgLocalMergePushTask.execute()', '0 0/30 * * * ?', 2, '0', 'JeeSiteScheduler', '2', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL);
INSERT INTO `js_sys_job` VALUES ('MsgLocalPushTask', 'SYSTEM', '消息推送服务 (实时推送)', 'msgLocalPushTask.execute()', '0/3 * * * * ?', 2, '0', 'JeeSiteScheduler', '2', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL);

-- ----------------------------
-- Table structure for js_sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_job_log`;
CREATE TABLE `js_sys_job_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `job_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志类型',
  `job_event` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志事件',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `is_exception` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否异常',
  `exception_info` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '异常信息',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_job_log_jn`(`job_name`) USING BTREE,
  INDEX `idx_sys_job_log_jg`(`job_group`) USING BTREE,
  INDEX `idx_sys_job_log_t`(`job_type`) USING BTREE,
  INDEX `idx_sys_job_log_e`(`job_event`) USING BTREE,
  INDEX `idx_sys_job_log_ie`(`is_exception`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '作业调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_lang
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_lang`;
CREATE TABLE `js_sys_lang`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `module_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属模块',
  `lang_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '语言编码',
  `lang_text` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '语言译文',
  `lang_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '语言类型',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_lang_code`(`lang_code`) USING BTREE,
  INDEX `idx_sys_lang_type`(`lang_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '国际化语言' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_log`;
CREATE TABLE `js_sys_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `log_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '日志类型',
  `log_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '日志标题',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_by_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名称',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `request_uri` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作方式',
  `request_params` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '操作提交的数据',
  `diff_modify_data` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '新旧数据比较结果',
  `biz_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务类型',
  `remote_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '操作IP地址',
  `server_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '请求服务器地址',
  `is_exception` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否异常',
  `exception_info` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '异常信息',
  `user_agent` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户代理',
  `device_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '设备名称/操作系统',
  `browser_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '浏览器名称',
  `execute_time` decimal(19, 0) NULL DEFAULT NULL COMMENT '执行时间',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_log_cb`(`create_by`) USING BTREE,
  INDEX `idx_sys_log_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_log_lt`(`log_type`) USING BTREE,
  INDEX `idx_sys_log_bk`(`biz_key`) USING BTREE,
  INDEX `idx_sys_log_bt`(`biz_type`) USING BTREE,
  INDEX `idx_sys_log_ie`(`is_exception`) USING BTREE,
  INDEX `idx_sys_log_cd`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_menu`;
CREATE TABLE `js_sys_menu`  (
  `menu_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `menu_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单类型（1菜单 2权限 3开发）',
  `menu_href` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '链接',
  `menu_target` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '目标',
  `menu_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图标',
  `menu_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '颜色',
  `menu_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单标题',
  `permission` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `weight` decimal(4, 0) NULL DEFAULT NULL COMMENT '菜单权重',
  `is_show` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否显示（1显示 0隐藏）',
  `sys_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属系统（default:主导航菜单、mobileApp:APP菜单）',
  `module_codes` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属模块（多个用逗号隔开）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`menu_code`) USING BTREE,
  INDEX `idx_sys_menu_pc`(`parent_code`) USING BTREE,
  INDEX `idx_sys_menu_ts`(`tree_sort`) USING BTREE,
  INDEX `idx_sys_menu_status`(`status`) USING BTREE,
  INDEX `idx_sys_menu_mt`(`menu_type`) USING BTREE,
  INDEX `idx_sys_menu_pss`(`parent_codes`) USING BTREE,
  INDEX `idx_sys_menu_tss`(`tree_sorts`) USING BTREE,
  INDEX `idx_sys_menu_sc`(`sys_code`) USING BTREE,
  INDEX `idx_sys_menu_is`(`is_show`) USING BTREE,
  INDEX `idx_sys_menu_mcs`(`module_codes`) USING BTREE,
  INDEX `idx_sys_menu_wt`(`weight`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_menu
-- ----------------------------
INSERT INTO `js_sys_menu` VALUES ('1306181905367031808', '0', '0,', 9000, '0000009000,', '0', 0, '系统管理', '系统管理', '1', '', '', 'icon-settings', '', NULL, '', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908051386368', '1306181905367031808', '0,1306181905367031808,', 300, '0000009000,0000000300,', '0', 1, '系统管理/组织管理', '组织管理', '1', '', '', 'icon-grid', '', NULL, '', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908126883840', '1306181908051386368', '0,1306181905367031808,1306181908051386368,', 40, '0000009000,0000000300,0000000040,', '0', 2, '系统管理/组织管理/用户管理', '用户管理', '1', '/sys/empUser/index', '', 'icon-user', '', NULL, '', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908181409792', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 30, '0000009000,0000000300,0000000040,0000000030,', '1', 3, '系统管理/组织管理/用户管理/查看', '查看', '2', '', '', '', '', NULL, 'sys:empUser:view', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908235935744', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 40, '0000009000,0000000300,0000000040,0000000040,', '1', 3, '系统管理/组织管理/用户管理/编辑', '编辑', '2', '', '', '', '', NULL, 'sys:empUser:edit', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908290461696', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 60, '0000009000,0000000300,0000000040,0000000060,', '1', 3, '系统管理/组织管理/用户管理/分配角色', '分配角色', '2', '', '', '', '', NULL, 'sys:empUser:authRole', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908349181952', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 50, '0000009000,0000000300,0000000040,0000000050,', '1', 3, '系统管理/组织管理/用户管理/分配数据', '分配数据', '2', '', '', '', '', NULL, 'sys:empUser:authDataScope', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908420485120', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 60, '0000009000,0000000300,0000000040,0000000060,', '1', 3, '系统管理/组织管理/用户管理/停用启用', '停用启用', '2', '', '', '', '', NULL, 'sys:empUser:updateStatus', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908491788288', '1306181908126883840', '0,1306181905367031808,1306181908051386368,1306181908126883840,', 70, '0000009000,0000000300,0000000040,0000000070,', '1', 3, '系统管理/组织管理/用户管理/重置密码', '重置密码', '2', '', '', '', '', NULL, 'sys:empUser:resetpwd', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908546314240', '1306181908051386368', '0,1306181905367031808,1306181908051386368,', 50, '0000009000,0000000300,0000000050,', '0', 2, '系统管理/组织管理/机构管理', '机构管理', '1', '/sys/office/index', '', 'icon-grid', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908600840192', '1306181908546314240', '0,1306181905367031808,1306181908051386368,1306181908546314240,', 30, '0000009000,0000000300,0000000050,0000000030,', '1', 3, '系统管理/组织管理/机构管理/查看', '查看', '2', '', '', '', '', NULL, 'sys:office:view', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908651171840', '1306181908546314240', '0,1306181905367031808,1306181908051386368,1306181908546314240,', 40, '0000009000,0000000300,0000000050,0000000040,', '1', 3, '系统管理/组织管理/机构管理/编辑', '编辑', '2', '', '', '', '', NULL, 'sys:office:edit', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908709892096', '1306181908051386368', '0,1306181905367031808,1306181908051386368,', 70, '0000009000,0000000300,0000000070,', '0', 2, '系统管理/组织管理/公司管理', '公司管理', '1', '/sys/company/list', '', 'icon-fire', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908760223744', '1306181908709892096', '0,1306181905367031808,1306181908051386368,1306181908709892096,', 30, '0000009000,0000000300,0000000070,0000000030,', '1', 3, '系统管理/组织管理/公司管理/查看', '查看', '2', '', '', '', '', NULL, 'sys:company:view', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908810555392', '1306181908709892096', '0,1306181905367031808,1306181908051386368,1306181908709892096,', 40, '0000009000,0000000300,0000000070,0000000040,', '1', 3, '系统管理/组织管理/公司管理/编辑', '编辑', '2', '', '', '', '', NULL, 'sys:company:edit', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908856692736', '1306181908051386368', '0,1306181905367031808,1306181908051386368,', 70, '0000009000,0000000300,0000000070,', '0', 2, '系统管理/组织管理/岗位管理', '岗位管理', '1', '/sys/post/list', '', 'icon-trophy', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908907024384', '1306181908856692736', '0,1306181905367031808,1306181908051386368,1306181908856692736,', 30, '0000009000,0000000300,0000000070,0000000030,', '1', 3, '系统管理/组织管理/岗位管理/查看', '查看', '2', '', '', '', '', NULL, 'sys:post:view', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181908961550336', '1306181908856692736', '0,1306181905367031808,1306181908051386368,1306181908856692736,', 40, '0000009000,0000000300,0000000070,0000000040,', '1', 3, '系统管理/组织管理/岗位管理/编辑', '编辑', '2', '', '', '', '', NULL, 'sys:post:edit', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909007687680', '1306181905367031808', '0,1306181905367031808,', 400, '0000009000,0000000400,', '0', 1, '系统管理/权限管理', '权限管理', '1', '', '', 'icon-social-dropbox', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909053825024', '1306181909007687680', '0,1306181905367031808,1306181909007687680,', 30, '0000009000,0000000400,0000000030,', '1', 2, '系统管理/权限管理/角色管理', '角色管理', '1', '/sys/role/list', '', 'icon-people', '', NULL, 'sys:role', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909099962368', '1306181909007687680', '0,1306181905367031808,1306181909007687680,', 40, '0000009000,0000000400,0000000040,', '1', 2, '系统管理/权限管理/二级管理员', '二级管理员', '1', '/sys/secAdmin/list', '', 'icon-user-female', '', NULL, 'sys:secAdmin', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909141905408', '1306181909007687680', '0,1306181905367031808,1306181909007687680,', 50, '0000009000,0000000400,0000000050,', '1', 2, '系统管理/权限管理/系统管理员', '系统管理员', '1', '/sys/corpAdmin/list', '', 'icon-badge', '', NULL, 'sys:corpAdmin', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909188042752', '1306181909007687680', '0,1306181905367031808,1306181909007687680,', 80, '0000009000,0000000400,0000000080,', '1', 2, '系统管理/权限管理/安全审计', '安全审计', '1', '/sys/audit/list', '', 'icon-energy', '', NULL, 'sys:audit', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:29', 'system', '2020-09-16 18:43:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909238374400', '1306181905367031808', '0,1306181905367031808,', 500, '0000009000,0000000500,', '0', 1, '系统管理/系统设置', '系统设置', '1', '', '', 'icon-settings', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909288706048', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 30, '0000009000,0000000500,0000000030,', '1', 2, '系统管理/系统设置/菜单管理', '菜单管理', '1', '/sys/menu/list', '', 'icon-book-open', '', NULL, 'sys:menu', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909343232000', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 40, '0000009000,0000000500,0000000040,', '1', 2, '系统管理/系统设置/模块管理', '模块管理', '1', '/sys/module/list', '', 'icon-grid', '', NULL, 'sys:module', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909389369344', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 50, '0000009000,0000000500,0000000050,', '1', 2, '系统管理/系统设置/参数设置', '参数设置', '1', '/sys/config/list', '', 'icon-wrench', '', NULL, 'sys:config', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909439700992', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 60, '0000009000,0000000500,0000000060,', '0', 2, '系统管理/系统设置/字典管理', '字典管理', '1', '/sys/dictType/list', '', 'icon-social-dropbox', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909494226944', '1306181909439700992', '0,1306181905367031808,1306181909238374400,1306181909439700992,', 30, '0000009000,0000000500,0000000060,0000000030,', '1', 3, '系统管理/系统设置/字典管理/类型查看', '类型查看', '2', '', '', '', '', NULL, 'sys:dictType:view', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909544558592', '1306181909439700992', '0,1306181905367031808,1306181909238374400,1306181909439700992,', 40, '0000009000,0000000500,0000000060,0000000040,', '1', 3, '系统管理/系统设置/字典管理/类型编辑', '类型编辑', '2', '', '', '', '', NULL, 'sys:dictType:edit', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909586501632', '1306181909439700992', '0,1306181905367031808,1306181909238374400,1306181909439700992,', 50, '0000009000,0000000500,0000000060,0000000050,', '1', 3, '系统管理/系统设置/字典管理/数据查看', '数据查看', '2', '', '', '', '', NULL, 'sys:dictData:view', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909632638976', '1306181909439700992', '0,1306181905367031808,1306181909238374400,1306181909439700992,', 60, '0000009000,0000000500,0000000060,0000000060,', '1', 3, '系统管理/系统设置/字典管理/数据编辑', '数据编辑', '2', '', '', '', '', NULL, 'sys:dictData:edit', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909750079488', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 70, '0000009000,0000000500,0000000070,', '1', 2, '系统管理/系统设置/行政区划', '行政区划', '1', '/sys/area/list', '', 'icon-map', '', NULL, 'sys:area', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909787828224', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 80, '0000009000,0000000500,0000000080,', '1', 2, '系统管理/系统设置/国际化管理', '国际化管理', '1', '/sys/lang/list', '', 'icon-globe', '', NULL, 'sys:lang', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909833965568', '1306181909238374400', '0,1306181905367031808,1306181909238374400,', 90, '0000009000,0000000500,0000000090,', '1', 2, '系统管理/系统设置/产品许可信息', '产品许可信息', '1', '//licence', '', 'icon-paper-plane', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909871714304', '1306181905367031808', '0,1306181905367031808,', 600, '0000009000,0000000600,', '0', 1, '系统管理/系统监控', '系统监控', '1', '', '', 'icon-ghost', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181909913657344', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 40, '0000009000,0000000600,0000000040,', '1', 2, '系统管理/系统监控/访问日志', '访问日志', '1', '/sys/log/list', '', 'fa fa-bug', '', NULL, 'sys:log', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910022709248', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 50, '0000009000,0000000600,0000000050,', '1', 2, '系统管理/系统监控/数据监控', '数据监控', '1', '//druid/index.html', '', 'icon-disc', '', NULL, 'sys:state:druid', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910064652288', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 60, '0000009000,0000000600,0000000060,', '1', 2, '系统管理/系统监控/缓存监控', '缓存监控', '1', '/state/cache/index', '', 'icon-social-dribbble', '', NULL, 'sys:stste:cache', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910106595328', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 70, '0000009000,0000000600,0000000070,', '1', 2, '系统管理/系统监控/服务器监控', '服务器监控', '1', '/state/server/index', '', 'icon-speedometer', '', NULL, 'sys:state:server', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910152732672', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 80, '0000009000,0000000600,0000000080,', '1', 2, '系统管理/系统监控/作业监控', '作业监控', '1', '/job/list', '', 'icon-notebook', '', NULL, 'sys:job', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910190481408', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 90, '0000009000,0000000600,0000000090,', '1', 2, '系统管理/系统监控/在线用户', '在线用户', '1', '/sys/online/list', '', 'icon-social-twitter', '', NULL, 'sys:online', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910228230144', '1306181909871714304', '0,1306181905367031808,1306181909871714304,', 100, '0000009000,0000000600,0000000100,', '1', 2, '系统管理/系统监控/在线文档', '在线文档', '1', '//swagger-ui.html', '', 'icon-book-open', '', NULL, 'sys:swagger', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910349864960', '1306181905367031808', '0,1306181905367031808,', 700, '0000009000,0000000700,', '0', 1, '系统管理/消息推送', '消息推送', '1', '', '', 'icon-envelope-letter', '', NULL, '', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910400196608', '1306181910349864960', '0,1306181905367031808,1306181910349864960,', 30, '0000009000,0000000700,0000000030,', '1', 2, '系统管理/消息推送/未完成消息', '未完成消息', '1', '/msg/msgPush/list', '', '', '', NULL, 'msg:msgPush', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910442139648', '1306181910349864960', '0,1306181905367031808,1306181910349864960,', 40, '0000009000,0000000700,0000000040,', '1', 2, '系统管理/消息推送/已完成消息', '已完成消息', '1', '/msg/msgPush/list?pushed=true', '', '', '', NULL, 'msg:msgPush', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910484082688', '1306181910349864960', '0,1306181905367031808,1306181910349864960,', 50, '0000009000,0000000700,0000000050,', '1', 2, '系统管理/消息推送/消息模板管理', '消息模板管理', '1', '/msg/msgTemplate/list', '', '', '', NULL, 'msg:msgTemplate', 60, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910530220032', '1306181905367031808', '0,1306181905367031808,', 900, '0000009000,0000000900,', '0', 1, '系统管理/研发工具', '研发工具', '1', '', '', 'fa fa-code', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910572163072', '1306181910530220032', '0,1306181905367031808,1306181910530220032,', 30, '0000009000,0000000900,0000000030,', '1', 2, '系统管理/研发工具/代码生成工具', '代码生成工具', '1', '/gen/genTable/list', '', 'fa fa-code', '', NULL, 'gen:genTable', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910622494720', '1306181910530220032', '0,1306181905367031808,1306181910530220032,', 100, '0000009000,0000000900,0000000100,', '0', 2, '系统管理/研发工具/代码生成实例', '代码生成实例', '1', '', '', 'icon-social-dropbox', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910672826368', '1306181910622494720', '0,1306181905367031808,1306181910530220032,1306181910622494720,', 30, '0000009000,0000000900,0000000100,0000000030,', '1', 3, '系统管理/研发工具/代码生成实例/单表_主子表', '单表/主子表', '1', '/test/testData/list', '', '', '', NULL, 'test:testData', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910714769408', '1306181910622494720', '0,1306181905367031808,1306181910530220032,1306181910622494720,', 40, '0000009000,0000000900,0000000100,0000000040,', '1', 3, '系统管理/研发工具/代码生成实例/树表_树结构表', '树表/树结构表', '1', '/test/testTree/list', '', '', '', NULL, 'test:testTree', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910769295360', '1306181910530220032', '0,1306181905367031808,1306181910530220032,', 200, '0000009000,0000000900,0000000200,', '0', 2, '系统管理/研发工具/数据表格实例', '数据表格实例', '1', '', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910823821312', '1306181910769295360', '0,1306181905367031808,1306181910530220032,1306181910769295360,', 30, '0000009000,0000000900,0000000200,0000000030,', '1', 3, '系统管理/研发工具/数据表格实例/多表头分组小计合计', '多表头分组小计合计', '1', '/demo/dataGrid/groupGrid', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910882541568', '1306181910769295360', '0,1306181905367031808,1306181910530220032,1306181910769295360,', 40, '0000009000,0000000900,0000000200,0000000040,', '1', 3, '系统管理/研发工具/数据表格实例/编辑表格多行编辑', '编辑表格多行编辑', '1', '/demo/dataGrid/editGrid', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910924484608', '1306181910769295360', '0,1306181905367031808,1306181910530220032,1306181910769295360,', 50, '0000009000,0000000900,0000000200,0000000050,', '1', 3, '系统管理/研发工具/数据表格实例/多表联动示例', '多表联动示例', '1', '/demo/dataGrid/multiGrid', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181910966427648', '1306181910530220032', '0,1306181905367031808,1306181910530220032,', 300, '0000009000,0000000900,0000000300,', '0', 2, '系统管理/研发工具/表单组件实例', '表单组件实例', '1', '', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911008370688', '1306181910966427648', '0,1306181905367031808,1306181910530220032,1306181910966427648,', 30, '0000009000,0000000900,0000000300,0000000030,', '1', 3, '系统管理/研发工具/表单组件实例/组件应用实例', '组件应用实例', '1', '/demo/form/editForm', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911130005504', '1306181910966427648', '0,1306181905367031808,1306181910530220032,1306181910966427648,', 40, '0000009000,0000000900,0000000300,0000000040,', '1', 3, '系统管理/研发工具/表单组件实例/栅格布局实例', '栅格布局实例', '1', '/demo/form/layoutForm', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911272611840', '1306181910966427648', '0,1306181905367031808,1306181910530220032,1306181910966427648,', 50, '0000009000,0000000900,0000000300,0000000050,', '1', 3, '系统管理/研发工具/表单组件实例/表格表单实例', '表格表单实例', '1', '/demo/form/tableForm', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911314554880', '1306181910966427648', '0,1306181905367031808,1306181910530220032,1306181910966427648,', 60, '0000009000,0000000900,0000000300,0000000060,', '1', 3, '系统管理/研发工具/表单组件实例/多页签应用示例', '多页签应用示例', '1', '/demo/form/tabPage', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911360692224', '1306181910530220032', '0,1306181905367031808,1306181910530220032,', 400, '0000009000,0000000900,0000000400,', '0', 2, '系统管理/研发工具/前端界面实例', '前端界面实例', '1', '', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911406829568', '1306181911360692224', '0,1306181905367031808,1306181910530220032,1306181911360692224,', 30, '0000009000,0000000900,0000000400,0000000030,', '1', 3, '系统管理/研发工具/前端界面实例/图标样式查找', '图标样式查找', '1', '//tags/iconselect', '', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911448772608', '1306181905367031808', '0,1306181905367031808,', 999, '0000009000,0000000999,', '0', 1, '系统管理/JeeSite社区', 'JeeSite社区', '1', '', '', 'icon-directions', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911490715648', '1306181911448772608', '0,1306181905367031808,1306181911448772608,', 30, '0000009000,0000000999,0000000030,', '1', 2, '系统管理/JeeSite社区/官方网站', '官方网站', '1', 'http://jeesite.com', '_blank', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911536852992', '1306181911448772608', '0,1306181905367031808,1306181911448772608,', 50, '0000009000,0000000999,0000000050,', '1', 2, '系统管理/JeeSite社区/作者博客', '作者博客', '1', 'https://my.oschina.net/thinkgem', '_blank', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911587184640', '1306181911448772608', '0,1306181905367031808,1306181911448772608,', 40, '0000009000,0000000999,0000000040,', '1', 2, '系统管理/JeeSite社区/问题反馈', '问题反馈', '1', 'https://gitee.com/thinkgem/jeesite4/issues', '_blank', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911629127680', '1306181911448772608', '0,1306181905367031808,1306181911448772608,', 60, '0000009000,0000000999,0000000060,', '1', 2, '系统管理/JeeSite社区/开源社区', '开源社区', '1', 'http://jeesite.net', '_blank', '', '', NULL, '', 80, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911679459328', '0', '0,', 9010, '0000009010,', '0', 0, '我的工作', '我的工作', '1', '', '', 'icon-screen-desktop', '', NULL, '', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911771734016', '1306181911679459328', '0,1306181911679459328,', 600, '0000009010,0000000600,', '0', 1, '我的工作/站内消息', '站内消息', '1', '/msg/msgInner/list', '', 'icon-speech', '', NULL, '', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911817871360', '1306181911771734016', '0,1306181911679459328,1306181911771734016,', 30, '0000009010,0000000600,0000000030,', '1', 2, '我的工作/站内消息/查看', '查看', '2', '', '', '', '', NULL, 'msg:msgInner:view', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911859814400', '1306181911771734016', '0,1306181911679459328,1306181911771734016,', 40, '0000009010,0000000600,0000000040,', '1', 2, '我的工作/站内消息/编辑', '编辑', '2', '', '', '', '', NULL, 'msg:msgInner:edit', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_menu` VALUES ('1306181911901757440', '1306181911771734016', '0,1306181911679459328,1306181911771734016,', 50, '0000009010,0000000600,0000000050,', '1', 2, '我的工作/站内消息/审核', '审核', '2', '', '', '', '', NULL, 'msg:msgInner:auth', 40, '1', 'default', 'core', '0', 'system', '2020-09-16 18:43:30', 'system', '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_module`;
CREATE TABLE `js_sys_module`  (
  `module_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模块编码',
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模块名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '模块描述',
  `main_class_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '主类全名',
  `current_version` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '当前版本',
  `upgrade_info` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '升级信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`module_code`) USING BTREE,
  INDEX `idx_sys_module_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '模块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_module
-- ----------------------------
INSERT INTO `js_sys_module` VALUES ('bpm', '业务流程', '流程设计器、流程监管控制、流程办理、流程追踪', 'com.jeesite.modules.bpm.entity.BpmEntity', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('cms', '内容管理', '网站、站点、栏目、文章、链接、评论、留言板', 'com.jeesite.modules.cms.web.CmsController', '4.0.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('core', '核心模块', '用户、角色、组织、模块、菜单、字典、参数', 'com.jeesite.modules.sys.web.LoginController', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('filemanager', '文件管理', '公共文件柜、个人文件柜、文件预览、文件分享', 'com.jeesite.modules.filemanager.web.FilemanagerController', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('oauth2', '第三方登录', '第三方登录模块、如：QQ、微信、Gitee、钉钉等', 'com.jeesite.modules.oauth2.web.Oauth2Controller', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('ureport', '统计报表', '报表设计器、图表设计、实现任意复杂的中国式报表', 'com.jeesite.modules.ureport.config.UreportConfig', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('visual', '数据大屏', '拖拽即可无需编程就能轻松搭建可视化数据大屏', 'com.jeesite.modules.visual.web.VisualDataController', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);
INSERT INTO `js_sys_module` VALUES ('weixin', '微信接入', '微信公众号绑定、消息推送、微信其它接口调用', 'com.jeesite.modules.weixin.mp.web.WeixinLoginController', '4.2.0', NULL, '0', 'system', '2020-09-16 18:43:27', 'system', '2020-09-16 18:43:27', NULL);

-- ----------------------------
-- Table structure for js_sys_msg_inner
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_inner`;
CREATE TABLE `js_sys_msg_inner`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `msg_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息标题',
  `content_level` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容级别（1普通 2一般 3紧急）',
  `content_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容类型（1公告 2新闻 3会议 4其它）',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息内容',
  `receive_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者类型（0全部 1用户 2部门 3角色 4岗位）',
  `receive_codes` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '接受者字符串',
  `receive_names` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '接受者名称字符串',
  `send_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送者用户姓名',
  `send_date` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `is_attac` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否有附件',
  `notify_types` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '通知类型（PC APP 短信 邮件 微信）多选',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1删除 4审核 5驳回 9草稿）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_msg_inner_cb`(`create_by`) USING BTREE,
  INDEX `idx_sys_msg_inner_status`(`status`) USING BTREE,
  INDEX `idx_sys_msg_inner_cl`(`content_level`) USING BTREE,
  INDEX `idx_sys_msg_inner_sc`(`send_user_code`) USING BTREE,
  INDEX `idx_sys_msg_inner_sd`(`send_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '内部消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_msg_inner_record
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_inner_record`;
CREATE TABLE `js_sys_msg_inner_record`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `msg_inner_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所属消息',
  `receive_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户姓名',
  `read_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  `is_star` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否标星',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_msg_inner_r_mi`(`msg_inner_id`) USING BTREE,
  INDEX `idx_sys_msg_inner_r_ruc`(`receive_user_code`) USING BTREE,
  INDEX `idx_sys_msg_inner_r_stat`(`read_status`) USING BTREE,
  INDEX `idx_sys_msg_inner_r_star`(`is_star`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '内部消息发送记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_msg_push
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_push`;
CREATE TABLE `js_sys_msg_push`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `msg_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息类型（PC APP 短信 邮件 微信）',
  `msg_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息内容',
  `biz_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务类型',
  `receive_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者账号',
  `receive_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户姓名',
  `send_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送者用户姓名',
  `send_date` datetime(0) NOT NULL COMMENT '发送时间',
  `is_merge_push` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否合并推送',
  `plan_push_date` datetime(0) NULL DEFAULT NULL COMMENT '计划推送时间',
  `push_number` int(11) NULL DEFAULT NULL COMMENT '推送尝试次数',
  `push_return_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送返回结果码',
  `push_return_msg_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送返回消息编号',
  `push_return_content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '推送返回的内容信息',
  `push_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送状态（0未推送 1成功  2失败）',
  `push_date` datetime(0) NULL DEFAULT NULL COMMENT '推送时间',
  `read_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime(0) NULL DEFAULT NULL COMMENT '读取时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_msg_push_type`(`msg_type`) USING BTREE,
  INDEX `idx_sys_msg_push_rc`(`receive_code`) USING BTREE,
  INDEX `idx_sys_msg_push_uc`(`receive_user_code`) USING BTREE,
  INDEX `idx_sys_msg_push_suc`(`send_user_code`) USING BTREE,
  INDEX `idx_sys_msg_push_pd`(`plan_push_date`) USING BTREE,
  INDEX `idx_sys_msg_push_ps`(`push_status`) USING BTREE,
  INDEX `idx_sys_msg_push_rs`(`read_status`) USING BTREE,
  INDEX `idx_sys_msg_push_bk`(`biz_key`) USING BTREE,
  INDEX `idx_sys_msg_push_bt`(`biz_type`) USING BTREE,
  INDEX `idx_sys_msg_push_imp`(`is_merge_push`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '消息推送表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_msg_pushed
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_pushed`;
CREATE TABLE `js_sys_msg_pushed`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `msg_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息类型（PC APP 短信 邮件 微信）',
  `msg_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息内容',
  `biz_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务主键',
  `biz_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务类型',
  `receive_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者账号',
  `receive_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户编码',
  `receive_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '接受者用户姓名',
  `send_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送者用户编码',
  `send_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送者用户姓名',
  `send_date` datetime(0) NOT NULL COMMENT '发送时间',
  `is_merge_push` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否合并推送',
  `plan_push_date` datetime(0) NULL DEFAULT NULL COMMENT '计划推送时间',
  `push_number` int(11) NULL DEFAULT NULL COMMENT '推送尝试次数',
  `push_return_content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '推送返回的内容信息',
  `push_return_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送返回结果码',
  `push_return_msg_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送返回消息编号',
  `push_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推送状态（0未推送 1成功  2失败）',
  `push_date` datetime(0) NULL DEFAULT NULL COMMENT '推送时间',
  `read_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '读取状态（0未送达 1已读 2未读）',
  `read_date` datetime(0) NULL DEFAULT NULL COMMENT '读取时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_msg_pushed_type`(`msg_type`) USING BTREE,
  INDEX `idx_sys_msg_pushed_rc`(`receive_code`) USING BTREE,
  INDEX `idx_sys_msg_pushed_uc`(`receive_user_code`) USING BTREE,
  INDEX `idx_sys_msg_pushed_suc`(`send_user_code`) USING BTREE,
  INDEX `idx_sys_msg_pushed_pd`(`plan_push_date`) USING BTREE,
  INDEX `idx_sys_msg_pushed_ps`(`push_status`) USING BTREE,
  INDEX `idx_sys_msg_pushed_rs`(`read_status`) USING BTREE,
  INDEX `idx_sys_msg_pushed_bk`(`biz_key`) USING BTREE,
  INDEX `idx_sys_msg_pushed_bt`(`biz_type`) USING BTREE,
  INDEX `idx_sys_msg_pushed_imp`(`is_merge_push`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '消息已推送表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_msg_template
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_msg_template`;
CREATE TABLE `js_sys_msg_template`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `module_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属模块',
  `tpl_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模板键值',
  `tpl_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模板名称',
  `tpl_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模板类型',
  `tpl_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '模板内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sys_msg_tpl_key`(`tpl_key`) USING BTREE,
  INDEX `idx_sys_msg_tpl_type`(`tpl_type`) USING BTREE,
  INDEX `idx_sys_msg_tpl_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '消息模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_office
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_office`;
CREATE TABLE `js_sys_office`  (
  `office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `view_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构代码',
  `office_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构名称',
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构全称',
  `office_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `leader` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '办公电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮政编码',
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`office_code`) USING BTREE,
  INDEX `idx_sys_office_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_office_pc`(`parent_code`) USING BTREE,
  INDEX `idx_sys_office_pcs`(`parent_codes`) USING BTREE,
  INDEX `idx_sys_office_status`(`status`) USING BTREE,
  INDEX `idx_sys_office_ot`(`office_type`) USING BTREE,
  INDEX `idx_sys_office_vc`(`view_code`) USING BTREE,
  INDEX `idx_sys_office_ts`(`tree_sort`) USING BTREE,
  INDEX `idx_sys_office_tss`(`tree_sorts`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '组织机构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_office
-- ----------------------------
INSERT INTO `js_sys_office` VALUES ('SD', '0', '0,', 40, '0000000040,', '0', 0, '山东公司', 'SD', '山东公司', '山东公司', '1', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDJN', 'SD', '0,SD,', 30, '0000000040,0000000030,', '0', 1, '山东公司/济南公司', 'SDJN', '济南公司', '山东济南公司', '2', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDJN01', 'SDJN', '0,SD,SDJN,', 30, '0000000040,0000000030,0000000030,', '1', 2, '山东公司/济南公司/企管部', 'SDJN01', '企管部', '山东济南企管部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDJN02', 'SDJN', '0,SD,SDJN,', 40, '0000000040,0000000030,0000000040,', '1', 2, '山东公司/济南公司/财务部', 'SDJN02', '财务部', '山东济南财务部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDJN03', 'SDJN', '0,SD,SDJN,', 50, '0000000040,0000000030,0000000050,', '1', 2, '山东公司/济南公司/研发部', 'SDJN03', '研发部', '山东济南研发部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDQD', 'SD', '0,SD,', 40, '0000000040,0000000040,', '0', 1, '山东公司/青岛公司', 'SDQD', '青岛公司', '山东青岛公司', '2', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDQD01', 'SDQD', '0,SD,SDQD,', 30, '0000000040,0000000040,0000000030,', '1', 2, '山东公司/青岛公司/企管部', 'SDQD01', '企管部', '山东青岛企管部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDQD02', 'SDQD', '0,SD,SDQD,', 40, '0000000040,0000000040,0000000040,', '1', 2, '山东公司/青岛公司/财务部', 'SDQD02', '财务部', '山东青岛财务部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_office` VALUES ('SDQD03', 'SDQD', '0,SD,SDQD,', 50, '0000000040,0000000040,0000000050,', '1', 2, '山东公司/青岛公司/研发部', 'SDQD03', '研发部', '山东青岛研发部', '3', NULL, NULL, NULL, NULL, NULL, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_post
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_post`;
CREATE TABLE `js_sys_post`  (
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '岗位分类（高管、中层、基层）',
  `post_sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '岗位排序（升序）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  PRIMARY KEY (`post_code`) USING BTREE,
  INDEX `idx_sys_post_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_post_status`(`status`) USING BTREE,
  INDEX `idx_sys_post_ps`(`post_sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_post
-- ----------------------------
INSERT INTO `js_sys_post` VALUES ('ceo', '总经理', '1', 10, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('cfo', '财务经理', '2', 20, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('dept', '部门经理', '2', 40, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('hrm', '人力经理', '2', 30, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite');
INSERT INTO `js_sys_post` VALUES ('user', '普通员工', '3', 50, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', NULL, '0', 'JeeSite');

-- ----------------------------
-- Table structure for js_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role`;
CREATE TABLE `js_sys_role`  (
  `role_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编码',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色分类（高管、中层、基层、其它）',
  `role_sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '角色排序（升序）',
  `is_sys` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '系统内置（1是 0否）',
  `user_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型（employee员工 member会员）',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据范围设置（0未设置  1全部数据 2自定义数据）',
  `biz_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '适应业务范围（不同的功能，不同的数据权限支持）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`role_code`) USING BTREE,
  INDEX `idx_sys_role_cc`(`corp_code`) USING BTREE,
  INDEX `idx_sys_role_is`(`is_sys`) USING BTREE,
  INDEX `idx_sys_role_status`(`status`) USING BTREE,
  INDEX `idx_sys_role_rs`(`role_sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_role
-- ----------------------------
INSERT INTO `js_sys_role` VALUES ('corpAdmin', '系统管理员', NULL, 200, '1', 'none', '0', NULL, '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', '客户方使用的管理员角色，客户方管理员，集团管理员', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_role` VALUES ('default', '默认角色', NULL, 100, '1', 'none', '0', NULL, '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', '非管理员用户，共有的默认角色，在参数配置里指定', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_role` VALUES ('dept', '部门经理', NULL, 40, '0', 'employee', '0', NULL, '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', '部门经理', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_role` VALUES ('user', '普通员工', NULL, 50, '0', 'employee', '0', NULL, '0', 'system', '2020-09-16 18:43:28', 'system', '2020-09-16 18:43:28', '普通员工', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role_data_scope`;
CREATE TABLE `js_sys_role_data_scope`  (
  `role_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制角色编码',
  `ctrl_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制类型',
  `ctrl_data` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制数据',
  `ctrl_permi` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制权限',
  PRIMARY KEY (`role_code`, `ctrl_type`, `ctrl_data`, `ctrl_permi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色数据权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_role_menu`;
CREATE TABLE `js_sys_role_menu`  (
  `role_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编码',
  `menu_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单编码',
  PRIMARY KEY (`role_code`, `menu_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色与菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_role_menu
-- ----------------------------
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181905367031808');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908051386368');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908126883840');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908181409792');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908235935744');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908290461696');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908349181952');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908420485120');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908491788288');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908546314240');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908600840192');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908651171840');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908709892096');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908760223744');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908810555392');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908856692736');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908907024384');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181908961550336');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909007687680');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909053825024');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909099962368');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909141905408');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909188042752');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909238374400');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909288706048');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909343232000');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909389369344');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909439700992');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909494226944');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909544558592');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909586501632');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909632638976');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909750079488');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909787828224');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909833965568');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909871714304');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181909913657344');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910022709248');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910064652288');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910106595328');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910152732672');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910190481408');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910228230144');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910349864960');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910400196608');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910442139648');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910484082688');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910530220032');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910572163072');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910622494720');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910672826368');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910714769408');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910769295360');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910823821312');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910882541568');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910924484608');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181910966427648');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911008370688');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911130005504');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911272611840');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911314554880');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911360692224');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911406829568');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911448772608');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911490715648');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911536852992');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911587184640');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911629127680');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911679459328');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911771734016');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911817871360');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911859814400');
INSERT INTO `js_sys_role_menu` VALUES ('corpAdmin', '1306181911901757440');

-- ----------------------------
-- Table structure for js_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user`;
CREATE TABLE `js_sys_user`  (
  `user_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户编码',
  `login_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录密码',
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号码',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '办公电话',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户性别',
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像路径',
  `sign` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '个性签名',
  `wx_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '绑定的微信号',
  `mobile_imei` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '绑定的手机串号',
  `user_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户类型',
  `ref_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型引用编号',
  `ref_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型引用姓名',
  `mgr_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员类型（0非管理员 1系统管理员  2二级管理员）',
  `pwd_security_level` decimal(1, 0) NULL DEFAULT NULL COMMENT '密码安全级别（0初始 1很弱 2弱 3安全 4很安全）',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `pwd_update_record` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码修改记录',
  `pwd_question` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题',
  `pwd_question_answer` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题答案',
  `pwd_question_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题2',
  `pwd_question_answer_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题答案2',
  `pwd_question_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题3',
  `pwd_question_answer_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密保问题答案3',
  `pwd_quest_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码问题修改时间',
  `last_login_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '最后登陆IP',
  `last_login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `freeze_date` datetime(0) NULL DEFAULT NULL COMMENT '冻结时间',
  `freeze_cause` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '冻结原因',
  `user_weight` decimal(8, 0) NULL DEFAULT 0 COMMENT '用户权重（降序）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1删除 2停用 3冻结）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `corp_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '租户代码',
  `corp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'JeeSite' COMMENT '租户名称',
  `extend_s1` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 1',
  `extend_s2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 2',
  `extend_s3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 3',
  `extend_s4` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 4',
  `extend_s5` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 5',
  `extend_s6` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 6',
  `extend_s7` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 7',
  `extend_s8` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展 String 8',
  `extend_i1` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 1',
  `extend_i2` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 2',
  `extend_i3` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 3',
  `extend_i4` decimal(19, 0) NULL DEFAULT NULL COMMENT '扩展 Integer 4',
  `extend_f1` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 1',
  `extend_f2` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 2',
  `extend_f3` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 3',
  `extend_f4` decimal(19, 4) NULL DEFAULT NULL COMMENT '扩展 Float 4',
  `extend_d1` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 1',
  `extend_d2` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 2',
  `extend_d3` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 3',
  `extend_d4` datetime(0) NULL DEFAULT NULL COMMENT '扩展 Date 4',
  PRIMARY KEY (`user_code`) USING BTREE,
  INDEX `idx_sys_user_lc`(`login_code`) USING BTREE,
  INDEX `idx_sys_user_email`(`email`) USING BTREE,
  INDEX `idx_sys_user_mobile`(`mobile`) USING BTREE,
  INDEX `idx_sys_user_wo`(`wx_openid`) USING BTREE,
  INDEX `idx_sys_user_imei`(`mobile_imei`) USING BTREE,
  INDEX `idx_sys_user_rt`(`user_type`) USING BTREE,
  INDEX `idx_sys_user_rc`(`ref_code`) USING BTREE,
  INDEX `idx_sys_user_mt`(`mgr_type`) USING BTREE,
  INDEX `idx_sys_user_us`(`user_weight`) USING BTREE,
  INDEX `idx_sys_user_ud`(`update_date`) USING BTREE,
  INDEX `idx_sys_user_status`(`status`) USING BTREE,
  INDEX `idx_sys_user_cc`(`corp_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of js_sys_user
-- ----------------------------
INSERT INTO `js_sys_user` VALUES ('admin', 'admin', '系统管理员', 'afecbce46a6e55ae83bb25cecbd2f0fbc4aa3bb18e75f61de6c1a70b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, '1', 1, '2020-09-16 18:43:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', 'system', '2020-09-16 18:43:32', 'system', '2020-09-16 18:43:32', '客户方使用的系统管理员，用于一些常用的基础数据配置。', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `js_sys_user` VALUES ('system', 'system', '超级管理员', 'eb7a1ac8a1862fca0ae101e7ebdf734213d80dc6fd5dca47d9784739', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, '0', 1, '2020-09-16 18:43:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', 'system', '2020-09-16 18:43:31', 'system', '2020-09-16 18:43:31', '开发者使用的最高级别管理员，主要用于开发和调试。', '0', 'JeeSite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for js_sys_user_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user_data_scope`;
CREATE TABLE `js_sys_user_data_scope`  (
  `user_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制用户编码',
  `ctrl_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制类型',
  `ctrl_data` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制数据',
  `ctrl_permi` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制权限',
  PRIMARY KEY (`user_code`, `ctrl_type`, `ctrl_data`, `ctrl_permi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户数据权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for js_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `js_sys_user_role`;
CREATE TABLE `js_sys_user_role`  (
  `user_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户编码',
  `role_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编码',
  PRIMARY KEY (`user_code`, `role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_ad
-- ----------------------------
DROP TABLE IF EXISTS `pay_ad`;
CREATE TABLE `pay_ad`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `ad_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `ad_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '投放范围',
  `ad_delivery_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '投放时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '测试数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `test_input` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '单行文本',
  `test_textarea` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '多行文本',
  `test_select` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下拉框',
  `test_select_multiple` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下拉多选',
  `test_radio` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '单选框',
  `test_checkbox` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '复选框',
  `test_date` datetime(0) NULL DEFAULT NULL COMMENT '日期选择',
  `test_datetime` datetime(0) NULL DEFAULT NULL COMMENT '日期时间',
  `test_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户选择',
  `test_office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机构选择',
  `test_area_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域选择',
  `test_area_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '测试数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_data_child
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `test_sort` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `test_data_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父表主键',
  `test_input` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '单行文本',
  `test_textarea` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '多行文本',
  `test_select` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下拉框',
  `test_select_multiple` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下拉多选',
  `test_radio` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '单选框',
  `test_checkbox` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '复选框',
  `test_date` datetime(0) NULL DEFAULT NULL COMMENT '日期选择',
  `test_datetime` datetime(0) NULL DEFAULT NULL COMMENT '日期时间',
  `test_user_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户选择',
  `test_office_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机构选择',
  `test_area_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域选择',
  `test_area_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '测试数据子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree`  (
  `tree_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节点编码',
  `parent_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_codes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_sort` decimal(10, 0) NOT NULL COMMENT '本级排序号（升序）',
  `tree_sorts` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有级别排序号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否最末级',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '层次级别',
  `tree_names` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '全节点名',
  `tree_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '节点名称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1删除 2停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`tree_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '测试树表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
