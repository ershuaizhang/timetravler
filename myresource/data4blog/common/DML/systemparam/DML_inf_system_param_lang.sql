
--
-- Dumping data for table `inf_system_param_lang`
--

LOCK TABLES `inf_system_param_lang` WRITE;
/*!40000 ALTER TABLE `inf_system_param_lang` DISABLE KEYS */;
INSERT INTO `inf_system_param_lang`
VALUES (1, 'TEST', 'en_US', 'testData', 'test1'),
       (2, 'TEST', 'zh_CN', '测试数据', 'test1'),
       (21, 'TEST', 'es_CO', 'testData', 'test1'),
       (22, 'TEST', 'es_CE', '测试数据', 'test1'),
       (23, 'TEST2', 'es_CO', 'testData', 'test1'),
       (24, 'TEST2', 'es_CE', '测试数据', 'test1'),
       (25, 'TEST2', 'en_US', 'testData', 'test1'),
       (26, 'TEST2', 'zh_CN', '测试数据', 'test1'),
       (31, 'TEST3', 'en_US', 'testData', 'test1'),
       (32, 'TEST3', 'zh_CN', '测试数据', 'test1'),
       (33, 'TEST3', 'es_CO', '测试数据', 'test1'),
       (34, 'TEST3', 'es_CE', '测试数据', 'test1');
/*!40000 ALTER TABLE `inf_system_param_lang` ENABLE KEYS */;
UNLOCK TABLES;