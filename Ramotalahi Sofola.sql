-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: charity_shops
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donor_id` varchar(25) DEFAULT NULL,
  `amount_donated` int DEFAULT NULL,
  `donation_week` int DEFAULT NULL,
  KEY `fk_donor_id2` (`donor_id`),
  CONSTRAINT `fk_donor_id2` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES ('d1',50,1),('d2',20,2),('d1',10,2),('d4',500,4),('d3',10,3),('d5',15,3),('d2',75,5),('d3',50,1),('d1',25,4);
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donors` (
  `id` varchar(25) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES ('d1','Ayomide','ay@gmail.com',815552),('d2','Hope','hp@yahoo.com',803346),('d3','James','jm@hotmail.com',817773),('d4','Chris',NULL,804467),('d5','Charlotte','chr@gmail.com',801116),('d6','Fiona','fn@gmail.com',807888),('d7','Mary','mry@yahoo.com',802386);
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` varchar(25) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `work_days` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('e1','Tani','tn@charity.org','Tuesday'),('e2','Grace','gr@charity.org','Wednesday'),('e3','Joy','jy@charity.org','Thursday'),('e4','Nimi','nmi@charity.org','Friday');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` varchar(10) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `category` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('it1',5.00,'top'),('it10',7.50,'skirt'),('it11',14.00,'jacket'),('it12',1.50,'top'),('it13',5.00,'dress'),('it14',18.00,'skirt'),('it15',6.50,'jacket'),('it16',2.00,'skirt'),('it17',4.50,'jacket'),('it18',10.00,'skirt'),('it19',6.50,'skirt'),('it2',3.00,'top'),('it20',2.00,'jacket'),('it21',1.00,'top'),('it22',5.50,'top'),('it23',3.00,'dress'),('it24',7.50,'skirt'),('it25',14.50,'trousers'),('it26',1.50,'top'),('it27',5.00,'dress'),('it28',11.00,'top'),('it29',4.50,'jacket'),('it3',4.50,'jacket'),('it30',12.00,'jacket'),('it31',6.50,'skirt'),('it32',3.00,'trousers'),('it33',10.00,'top'),('it34',5.00,'trousers'),('it35',3.00,'skirt'),('it36',7.00,'skirt'),('it37',14.00,'jacket'),('it38',1.50,'trousers'),('it39',15.00,'dress'),('it4',12.00,'jacket'),('it40',1.00,'skirt'),('it41',6.00,'jacket'),('it42',2.00,'trousers'),('it43',4.50,'trousers'),('it44',1.00,'top'),('it45',6.00,'skirt'),('it46',2.00,'skirt'),('it47',15.00,'trousers'),('it48',20.00,'jacket'),('it49',2.50,'skirt'),('it5',6.50,'skirt'),('it50',4.50,'dress'),('it6',3.00,'trousers'),('it7',1.00,'top'),('it8',5.00,'top'),('it9',3.00,'top');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `items_sold`
--

DROP TABLE IF EXISTS `items_sold`;
/*!50001 DROP VIEW IF EXISTS `items_sold`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `items_sold` AS SELECT 
 1 AS `id`,
 1 AS `price`,
 1 AS `category`,
 1 AS `buyer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shop_sales`
--

DROP TABLE IF EXISTS `shop_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_sales` (
  `donor_name` varchar(25) DEFAULT NULL,
  `donor_id` varchar(25) DEFAULT NULL,
  `employee_name` varchar(25) DEFAULT NULL,
  `employee_id` varchar(25) DEFAULT NULL,
  `item_id` varchar(10) DEFAULT NULL,
  `item_price` decimal(6,2) DEFAULT NULL,
  `sale_week` int DEFAULT NULL,
  KEY `fk_donor_id` (`donor_id`),
  KEY `fk_employee_id` (`employee_id`),
  KEY `fk_item_id` (`item_id`),
  CONSTRAINT `fk_donor_id` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`),
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_sales`
--

LOCK TABLES `shop_sales` WRITE;
/*!40000 ALTER TABLE `shop_sales` DISABLE KEYS */;
INSERT INTO `shop_sales` VALUES ('Ayomide','d1','Tani','e1','it5',6.50,2),('James','d3','Grace','e2','it10',7.50,3),('Hope','d2','Nimi','e4','it18',10.00,4),('Ayomide','d1','Joy','e3','it13',5.00,5),('Fiona','d6','Grace','e2','it17',4.50,1),('Hope','d2','Nimi','e4','it38',1.50,2),('Fiona','d6','Tani','e1','it11',14.00,1),('Chris','d4','Tani','e1','it22',5.50,3),('Ayomide','d1','Nimi','e4','it21',1.00,4),('Charlotte','d5','Nimi','e4','it35',3.00,5),('Ayomide','d1','Grace','e2','it49',2.50,4),('Charlotte','d5','Grace','e2','it42',2.00,1),('Mary','d7','Tani','e1','it5',6.50,3),('Fiona','d6','Grace','e2','it23',3.00,5),('Chris','d4','Nimi','e4','it40',1.00,2),('Hope','d2','Tani','e1','it47',15.00,5);
/*!40000 ALTER TABLE `shop_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'charity_shops'
--
/*!50003 DROP FUNCTION IF EXISTS `DonorLevel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DonorLevel`(
	amount_donated INT
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE DonorLevel VARCHAR(20);

    IF amount_donated > 100 THEN
		SET DonorLevel = 'HIGH';
    ELSEIF (amount_donated >=50 AND 
			amount_donated <= 100) THEN
        SET DonorLevel = 'MEDIUM';
    ELSEIF amount_donated < 50 THEN
        SET DonorLevel = 'STANDARD';
    END IF;
	-- return the customer level
	RETURN (DonorLevel);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `all_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_sales`()
BEGIN
SELECT*FROM shop_sales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `all_sales_week` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_sales_week`()
BEGIN
SELECT item_price, donor_id, sale_week FROM shop_sales
GROUP BY sale_week;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_sales`(IN id VARCHAR(25))
BEGIN
SELECT*FROM shop_sales
WHERE donor_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `employee_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `employee_sales`(IN id VARCHAR(25))
BEGIN
SELECT*FROM shop_sales
WHERE employee_id=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `items_sold`
--

/*!50001 DROP VIEW IF EXISTS `items_sold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `items_sold` AS select `i`.`id` AS `id`,`i`.`price` AS `price`,`i`.`category` AS `category`,`ss`.`donor_name` AS `buyer` from (`inventory` `i` join `shop_sales` `ss` on((`i`.`id` = `ss`.`item_id`))) */;
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

-- Dump completed on 2023-10-31 18:14:40
