SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ims_pig_immune_set`
-- ----------------------------
DROP TABLE IF EXISTS `ims_external_farm_group`;
CREATE TABLE `ims_external_farm_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `uniacid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '猪场id',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '更新时间',
  `remark` varchar(255)  DEFAULT '' COMMENT '备注',
  `admin` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT = '用户-猪场绑定关系表';
DROP TABLE IF EXISTS `ims_external_user`;
CREATE TABLE `ims_external_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `token` varchar(225)  NOT NULL DEFAULT '0' COMMENT '猪场id',
  `expiration_time` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT 'token过期时间',
  `key` varchar(155)    DEFAULT ''  COMMENT '私钥',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0'  COMMENT '更新时间',
  `remark` varchar(255)  DEFAULT '' COMMENT '备注',
  `url` varchar(255)  DEFAULT '' COMMENT '请求访问的域名',
  `admin` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `key` (`key`),
  KEY `expiration_time` (`expiration_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT = '绑定的用户信息';


