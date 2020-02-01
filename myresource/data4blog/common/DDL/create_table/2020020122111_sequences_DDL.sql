
--
-- Table structure for table `sequences`
--

DROP TABLE IF EXISTS `sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sequences` (
  `seq_name` VARCHAR(50) COLLATE utf8_bin NOT NULL,
  `current_val` INT(11) NOT NULL COMMENT '当前的值',
  `increment_val` INT(11) NOT NULL DEFAULT '1' COMMENT '步长',
  PRIMARY KEY (`seq_name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='自定义序列表';
/*!40101 SET character_set_client = @saved_cs_client */;
