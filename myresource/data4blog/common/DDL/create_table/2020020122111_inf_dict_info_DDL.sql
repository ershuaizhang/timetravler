
DROP TABLE IF EXISTS `inf_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_dict` (
  `dict_id` VARCHAR(45) NOT NULL,
  `dict_code` VARCHAR(45) NOT NULL,
  `dict_name` VARCHAR(45) DEFAULT NULL,
  `dict_desc` VARCHAR(45) DEFAULT NULL,
  `eff_time` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `exp_time` DATETIME DEFAULT '2222-12-31 12:59:59' COMMENT '字典项失效时间',
  `status` ENUM('1','0') DEFAULT '1' COMMENT 'status当前的字典是不是可用 1 可用 0 不可用',
  `ext1` VARCHAR(45) DEFAULT NULL,
  `ext2` VARCHAR(45) DEFAULT NULL,
  `ext3` VARCHAR(45) DEFAULT NULL,
  `ext4` VARCHAR(45) DEFAULT NULL,
  `ext5` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_code_UNIQUE` (`dict_code`),
  UNIQUE KEY `dict_id_UNIQUE` (`dict_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inf_dict_item`
--

DROP TABLE IF EXISTS `inf_dict_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_dict_item` (
  `item_id` VARCHAR(45) NOT NULL,
  `dict_code` VARCHAR(45) NOT NULL,
  `item_code` VARCHAR(45) NOT NULL,
  `item_value` VARCHAR(45) DEFAULT NULL,
  `item_desc` VARCHAR(45) DEFAULT NULL,
  `status` ENUM('1','0') DEFAULT '1',
  `ext1` VARCHAR(45) DEFAULT NULL,
  `ext2` VARCHAR(45) DEFAULT NULL,
  `ext3` VARCHAR(45) DEFAULT NULL,
  `ext4` VARCHAR(45) DEFAULT NULL,
  `ext5` VARCHAR(45) DEFAULT NULL,
  UNIQUE KEY `combineunique` (`dict_code`,`item_code`),
  UNIQUE KEY `id_UNIQUE` (`item_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inf_dict_item_lang`
--

DROP TABLE IF EXISTS `inf_dict_item_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_dict_item_lang` (
  `id` INT(15) NOT NULL,
  `dict_item_id` VARCHAR(45) NOT NULL,
  `item_name` VARCHAR(45) DEFAULT NULL,
  `locate` VARCHAR(45) NOT NULL,
  `desc` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_Id_idx` (`dict_item_id`),
  CONSTRAINT `FK_item_Id` FOREIGN KEY (`dict_item_id`) REFERENCES `inf_dict_item` (`item_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inf_dict_lang`
--

DROP TABLE IF EXISTS `inf_dict_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_dict_lang` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dict_code` VARCHAR(45) DEFAULT NULL,
  `dict_name` VARCHAR(45) DEFAULT NULL,
  `locate` VARCHAR(45) DEFAULT NULL,
  `desc` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_locate` (`dict_code`,`locate`) /*!80000 INVISIBLE */,
  CONSTRAINT `FK_dict_code` FOREIGN KEY (`dict_code`) REFERENCES `inf_dict` (`dict_code`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;