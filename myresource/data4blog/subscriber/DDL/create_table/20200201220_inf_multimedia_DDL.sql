DROP TABLE IF EXISTS `inf_multimedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inf_multimedia` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `document_type` VARCHAR(45) DEFAULT NULL COMMENT '类型 mp3/book/move',
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) DEFAULT NULL COMMENT '小类',
  `auth` VARCHAR(45) DEFAULT NULL,
  `album` VARCHAR(45) DEFAULT NULL COMMENT '专辑',
  `input_date` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `leve` VARCHAR(45) DEFAULT '1' COMMENT '喜欢等级 1-5',
  `sub_id` VARCHAR(45) DEFAULT NULL COMMENT '关联用户',
  `link` VARCHAR(100) DEFAULT NULL,
  `link1` VARCHAR(145) DEFAULT NULL,
  `link2` VARCHAR(145) DEFAULT NULL,
  `link3` VARCHAR(145) DEFAULT NULL,
  `link4` VARCHAR(145) DEFAULT NULL,
  `link_down` VARCHAR(45) DEFAULT NULL,
  `ext1` VARCHAR(45) DEFAULT NULL,
  `ext2` VARCHAR(45) DEFAULT NULL,
  `ext3` VARCHAR(45) DEFAULT NULL,
  `ext4` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;




/*!40000 ALTER TABLE `inf_multimedia` DISABLE KEYS */;
INSERT INTO `inf_multimedia` VALUES (1,'TV','最好的我们','校园',NULL,NULL,'2019-05-18 12:06:54','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Movie','闪光少女','校园',NULL,NULL,'2019-05-18 12:06:54','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Movie','老师好','校园','于谦',NULL,'2019-05-18 12:06:54','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Movie','超级大山炮之海岛奇遇','搞笑',NULL,NULL,'2019-05-18 12:11:11','2',NULL,'https://www.youtube.com/watch?v=XCVEO7xptmo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'TV','天地传奇','仙侠',NULL,NULL,'2019-05-18 12:14:03','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'TV','亮剑','抗战',NULL,NULL,'2019-05-18 12:20:03','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'TV','我的特一营','抗战',NULL,NULL,'2019-05-18 12:20:03','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'TV','壮士出川','抗战',NULL,NULL,'2019-05-18 12:20:03','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'TV','我的团长我的团','抗战',NULL,NULL,'2019-05-18 12:20:03','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'MP3','一曲相思',NULL,'半阳',NULL,'2019-05-18 12:44:51','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'MP3','纸短情长',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'MP3','听说',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'MP3','西湖的水',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'MP3','桃花庵',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'MP3','出山',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'MP3','盗将行',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'MP3','默契告别',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'MP3','那个女孩',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'MP3','一身坦荡',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Movie','四平青年',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Book','梦回台儿庄',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Movie','不是有意打扰你',NULL,NULL,NULL,'2019-05-18 12:44:51','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'MP3','听说',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'MP3','幺妹住在十三寨',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'MP3','权御天下',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'MP3','沙漠骆驼',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'MP3','臣退了',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'MP3','我的时光',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'MP3','十跪爹娘',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'MP3','西海情歌',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'MP3','兵书',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'MP3','铁窗泪',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'MP3','逍遥游',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'MP3','迟来的爱',NULL,NULL,NULL,'2019-05-18 12:54:29','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'MP3','冲动的惩罚','','刀郎',NULL,'2019-05-18 12:56:07','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'MP3','我相信',NULL,NULL,NULL,'2019-05-18 12:57:46','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'MP3','战狼',NULL,'吴京',NULL,'2019-05-18 12:59:28','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Movie','奇门遁甲',NULL,NULL,NULL,'2019-05-18 14:10:01','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'MP3','我的将军啊','未知','诗人',NULL,'2019-05-21 13:44:38','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'MP3','朋友这杯酒','未知','',NULL,'2019-05-21 13:48:36','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'MP3','男人最痴情','未知','',NULL,'2019-05-21 13:48:36','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'TV','火蓝刀锋','军旅',NULL,NULL,'2019-06-02 06:05:40','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inf_multimedia` ENABLE KEYS */;
