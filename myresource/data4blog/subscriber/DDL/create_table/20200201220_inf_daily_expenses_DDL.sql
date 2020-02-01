
DROP TABLE IF EXISTS `inf_daily_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_daily_expenses` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` ENUM('put cash to VISA','get cash from VISA','used') DEFAULT 'used' COMMENT '''费用名字''：get cash from VISA\\n，used\\n ，put cash to VISA',
  `value` VARCHAR(45) NOT NULL,
  `currency` VARCHAR(45) NOT NULL DEFAULT 'CNY',
  `paymentMethod` ENUM('Cash','CreditCard','E_Cash','Social_Card') DEFAULT 'E_Cash',
  `reason` VARCHAR(45) DEFAULT NULL COMMENT '''费用发生原因''',
  `eff_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '费用发生时间',
  `inputTime` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `haveCertificate` ENUM('1','0') NOT NULL DEFAULT '1' COMMENT '1:有凭据 0:无凭据',
  `isreturn` INT(1) DEFAULT '1' COMMENT '是否需要补充上来',
  `sub_id` VARCHAR(45) DEFAULT NULL COMMENT '关联用户',
  `informationSources` VARCHAR(45) DEFAULT NULL COMMENT '信息的来源是哪里',
  `remark1` VARCHAR(45) DEFAULT NULL COMMENT '备注',
  `remark2` VARCHAR(60) DEFAULT NULL COMMENT '备注2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=999 DEFAULT CHARSET=utf8;

