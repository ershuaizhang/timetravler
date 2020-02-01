
DROP TABLE IF EXISTS `school_info`;

CREATE TABLE `school_info` (
  `id` INT(4) NOT NULL AUTO_INCREMENT,
  `type_code` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_name` VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_code` VARCHAR(30) COLLATE utf8_unicode_ci NOT NULL,
  `school_addr_province` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_city` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_street` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_county` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_town` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_village` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_addr_postcode` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_president` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_synopsis` TEXT COLLATE utf8_unicode_ci,
  `create_school_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `change_school_name_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_info_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_info_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ext1` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext2` VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext3` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext4` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext5` VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext6` VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext7` VARCHAR(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext8` VARCHAR(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext9` VARCHAR(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext10` VARCHAR(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_code_uk` (`school_code`),
  KEY `waibu_type_code` (`type_code`),
  CONSTRAINT `waibu_type_code` FOREIGN KEY (`type_code`) REFERENCES `school_type` (`school_type_code`) ON DELETE SET NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
