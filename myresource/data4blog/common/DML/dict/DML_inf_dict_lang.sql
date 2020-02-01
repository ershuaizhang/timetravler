
--
-- Dumping data for table `inf_dict_lang`
--

LOCK TABLES `inf_dict_lang` WRITE;
/*!40000 ALTER TABLE `inf_dict_lang` DISABLE KEYS */;
INSERT INTO `inf_dict_lang`
VALUES (1, 'CERTIFICATE_TYPE_LIST', 'type of certificate', 'en_US', NULL),
       (2, 'CERTIFICATE_TYPE_LIST', '证件类型', 'zh_CN', NULL),
       (3, 'SUBS_LEVES', 'user levels', 'en_US', NULL),
       (4, 'SUBS_LEVES', '用户等级', 'zh_CN', NULL);
/*!40000 ALTER TABLE `inf_dict_lang` ENABLE KEYS */;
UNLOCK TABLES;