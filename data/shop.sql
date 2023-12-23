CREATE DATABASE  IF NOT EXISTS `shopservice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopservice`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopservice
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Администратор'),(2,'Клиент'),(3,'Мастер'),(4,'Системный администратор'),(5,'Управляющий');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `happy` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `idrole` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lodin_UNIQUE` (`login`),
  KEY `wewq_idx` (`idrole`),
  CONSTRAINT `sdfsdf` FOREIGN KEY (`idrole`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (56,'Мирон','Смирнов','Русланович','loginqABDzzNc','1974-10-08','+7(057)075-62-76','~C6$h?',1),(57,'Екатерина','Некрасова','Максимовна','loginalRLmcMR','1996-04-02','+7(426)316-69-21','I\\?*0p',2),(58,'Богдан','Краснов','Николаевич','logincbMDTykG','1997-07-28','+7(285)107-20-46','?QLz00',3),(59,'Анна','Зайцева','Константиновна','loginBbaoYECf','1971-07-18','+7(141)494-93-76','g7Zd0)',3),(60,'Николай','Моисеев','Георгиевич','loginGkqDfcip','1998-08-12','+7(076)760-92-28','W8q2k!',2),(61,'Александр','Рожков','Матвеевич','loginctFmMOVn','1972-12-06','+7(279)849-06-08','Mv3[Su',2),(62,'Платон','Баранов','Романович','loginWQOusQjQ','1973-09-14','+7(962)396-40-31','mw1M{m',2),(63,'Алексей','Игнатов','Фёдорович','loginSSmqRpUQ','1985-01-20','+7(072)606-68-69','}\\Z1u5',2),(64,'Алексей','Григорьев','Ильич','loginahHUiSgI','1985-05-21','+7(086)579-87-37','|KsV84',3),(65,'Павел','Сухов','Олегович','loginhucrOpwG','1980-11-10','+7(787)680-41-50','cq5{Uq',3),(66,'Анна','Николаева','Тимуровна','loginAykjOzsT','2002-05-19','+7(177)868-94-56','Ol0`&U',2),(67,'Иван','Федотов','Артёмович','loginDXSHJSEh','1995-04-01','+7(133)067-44-52','(;Re5q',2),(68,'Лев','Смирнов','Маркович','loginLHqtkZus','1987-12-06','+7(104)296-41-35','m~f5QM',3),(69,'Ариана','Грекова','Никитична','logincNGcFsRb','1970-01-05','+7(074)505-91-83','|KsV84',2),(70,'Матвей','Кузнецов','Егорович','loginsjmmRZCV','1987-12-10','+7(970)343-68-57','N1r|=M',3),(71,'Марк','Орехов','Данилович','loginQktVVLNO','1980-03-15','+7(269)843-20-33','X=yXA2',2),(72,'Виктория','Петрова','Евгеньевна','loginSfSCNyis','1976-03-05','+7(285)876-18-61','\\Vks5I',3),(73,'Марина','Ефимова','Руслановна','loginSNuYRNyf','1985-04-24','+7(006)637-83-97','XzX22[',1),(74,'Давид','Кузьмин','Иванович','loginaaCzfbhM','1980-04-30','+7(306)392-88-06','>M}X9n',2),(75,'Алексей','Румянцев','Михайлович','loginaWWKiZpU','1980-10-15','+7(141)119-28-48','>7:#Ez',3),(76,'Полина','Беляева','Артёмовна','loginPglSNIWo','1996-11-16','+7(170)152-45-11','b&n1ID',2),(77,'Есения','Бородина','Тимофеевна','loginYdcGfWFO','1973-04-18','+7(413)195-24-65','5B=x;7',3),(78,'Артём','Степанов','Кириллович','loginnRPronjY','1980-02-24','+7(857)068-24-33','v/>!2C',4),(79,'Мария','Мартынова','Сергеевна','loginYdFSjJfD','1988-01-12','+7(586)311-54-16',':m@8Kr',3),(80,'Илья','Михайлов','Фёдорович','loginKhRzbQQc','1988-02-05','+7(798)532-01-90',']d9`.E',3),(81,'Степан','Панов','Елисеевич','loginziGKLHTL','1997-08-16','+7(720)164-53-59','>M}X9n',3),(82,'Даниил','Денисов','Васильевич','loginKerkuviW','1989-05-14','+7(640)145-02-95','jo=dJ1',2),(83,'Асия','Маркелова','Гордеевна','logingIjAzVqD','2002-07-24','+7(261)699-89-60','4Hnd.~',3),(84,'Екатерина','Богданова','Александровна','loginvNHJhdAf','1986-11-29','+7(166)530-51-19','}S9\'/h',2),(85,'Амелия','Пугачева','Алексеевна','loginqRVDyqeG','1976-03-05','+7(227)947-11-40','g6:95H',2),(86,'Ксения','Николаева','Львовна','loginjqxLlerV','1974-11-24','+7(203)368-97-45','85:Uav',3),(87,'Павел','Березин','Егорович','loginfwQjrafc','1979-03-29','+7(735)978-70-04','6pQ>ct',2),(88,'Ярослав','Пономарев','Андреевич','loginDqTKhHHF','1974-08-06','+7(027)315-44-61','7b3^zP',1),(89,'Ксения','Моисеева','Фёдоровна','loginEXiCelOB','2002-12-21','+7(070)232-81-26','m$(X3^',2),(90,'Арина','Соколова','Арсентьевна','loginUcLIXlfr','1983-09-13','+7(964)096-84-90','nb(14R',2),(91,'Владислав','Некрасов','Егорович','logintapwUVVB','1971-05-18','+7(395)539-50-09','w3~;P}',2),(92,'София','Исаева','Александровна','loginIYWIabRI','1985-09-09','+7(327)557-44-35','D$!b8;',3),(93,'Алиса','Петрова','Андреевна','loginukYBtmrx','1982-12-18','+7(764)335-37-00',']3b0)I',2),(94,'Лейла','Чеботарева','Саввична','loginPZJcUzcE','1996-03-01','+7(440)507-84-99','O]y7wZ',4),(95,'Елизавета','Егорова','Константиновна','loginQaOpoeWc','1988-11-16','+7(449)098-67-30','\\1(kQd',2),(96,'Вячеслав','Уваров','Александрович','loginQXUudbyI','1981-07-09','+7(668)366-51-63','F+w2PR',2),(97,'Василиса','Аникина','Артёмовна','loginQeWeFzcY','1977-06-05','+7(704)041-51-65','Yl9>&\'',2),(98,'Сергей','Морозов','Александрович','loginLlEZXZXY','1987-08-12','+7(664)224-33-19','Lvoq5$',3),(99,'Иван','Карасев','Владиславович','loginnCwWYALv','1973-03-02','+7(550)144-94-91','zb0hZ=',2),(100,'Степан','Васильев','Даниилович','loginAsFdWdsY','1986-03-16','+7(430)058-69-09','l\'ZK4z',2),(101,'Полина','Андреева','Данииловна','loginQxmoBJyN','1986-06-09','+7(543)635-10-02','tGr82|',2),(102,'София','Евдокимова','Савельевна','loginuqzcxVBV','1989-08-10','+7(621)226-66-62','\\BSo~5',3),(103,'Виктория','Иванова','Евгеньевна','loginVxOIqFDq','1977-09-04','+7(113)124-65-03','A`||r4',2),(104,'Любовь','Климова','Львовна','loginSlHVgbpx','1976-06-18','+7(545)773-98-42','2e$1dL',3),(105,'Антонина','Денисова','Павловна','loginaNrXvJjT','1997-03-11','+7(058)603-81-60','\\8Egdt',3),(156,'admin','admin','admin','admin',NULL,NULL,'admin',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23  9:30:06
