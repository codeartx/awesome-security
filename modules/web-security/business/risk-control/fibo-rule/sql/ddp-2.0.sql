/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.24-log : Database - riskmanage
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- CREATE DATABASE /*!32312 IF NOT EXISTS*/`riskmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;
--
-- USE `riskmanage`;

/*Table structure for table `t_analyse_decision_result` */

DROP TABLE IF EXISTS `t_analyse_decision_result`;

CREATE TABLE `t_analyse_decision_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `result` varchar(255) DEFAULT NULL COMMENT '结果',
  `result_count` int(11) NOT NULL DEFAULT '0' COMMENT '次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_analyse_decision_tables` */

DROP TABLE IF EXISTS `t_analyse_decision_tables`;

CREATE TABLE `t_analyse_decision_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `decison_tables_id` int(11) NOT NULL DEFAULT '0' COMMENT '决策表id',
  `decison_tables_name` varchar(255) DEFAULT NULL COMMENT '决策表名',
  `decison_tables_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '决策表版本id',
  `decison_tables_version_code` varchar(255) DEFAULT NULL COMMENT '决策表版本code',
  `result` varchar(255) DEFAULT NULL COMMENT '结果',
  `result_count` int(11) NOT NULL DEFAULT '0' COMMENT '次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_analyse_engine_call` */

DROP TABLE IF EXISTS `t_analyse_engine_call`;

CREATE TABLE `t_analyse_engine_call` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '引擎调用表主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `call_count` int(11) NOT NULL DEFAULT '0' COMMENT '调用次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_analyse_engine_node` */

DROP TABLE IF EXISTS `t_analyse_engine_node`;

CREATE TABLE `t_analyse_engine_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `node_id` int(11) NOT NULL DEFAULT '0' COMMENT '节点id',
  `node_name` varchar(255) DEFAULT NULL COMMENT '节点名',
  `pass_count` int(11) NOT NULL DEFAULT '0' COMMENT '经过次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_analyse_engine_summary` */

DROP TABLE IF EXISTS `t_analyse_engine_summary`;

CREATE TABLE `t_analyse_engine_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '引擎概况主键id',
  `engine_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名称',
  `statistics_dimension` varchar(255) NOT NULL COMMENT '统计维度（1.调用次数 engine_call,2.决策结果 decision_result,3规则命中 rule_hit 4.评分卡 scorecard 5.决策表 decision_tables6.名单库 list_db）',
  `statistics_count` int(11) NOT NULL DEFAULT '0' COMMENT '统计数量（截至创建日期的当天的总数）',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_analyse_rule` */

DROP TABLE IF EXISTS `t_analyse_rule`;

CREATE TABLE `t_analyse_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `rule_id` int(11) NOT NULL DEFAULT '0' COMMENT '规则id',
  `rule_name` varchar(255) DEFAULT NULL COMMENT '规则名',
  `rule_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '规则版本id',
  `rule_version_code` varchar(255) DEFAULT NULL COMMENT '规则版本code',
  `hit_count` int(11) NOT NULL DEFAULT '0' COMMENT '命中次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_analyse_scorecard` */

DROP TABLE IF EXISTS `t_analyse_scorecard`;

CREATE TABLE `t_analyse_scorecard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `call_date` datetime NOT NULL COMMENT '调用时间',
  `engine_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎id',
  `engine_name` varchar(255) DEFAULT NULL COMMENT '引擎名',
  `engine_description` varchar(255) DEFAULT NULL COMMENT '引擎表述',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '引擎版本id',
  `version_code` varchar(255) DEFAULT NULL COMMENT '引擎版本code',
  `scorecard_id` int(11) NOT NULL DEFAULT '0' COMMENT '评分卡id',
  `scorecard_name` varchar(255) DEFAULT NULL COMMENT '评分卡名',
  `scorecard_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '评分卡版本id',
  `scorecard_version_code` varchar(255) DEFAULT NULL COMMENT '评分卡版本code',
  `result` varchar(255) DEFAULT NULL COMMENT '结果',
  `result_count` int(11) NOT NULL DEFAULT '0' COMMENT '次数',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织id',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_approval` */

DROP TABLE IF EXISTS `t_approval`;

CREATE TABLE `t_approval` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `apply_type` varchar(255) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(255) DEFAULT NULL COMMENT '创建人名称',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `update_user_name` varchar(255) DEFAULT NULL COMMENT '修改人名称',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `apply_status` smallint(1) NOT NULL DEFAULT '0' COMMENT '申请单的状态：（-1取消申请。 0 待审批，1 审批通过，2 审批不通过）',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态：0冻结 -1 删除 1正常',
  `approval_user_id` int(11) DEFAULT NULL COMMENT '审批人id',
  `approval_user_name` varchar(255) DEFAULT NULL COMMENT '审批人名称',
  `approval_time` datetime DEFAULT NULL COMMENT '审批时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `apply_detail` json DEFAULT NULL COMMENT '申请详情',
  `apply_desc` json DEFAULT NULL COMMENT '申请描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_approval_config` */

DROP TABLE IF EXISTS `t_approval_config`;

CREATE TABLE `t_approval_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `approval_type` varchar(255) DEFAULT NULL COMMENT '审批类型',
  `approval_name` varchar(255) DEFAULT NULL COMMENT '审批名称',
  `approval_desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `approval_status` int(1) DEFAULT NULL COMMENT '审批状态（1开启，0关闭，-1删除）',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `create_user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `organ_approval_type` (`organ_id`,`approval_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_base_rule` */

DROP TABLE IF EXISTS `t_base_rule`;

CREATE TABLE `t_base_rule` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `rule_type` enum('strategy_complex_rule','strategy_decision_tables','strategy_decision_tree','strategy_custom_output','engine_node_group','engine_node_decision_operation','engine_terminal_condition') NOT NULL COMMENT '规则类型：',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_user_id` int(11) NOT NULL COMMENT '创建人id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_base_rule_condition` */

DROP TABLE IF EXISTS `t_base_rule_condition`;

CREATE TABLE `t_base_rule_condition` (
  `id` int(11) NOT NULL COMMENT '自增主键',
  `rule_id` int(11) NOT NULL COMMENT '规则id',
  `cond_type` int(11) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点 3-for表达式 4-for的结果项 5条件组 6条件组的结果条件',
  `logic` enum('leaf','&&','||','for','condGroup','') DEFAULT NULL COMMENT '逻辑符号：leaf、&&、||、for、condGroup',
  `left_type` varchar(255) DEFAULT NULL COMMENT '条件左边值的类型',
  `left_id` int(11) DEFAULT NULL COMMENT '左边条件引用的指标id',
  `left_value` varchar(255) DEFAULT NULL COMMENT '左边的值',
  `operator` varchar(255) DEFAULT NULL COMMENT '操作符',
  `right_type` varchar(255) DEFAULT NULL COMMENT '右边值类型',
  `right_id` int(11) DEFAULT NULL COMMENT '右边值引用的指标id',
  `right_value` varchar(255) DEFAULT NULL COMMENT '右边的值',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rule_id_idx` (`rule_id`) USING BTREE COMMENT '规则id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_data_clean` */

DROP TABLE IF EXISTS `t_data_clean`;

CREATE TABLE `t_data_clean` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(200) DEFAULT NULL COMMENT '集合操作名称',
  `code` varchar(200) DEFAULT NULL COMMENT '集合操作代码',
  `description` text COMMENT '集合操作描述',
  `op_type` int(4) DEFAULT NULL COMMENT '集合操作类型：1 集合规则，2 集合处理',
  `folder_id` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹id',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：0 停用 1 启用 -1删除（默认启用）',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期结束时间',
  `create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改者id',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_block` */

DROP TABLE IF EXISTS `t_data_clean_block`;

CREATE TABLE `t_data_clean_block` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `data_clean_version_id` int(11) DEFAULT NULL COMMENT '版本id',
  `name` varchar(100) DEFAULT NULL COMMENT '条件区域名称',
  `op_type` varchar(50) DEFAULT NULL COMMENT '选择来源：original原数据，data_op原数据操作，handle_collection选择集合',
  `handle_collection` varchar(100) DEFAULT NULL COMMENT '处理集合',
  `group_fields` text COMMENT '分组字段',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_condition` */

DROP TABLE IF EXISTS `t_data_clean_condition`;

CREATE TABLE `t_data_clean_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `data_clean_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作的id',
  `data_clean_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本的id',
  `data_clean_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件区域块id',
  `logical` varchar(10) DEFAULT NULL COMMENT '关系节点的逻辑符号：&&（并关系），||（或关系）',
  `op_type` varchar(50) DEFAULT NULL COMMENT '选择来源：original原数据，data_op原数据操作，handle_collection选择集合',
  `op_key` varchar(255) DEFAULT NULL COMMENT '计算的参数key{循环中对象的key}',
  `operator` varchar(50) DEFAULT NULL COMMENT '表达式节点的操作符',
  `variable_type` int(2) DEFAULT NULL COMMENT '变量类型，1常量，2变量 3自定义',
  `variable_value` text COMMENT '表达式节点对应字段的限定值',
  `parent_id` int(11) DEFAULT '0' COMMENT '父节点的id 此项为0的是根节点',
  `condition_type` int(2) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_filter_condition` */

DROP TABLE IF EXISTS `t_data_clean_filter_condition`;

CREATE TABLE `t_data_clean_filter_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `data_clean_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作的id',
  `data_clean_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本的id',
  `data_clean_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件区域块id',
  `filter_type` varchar(50) DEFAULT NULL COMMENT '条件类型：选择集合处过滤：input、集合处理规则处过滤:result。',
  `logical` varchar(10) DEFAULT NULL COMMENT '关系节点的逻辑符号：&&（并关系），||（或关系）',
  `op_type` varchar(50) DEFAULT NULL COMMENT '选择来源：original原数据，data_op原数据操作，handle_collection选择集合',
  `op_key` varchar(100) DEFAULT NULL COMMENT '计算的参数key{循环中对象的key}',
  `operator` varchar(50) DEFAULT NULL COMMENT '表达式节点的操作符',
  `variable_type` int(2) DEFAULT '1' COMMENT '变量类型，1常量，2变量 3自定义',
  `variable_value` text COMMENT '表达式节点对应字段的限定值',
  `parent_id` int(11) DEFAULT '0' COMMENT '父节点的id 此项为0的是根节点',
  `condition_type` int(2) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_original_data_op` */

DROP TABLE IF EXISTS `t_data_clean_original_data_op`;

CREATE TABLE `t_data_clean_original_data_op` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data_clean_version_id` bigint(20) NOT NULL COMMENT '数据清洗的版本id',
  `op_type` varchar(20) DEFAULT NULL COMMENT '操作类型：1.首元素：first_element,2.尾元素：last_element,3.迭代处理：iteration ',
  `op_field` varchar(100) DEFAULT NULL COMMENT '操作字段：此字段为数据清洗版本中存储的源数据指标内部字段',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_output` */

DROP TABLE IF EXISTS `t_data_clean_output`;

CREATE TABLE `t_data_clean_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `data_clean_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本id',
  `data_clean_condition_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作条件根节点id',
  `data_clean_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作块id',
  `output_type` int(11) DEFAULT NULL COMMENT '输出类型：1 命中输出，2未命中输出,3默认输出',
  `output_key` varchar(200) DEFAULT NULL COMMENT '输出的key',
  `op_type` varchar(100) DEFAULT NULL COMMENT '选择来源：original原数据，data_op原数据操作，handle_collection选择集合',
  `output_value` text COMMENT '输出的值',
  `variable_type` int(11) DEFAULT NULL COMMENT '输出类型： 1.常量 2.变量 3.自定义',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_data_clean_version` */

DROP TABLE IF EXISTS `t_data_clean_version`;

CREATE TABLE `t_data_clean_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据清洗版本表id',
  `data_clean_id` int(11) NOT NULL COMMENT '数据清洗id',
  `version_code` varchar(50) NOT NULL COMMENT '版本code',
  `description` varchar(200) DEFAULT NULL COMMENT '版本描述',
  `input_field_en` varchar(200) DEFAULT NULL COMMENT '数据源数组或者map的en',
  `input_field_type` varchar(200) DEFAULT NULL COMMENT '数据源类型：map、list',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `organ_id` int(11) NOT NULL COMMENT '所属组织id',
  `create_user_id` int(20) NOT NULL COMMENT '创建者id',
  `update_user_id` int(20) DEFAULT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '集合操作版本配置快照',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_decision_tables` */

DROP TABLE IF EXISTS `t_decision_tables`;

CREATE TABLE `t_decision_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策表id',
  `parent_id` int(11) DEFAULT NULL COMMENT '文件夹id',
  `name` varchar(100) DEFAULT NULL COMMENT '决策表名称',
  `code` varchar(50) DEFAULT NULL COMMENT '决策表代码(英文)',
  `description` text COMMENT '决策表描述',
  `version` varchar(10) DEFAULT NULL COMMENT '决策表版本',
  `status` int(2) DEFAULT '1' COMMENT '决策表状态：0 停用 1 启用 -1删除（默认启用）',
  `creator` int(20) DEFAULT NULL COMMENT '决策表创建者',
  `modifier` int(20) DEFAULT NULL COMMENT '决策表修改者',
  `organ_id` int(11) DEFAULT NULL COMMENT '所属组织id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_decision_tables_detail` */

DROP TABLE IF EXISTS `t_decision_tables_detail`;

CREATE TABLE `t_decision_tables_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '详情节点id',
  `decision_tables_id` int(11) DEFAULT NULL COMMENT '决策表id',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '决策表版本id',
  `dimensionality` int(2) DEFAULT NULL COMMENT '条件维度(1-左侧，2-顶部)',
  `field_id` int(11) DEFAULT NULL COMMENT '字段id',
  `field_en` varchar(50) DEFAULT NULL COMMENT '字段en',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `logical` varchar(50) DEFAULT NULL COMMENT '逻辑关系，如（&&，||）',
  `type` int(2) DEFAULT NULL COMMENT '节点类型：1-普通节点，2-叶子节点',
  `index_value` int(11) DEFAULT NULL COMMENT '所在维度的值，不能为负数',
  `content` text COMMENT '执行串',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_decision_tables_detail_condition` */

DROP TABLE IF EXISTS `t_decision_tables_detail_condition`;

CREATE TABLE `t_decision_tables_detail_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策表详情条件id',
  `detail_id` int(11) DEFAULT NULL COMMENT '详情id',
  `operator` varchar(50) DEFAULT NULL COMMENT '操作符',
  `variable_type` int(2) DEFAULT NULL COMMENT '变量类型：1常量，2变量',
  `field_value` longtext NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_decision_tables_result` */

DROP TABLE IF EXISTS `t_decision_tables_result`;

CREATE TABLE `t_decision_tables_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策表结果集id',
  `decision_tables_id` int(11) DEFAULT NULL COMMENT '决策表id',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '决策表版本id',
  `rows` int(11) DEFAULT NULL COMMENT '行数',
  `columns` int(11) DEFAULT NULL COMMENT '列数',
  `result_value` longtext COMMENT '结果集二维数组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_decision_tables_version` */

DROP TABLE IF EXISTS `t_decision_tables_version`;

CREATE TABLE `t_decision_tables_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '版本主鍵id',
  `decision_tables_id` int(11) NOT NULL COMMENT '决策表id',
  `version_code` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本描述',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `organ_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属组织id',
  `create_user_id` int(20) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(20) NOT NULL DEFAULT '0' COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '决策表版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_decision_tree` */

DROP TABLE IF EXISTS `t_decision_tree`;

CREATE TABLE `t_decision_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策树主表id',
  `code` varchar(255) NOT NULL COMMENT '决策树code',
  `name` varchar(255) NOT NULL COMMENT '决策树名称',
  `description` varchar(255) DEFAULT NULL COMMENT '决策树描述',
  `folder_id` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹id',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：0 停用 1 启用 -1删除（默认启用）',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改者id',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_decision_tree_detail` */

DROP TABLE IF EXISTS `t_decision_tree_detail`;

CREATE TABLE `t_decision_tree_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策树详情id',
  `decision_tree_version_id` int(11) DEFAULT NULL COMMENT '决策表id',
  `field_id` int(11) DEFAULT NULL COMMENT '字段id',
  `field_en` varchar(50) DEFAULT NULL COMMENT '字段en',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父节点id',
  `logical` varchar(50) DEFAULT NULL COMMENT '逻辑关系，如（&&，||）',
  `node_type` int(2) DEFAULT NULL COMMENT '节点类型：1-普通节点，2-叶子节点',
  `result_value` text COMMENT '叶子节点对应决策结果值',
  `variable_type` int(4) NOT NULL COMMENT '结果值1、常量 2、变量 3、自定义',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_decision_tree_detail_condition` */

DROP TABLE IF EXISTS `t_decision_tree_detail_condition`;

CREATE TABLE `t_decision_tree_detail_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策树详情条件id',
  `detail_id` int(11) NOT NULL COMMENT '详情id',
  `operator` varchar(50) NOT NULL COMMENT '操作符',
  `variable_type` int(2) NOT NULL DEFAULT '1' COMMENT '变量类型：1常量，2变量',
  `field_value` text NOT NULL COMMENT '变量值（常量为值，变量为字段en）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_decision_tree_version` */

DROP TABLE IF EXISTS `t_decision_tree_version`;

CREATE TABLE `t_decision_tree_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '决策树版本表id',
  `decision_tree_id` int(11) NOT NULL COMMENT '决策树id',
  `version_code` varchar(255) NOT NULL COMMENT '版本code',
  `description` varchar(255) DEFAULT NULL COMMENT '版本描述',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `organ_id` int(11) NOT NULL COMMENT '所属组织id',
  `create_user_id` int(20) NOT NULL COMMENT '创建者id',
  `update_user_id` int(20) DEFAULT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '决策树版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_dictionary` */

DROP TABLE IF EXISTS `t_dictionary`;

CREATE TABLE `t_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `dict_key` varchar(200) NOT NULL COMMENT '字典key',
  `dict_value` text COMMENT '字典value',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key_idx` (`dict_key`) USING BTREE COMMENT '字典key唯一'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_email_template` */

DROP TABLE IF EXISTS `t_email_template`;

CREATE TABLE `t_email_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject` varchar(100) NOT NULL COMMENT '标题',
  `nid` varchar(100) NOT NULL DEFAULT '' COMMENT '模板唯一的nid',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '模板状态，1:有效、0:无效',
  `address` varchar(200) NOT NULL COMMENT '收件地址',
  `content` text NOT NULL COMMENT '模板内容',
  `use_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '发送类型，1:通知',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='邮件模板';

/*Table structure for table `t_engine` */

DROP TABLE IF EXISTS `t_engine`;

CREATE TABLE `t_engine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(64) DEFAULT NULL COMMENT '编号',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `engine_type` varchar(50) DEFAULT 'rule_engine' COMMENT '引擎类型：',
  `status` int(11) DEFAULT NULL COMMENT '状态：0被删除1正常使用',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `creator` int(11) DEFAULT NULL COMMENT '创建者',
  `organ_id` int(11) DEFAULT NULL COMMENT '企业编号',
  `user_id` int(11) DEFAULT NULL COMMENT '修改人',
  `callback_type` int(4) DEFAULT '1' COMMENT '调用方式 1：同步，2：异步',
  `callback_url` varchar(200) DEFAULT NULL COMMENT '回调地址',
  `exception_callback_url` varchar(200) DEFAULT NULL COMMENT '异常回调地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_engine_knowledge_tree_rel` */

DROP TABLE IF EXISTS `t_engine_knowledge_tree_rel`;

CREATE TABLE `t_engine_knowledge_tree_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `knowledge_tree_id` int(11) DEFAULT NULL COMMENT '关联的组织树形节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='引擎与组织树形目录关系表';

/*Table structure for table `t_engine_node` */

DROP TABLE IF EXISTS `t_engine_node`;

CREATE TABLE `t_engine_node` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '节点信息编号',
  `version_id` int(11) DEFAULT NULL COMMENT '版本编号',
  `node_name` varchar(100) NOT NULL COMMENT '节点名称',
  `node_code` varchar(100) NOT NULL COMMENT '节点代号',
  `node_order` int(11) DEFAULT NULL COMMENT '节点顺序',
  `node_type` int(11) DEFAULT NULL COMMENT '节点类型',
  `node_json` longtext COMMENT '节点信息',
  `node_x` decimal(7,2) DEFAULT NULL COMMENT '节点横坐标',
  `node_y` decimal(7,2) DEFAULT NULL COMMENT '节点纵坐标',
  `node_script` text COMMENT '节点脚本',
  `next_nodes` longtext COMMENT '下个节点(可能是多个)',
  `params` longtext COMMENT '节点用到的参数列表',
  `parent_id` varchar(100) DEFAULT NULL COMMENT '上一个节点的id，多个节点逗号分隔',
  `snapshot` json DEFAULT NULL COMMENT '节点配置快照',
  PRIMARY KEY (`node_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储版本模型的信息包括(使用的参数，节点的位置，节点的执行逻辑)';

/*Table structure for table `t_engine_rule_rel` */

DROP TABLE IF EXISTS `t_engine_rule_rel`;

CREATE TABLE `t_engine_rule_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `rule_id` int(11) DEFAULT NULL COMMENT '关联的组织规则的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='引擎与组织规则关系表';

/*Table structure for table `t_engine_scorecard_rel` */

DROP TABLE IF EXISTS `t_engine_scorecard_rel`;

CREATE TABLE `t_engine_scorecard_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `engine_id` bigint(20) DEFAULT NULL COMMENT '引擎id',
  `scorecard_id` bigint(20) DEFAULT NULL COMMENT '关联的组织评分卡的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='引擎与组织评分卡关系表';

/*Table structure for table `t_engine_version` */

DROP TABLE IF EXISTS `t_engine_version`;

CREATE TABLE `t_engine_version` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '版本编号',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎编号',
  `engine_type` varchar(50) DEFAULT 'rule_engine' COMMENT '引擎类型：',
  `version` int(11) NOT NULL COMMENT '版本',
  `sub_version` int(5) DEFAULT NULL COMMENT '子版本',
  `boot_state` smallint(1) NOT NULL COMMENT '是否部署(0:未部署1:正在运行)',
  `status` smallint(1) DEFAULT NULL COMMENT '是否删除(0:在回收站中,可恢复,1:正常,2彻底删除)',
  `layout` smallint(1) DEFAULT NULL COMMENT '布局方式(1,2,预留通用布局方式,0自定义布局)',
  `user_id` int(11) DEFAULT NULL COMMENT '创建者',
  `create_time` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `latest_user` int(11) DEFAULT NULL COMMENT '最新修改者',
  `latest_time` varchar(100) DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`version_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='不同场景下的多个模型版本';

/*Table structure for table `t_engine_version_content` */

DROP TABLE IF EXISTS `t_engine_version_content`;

CREATE TABLE `t_engine_version_content` (
  `engine_version_id` int(11) NOT NULL COMMENT '引擎版本id',
  `engine_type` varchar(50) DEFAULT NULL COMMENT '引擎类型',
  `engine_content` text COMMENT '引擎内容',
  `engine_script` text COMMENT '引擎执行内容',
  `create_user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`engine_version_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_field` */

DROP TABLE IF EXISTS `t_field`;

CREATE TABLE `t_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段编号',
  `field_en` varchar(100) NOT NULL COMMENT '字段英文名',
  `field_cn` varchar(100) NOT NULL COMMENT '字段中文名',
  `field_typeid` int(11) NOT NULL COMMENT '字段类型编号,来源t_fieldtype表主键',
  `value_type` int(4) DEFAULT NULL COMMENT '字段存值类型,待选(0),数值型(1),字符型(2),枚举型(3),小数型(4)',
  `value_scope` varchar(255) DEFAULT NULL COMMENT '字段约束范围',
  `is_derivative` int(4) NOT NULL DEFAULT '0' COMMENT '是否衍生字段，0代表不是，1代表是，默认不是(0)',
  `is_output` int(4) NOT NULL DEFAULT '0' COMMENT '是否输出字段，0代表不是，1代表是，默认不是(0)',
  `is_common` int(4) NOT NULL DEFAULT '0' COMMENT '是否组织定义的通用字段，0代表不是，1代表是，默认不是(0)',
  `formula` text COMMENT '公式',
  `formula_show` text COMMENT '公式回显信息存值',
  `used_fieldid` varchar(200) DEFAULT NULL COMMENT '该衍生字段引用的字段id，逗号分割',
  `orig_fieldid` varchar(200) DEFAULT NULL COMMENT '衍生字段用到的所有原生字段编号，逗号分割',
  `author` int(11) NOT NULL COMMENT '创建人',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `created` datetime NOT NULL COMMENT '创建时间',
  `is_use_sql` tinyint(1) DEFAULT '0' COMMENT '是否使用sql',
  `data_source_id` int(11) DEFAULT NULL COMMENT '数据源id',
  `sql_statement` text COMMENT 'sql语句',
  `sql_variable` varchar(200) DEFAULT NULL COMMENT 'sql变量配置',
  `is_interface` tinyint(1) DEFAULT '0' COMMENT '是否使用接口',
  `interface_id` int(11) DEFAULT NULL COMMENT '接口id',
  `interface_parse_field` varchar(100) DEFAULT NULL COMMENT '接口指标解析字段',
  `json_value` longtext COMMENT 'json类型对应的json值',
  `dict_variable` text COMMENT '字典变量如：日期字符串',
  `source_type` int(11) DEFAULT NULL COMMENT '指标的类型：(默认)1基础类型，2sql类型，3衍生类型，4.接口 5.常量指标，6实时指标',
  `mq_source_id` int(11) DEFAULT NULL COMMENT '消息队列源id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户字段表';

/*Table structure for table `t_field_call_log` */

DROP TABLE IF EXISTS `t_field_call_log`;

CREATE TABLE `t_field_call_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `field_id` int(11) NOT NULL COMMENT '指标id',
  `field_type` enum('basics','const','database','interface','derive') DEFAULT NULL COMMENT '指标类型',
  `source_type` varchar(20) DEFAULT NULL COMMENT '数据源类型 mysql、redis、interface',
  `source_id` int(11) DEFAULT NULL COMMENT '数据源id',
  `input_param` text COMMENT '入参',
  `field_value` text COMMENT '获取到的指标值',
  `duration` int(11) NOT NULL COMMENT '消耗时长，单位：毫秒',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `field_idx` (`field_id`,`create_time`) USING BTREE COMMENT '指标id索引'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_field_condition` */

DROP TABLE IF EXISTS `t_field_condition`;

CREATE TABLE `t_field_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '条件编号',
  `field_id` int(11) NOT NULL COMMENT '字段字段编号',
  `condition_value` varchar(100) NOT NULL COMMENT '字段条件值',
  `content` text NOT NULL COMMENT '字段条件区域设置json格式',
  `cond_field_id` int(11) DEFAULT NULL,
  `cond_field_operator` varchar(100) DEFAULT NULL,
  `cond_field_value` varchar(100) DEFAULT NULL,
  `cond_field_logical` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户字段条件区域设置表';

/*Table structure for table `t_field_data_source` */

DROP TABLE IF EXISTS `t_field_data_source`;

CREATE TABLE `t_field_data_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '数据库连接名称',
  `type` varchar(50) NOT NULL DEFAULT 'MySQL' COMMENT '数据源类型：MySQL、Oracle、SQLServer、Hive、Spark、Redis',
  `url` varchar(200) DEFAULT NULL COMMENT '连接地址',
  `host` varchar(200) DEFAULT NULL COMMENT '数据库地址',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `port` varchar(100) DEFAULT NULL COMMENT '端口',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `spark_home` varchar(200) DEFAULT NULL COMMENT 'spark路径',
  `app_name` varchar(200) DEFAULT NULL COMMENT 'spark应用程序的名称',
  `master_url` varchar(200) DEFAULT NULL COMMENT 'spark地址',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态 0：无效，1：有效',
  `creator` int(11) DEFAULT NULL COMMENT '创建人',
  `modifier` int(11) DEFAULT NULL COMMENT '修改人',
  `organ_id` int(11) NOT NULL COMMENT '企业编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='指标数据源表';

/*Table structure for table `t_field_interface` */

DROP TABLE IF EXISTS `t_field_interface`;

CREATE TABLE `t_field_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '接口id',
  `name` varchar(20) DEFAULT NULL COMMENT '接口名称',
  `url` varchar(200) DEFAULT NULL COMMENT '请求地址',
  `method` char(10) DEFAULT NULL COMMENT '请求方法',
  `request_headers` varchar(200) DEFAULT NULL COMMENT '请求体类型',
  `request_body` text COMMENT '请求参数体',
  `bind_param` text COMMENT '绑定参数',
  `response_body` text COMMENT '请求响应体',
  `creator` int(11) NOT NULL COMMENT '创建者id',
  `modifier` int(11) DEFAULT NULL COMMENT '修改者id',
  `organ_id` int(11) DEFAULT NULL COMMENT '企业编号',
  `status` int(11) DEFAULT NULL COMMENT '请求状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `request_type` varchar(20) DEFAULT NULL COMMENT '请求体类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_field_interval` */

DROP TABLE IF EXISTS `t_field_interval`;

CREATE TABLE `t_field_interval` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段编号',
  `field_rel_id` int(11) NOT NULL COMMENT '衍生字段编号',
  `inter_field_id` int(11) NOT NULL COMMENT '公式引用的字段',
  `inter_field_rel_id` int(11) NOT NULL COMMENT '公式引用的字段用户关系编号',
  `seq` int(4) NOT NULL DEFAULT '0' COMMENT '衍生字段公式里用到同名字段的顺序,从0开始对应计算器中自左向右',
  `interval` varchar(255) NOT NULL COMMENT '字段值区间划分，[0,18),[18,36) 或者 大学,硕士,博士',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT '对应区间的值定义',
  `created` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户衍生字段区间映射表';

/*Table structure for table `t_field_mq_source` */

DROP TABLE IF EXISTS `t_field_mq_source`;

CREATE TABLE `t_field_mq_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(100) NOT NULL COMMENT '消息队列连接名称',
  `type` varchar(50) NOT NULL DEFAULT 'kafka' COMMENT '消息队列类型：kafka',
  `server_addrs` varchar(200) DEFAULT NULL COMMENT '连接地址',
  `topic` varchar(200) DEFAULT NULL COMMENT '数据库地址',
  `group_id` varchar(100) DEFAULT NULL COMMENT '用户名',
  `auto_offset_reset` varchar(100) DEFAULT 'earliest' COMMENT 'offset设置:earliest，latest，none',
  `enable_auto_commit` tinyint(1) DEFAULT '1' COMMENT '自动提交0:false 1:true',
  `timeout` int(11) DEFAULT '20000' COMMENT '超时时间',
  `auto_commit_interval` int(11) DEFAULT '100' COMMENT '自动提交延时',
  `concurrency` int(2) DEFAULT '1' COMMENT '消费线程数',
  `key_deserializer` varchar(200) DEFAULT 'org.apache.kafka.common.serialization.StringDeserializer' COMMENT 'key解析器默认：StringDeserializer',
  `value_deserializer` varchar(200) DEFAULT 'org.apache.kafka.common.serialization.StringDeserializer' COMMENT 'value解码器默认：StringDeserializer',
  `message_body` text COMMENT '消息体类型',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态 0：无效，1：有效，-1删除',
  `creator` int(11) DEFAULT NULL COMMENT '创建人',
  `modifier` int(11) DEFAULT NULL COMMENT '修改人',
  `organ_id` int(11) NOT NULL COMMENT '企业编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_field_type` */

DROP TABLE IF EXISTS `t_field_type`;

CREATE TABLE `t_field_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段类型编号',
  `field_type` varchar(100) NOT NULL COMMENT '字段类型名',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父节点编号',
  `is_common` int(4) NOT NULL DEFAULT '0' COMMENT '是否组织定义的通用字段类型',
  `type` int(4) DEFAULT '1' COMMENT '指标的类型：(默认)1基础类型，2sql类型，3衍生类型，4.接口',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字段类型表';

/*Table structure for table `t_field_type_user_rel` */

DROP TABLE IF EXISTS `t_field_type_user_rel`;

CREATE TABLE `t_field_type_user_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_typeid` int(11) NOT NULL COMMENT '字段类型编号',
  `organ_id` int(11) NOT NULL COMMENT '归属的组织编号',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎表主键id，用来与引擎绑定，该字段为空代表组织内通用字段',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '启用、删除标志，启用用1表示，删除用-1表示，默认启用',
  `user_id` int(11) NOT NULL COMMENT '创建该字段类型的用户编号',
  `created` datetime NOT NULL COMMENT '该字段分类的创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字段类型表';

/*Table structure for table `t_field_user_rel` */

DROP TABLE IF EXISTS `t_field_user_rel`;

CREATE TABLE `t_field_user_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户字段映射关系表主键',
  `field_id` int(11) NOT NULL COMMENT '字段编号',
  `organ_id` int(11) DEFAULT NULL COMMENT '归属的组织编号',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎表主键id，用来与引擎绑定，该字段为空代表组织内通用字段',
  `user_id` int(11) NOT NULL COMMENT '创建或修改该字段的用户编号',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '启用停用删除标志，启用用1表示，停用用0表示，删除用-1表示，默认启用',
  `created` datetime NOT NULL COMMENT '创建时间',
  `updated` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户字段关联关系表';

/*Table structure for table `t_formula_field_rel` */

DROP TABLE IF EXISTS `t_formula_field_rel`;

CREATE TABLE `t_formula_field_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段编号',
  `field_id` int(11) NOT NULL COMMENT '衍生字段编号',
  `formula_fieldid` int(11) NOT NULL COMMENT '衍生字段公式引用字段编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='衍生字段公式所用字段关系表';

/*Table structure for table `t_knowledge_tree` */

DROP TABLE IF EXISTS `t_knowledge_tree`;

CREATE TABLE `t_knowledge_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '目录名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `status` int(2) DEFAULT NULL COMMENT '状态    0：停用  ，1：启用 ，-1 ：删除',
  `type` int(2) DEFAULT NULL COMMENT '目录类型  0 : 系统的目录  1：组织的目录 2： 引擎的目录',
  `tree_type` int(2) DEFAULT NULL COMMENT '树形分类：0：基础规则树  1：评分卡的树 2：回收站的树 3：决策表树，4：复杂规则树',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='知识库目录表';

/*Table structure for table `t_list_db` */

DROP TABLE IF EXISTS `t_list_db`;

CREATE TABLE `t_list_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '名单库编号',
  `list_code` varchar(50) DEFAULT NULL COMMENT '所属文件夹id',
  `list_type` varchar(10) NOT NULL COMMENT '名单库区分,用b表示黑名单,w表示白名单,其它待扩展',
  `list_name` varchar(100) NOT NULL COMMENT '名单库名称',
  `data_source` int(4) DEFAULT NULL COMMENT '数据来源：外部黑(白)名单（1）、内部黑(白)名单（2）、待选（0）',
  `list_attr` varchar(100) DEFAULT NULL COMMENT '名单库类型属性,用户输入',
  `list_desc` varchar(100) DEFAULT NULL COMMENT '名单库描述',
  `table_column` varchar(200) NOT NULL COMMENT '名单库表中列字段，字段id逗号分隔',
  `match_type` int(4) DEFAULT NULL COMMENT '检索匹配类型，精确匹配（1），模糊匹配（0）',
  `query_type` int(4) DEFAULT NULL COMMENT '查询字段间逻辑，and（1），or（0）',
  `query_field` varchar(200) DEFAULT NULL COMMENT '查询主键，字段编号逗号分割',
  `organ_id` int(11) DEFAULT NULL COMMENT '归属的组织编号',
  `status` int(4) NOT NULL DEFAULT '0' COMMENT '启用（1），停用（0），删除（-1）',
  `user_id` int(11) NOT NULL COMMENT '创建该名单的用户编号',
  `created` datetime NOT NULL COMMENT '创建时间',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '名单库命中结果的en',
  `snapshot` json DEFAULT NULL COMMENT '名单库版本配置快照',
  `folder_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属文件夹id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='黑白名单库配置记录表';

/*Table structure for table `t_list_operation` */

DROP TABLE IF EXISTS `t_list_operation`;

CREATE TABLE `t_list_operation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(200) DEFAULT NULL COMMENT '集合操作名称',
  `code` varchar(200) DEFAULT NULL COMMENT '集合操作代码',
  `description` text COMMENT '集合操作描述',
  `op_type` int(4) DEFAULT NULL COMMENT '集合操作类型：1 集合规则，2 集合处理',
  `folder_id` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹id',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：0 停用 1 启用 -1删除（默认启用）',
  `start_time` datetime DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '有效期结束时间',
  `create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `update_user_id` int(11) DEFAULT NULL COMMENT '修改者id',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_list_operation_block` */

DROP TABLE IF EXISTS `t_list_operation_block`;

CREATE TABLE `t_list_operation_block` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `list_op_version_id` int(11) DEFAULT NULL COMMENT '版本id',
  `name` varchar(100) DEFAULT NULL COMMENT '条件区域名称',
  `group_fields` text COMMENT '分组字段',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_list_operation_condition` */

DROP TABLE IF EXISTS `t_list_operation_condition`;

CREATE TABLE `t_list_operation_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `list_op_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作的id',
  `list_op_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本的id',
  `list_op_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件区域块id',
  `logical` varchar(10) DEFAULT NULL COMMENT '关系节点的逻辑符号：&&（并关系），||（或关系）',
  `op_type` varchar(50) DEFAULT NULL COMMENT '计算维度：1 count 2distinct_count 3 max  4min  5avg 6custom',
  `op_key` varchar(255) DEFAULT NULL COMMENT '计算的参数key{循环中对象的key}',
  `operator` varchar(50) DEFAULT NULL COMMENT '表达式节点的操作符',
  `variable_type` int(2) DEFAULT NULL COMMENT '变量类型，1常量，2变量 3自定义',
  `variable_value` json DEFAULT NULL COMMENT '表达式节点对应字段的限定值',
  `parent_id` int(11) DEFAULT '0' COMMENT '父节点的id 此项为0的是根节点',
  `condition_type` int(2) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_list_operation_filter_condition` */

DROP TABLE IF EXISTS `t_list_operation_filter_condition`;

CREATE TABLE `t_list_operation_filter_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `list_op_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作的id',
  `list_op_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本的id',
  `list_op_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件区域块id',
  `logical` varchar(10) DEFAULT NULL COMMENT '关系节点的逻辑符号：&&（并关系），||（或关系）',
  `op_type` varchar(50) DEFAULT NULL COMMENT '计算维度：1 count 2distinct_count 3 max  4min  5avg 6custom',
  `op_key` varchar(255) DEFAULT NULL COMMENT '计算的参数key{循环中对象的key}',
  `operator` varchar(50) DEFAULT NULL COMMENT '表达式节点的操作符',
  `variable_type` int(2) DEFAULT '1' COMMENT '变量类型，1常量，2变量 3自定义',
  `variable_value` text COMMENT '表达式节点对应字段的限定值',
  `parent_id` int(11) DEFAULT '0' COMMENT '父节点的id 此项为0的是根节点',
  `condition_type` int(2) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_list_operation_output` */

DROP TABLE IF EXISTS `t_list_operation_output`;

CREATE TABLE `t_list_operation_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `list_op_version_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作版本id',
  `list_op_condition_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作条件根节点id',
  `list_op_block_id` int(11) NOT NULL DEFAULT '0' COMMENT '列表操作块id',
  `output_type` int(11) DEFAULT NULL COMMENT '输出类型：1 命中输出，2未命中输出,3默认输出',
  `output_key` varchar(255) DEFAULT NULL COMMENT '输出的key',
  `output_op` varchar(50) DEFAULT NULL COMMENT '输出操作：1 count 2count 去重 3 max  4min  5avg ,6 list_element',
  `output_op_key` varchar(255) DEFAULT NULL COMMENT '操作字段',
  `output_value` text COMMENT '输出的值',
  `variable_type` int(11) DEFAULT NULL COMMENT '输出类型： 1.常量 2.变量 3.自定义',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_list_operation_version` */

DROP TABLE IF EXISTS `t_list_operation_version`;

CREATE TABLE `t_list_operation_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '集合操作版本表id',
  `list_op_id` int(11) NOT NULL COMMENT '集合操作id',
  `version_code` varchar(255) NOT NULL COMMENT '版本code',
  `description` varchar(255) DEFAULT NULL COMMENT '版本描述',
  `input_field_en` varchar(255) DEFAULT NULL COMMENT '数据源数组或者map的en',
  `input_field_type` varchar(255) DEFAULT NULL COMMENT '数据源类型：map、list',
  `group_fields` varchar(255) DEFAULT NULL COMMENT '分组指标列表,逗号分割的en列表',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `organ_id` int(11) NOT NULL COMMENT '所属组织id',
  `create_user_id` int(20) NOT NULL COMMENT '创建者id',
  `update_user_id` int(20) DEFAULT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '集合操作版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_logger` */

DROP TABLE IF EXISTS `t_logger`;

CREATE TABLE `t_logger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `op_type` varchar(200) DEFAULT NULL COMMENT '操作类型',
  `op_name` varchar(500) DEFAULT NULL COMMENT '操作名称',
  `op_user_id` int(11) DEFAULT NULL COMMENT '操作人员id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `method` varchar(500) DEFAULT NULL COMMENT '方法名',
  `request_path` text COMMENT '请求地址',
  `request_param` text COMMENT '请求参数',
  `response_param` longtext COMMENT '响应参数',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip地址',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_machine_learning_models` */

DROP TABLE IF EXISTS `t_machine_learning_models`;

CREATE TABLE `t_machine_learning_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `model_name` varchar(100) NOT NULL COMMENT '模型名称',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `model_type` varchar(50) NOT NULL DEFAULT 'pmml' COMMENT '模型类型',
  `file_name` varchar(100) NOT NULL COMMENT '模型文件名称',
  `file_path` varchar(200) NOT NULL COMMENT '模型文件路径',
  `model_field` varchar(500) NOT NULL DEFAULT '' COMMENT '模型解析字段',
  `mapping_field` varchar(500) NOT NULL DEFAULT '' COMMENT '模型字段对应的系统指标字段',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态 0：无效，1：有效',
  `creator` int(11) DEFAULT NULL COMMENT '创建人',
  `modifier` int(11) DEFAULT NULL COMMENT '修改人',
  `organ_id` int(11) NOT NULL COMMENT '企业编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '模型执行结果的en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_monitor_engine` */

DROP TABLE IF EXISTS `t_monitor_engine`;

CREATE TABLE `t_monitor_engine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_id` varchar(200) DEFAULT NULL COMMENT '业务id',
  `monitor_parent_id` varchar(50) NOT NULL COMMENT '执行结果id',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `engine_name` varchar(200) DEFAULT NULL,
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_version_id` int(11) DEFAULT NULL COMMENT '引擎版本id',
  `process` varchar(500) DEFAULT NULL COMMENT '决策流执行轨迹',
  `snapshot` json DEFAULT NULL COMMENT '决策引擎快照信息',
  `input` text COMMENT '入参',
  `output` longtext COMMENT '出参',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='决策流监控';

/*Table structure for table `t_monitor_node` */

DROP TABLE IF EXISTS `t_monitor_node`;

CREATE TABLE `t_monitor_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_id` varchar(200) DEFAULT NULL COMMENT '业务id',
  `monitor_parent_id` varchar(50) NOT NULL COMMENT '引擎监控id',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_version_id` int(11) DEFAULT NULL COMMENT '引擎版本id',
  `node_id` int(11) DEFAULT NULL COMMENT '节点id',
  `node_name` varchar(200) DEFAULT NULL COMMENT '节点名称',
  `node_type` varchar(4) DEFAULT NULL COMMENT '节点类型',
  `snapshot` json DEFAULT NULL COMMENT '决策引擎快照信息',
  `input` text COMMENT '入参',
  `output` longtext COMMENT '出参',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='决策流节点层面监控';

/*Table structure for table `t_monitor_strategy` */

DROP TABLE IF EXISTS `t_monitor_strategy`;

CREATE TABLE `t_monitor_strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_id` varchar(200) DEFAULT NULL COMMENT '业务id',
  `monitor_parent_id` varchar(50) NOT NULL COMMENT '引擎监控id',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_version_id` int(11) DEFAULT NULL COMMENT '引擎版本id',
  `node_id` int(11) DEFAULT NULL COMMENT '节点id',
  `node_type` varchar(4) DEFAULT NULL COMMENT '节点类型',
  `strategy_id` int(11) DEFAULT NULL COMMENT '策略id',
  `strategy_name` varchar(200) DEFAULT NULL COMMENT '策略名称',
  `strategy_type` varchar(4) DEFAULT NULL COMMENT '策略类型',
  `snapshot` json DEFAULT NULL COMMENT '决策引擎快照信息',
  `input` longtext COMMENT '入参',
  `output` longtext COMMENT '出参',
  `result` longtext COMMENT '执行输出结果',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='决策流策略层面监控';

/*Table structure for table `t_node_knowledge_rel` */

DROP TABLE IF EXISTS `t_node_knowledge_rel`;

CREATE TABLE `t_node_knowledge_rel` (
  `rel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '映射编号',
  `node_id` int(11) DEFAULT NULL COMMENT '节点编号',
  `knowledge_id` int(11) DEFAULT NULL COMMENT '知识库信息编号',
  `knowledge_type` int(2) DEFAULT NULL COMMENT '知识库类型',
  PRIMARY KEY (`rel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_node_listdb_rel` */

DROP TABLE IF EXISTS `t_node_listdb_rel`;

CREATE TABLE `t_node_listdb_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `node_id` int(11) NOT NULL COMMENT '节点编号',
  `inner_listdbs` varchar(100) DEFAULT NULL COMMENT '内部黑白名单库编号,逗号分割',
  `outer_listdbs` varchar(100) DEFAULT NULL COMMENT '外部黑白名单库编号,逗号分割',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='节点用到的黑白名单库';

/*Table structure for table `t_organization` */

DROP TABLE IF EXISTS `t_organization`;

CREATE TABLE `t_organization` (
  `organ_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '组织编号',
  `name` varchar(100) NOT NULL COMMENT '组织名称',
  `code` varchar(100) NOT NULL COMMENT '组织代号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(100) DEFAULT NULL COMMENT '电话',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用1启用',
  `author` varchar(100) DEFAULT NULL COMMENT '创建者',
  `birth` datetime DEFAULT NULL COMMENT '创建时间',
  `token` varchar(100) DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`organ_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_resource` */

DROP TABLE IF EXISTS `t_resource`;

CREATE TABLE `t_resource` (
  `resource_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资源编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '分配人',
  `name` varchar(100) NOT NULL COMMENT '资源名称',
  `code` varchar(100) DEFAULT NULL COMMENT '资源代号',
  `url` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点',
  `des` varchar(100) DEFAULT NULL COMMENT '资源描述',
  `resource_system` enum('EngineX','DataX','Auth','ModuleX') NOT NULL COMMENT '资源所在系统',
  `birth` datetime DEFAULT NULL COMMENT '创建时间',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `sort` int(4) DEFAULT '0' COMMENT '菜单顺序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_resultset` */

DROP TABLE IF EXISTS `t_resultset`;

CREATE TABLE `t_resultset` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` varchar(200) DEFAULT NULL COMMENT '用户id',
  `pid` varchar(200) DEFAULT NULL COMMENT '项目id',
  `input` text COMMENT '入参',
  `output` longtext COMMENT '出参',
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `result` varchar(200) DEFAULT NULL COMMENT '1,通过。2，拒绝',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎编号',
  `engine_version` int(11) DEFAULT NULL COMMENT '引擎版本',
  `uuid` varchar(11) DEFAULT NULL COMMENT '用户id',
  `engine_name` varchar(200) DEFAULT NULL COMMENT '引擎名称',
  `engine_code` varchar(64) DEFAULT NULL COMMENT '引擎编号',
  `type` int(2) DEFAULT NULL COMMENT '1.页面填写 2.api',
  `sub_version` int(2) DEFAULT NULL COMMENT '子版本',
  `scorecardscore` varchar(10) DEFAULT NULL COMMENT '评分卡评分',
  `batch_no` varchar(200) DEFAULT NULL COMMENT '引擎批量测试批次号',
  `datilResult` varchar(200) DEFAULT NULL COMMENT '决策详情',
  `hbase_row_key` varchar(30) DEFAULT NULL COMMENT 'hbase行键',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_datetime` (`create_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_resultset_list` */

DROP TABLE IF EXISTS `t_resultset_list`;

CREATE TABLE `t_resultset_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `code` varchar(64) DEFAULT NULL COMMENT 'code或则id',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `description` text COMMENT '描述',
  `resultset_id` int(11) DEFAULT NULL COMMENT '结果集表id',
  `expression` varchar(500) DEFAULT NULL COMMENT '表现',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '组织编号',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '角色代号',
  `role_desc` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `author` varchar(100) DEFAULT NULL COMMENT '创建者',
  `birth` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用1启用',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_role_engine` */

DROP TABLE IF EXISTS `t_role_engine`;

CREATE TABLE `t_role_engine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `id_str` varchar(100) DEFAULT NULL COMMENT '引擎相关资源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_role_resource_rel` */

DROP TABLE IF EXISTS `t_role_resource_rel`;

CREATE TABLE `t_role_resource_rel` (
  `rel_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源id',
  PRIMARY KEY (`rel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_rule` */

DROP TABLE IF EXISTS `t_rule`;

CREATE TABLE `t_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '规则名称',
  `code` varchar(200) DEFAULT NULL COMMENT '规则代码',
  `description` text COMMENT '规则描述',
  `priority` int(4) DEFAULT NULL COMMENT '规则优先级',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `author` int(11) DEFAULT NULL COMMENT '创建人id',
  `user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_id` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '状态    0 :停用 ，1 : 启用，-1：删除  ',
  `type` int(2) DEFAULT NULL COMMENT '规则类型  0 : 系统的规则  1：组织的规则 2： 引擎的规则',
  `is_non` int(2) DEFAULT NULL COMMENT '逻辑关系“非”，0：否 ，1：是',
  `content` longtext COMMENT '规则具体内容',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `rule_type` smallint(2) DEFAULT NULL COMMENT '0硬性拒绝规则1加减分规则',
  `rule_audit` smallint(2) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '得分',
  `score_field_en` varchar(255) DEFAULT NULL COMMENT '接收规则得分的字段en',
  `last_logical` varchar(50) DEFAULT NULL COMMENT '逻辑关系符',
  `difficulty` int(2) NOT NULL DEFAULT '1' COMMENT '1-简单规则，2-复杂规则',
  `script_type` varchar(255) DEFAULT NULL COMMENT '脚本类型：groovy，python，js',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '接收规则命中结果的字段en',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织规则维护表';

/*Table structure for table `t_rule_condition` */

DROP TABLE IF EXISTS `t_rule_condition`;

CREATE TABLE `t_rule_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rule_id` int(11) NOT NULL COMMENT '规则表的id',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '规则版本的id',
  `logical` varchar(10) DEFAULT NULL COMMENT '关系节点的逻辑符号：&&（并关系），||（或关系）',
  `field_id` int(11) DEFAULT NULL COMMENT '表达式节点对应的字段id',
  `field_en` varchar(255) DEFAULT NULL COMMENT '指标的en，或者json的某个key形如（obj.a.b）',
  `field_type` int(2) DEFAULT '2' COMMENT '指标类型1.中间变量，2.入参变量',
  `operator` varchar(50) DEFAULT NULL COMMENT '表达式节点的操作符',
  `variable_type` int(2) DEFAULT NULL COMMENT '变量类型，1常量，2变量',
  `field_value` varchar(50) DEFAULT NULL COMMENT '表达式节点对应字段的限定值',
  `execution_logic` text COMMENT '执行逻辑，每个表达式对应一个用于执行器执行逻辑',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点的id 此项为0的是根节点',
  `condition_type` int(2) NOT NULL COMMENT '规则节点的类型：1-关系节点，2-表达式节点',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_rule_content` */

DROP TABLE IF EXISTS `t_rule_content`;

CREATE TABLE `t_rule_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `field_id` varchar(200) DEFAULT NULL COMMENT '字段id',
  `field_en` varchar(255) DEFAULT NULL COMMENT '字段的en',
  `field_value` varchar(500) DEFAULT NULL COMMENT '字段值',
  `rule_id` int(11) DEFAULT NULL COMMENT '关联的组织规则id',
  `variable_type` int(2) DEFAULT '1' COMMENT '类型：1 常量、2 变量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织规则详情表';

/*Table structure for table `t_rule_field` */

DROP TABLE IF EXISTS `t_rule_field`;

CREATE TABLE `t_rule_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logical` varchar(20) DEFAULT NULL COMMENT '逻辑符号',
  `operator` varchar(200) DEFAULT NULL COMMENT '运算符',
  `field_value` varchar(500) DEFAULT NULL COMMENT '字段值',
  `rule_id` int(11) DEFAULT NULL COMMENT '关联的规则的id',
  `field_id` varchar(200) DEFAULT NULL COMMENT '字段id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织规则字段表';

/*Table structure for table `t_rule_loop_group_action` */

DROP TABLE IF EXISTS `t_rule_loop_group_action`;

CREATE TABLE `t_rule_loop_group_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '循环组动作表主键',
  `condition_for_id` int(11) NOT NULL COMMENT '对应条件表中for的id',
  `condition_group_id` int(11) NOT NULL COMMENT '对应条件表中条件id',
  `action_type` int(3) DEFAULT NULL COMMENT '动作类型 1-求和，2-赋值，3-输出输出变量，4-输出常量',
  `action_key` varchar(255) DEFAULT NULL COMMENT '动作的key',
  `action_value` varchar(255) DEFAULT NULL COMMENT '动作的value',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_rule_script_version` */

DROP TABLE IF EXISTS `t_rule_script_version`;

CREATE TABLE `t_rule_script_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键：规则版本id',
  `rule_id` int(11) NOT NULL COMMENT '规则id',
  `version_code` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本描述',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `script_type` varchar(255) DEFAULT NULL COMMENT '脚本类型：groovy，python，js',
  `script_content` longtext COMMENT '脚本规则集内容json，包含脚本内容和脚本所用字段两个值',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '规则版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_rule_version` */

DROP TABLE IF EXISTS `t_rule_version`;

CREATE TABLE `t_rule_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键：规则版本id',
  `rule_id` int(11) NOT NULL COMMENT '规则id',
  `version_code` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本描述',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `score` int(11) NOT NULL DEFAULT '1' COMMENT '规则分数',
  `score_field_en` varchar(255) DEFAULT NULL COMMENT '存放得分的变量',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '规则版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_scorecard` */

DROP TABLE IF EXISTS `t_scorecard`;

CREATE TABLE `t_scorecard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `code` varchar(200) DEFAULT NULL COMMENT '代码',
  `description` text COMMENT '描述',
  `version` varchar(500) DEFAULT NULL COMMENT '版本号',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `author` int(11) DEFAULT NULL COMMENT '创建人id',
  `user_id` int(11) DEFAULT NULL COMMENT '修改人id',
  `organ_id` int(11) DEFAULT NULL COMMENT '组织id',
  `engine_id` int(11) DEFAULT NULL COMMENT '引擎id',
  `type` int(2) DEFAULT NULL COMMENT '评分卡类型  0：系统的评分卡  1：组织的评分卡  2：引擎的评分卡',
  `status` int(2) DEFAULT NULL COMMENT '状态  0：停用 ，1：启用，-1：删除',
  `score` longtext COMMENT '得分',
  `pd` longtext,
  `odds` longtext,
  `score_calculate_type` int(2) DEFAULT '1' COMMENT '得分计算方式',
  `result_field_en` varchar(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评分卡维护表';

/*Table structure for table `t_scorecard_content` */

DROP TABLE IF EXISTS `t_scorecard_content`;

CREATE TABLE `t_scorecard_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `field_value` text COMMENT '字段值',
  `field_id` varchar(200) DEFAULT NULL COMMENT '字段id',
  `scorecard_id` int(11) DEFAULT NULL COMMENT '关联的评分卡id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评分卡规则表';

/*Table structure for table `t_scorecard_detail` */

DROP TABLE IF EXISTS `t_scorecard_detail`;

CREATE TABLE `t_scorecard_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内容id',
  `dimension_id` int(11) DEFAULT NULL COMMENT '评分卡id',
  `field_id` int(11) DEFAULT NULL COMMENT '指标id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `type` int(11) DEFAULT NULL COMMENT '0是根，1是叶子',
  `score` decimal(10,2) DEFAULT NULL COMMENT '分数：type为1时有值',
  `coefficient` decimal(10,2) DEFAULT NULL COMMENT '系数：type为2时有值',
  `custom` longtext COMMENT '自定义：存储自定义公式',
  `calculate_type` int(11) DEFAULT NULL COMMENT '计算方式：1为score，2为coefficient，3为自定义custom',
  `logical` varchar(50) DEFAULT NULL COMMENT '逻辑运算符(一对二时才有)，表示区间时使用',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='评分卡明细表';

/*Table structure for table `t_scorecard_detail_condition` */

DROP TABLE IF EXISTS `t_scorecard_detail_condition`;

CREATE TABLE `t_scorecard_detail_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `detail_id` int(11) DEFAULT NULL COMMENT '内容id',
  `operator` varchar(20) DEFAULT NULL COMMENT '关系运算符',
  `field_value` varchar(20) DEFAULT NULL COMMENT '指标的值(实参)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='评分卡明细表的condition表';

/*Table structure for table `t_scorecard_dimension` */

DROP TABLE IF EXISTS `t_scorecard_dimension`;

CREATE TABLE `t_scorecard_dimension` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `card_id` int(11) DEFAULT NULL COMMENT '评分卡id',
  `version_id` int(11) NOT NULL DEFAULT '0' COMMENT '评分卡版本id',
  `dimension_name` varchar(30) DEFAULT NULL COMMENT '维度名称',
  `weight` decimal(7,2) DEFAULT NULL COMMENT '权重',
  `execute_type` varchar(30) DEFAULT NULL COMMENT '执行方式 预留字段',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `t_scorecard_field` */

DROP TABLE IF EXISTS `t_scorecard_field`;

CREATE TABLE `t_scorecard_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scorecard_id` int(11) DEFAULT NULL COMMENT '关联的评分卡的id',
  `field_id` int(11) DEFAULT NULL COMMENT '字段id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评分卡字段表';

/*Table structure for table `t_scorecard_version` */

DROP TABLE IF EXISTS `t_scorecard_version`;

CREATE TABLE `t_scorecard_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键：评分卡版本id',
  `scorecard_id` int(11) NOT NULL COMMENT '评分卡id',
  `version_code` varchar(255) NOT NULL COMMENT '版本号',
  `description` varchar(255) NOT NULL COMMENT '版本描述',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除 ，1启用，0停用',
  `score_calculate_type` int(4) NOT NULL COMMENT '得分计算方式',
  `result_field_en` varchar(255) NOT NULL COMMENT '存放执行结果的变量',
  `organ_id` int(11) NOT NULL COMMENT '组织id',
  `create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `update_user_id` int(11) NOT NULL COMMENT '修改者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `snapshot` json DEFAULT NULL COMMENT '评分卡版本配置快照',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_strategy_output` */

DROP TABLE IF EXISTS `t_strategy_output`;

CREATE TABLE `t_strategy_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `field_id` int(11) NOT NULL COMMENT '字段id',
  `field_en` varchar(50) NOT NULL COMMENT '字段的en',
  `field_value` longtext NOT NULL,
  `variable_type` int(2) NOT NULL DEFAULT '1' COMMENT '字段值的类型：1 常量、2 变量',
  `strategy_id` int(11) DEFAULT NULL,
  `strategy_type` varchar(20) DEFAULT NULL,
  `out_condition` longtext COMMENT '输出条件，为null则无条件',
  `out_type` varchar(255) DEFAULT NULL COMMENT '输出的类型：success成功时候输出，fail 失败时候的输出',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='策略中心自定义输出表';

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '组织编号',
  `employee_id` varchar(100) DEFAULT NULL COMMENT '员工编号',
  `account` varchar(100) NOT NULL COMMENT '账户（手机或者邮箱）',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `nick_name` varchar(100) NOT NULL COMMENT '昵称',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `cellphone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `qq` varchar(100) DEFAULT NULL COMMENT 'qq',
  `latest_time` varchar(100) DEFAULT NULL COMMENT '最后登录时间',
  `latest_ip` varchar(100) DEFAULT NULL COMMENT '最后登录ip',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用，1启用,-1假删',
  `birth` datetime DEFAULT NULL COMMENT '创建时间',
  `author` varchar(100) DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `t_user_role_rel` */

DROP TABLE IF EXISTS `t_user_role_rel`;

CREATE TABLE `t_user_role_rel` (
  `rel_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色编号',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '公司编号',
  `status` int(10) DEFAULT '1' COMMENT '1.启用。0.停用。-1.删除',
  PRIMARY KEY (`rel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



/*Data for the table `t_organization` */
insert into `t_organization` (`organ_id`, `name`, `code`, `email`, `telephone`, `status`, `author`, `birth`, `token`) values('1','risk','0001','123.com ','1234567489','1','超级管理员','2017-06-29 15:32:42','6a6ea35e-aabe-4e64-bd98-dae304b10a21');


/*Data for the table `t_user` */
insert into `t_user` (`user_id`, `organ_id`, `employee_id`, `account`, `password`, `nick_name`, `email`, `cellphone`, `qq`, `latest_time`, `latest_ip`, `remark`, `status`, `birth`, `author`) values('1','1','0001','sadmin','0*7d5b412H1j6e585H1c6g2l5f3@2!6c','超级管理员','admin.com','123456789','123456',NULL,NULL,NULL,'1','2017-06-29 15:32:42','超级管理员');
insert into `t_user` (`user_id`, `organ_id`, `employee_id`, `account`, `password`, `nick_name`, `email`, `cellphone`, `qq`, `latest_time`, `latest_ip`, `remark`, `status`, `birth`, `author`) values('135','46','001','admin','0*7d5b412H1j6e585H1c6g2l5f3@2!6c','管理员','001@163.com','15000000000',NULL,NULL,NULL,NULL,'1','2017-06-29 16:27:30','超级管理员');


/*Data for the table `t_role` */
insert into `t_role` (`role_id`, `organ_id`, `role_name`, `role_code`, `role_desc`, `author`, `birth`, `status`) values('70','46','管理员',NULL,NULL,'超级管理员','2017-06-29 16:25:51','1');


/*Data for the table `t_resource` */
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('1',NULL,'系统大盘','001','/dashboard','0','系统大盘','EngineX','2021-03-27 14:31:42','el-icon-lx-home','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('2',NULL,'引擎管理','002',NULL,'0','引擎管理','EngineX','2021-03-27 14:31:42','el-icon-lx-cascades','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('3',NULL,'策略中心','003',NULL,'0','策略中心','EngineX','2021-03-27 14:31:42','el-icon-lx-global','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('4',NULL,'数据中心','004',NULL,'0','数据中心','EngineX','2021-03-27 14:31:42','el-icon-lx-read','4','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('5',NULL,'监控中心','005',NULL,'0','监控中心','EngineX','2021-03-27 14:31:42','el-icon-monitor','6','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('6',NULL,'系统管理','006',NULL,'0','系统管理','EngineX','2021-03-27 14:31:42','el-icon-lx-settings','8','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('7',NULL,'引擎列表','007','/engineList','2','引擎列表','EngineX','2021-03-27 14:31:42','el-icon-lx-calendar','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('8',NULL,'决策流配置','008','/engine_decision_flow','2','决策流配置','EngineX','2021-03-27 14:31:42',NULL,'2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('9',NULL,'复杂规则集','009','/knowledge','3','复杂规则集','EngineX','2021-03-27 14:31:43','el-icon-lx-global','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('10',NULL,'评分卡','010','/scorecard','3','评分卡','EngineX','2021-03-27 14:31:43','el-icon-s-ticket','4','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('11',NULL,'机器学习模型','011','/indexModels','3','机器学习模型','EngineX','2021-03-27 14:31:43','el-icon-lx-link','5','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('12',NULL,'名单库','012','/blackWihiteData','3','名单库','EngineX','2021-03-27 14:31:43','el-icon-s-check','6','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('13',NULL,'基础指标','013','/dataManage','4','基础指标','EngineX','2021-03-27 14:31:43','el-icon-lx-read','1','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('14',NULL,'数据源管理','014','/DataSource','4','数据源管理','EngineX','2021-03-27 14:31:43','el-icon-coin','6','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('15',NULL,'决策流监控','015','/engine_result','5','决策流监控','EngineX','2021-03-27 14:31:43',NULL,'1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('16',NULL,'操作日志','016','/logManagement','5','操作日志','EngineX','2021-03-27 14:31:43',NULL,'2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('17',NULL,'用户管理','017','/userManagement','0','用户管理','Auth','2021-03-27 14:31:43','el-icon-user','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('18',NULL,'角色管理','018','/roleManagement','0','角色管理','Auth','2021-03-27 14:31:43','el-icon-collection-tag','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('19',NULL,'资源管理','019','/resourceManagement','0','资源管理','Auth','2021-03-27 14:31:43','el-icon-location-outline','4','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('20',NULL,'组织管理','020','/organizationManagement','0','组织管理','Auth','2021-03-27 14:31:43','el-icon-link','5','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('21','1','SQL指标','021','/SQLManage','4','SQL指标','EngineX','2021-03-27 17:39:22','','2','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('22','1','接口指标','jkzb','/portManage','4','接口指标','EngineX','2021-03-27 17:40:50','','3','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('23','1','衍生指标','yszb','/DeriveManage','4','衍生指标','EngineX','2021-03-27 17:41:19','','4','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('24','1','接口管理','jkgl','/portSource','4','接口管理','EngineX','2021-03-27 17:41:54','','5','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('25','1','基础规则集','jcgzj','/easyRule','3','基础规则集','EngineX','2021-04-12 18:26:16','','1','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('26','1','决策表','jcb','/decisionTable','3','决策表','EngineX','2021-04-20 19:33:14','','7','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('27','1','分析中心','fxzx','','0','分析中心','EngineX','2021-06-11 18:23:06','el-icon-data-line','5','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('28','1','趋势分析','qsfx','/tendencyAnalyse','27','趋势分析','EngineX','2021-06-11 18:23:53','','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('29','1','决策树','jcs','/decisionTree','3','决策树','EngineX','2021-07-02 18:16:08','','8','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('30','1','脚本规则集','jbgzj','/groovyRule','3','脚本规则集','EngineX','2021-09-14 10:59:24','','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('31','1','审批中心','spzx','','0','审批中心','EngineX','2021-09-22 13:22:34','el-icon-check','7','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('32','1','审批设置','spsz','/examineSet','31','审批设置','EngineX','2021-09-22 13:25:18','','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('33','1','审批流','spl','/examineCurrent','31','审批流','EngineX','2021-09-22 13:25:39','','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('34','1','审批管理','spgl','/examineCentre','31','审批管理','EngineX','2021-09-22 13:26:06','','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('35','1','系统首页','auth_dashboard','/dashboard','0','系统首页','Auth','2021-12-17 17:13:58','el-icon-house','1','-1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('36','1','系统首页','zbxtsy','/dashboard','0','系统首页','DataX','2021-12-17 17:15:57','el-icon-lx-home','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('37','1','数据中心','datax-zbzx','','0','数据中心','DataX','2021-12-17 17:16:14','el-icon-reading','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('38','1','数据库指标','datax-dbfield','/SQLManage','37','数据库指标','DataX','2021-12-17 17:16:38','','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('39','1','接口指标','datax-interface','/portManage','37','接口指标','DataX','2021-12-17 17:17:16','','4','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('40','1','衍生指标','datax-yszb','/DeriveManage','37','衍生指标','DataX','2021-12-17 17:17:40','','5','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('41','1','指标源管理','dataX-zbygl','','0','dataX-指标源管理','DataX','2021-12-17 17:18:29','el-icon-coin','3','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('42','1','接口源','datax-jkgl','/portSource','41','接口源','DataX','2021-12-17 17:18:58','','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('43','1','数据库源','datax-dbsource','/DataSource','41','数据库源','DataX','2021-12-17 17:19:51','','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('44','1','基础指标','datax-basefield','/dataManage','37','基础指标','DataX','2021-12-17 17:20:29','','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('45','1','常量指标','datax-clzb','/staticManage','37','常量指标','DataX','2021-12-17 17:20:57','','2','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('46','1','数据总览','datax-sjzl','','0','数据总览','DataX','2021-12-17 17:21:21','el-icon-monitor','4','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('47','1','指标统计','datax-zbtj','/FieldStatistics','46','指标统计','DataX','2021-12-17 17:21:45','','1','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('48','1','集合规则','jhcz','/listOperation','3','集合规则','EngineX','2021-12-17 17:34:30','','9','1');
insert into `t_resource` (`resource_id`, `user_id`, `name`, `code`, `url`, `parent_id`, `des`, `resource_system`, `birth`, `icon`, `sort`, `status`) values('49','1','数据清洗','sjqx','/dataRinse','3','数据清洗','EngineX','2022-03-23 14:39:14','','11','1');


/*Data for the table `t_user_role_rel` */
insert into `t_user_role_rel` (`user_id`, `role_id`, `organ_id`, `status`) values('135','70','46','1');


/*Data for the table `t_role_resource_rel` */
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','1');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','2');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','7');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','8');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','3');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','9');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','30');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','10');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','11');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','12');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','26');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','29');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','48');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','49');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','27');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','28');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','5');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','15');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','16');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','31');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','32');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','33');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','34');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','36');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','37');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','44');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','45');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','38');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','39');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','40');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','41');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','43');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','42');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','46');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','47');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','17');
insert into `t_role_resource_rel` (`role_id`, `resource_id`) values('70','18');


/*Data for the table `t_dictionary` */
insert into `t_dictionary` (`id`, `dict_key`, `dict_value`, `create_time`, `update_time`) values('1','holdSystemList','EngineX,DataX,Auth','2021-12-15 16:48:38','2021-12-16 14:08:47');
insert into `t_dictionary` (`id`, `dict_key`, `dict_value`, `create_time`, `update_time`) values('3','useCache','off','2021-12-15 18:17:28','2021-12-16 15:59:33');




-- 规则块配置表
CREATE TABLE `t_rule_block` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键：规则块id',
  `rule_id` INT(11) NOT NULL COMMENT '规则id',
  `version_id` INT(11) NOT NULL DEFAULT '0' COMMENT '规则版本的id',
  `result_field_en` VARCHAR(255) DEFAULT NULL COMMENT '存放执行结果的变量',
  `score` INT(11) NOT NULL COMMENT '规则分数',
  `score_field_en` VARCHAR(255) DEFAULT NULL COMMENT '存放得分的变量',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=INNODB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='规则块配置表';


ALTER TABLE t_rule_condition
  ADD COLUMN `block_id` INT (11) NOT NULL COMMENT '规则块的id' AFTER version_id;


-- 删除规则表历史遗留字段
ALTER TABLE t_rule
  DROP COLUMN engine_id,
  DROP COLUMN is_non,
  DROP COLUMN content,
  DROP COLUMN rule_type,
  DROP COLUMN rule_audit,
  DROP COLUMN score,
  DROP COLUMN score_field_en,
  DROP COLUMN last_logical,
  DROP COLUMN result_field_en;


-- 刷新数据
INSERT INTO `t_rule_block`(rule_id, version_id, result_field_en, score, score_field_en) 
  SELECT rule_id, id, result_field_en, score, score_field_en FROM `t_rule_version`;


UPDATE
  `t_rule_condition` t1
  INNER JOIN `t_rule_block` t2
    ON t1.`rule_id` = t2.`rule_id`
    AND t1.`version_id` = t2.`version_id` SET t1.`block_id` = t2.`id`;
	
	
ALTER TABLE `t_rule_version`
  DROP COLUMN result_field_en,
  DROP COLUMN score,
  DROP COLUMN score_field_en;