-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cfms
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'Ingredients'),(2,'Manufacturing'),(3,'Employee Salaries'),(4,'Transportation');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhtly_expenses`
--

DROP TABLE IF EXISTS `monhtly_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monhtly_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` date NOT NULL,
  `expense_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhtly_expenses`
--

LOCK TABLES `monhtly_expenses` WRITE;
/*!40000 ALTER TABLE `monhtly_expenses` DISABLE KEYS */;
INSERT INTO `monhtly_expenses` VALUES (5,'2024-01-01',1,3000),(6,'2024-01-01',2,5000),(7,'2024-01-01',3,2000),(8,'2024-01-01',4,1000),(9,'2024-02-01',1,3200),(10,'2024-02-01',2,5600),(11,'2024-02-01',3,2100),(12,'2024-02-01',4,1600),(13,'2024-03-01',1,3500),(14,'2024-03-01',2,5900),(15,'2024-03-01',3,2950),(16,'2024-03-01',4,2600),(17,'2024-04-01',1,3900),(18,'2024-04-01',2,6200),(19,'2024-04-01',3,2750),(20,'2024-04-01',4,2980);
/*!40000 ALTER TABLE `monhtly_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_sales`
--

DROP TABLE IF EXISTS `monthly_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_sales`
--

LOCK TABLES `monthly_sales` WRITE;
/*!40000 ALTER TABLE `monthly_sales` DISABLE KEYS */;
INSERT INTO `monthly_sales` VALUES (1,'2024-01-01',1,35,100),(2,'2024-01-01',2,30,120),(3,'2024-01-01',3,20,400),(4,'2024-02-01',1,40,150),(5,'2024-02-01',2,30,170),(6,'2024-02-01',3,20,500),(7,'2024-03-01',1,42,175),(8,'2024-03-01',2,31,205),(9,'2024-03-01',3,22,425),(10,'2024-04-01',1,44,195),(11,'2024-04-01',2,33,225),(12,'2024-04-01',3,25,325);
/*!40000 ALTER TABLE `monthly_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Burger','Tastiest burger in town',45),(2,'French Fries','Yummy taste ',35),(3,'Cold Coffee','Refreshing cold coffee',25);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_monthly_expenses`
--

DROP TABLE IF EXISTS `vw_monthly_expenses`;
/*!50001 DROP VIEW IF EXISTS `vw_monthly_expenses`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_monthly_expenses` AS SELECT
 1 AS `expense`,
  1 AS `month`,
  1 AS `amount` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_monthly_sale`
--

DROP TABLE IF EXISTS `vw_monthly_sale`;
/*!50001 DROP VIEW IF EXISTS `vw_monthly_sale`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_monthly_sale` AS SELECT
 1 AS `product_id`,
  1 AS `name`,
  1 AS `m`,
  1 AS `month`,
  1 AS `price`,
  1 AS `sales`,
  1 AS `amount` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_monthly_expenses`
--

/*!50001 DROP VIEW IF EXISTS `vw_monthly_expenses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cfms`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_monthly_expenses` AS select `t1`.`name` AS `expense`,`t2`.`month` AS `month`,`t2`.`amount` AS `amount` from (`expenses` `t1` join `monhtly_expenses` `t2`) where `t1`.`id` = `t2`.`expense_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_monthly_sale`
--

/*!50001 DROP VIEW IF EXISTS `vw_monthly_sale`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cfms`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_monthly_sale` AS select `t1`.`id` AS `product_id`,`t1`.`name` AS `name`,`t2`.`month` AS `m`,date_format(`t2`.`month`,'%b %Y') AS `month`,`t2`.`price` AS `price`,`t2`.`sales` AS `sales`,`t2`.`sales` * `t2`.`price` AS `amount` from (`product` `t1` join `monthly_sales` `t2`) where `t1`.`id` = `t2`.`product_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03  9:55:49
