/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : db_news_sys

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2018-12-23 21:55:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('210', '1', '1');
INSERT INTO `authority` VALUES ('211', '1', '5');
INSERT INTO `authority` VALUES ('212', '1', '17');
INSERT INTO `authority` VALUES ('213', '1', '18');
INSERT INTO `authority` VALUES ('214', '1', '19');
INSERT INTO `authority` VALUES ('215', '1', '20');
INSERT INTO `authority` VALUES ('216', '1', '13');
INSERT INTO `authority` VALUES ('217', '1', '21');
INSERT INTO `authority` VALUES ('218', '1', '22');
INSERT INTO `authority` VALUES ('219', '1', '23');
INSERT INTO `authority` VALUES ('220', '1', '35');
INSERT INTO `authority` VALUES ('221', '1', '36');
INSERT INTO `authority` VALUES ('222', '1', '14');
INSERT INTO `authority` VALUES ('223', '1', '15');
INSERT INTO `authority` VALUES ('224', '1', '24');
INSERT INTO `authority` VALUES ('225', '1', '25');
INSERT INTO `authority` VALUES ('226', '1', '26');
INSERT INTO `authority` VALUES ('227', '1', '31');
INSERT INTO `authority` VALUES ('228', '1', '32');
INSERT INTO `authority` VALUES ('229', '1', '33');
INSERT INTO `authority` VALUES ('230', '1', '34');
INSERT INTO `authority` VALUES ('231', '1', '37');
INSERT INTO `authority` VALUES ('232', '1', '38');
INSERT INTO `authority` VALUES ('233', '1', '39');
INSERT INTO `authority` VALUES ('234', '1', '40');
INSERT INTO `authority` VALUES ('235', '1', '41');
INSERT INTO `authority` VALUES ('236', '1', '42');
INSERT INTO `authority` VALUES ('237', '1', '43');
INSERT INTO `authority` VALUES ('238', '1', '44');
INSERT INTO `authority` VALUES ('239', '1', '45');
INSERT INTO `authority` VALUES ('240', '1', '46');
INSERT INTO `authority` VALUES ('241', '1', '47');
INSERT INTO `authority` VALUES ('242', '1', '48');
INSERT INTO `authority` VALUES ('243', '1', '49');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `content` varchar(512) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `newsId` (`newsId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`newsId`) REFERENCES `news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('4', '2', '哈哈哈', '测试', '2018-12-23 15:07:00');
INSERT INTO `comment` VALUES ('5', '2', '哈哈哈', '你好', '2018-12-23 15:07:13');
INSERT INTO `comment` VALUES ('6', '2', '猿来入此', '猿来入此网站真是好啊！', '2018-12-23 15:07:36');
INSERT INTO `comment` VALUES ('7', '2', '猿来入此', '猿来入此真是棒啊！', '2018-12-23 15:08:36');
INSERT INTO `comment` VALUES ('8', '2', '猿来入此', '哈哈哈哈！', '2018-12-23 15:08:43');
INSERT INTO `comment` VALUES ('9', '2', '猿来入此', '评论测试v报告！', '2018-12-23 15:30:10');
INSERT INTO `comment` VALUES ('10', '2', '猿来入此', '你好', '2018-12-23 15:40:21');
INSERT INTO `comment` VALUES ('11', '2', '小明', '人呢？', '2018-12-23 15:40:36');
INSERT INTO `comment` VALUES ('12', '3', '猿来入此', '好想去啊！', '2018-12-23 15:41:20');
INSERT INTO `comment` VALUES ('13', '11', '娱乐纪检委', '祝你们幸福美满！', '2018-12-23 15:42:05');
INSERT INTO `comment` VALUES ('14', '7', '猿来入此', '真厉害！', '2018-12-23 21:34:13');
INSERT INTO `comment` VALUES ('15', '2', '慢慢来', '有人说慢慢来会比较块！', '2018-12-23 21:34:52');
INSERT INTO `comment` VALUES ('16', '2', '小明', '小明是个好同学！', '2018-12-23 21:35:14');
INSERT INTO `comment` VALUES ('17', '2', '猿来入此', '哈哈哈哈！', '2018-12-23 21:35:45');
INSERT INTO `comment` VALUES ('18', '13', '吃瓜群众', ' 这样就不好了吧！', '2018-12-23 21:44:36');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES ('18', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES ('19', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES ('20', '用户名为{猿来入此}，角色为{普通用户}的用户登录成功!', '2018-12-16 19:17:46');
INSERT INTO `log` VALUES ('21', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:51:57');
INSERT INTO `log` VALUES ('22', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:58:51');
INSERT INTO `log` VALUES ('23', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:14:49');
INSERT INTO `log` VALUES ('24', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:22:49');
INSERT INTO `log` VALUES ('25', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:23:43');
INSERT INTO `log` VALUES ('26', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:07:39');
INSERT INTO `log` VALUES ('27', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:18:38');
INSERT INTO `log` VALUES ('28', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:03:27');
INSERT INTO `log` VALUES ('29', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:31:49');
INSERT INTO `log` VALUES ('30', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:32:58');
INSERT INTO `log` VALUES ('31', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:38:50');
INSERT INTO `log` VALUES ('32', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:26:00');
INSERT INTO `log` VALUES ('33', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 10:36:53');
INSERT INTO `log` VALUES ('34', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:37:04');
INSERT INTO `log` VALUES ('35', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:08:04');
INSERT INTO `log` VALUES ('36', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:59:39');
INSERT INTO `log` VALUES ('37', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:06:29');
INSERT INTO `log` VALUES ('38', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:17:20');
INSERT INTO `log` VALUES ('39', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:21:20');
INSERT INTO `log` VALUES ('40', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:05:44');
INSERT INTO `log` VALUES ('41', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:07:30');
INSERT INTO `log` VALUES ('42', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:16:00');
INSERT INTO `log` VALUES ('43', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:28:56');
INSERT INTO `log` VALUES ('44', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:33:41');
INSERT INTO `log` VALUES ('45', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:31:07');
INSERT INTO `log` VALUES ('46', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:35:02');
INSERT INTO `log` VALUES ('47', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:36:32');
INSERT INTO `log` VALUES ('48', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:06:20');
INSERT INTO `log` VALUES ('49', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:09:48');
INSERT INTO `log` VALUES ('50', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:19:05');
INSERT INTO `log` VALUES ('51', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:19:20');
INSERT INTO `log` VALUES ('52', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:20:47');
INSERT INTO `log` VALUES ('53', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:20:59');
INSERT INTO `log` VALUES ('54', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 11:10:10');
INSERT INTO `log` VALUES ('55', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 12:38:51');
INSERT INTO `log` VALUES ('56', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 14:39:48');
INSERT INTO `log` VALUES ('57', '用户名为admin的用户登录时输入验证码错误!', '2018-12-23 21:29:13');
INSERT INTO `log` VALUES ('58', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:29:23');
INSERT INTO `log` VALUES ('59', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:39:25');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '新闻管理', '', 'icon-feed');
INSERT INTO `menu` VALUES ('38', '37', '分类管理', '../admin/news_category/list', 'icon-feed-star');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('42', '37', '新闻管理', '../admin/news/list', 'icon-feed-edit');
INSERT INTO `menu` VALUES ('43', '42', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('44', '42', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('45', '42', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('46', '37', '评论管理', '../admin/comment/list', 'icon-comment');
INSERT INTO `menu` VALUES ('47', '46', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('48', '46', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('49', '46', '删除', 'remove()', 'icon-cross');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `abstrs` varchar(512) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `author` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `viewNumber` int(8) NOT NULL DEFAULT '0',
  `commentNumber` int(5) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '5', '猿来入此IT项目开发实战教程', '猿来入此，专注于IT实战项目开发，我们的理念是学一千遍不如动手做一遍，在实战项目中反哺理论概念知识。', '项目源码,开发教程', '/News/resources/upload/news-pic.jpg', '猿来入此', '<h1 style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\">猿来入此</h1><p>网站网址：<a href=\"http://programmer.ischoolbar.com\" target=\"_blank\">http://programmer.ischoolbar.com</a></p><p><br/></p><p>网站名称：猿来入此</p><p><br/></p><p>网站内容：主要是Java实战项目教程，也有很多Java经典项目，可用作毕业设计、大作业等等。</p><p><br/></p><p>面向对象：Java爱好者、大学生、程序员。</p><p><br/></p><p>目前有人在倒卖我的项目，淘宝官方店铺：沐伊科技和沐伊科技一分店。不是这两个店铺那就是倒卖的。</p><p><br/></p><p>建议从官网获取项目源码和教程！</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0058.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p><p></p>', '27', '13', '2018-12-22 14:36:24');
INSERT INTO `news` VALUES ('3', '5', '冬季到上海来看企鹅生蛋，海昌海洋公园极地冰雪节开幕', '新民晚报讯（记者 孙云）冬季到上海不一定能看到雪，不过可以看到企鹅生蛋和破壳孵化哦。今天上午，上海海昌海洋公园开启极地冰雪节活动，时间将持续至2019年2月19日元宵节。', '旅游,海洋公园', '/News/resources/upload/1545466407090.jpg', '猿来入此', '<p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/News/resources/upload/image/20181222/1545466366683047203.jpg\" id=\"http://img.xinmin.cn/xmwb/2018/12/NEM1_20181222_C0323531856_A1440090.jpg\"/></p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><em style=\"box-sizing: border-box;\">图说：今天上午上海海昌海洋公园开启极地冰雪节活动 孙云 摄</em></p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　新民晚报讯（记者 孙云）冬季到上海不一定能看到雪，不过可以看到企鹅生蛋和破壳孵化哦。今天上午，上海海昌海洋公园开启极地冰雪节活动，时间将持续至2019年2月19日元宵节。时值冬季，初来乍到上海做客的企鹅们已进入繁殖季节，很快，上海海昌海洋公园就将迎来第一批新生企鹅宝宝，游客将在企鹅生蛋科普展上目睹企鹅从蛋中破壳而出的惊喜时刻。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　今天上午，具有“冰雪公主”之称的自由式滑雪世界冠军李妮娜受聘“上海海昌海洋公园·极地冰雪节”爱心大使，与海豚、虎鲸、企鹅等极地海洋动物们进行了亲密互动。极地冰雪节期间，海昌海洋公园将推出海洋大马戏、海洋动物大拜年等系列主题活动，并推出门票特惠：2018年12月17日-2019年1月1日期间，平日标准票为279 元/张，优待票为150 元/张；高峰日标准票为316 元/张，优待票为200 元/张。</p><p style=\"box-sizing: border-box; margin-top: 10px; margin-bottom: 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 31px; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; letter-spacing: 1px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(255, 255, 255);\">　　元旦小长假期间，上海海昌海洋公园还将首度开放夜场模式，运营时间延长至晚上8时30分，并开售价格从150元起的“星光夜场票”。游客在观赏夜晚极地海洋动物生活状态的同时，更可感受星空下海洋梦幻花车巡游的独特魅力。</p><p><br/></p>', '3', '2', '2018-12-22 16:13:40');
INSERT INTO `news` VALUES ('4', '10', '车王苏醒？迈克尔·舒马赫病情现好转', '据外媒报道，已经“昏迷”5年的7届F1世界冠军迈克尔·舒马赫情况出现好转，已经不是“卧床不起或依靠插管维持生命”了，但仍需接受护理与治疗。', '国际新闻', '/News/resources/upload/1545467059497.jpg', '猿来入此', '<p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g29/M03/D9/DB/autohomecar__ChsEflwYsxCAC5OOAAN0URxCV40644.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039326011486.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　2013年12月，当迈克尔·舒马赫和儿子米克在法国阿尔卑斯山滑雪时，这位备受瞩目的F1世界冠军不幸遭受重伤，之后一直处于昏迷状态。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g26/M05/D7/6A/autohomecar__ChsEe1wYsgyAVNoTAARdy0DD2vw456.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039543003803.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　由于此前早些时候，迈克尔·舒马赫一直有“从公共视线中隐去”的想法，所以他的家人一直对他状况保持缄默，也让大批车迷对他的健康状况一无所知。而舒马克一直在瑞士日内瓦湖附近的住宅中由一群医学专家照料。据悉，在家中接受治疗时，每周的费用高达50000英镑，约合人民币43.4万元。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \"><a href=\"https://www.autohome.com.cn/img/?img=newsdfs/g28/M03/D3/52/autohomecar__ChcCR1wYsguAAMgGAAaWN2CFC6Y064.jpg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(56, 110, 211);\"><img width=\"744\" alt=\"汽车之家\" src=\"/News/resources/upload/image/20181222/1545467039636073640.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　根据德国杂志《Bravo》报道，舒马赫已经被转移到美国德克萨斯州达拉斯一间诊所，接受专门的脑损伤治疗。诊所负责人Mark Weeks告诉杂志：“我们有很多的经验，可以治疗遭受这种创伤的患者。”</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: 31px; font-family: \">　　从舒马赫重伤之后，对于他的健康状况就成了所有F1车迷的焦点，无论他现状如何，都希望他能够早早好转起来。（编辑/汽车之家 郭枫）</p><p><br/></p>', '2', '0', '2018-12-22 16:24:32');
INSERT INTO `news` VALUES ('5', '14', '3亿美元一架！美军第六代战斗机造价吓住国会', '【环球时报报道 特约记者 张亦驰】在俄罗斯与中国研制的第五代隐形战斗机相继问世后，为确保“绝对制空权”，美空军迅速开启了第六代战斗机的预研工作。不过美国《防务新闻》网站15日称，美国政府部门首次对这种未来战斗机的成本进行了评估，结果高得惊人——它的价格将是F-35隐形战斗机的3倍，单价达到3亿美元。如何解决下一代战斗机装备数量、单机性能和经济可承受性之间的矛盾，成为摆在美国空军面前的一大难题。', '军事', '/News/resources/upload/1545534731624.jpeg', '猿来入此', '<p class=\"otitle\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">（原标题：3亿美元一架！美军第六代战斗机造价吓住国会）</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/17/3d6fb382f83943649b1113e03807f09b.jpeg\"/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\">美军现役的F-22五代机单架成本在2亿美元左右</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【环球时报报道 特约记者 张亦驰】在俄罗斯与中国研制的第五代隐形战斗机相继问世后，为确保“绝对制空权”，美空军迅速开启了第六代战斗机的预研工作。不过美国《防务新闻》网站15日称，美国政府部门首次对这种未来战斗机的成本进行了评估，结果高得惊人——它的价格将是F-35隐形战斗机的3倍，单价达到3亿美元。如何解决下一代战斗机装备数量、单机性能和经济可承受性之间的矛盾，成为摆在美国空军面前的一大难题。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">报道称，美国国会预算办公室最新研究显示，以2018年币值计算，被美国空军称为“穿透性制空”（PCA）的下一代空中优势战斗机单机成本约为3亿美元。这个价格是F-35A战斗机的3倍以上，如今F-35A的平均采购价格为9400万美元。报道称，这是美国政府部门第一次评估PCA的潜在价格。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">国会预算办公室估计，美空军需要414架PCA战机取代现有的F-15C/D和F-22，进而全面接管制空作战任务。报告认为，新战机最快将在2030年服役，这取决于美空军的渴望程度。但如此高昂的价格吓住了美国会，他们可能将重新考虑空军的装备更新计划。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">报道称，价格昂贵的部分原因为新技术的使用。“与今天的F-22相比，PCA可能具有更大的航程和更多的有效载荷，以及更好的隐形和传感器能力。这些特征将有助于它在高端防空系统威胁下行动，中国、俄罗斯和其他潜在对手未来可能拥有这些先进的防空系统。”此外，美空军从来没有能实现过“低成本生产隐形战机”。B-2轰炸机和F-22战斗机的后续生产计划都被取消，部分原因就是每架飞机的价格很高，这反过来又导致生产成本高昂。F-35早期的研制进度因一系列成本超支而受到影响，即便现在单价也远超原先估算。报告认为，PCA的成本控制可能同样困难。</p><p><br/></p>', '2', '0', '2018-12-23 11:12:19');
INSERT INTO `news` VALUES ('6', '15', '中央经济工作会议指出：实施更大规模的减税降费 专家认为极大利好股市', '日前结束的中央经济工作会议指出，中央经济工作会议指出，宏观政策要强化逆周期调节，继续实施积极的财政政策和稳健的货币政策，适时预调微调，稳定总需求；积极的财政政策要加力提效，实施更大规模的减税降费，较大幅度增加地方政府专项债券规模；稳健的货币政策要松紧适度，保持流动性合理充裕，改善货币政策传导机制，提高直接融资比重，解决好民营企业和小微企业融资难融资贵问题。', '减税', '/News/resources/upload/1545534872142.jpg', '猿来入此', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">长江商报记者邹平<br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　中央经济工作会议指出将实施更大规模的减税降费，业内分析认为极大利好股市，A股的长期投资价值逐渐显现。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　日前结束的中央经济工作会议指出，中央经济工作会议指出，宏观政策要强化逆周期调节，继续实施积极的财政政策和稳健的货币政策，适时预调微调，稳定总需求；积极的财政政策要加力提效，实施更大规模的减税降费，较大幅度增加地方政府专项债券规模；稳健的货币政策要松紧适度，保持流动性合理充裕，改善货币政策传导机制，提高直接融资比重，解决好民营企业和小微企业融资难融资贵问题。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　前海开源基金董事总经理、首席经济学家杨德龙分析，会议提出要加力提效并实施更大规模的减税降费，让利于民，从而提高企业的利润收入和个人的居民收入，这有利于促进经济增长。减税缴费也是之前包括我在内的很多专家呼吁的一个重要的积极的财政政策，现在中央经济工作会议通过文件正式确认会在2019年实施更大规模的减税降费，这无疑是一个极大的利好，A股市场有望出现修复性上涨的机会。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　<strong style=\"margin: 0px; padding: 0px;\">&nbsp;A股长期投资价值逐渐显现</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　中信证券分析，在本次会议中，指出要“降低全社会各类营商成本”，降低全社会的成本除了减税降费外，通过降息降准来降低实体经济的融资成本也是一种选择，而且，本次会议指出要加强基建补短板力度，从政策的紧迫性来看，稳基建是最好的选择，而稳基建需要解决政府债务，那么就要求货币宽松加码。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　中信证券指出，对于风险资产而言，在中央明确提出坚持深化市场化改革的大背景下，监管对资本市场干预权重将有所下降，市场表现将逐步回归至基本面。而当下权益市场的风险已经得到较为充分的释放，伴随着上市公司治理以及信息披露制度的进一步强化，A股的长期投资价值也逐渐显现。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　中信证券认为，会议提及降低社会成本，后续降准降息依然可期。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　<strong style=\"margin: 0px; padding: 0px;\">结构性行情和主题性行情将主导明年市场</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　中信证券预计2019年的市场整体提振市场信心为先，从风险偏好修复向盈利企稳过渡，叠加当前估值水平处于历史底部，中短期不必过渡悲观，中长期性价比将逐步显现，此时具有进可攻退可守独特性质的可转债资产在大类资产轮动的关键阶段具有不可忽视的重要性和价值。结构层面，消费升级、产业整合，高新技术等政策支持的相关板块值得关注。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　<a class=\"singleStock\" target=\"_blank\" href=\"http://stockpage.10jqka.com.cn/601066/\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(64, 140, 215); border-bottom: 1px dashed rgb(153, 153, 153);\">中信建投</a>（<a class=\"art_links\" target=\"_blank\" href=\"http://stockpage.10jqka.com.cn/601066/\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(64, 140, 215);\">601066</a>）首席策略分析师张玉龙认为，结构性行情和主题性行情将主导2019年A股市场。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　张玉龙分析，从宏观经济总体来看，通过逆周期调节主要是防范经济和金融风险，保证经济平稳运行，能够实现稳就业的目标。从结构政策来看，通过深化改革和竞争政策，实现宏观经济结构的调整。因此，2019年经济政策并不会出现大规模刺激，仍然是平稳回落中促进结构转变。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　张玉龙认为，在经济回落转型过程中，股票市场并不会出现趋势性的行情，而是结构性的行情。2019年股票市场在当前位置呈现出低位震荡，结构性行情和主题性行情将主导整个市场，仍然维持成长&gt;消费&gt;金融地产&gt;周期的判断，重点推荐5G、人工智能、工业互联网、物联网等主题，看好长三角、粤港澳和京津冀的区域性主题投资机会。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　新时代证券宏观团队认为：A股经过调整，风险已经逐步释放，估值处于历史低。政府稳增长力度增加，短期内就会提高风险偏好，增加市场信心。积极财政政策也将拉动经济增长，一些企业利润可能改善。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; line-height: 30px; color: rgb(51, 51, 51); font-family: arial, &quot;microsoft yahei&quot;, tahoma, sans-serif; white-space: normal;\">　　从具体板块上看，新时代证券宏观团队认为，和基建相关的板块将会直接受益。另外，中央经济强调了推动制造业高质量发展，要加大制造业技术改造和设备更新，加快5G商用步伐，加强人工智能、工业互联网、物联网等新型基础设施建设，成长板块将会受益。</p><p><br/></p>', '1', '0', '2018-12-23 11:14:36');
INSERT INTO `news` VALUES ('7', '16', '四换二全美轰动！雷霆夺冠阵容正式发起冲刺，威少：下一个杜兰特', '新赛季常规赛赛程已经进行到差不多三分之一了，按照目前的排位来看，雷霆队的表现还算令人满意，在经历开局不畅以及威少受伤等等一系列情况之后，雷霆队已经逐渐打响了季后赛主场优势争夺战。雷霆队在休赛期中对于阵容方面做出了不小的变动，管理层放弃了上赛季的夺冠阵容，新赛季由威少和乔治双核带队冲击总冠军。威少仍旧能够打出场均三双数据，而乔治基本上恢复了断腿之前的巅峰状态。', 'NBA', '/News/resources/upload/1545540045917.jpeg', '猿来入此', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">新赛季常规赛赛程已经进行到差多三分之一了，按照目前的排位来看，雷霆队的表现还算令人满意，在经历开局不畅以及威少受伤等等一系列情况之后，雷霆队已经逐渐打响了季后赛主场优势争夺战。雷霆队在休赛期中对于阵容方面做出了不小的变动，管理层放弃了上赛季的夺冠阵容，新赛季由威少和乔治双核带队冲击总冠军。威少仍旧能够打出场均三双数据，而乔治基本上恢复了断腿之前的巅峰状态。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022744034673.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">不过在勇士队组建五巨头阵容时，雷霆队这样的阵容就不占据太多的优势了，这就需要雷霆管理层再次进行阵容补强。据雷霆队随队记者报道，雷霆管理层已经正式向奇才管理层提出交易申请，希望能够用帕特森、格兰特和首轮签换来奇才队后卫比尔。奇才管理层也有想要交易的想法，不过稍微修改了一下交易方案，雷霆队想要得到比尔，那么就必须同时收下霍华德的合同，雷霆队还需要多提供一个首轮签。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022927019242.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">雷霆管理层考虑到霍华德的伤病情况，所以并不愿意同时吃下霍华德的合同，再加上雷霆队不希望交出高额奢侈税，所以目前双方还没有具体定论。不过雷霆管理层对于比尔展现出势在必得的信心，毕竟威少在关键时刻的表现还是不太稳定，而比尔在关键时刻的得分能力和稳定的三分球能力，可以弥补威少在三分球上的短板。如果比尔能够来到雷霆队，那么雷霆队将会组建一支全新的夺冠阵容，威少、比尔和乔治的新三巨头将会是雷霆队赢下总冠军的最大保障。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540022964086892.jpg\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">在这笔方案形成之前，前雷霆队悍将杜兰特将会在明夏成为自由球员，而勇士队很难提供杜兰特一份高薪，所以杜兰特有可能会重返雷霆队。不过威少认为雷霆队已经不需要杜兰特了，比尔在进攻端中出色的得分能力将会成为下一个杜兰特。那么，您觉得杜兰特重回雷霆队希望大一些，还是比尔来到雷霆队可能性多一点呢？</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540023018016733.jpg\"/></p>', '3', '1', '2018-12-23 12:40:51');
INSERT INTO `news` VALUES ('8', '17', '杨幂与刘恺威7年情史曝光 曾称家庭不应成为束缚', '据台湾媒体《东森新闻》12月22日报道，杨幂22日宣布和刘恺威离婚。她2011年和刘恺威合作《如意》假戏真做，之后愈爱愈大方，2014年在巴厘岛举办婚礼，同年产下女儿小糯米，她身份是人妻也是一个孩子的妈，但在演艺事业表现不减，曾透露自己变成职业妇女的观念：“家庭不应该成为你的束缚。”', '杨幂,刘恺威', '/News/resources/upload/1545540107934.jpg', '猿来入此', '<p class=\"detailPic\" style=\"margin: 0px auto; padding: 0px; text-indent: 28px; line-height: 32px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540135043040335.jpg\" alt=\"\"/></p><p class=\"picIntro\" style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; font-size: 14px; line-height: 32px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43); white-space: normal; background-color: rgb(255, 255, 255);\">刘恺威、杨幂</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">据台湾媒体《东森新闻》12月22日报道，杨幂22日宣布和刘恺威离婚。她2011年和刘恺威合作《如意》假戏真做，之后愈爱愈大方，2014年在巴厘岛举办婚礼，同年产下女儿小糯米，她身份是人妻也是一个孩子的妈，但在演艺事业表现不减，曾透露自己变成职业妇女的观念：“家庭不应该成为你的束缚。”</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">杨幂2011年以穿越剧《宫》大红，2014年和刘恺威甜蜜完婚，婚后在演艺事业上更亮眼，近几年主演《三生三世十里桃花》、《扶摇》，更成为流量女王，几乎是收视率保证。她本身自立工作室，是嘉行传媒老板，旗下拥有迪丽热巴、张彬彬等艺人，十分有生意头脑。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">为人妻、为人母身份，不影响杨幂在工作上表现，上节目时曾被主持人询问：“有些女星生孩子后，拍戏动力就不足了。”杨幂笑回应：“大家可能觉得我一直非常忙，其实不是的，我让你们看到我在工作是动力满满，但是我回家的时候，我不会发微博，我回家了，今天陪孩子，可能我不会让你们完全看到，但是我是有很多时间都在家里的。”</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">“我一直是觉得这样，家庭不应该是成为你的束缚，它可以给你归属感，应该是给你动力，让你做更好的自己。”杨幂一番话说出职业妇女的心声。她虽然事业忙，但一有时间陪女儿，为了参加女儿2岁生日，坐飞机快闪香港8小时；2017年过年时初二飞香港，陪女儿玩具区挑礼物，但3天后因为工作返回大陆拍戏，当空中飞人十分忙碌。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">但也因为工作忙碌，杨幂和刘恺威结婚5年，一直不断传出婚变，今年10月刘恺威生日她没有发文祝福，就引起网友猜测，21日网友爆料杨幂和刘恺威即将官宣离婚，22日经纪公司证实两人已经离婚。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>杨幂刘恺威情缠7年</strong></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2011年5月：两人在《如意》饰演情侣并日久生情。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2012年1月：两人被拍到一起出入北京某公寓。刘恺威连发两条微博公布恋情，杨幂也甜蜜回应。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2013年11月13日：两人晒出婚戒照，并宣布婚期。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2014年1月8日：公开恋情两周年纪念日，两人在巴厘岛举办婚礼。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">2014年6月1日：杨幂在香港产下女儿小糯米，刘恺威亲手剪脐带。</p>', '1', '0', '2018-12-23 12:42:21');
INSERT INTO `news` VALUES ('9', '17', '章子怡晒俩女儿一年成长照 醒醒玩妈妈影后奖杯', '12月22日，章子怡[微博]发微博就自己在昨日澳门国际电影节中凭借《无问西东》中王敏佳这个角色再次获得最佳女主角：“去年的12.21和今年的12.21，《无问西东》的王敏佳收获了相同的荣誉和鼓励。”同时章子怡还晒了自己获奖的礼服照，在奢华的阳台，章子怡梳着漂亮的披肩长发，一件黑色礼服裙，看起来高贵大方，一脸灿烂的笑容，望着自己获得的奖杯，非常开心。', '章子怡', '/News/resources/upload/1545540199679.jpeg', '猿来入此', '<p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540219309057107.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">章子怡和两个女儿</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545540219372092543.jpg\" alt=\"\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">一年前母女三人照片</p><p><span style=\"color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">　　章子怡还在微博里分享了自己和两个女儿的合影，她感叹道：“一年光景孩子们都明显长大了许多…陪伴着她们一天天长大，才慢慢发现自己在彻头彻尾地成长，改变…真好！谢谢所有的爱当然，也有你的！”其中对孩子的爱溢于言表，合影中三个人相互依偎穿着睡衣着躺在床上，妈妈章子怡举着一本图画书，而姐姐小苹果在教妹妹醒醒人字，光线温暖，三个人都看起来十分幸福。除此之外，章子怡还贴心放上了去年和两个女儿的合影，感叹时光荏苒，自己也在和孩子们一起成长，是一个有实力，温暖的好妈妈了。</span><br/><br/><span style=\"color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">　　2015年5月10日，章子怡与汪峰[微博]注册结婚；11月，章子怡在美国洛杉矶待产；12月27日，章子怡在美国产下一女，取名醒醒，章子怡对于汪峰和前妻生的女儿小苹果也是疼爱有加，看来两个女儿和妈妈的关系都非常好呀。</span><br/><br/><span style=\"color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">　　网友们看到后纷纷恭喜女神：“恭喜姐姐凭借电影《无问西东》中坚韧勇敢的王敏佳一角获得第十届澳门国际电影节最佳女主角的奖项！姐姐去年也获得了这个奖项，恭喜蝉联影后！未来的路，我们一起爱我所爱，行我所行，听从我心，无问西东。。。</span></p>', '0', '0', '2018-12-23 12:43:58');
INSERT INTO `news` VALUES ('10', '17', '64岁李雪健和老婆罕见近照 相爱35年老婆越来越美', '最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。', '李雪健', '/News/resources/upload/1545540305810.png', '猿来入此', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 38px; text-size-adjust: 100%; font-size: 16px; color: rgb(77, 79, 83); letter-spacing: 1px; line-height: 28px;\">最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。</p><p><span class=\"icon quotation-left\" style=\"background-image: -webkit-image-set(url(&quot;//n.sinaimg.cn/finance/page/ent/images/0908_zyc_icons.png&quot;) 1x, url(&quot;//n.sinaimg.cn/finance/page/ent/images/0908_zyc_icons2x.png&quot;) 2x); background-repeat: no-repeat; width: 28px; height: 24px; background-position: -268px -100px; position: absolute; top: 0px; left: 0px;\"></span></p><p><img src=\"/News/resources/upload/image/20181223/1545540297016057100.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　来源：猫眼电影</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　最近，老戏骨李雪健和老婆的恩爱照被扒出，已经64岁的李雪健和于海丹非常相爱，35年相扶相持，不离不弃。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297162052518.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　于海丹之前也是一名演员，1982年两人合作了电视剧，当时于海丹是女主角，李雪健还没红，之后两人便有了未来的故事。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297243035562.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　1983年就结婚了，婚后两年就有了儿子，然后于海丹就退出了娱乐圈，在家里相夫教子，几乎没有再出现在镜头面前，老公演出她就去帮忙，到现场捧场，两人还是经常讨论演技。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297319069240.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　2000年，李雪健因为患上了鼻咽癌，连他自己都没发现，于海丹觉得不对劲，带他去医院看病，才检查出来。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297388053009.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　于海丹为李雪健的病来回的飞，一直在研究各种方案，还陪着老公一边拍戏一边治病，2003年李雪健的病算是恢复了。于海丹也因此瘦了不少。</p><p><img src=\"/News/resources/upload/image/20181223/1545540297458037462.png\" alt=\"\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left; font-weight: bold;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%;\">　　李雪健现在的耳朵总是听不清，拍戏都需要戴助听器，只不过他追求逼真不愿意戴，两个人在一起35年 ，于海丹为了照顾老公瘦了不少，但是依旧很有气质。</p><p><br/></p>', '2', '0', '2018-12-23 12:45:10');
INSERT INTO `news` VALUES ('11', '17', '冯绍峰赵丽颖又双叒叕被偶遇了！女方衣着宽松小腹隆起孕味十足', '赵丽颖与冯绍峰，我们都不好意思用“偶遇”这个词儿了，“绯闻二人组”其实大家都已经见怪不怪了，可是奈何这两人被拍到多次“在一起”，就是咬牙不松口说他们彼此“在一起”，这也颇让人为难的很。', '赵丽颖,冯绍峰', '/News/resources/upload/1545540424773.jpg', '猿来入此', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">赵丽颖与冯绍峰，我们都不好意思用“偶遇”这个词儿了，“绯闻二人组”其实大家都已经见怪不怪了，可是奈何这两人被拍到多次“在一起”，就是咬牙不松口说他们彼此“在一起”，这也颇让人为难的很。</span></p><p><img class=\"large\" src=\"http://t12.baidu.com/it/u=755513468,3803592794&fm=173&app=25&f=JPEG?w=640&h=889&s=2EE8DC03E4EC5AAD69593D7103009032\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">近日，有网友在上海某餐厅偶遇赵丽颖与冯绍峰一起会友，算来这是第五次被偶遇“在一起”了吧？而在9月8日，赵丽颖确实现身上海，出席代言品牌为她举行的粉丝见面会。</span></p><p><img class=\"large\" src=\"http://t11.baidu.com/it/u=1045018891,3490776334&fm=173&app=25&f=JPEG?w=639&h=377&s=C2A029E5669731D80824C5370300B052\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">在此期间，冯绍峰还走出去吸烟，上楼梯时边走边看手机、两人带着情侣帽并肩坐在一起，和朋友有说有笑的聊天。</span></p><p><img class=\"normal\" width=\"449px\" src=\"http://t10.baidu.com/it/u=3126044580,3014474835&fm=173&app=25&f=JPEG?w=449&h=520&s=66202DE2D10436FA0AC9B1080300D0C2\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">随后赵丽颖走出餐厅，可以看见赵丽颖身穿白色外套，里面穿一身素雅的连衣裙，戴着白色口罩。重点是肚子是不是太明显了，看着像是有三四个月了。看来传出怀孕不是空穴来风啊。</span></p><p><img class=\"large\" src=\"http://t12.baidu.com/it/u=2165786669,4234783172&fm=173&app=25&f=JPEG?w=609&h=675&s=A723DF4FC00B36FC86591C3F03001042\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">就在昨天还有人在商场偶遇赵丽颖，穿着一件毛衣，手还捂着肚子，但是跟在赵丽颖身边的那位男子身穿半袖，与赵丽颖形成了最明显的对比，那时人人都以为赵丽颖怀孕了。工作人员却说赵丽颖是因为身体原因所以穿的比较厚，用暖水袋捂着肚子是因为体寒。</span></p><p><img class=\"large\" src=\"http://t10.baidu.com/it/u=736365717,1562998839&fm=173&app=25&f=JPEG?w=640&h=452&s=21206BB102A250BE1AADF8D503001052\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">娱乐圈向来有怀孕未满三个月不公开的说法，这是为将来报喜预留余地。再加上赵丽颖广告合约在身，不想公开恋爱甚至怀孕的消息，也很正常。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">对此，有媒体向赵丽颖工作人员求证，对方再三表示：“没有这回事！”</span></p><p><img class=\"large\" src=\"http://t11.baidu.com/it/u=4114931692,4097027483&fm=173&app=25&f=JPEG?w=600&h=315&s=09ADED1759E8CF1BBED5BCCA0300E070\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">赵丽颖这么多年来，凭借自己的努力一步一步往上爬，从未放弃过。越来越多的人喜爱她，不仅仅是因为她的长相甜美，还因为她勇敢坚强，刻苦勤奋，没有哪个人能随随便便成功的，赵丽颖用了10年才换来如今的成就。希望她幸福，你觉得呢？</span></p><p><br/></p>', '3', '1', '2018-12-23 12:47:10');
INSERT INTO `news` VALUES ('12', '10', '印尼海啸伤亡人数攀升，已致43人死亡584人受伤', '海外网12日23日消息，据今日俄罗斯消息，印尼抗灾署称，昨晚（22日）的海啸袭击已经造成43人死亡，584人受伤，数百间房屋受损。', '印尼海啸', '/News/resources/upload/1545540517752.jpg', '猿来入此', '<p><img src=\"/News/resources/upload/image/20181223/1545540495016057925.jpg\" width=\"600\" height=\"395\" alt=\"\"/></p><p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, sans-serif; letter-spacing: 0.5px; background-color: rgb(255, 255, 255); color: rgb(128, 128, 128);\">12月22日，印尼万丹，被疏散的灾民。视觉中国 图</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, sans-serif; letter-spacing: 0.5px; background-color: rgb(255, 255, 255);\">海外网12日23日消息，据今日俄罗斯消息，印尼抗灾署称，昨晚（22日）的海啸袭击已经造成43人死亡，584人受伤，数百间房屋受损。</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, sans-serif; letter-spacing: 0.5px; background-color: rgb(255, 255, 255);\">印度尼西亚国家抗灾署此前发布消息证实，印尼巽他海峡附近的万丹省当地时间22号晚遭海啸袭击。抗灾署称，这次灾难可能是火山活动的结果。</span></p><p><br/></p>', '0', '0', '2018-12-23 12:48:42');
INSERT INTO `news` VALUES ('13', '17', '黄晓明夫妇一起作假, 和苏有朋登台被拆穿, 这下脸红了', '大家都知道作为娱乐圈中的男明星，总是要有一样优势的，而很多男明星更看重的就是身高了，毕竟又高又帅才是他们想要的，最近网上就传出了一个非常尴尬的事情，那就是黄晓明遇到了苏有朋。', '黄晓明,苏有朋', '/News/resources/upload/1545572813382.jpeg', '猿来入此', '<p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">大家都知道作为娱乐圈中的男明星，总是要有一样优势的，而很多男明星更看重的就是身高了，毕竟又高又帅才是他们想要的，最近网上就传出了一个非常尴尬的事情，那就是黄晓明遇到了苏有朋。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799352099117.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">黄晓明一直都是娱乐圈中非常有名气的一个男明星，而去百度首页搜索他的个人资料的时候，我们也会发现黄晓明的官方身高是179cm，不过在舞台上的时候网友们却质疑了起来。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799447012282.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">那就黄晓明在舞台上偶遇到了苏有朋，没想到两个人站在一起的身高是一般高的，大家对于所有盘肯定也是非常熟悉，曾经《还珠格格》中的五阿哥，给我们的印象还是很深的。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799514090681.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">而我们从电视机面前在猜测苏有朋的身高也就有一米七出头，而黄晓明明明身高是一米七九，两个人站在舞台上怎么一般高了呢？这个问题也是瞬间就让黄晓明脸红了呀！</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799554098816.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">你们是不是也觉得这样的事情很尴尬！其实女明星之间也有过这样的事情，杨颖在我们心目中的形象一直都是非常好的，大大的眼镜，并且身材也是非常完美的。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799603091491.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">最重要的就是杨颖拥有一双我们都非常羡慕的大长腿，不过她的身高在官方也是爆料是168，这个数字也经常收到网友们的热议，而和一位女明星站在一起的时候，也是证实了这个问题。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799643068173.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">那就是杨颖和杨幂两个人同台的时候了，杨幂的身高是一米六五，想必很多人都是知道的，不过和杨颖站在一起后却觉得比杨幂还矮了一点，这真的是让网友觉得隔着屏幕都尴尬。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799682017062.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">而杨颖发生这样尴尬的事情也不是就这一次，在上快乐大本营的时候，也是暴露了自己的实际身高和官方身高不符，那就是当时和吴昕等人在一起拍照的照片中看出来的了。</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799727071236.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">她穿的是松糕底的鞋子，所以也就是两三厘米那么高吧！所以正常比吴昕高10厘米左右。和吴昕站在一起照片的时候，我们看看过照片之后却发现两个人的身高并没有差距那么大</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799775072735.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">随后很多人也是对这对夫妻引起热议，你们是不是也觉得很尴尬呢？</p><p style=\"margin-top: 0px; margin-bottom: 32px; padding: 0px; text-indent: 28px; line-height: 32px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: &quot;Microsoft Yahei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/News/resources/upload/image/20181223/1545572799829037944.jpg\"/></p><p><br/></p>', '2', '1', '2018-12-23 21:44:20');

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('5', '国内', '0');
INSERT INTO `news_category` VALUES ('10', '国际', '1');
INSERT INTO `news_category` VALUES ('14', '军事', '2');
INSERT INTO `news_category` VALUES ('15', '财经', '3');
INSERT INTO `news_category` VALUES ('16', '体育', '4');
INSERT INTO `news_category` VALUES ('17', '娱乐', '5');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '/News/resources/upload/1545572488494.jpg', '1', '1', '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES ('13', '猿来入此', '123456', '2', '/News/resources/upload/1545572546524.jpg', '1', '1', '猿来入此');
