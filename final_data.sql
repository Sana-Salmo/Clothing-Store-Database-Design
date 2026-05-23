-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: clothes_store
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `brandID` int(11) NOT NULL,
  `brandNAME` varchar(15) DEFAULT NULL,
  `brandTYPES` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`brandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (43,'nike','shoes'),(65,'zara','t-shert');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus`
--

DROP TABLE IF EXISTS `cus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus` (
  `cusID` int(11) NOT NULL,
  `cusNAME` varchar(87) DEFAULT NULL,
  `cusemail` varchar(76) DEFAULT NULL,
  `transID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cusID`),
  KEY `transID` (`transID`),
  CONSTRAINT `cus_ibfk_1` FOREIGN KEY (`transID`) REFERENCES `trans` (`transID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus`
--

LOCK TABLES `cus` WRITE;
/*!40000 ALTER TABLE `cus` DISABLE KEYS */;
INSERT INTO `cus` VALUES (888,'jana sroji','jana@gmail.com',657),(999,'sara alhaj','sara@gmail.com',879);
/*!40000 ALTER TABLE `cus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeesID` int(11) NOT NULL,
  `employeesNAME` varchar(67) DEFAULT NULL,
  `employeesSALARY` int(11) DEFAULT NULL,
  PRIMARY KEY (`employeesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (555,'rama alkusair',55000),(666,'sana rahmani',30000);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `itemID` int(11) NOT NULL,
  `itemNAME` varchar(22) DEFAULT NULL,
  `itemPRICE` int(11) DEFAULT NULL,
  `itemCOLOR` varchar(10) DEFAULT NULL,
  `itemSIZE` varchar(15) DEFAULT NULL,
  `brandID` int(11) DEFAULT NULL,
  `storeID` int(11) DEFAULT NULL,
  `cusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `brandID` (`brandID`),
  KEY `storeID` (`storeID`),
  KEY `cusID` (`cusID`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`brandID`) REFERENCES `brand` (`brandID`),
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`storeID`) REFERENCES `store` (`storeID`),
  CONSTRAINT `item_ibfk_3` FOREIGN KEY (`cusID`) REFERENCES `cus` (`cusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (47,'Air Max 90',300,'red','38',43,1,888),(77,'zara Sportswear Tee',550,'green','L',65,2,999);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `storeID` int(11) NOT NULL,
  `storeNAME` varchar(24) DEFAULT NULL,
  `storeLOCATION` varchar(67) DEFAULT NULL,
  `employeesID` int(11) DEFAULT NULL,
  PRIMARY KEY (`storeID`),
  KEY `employeesID` (`employeesID`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`employeesID`) REFERENCES `employees` (`employeesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'R.S clothes','alhamra',666),(2,'R.S clothes2','alrwda',555);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans` (
  `transID` int(11) NOT NULL,
  `transDATE` date DEFAULT NULL,
  `transTOTAL` int(11) DEFAULT NULL,
  PRIMARY KEY (`transID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans`
--

LOCK TABLES `trans` WRITE;
/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` VALUES (657,'0000-00-00',300),(879,'0000-00-00',550);
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 13:16:27
