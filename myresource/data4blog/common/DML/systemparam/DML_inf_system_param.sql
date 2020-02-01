
--
-- Dumping data for table `inf_system_param`
--

LOCK TABLES `inf_system_param` WRITE;
/*!40000 ALTER TABLE `inf_system_param` DISABLE KEYS */;
INSERT INTO `inf_system_param`
VALUES (1, 'TEST', '测试数据', 'testdemo', '测试测试用的', '2020-01-12 00:12:23', '2020-01-25 16:16:47', 'ext1', 'ext2', 'ext3',
        'ext4', 'ext5'),
       (2, 'TEST2', '测试数据', 'testdemo2', '测试测试用的2', '2020-01-12 00:12:23', '2020-01-25 11:31:38', 'ext12', 'ext22',
        'ext23', 'ext24', 'ext25'),
       (11, 'TEST3', '测试数据', 'testdemo', '测试测试用的', '2020-01-12 00:12:23', '2020-05-12 00:12:23', 'ext1', 'ext2', 'ext3',
        'ext4', 'ext5'),
       (12, 'TEST4', '测试数据', 'testdemo2', '测试测试用的2', '2019-12-12 00:12:23', '2020-01-09 00:12:23', 'ext12', 'ext22',
        'ext23', 'ext24', 'ext25');
/*!40000 ALTER TABLE `inf_system_param` ENABLE KEYS */;
UNLOCK TABLES;