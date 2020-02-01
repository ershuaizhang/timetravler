--
-- Dumping data for table `inf_dict_item`
--

LOCK TABLES `inf_dict_item` WRITE;
/*!40000 ALTER TABLE `inf_dict_item` DISABLE KEYS */;
INSERT INTO `inf_dict_item`
VALUES ('2', 'CERTIFICATE_TYPE_LIST', 'IdCard', '身份证', '身份证', '1', 'ID', NULL, NULL, NULL, NULL),
       ('1', 'CERTIFICATE_TYPE_LIST', 'Passport', '护照', '护照', '1', 'PS', NULL, NULL, NULL, NULL),
       ('5', 'CERTIFICATE_TYPE_LIST', 'ResidencePermit', '居住证', '居住证', '1', 'RP', NULL, NULL, NULL, NULL),
       ('4', 'CERTIFICATE_TYPE_LIST', 'StudentCard', '学生证', '学生证', '1', 'SC', NULL, NULL, NULL, NULL),
       ('3', 'CERTIFICATE_TYPE_LIST', 'Temporary_ID', '临时身份证', '临时身份证', '1', 'T_ID', NULL, NULL, NULL, NULL),
       ('202001282017009', 'SUBS_LEVES', 'FiveStart', 'FiveStart', '五星用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017008', 'SUBS_LEVES', 'FourStart', 'FourStart', '四星用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017001', 'SUBS_LEVES', 'Normal', 'Normal', '普通用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017005', 'SUBS_LEVES', 'OneStart', 'OneStart', '一星用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017007', 'SUBS_LEVES', 'ThreeStart', 'ThreeStart', '三星用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017006', 'SUBS_LEVES', 'TwoStart', 'TwoStart', '二星用户', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017002', 'SUBS_LEVES', 'VIP', 'VIP', '普通VIP', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017003', 'SUBS_LEVES', 'VVIP', 'VVIP', '中级VIP', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017004', 'SUBS_LEVES', 'VVVIP', 'VVVIP', '高级VIP', '1', NULL, NULL, NULL, NULL, NULL),
       ('202001282017000', 'SUBS_LEVES', 'VVVVIP', 'VVVVIP', '超级VIP', '1', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `inf_dict_item` ENABLE KEYS */;
UNLOCK TABLES;