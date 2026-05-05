-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: legoshop
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Current Database: `legoshop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `legoshop` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `legoshop`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Anna','Müller','Wien'),(2,'Lukas','Huber','Graz'),(3,'Sophie','Berger','Linz'),(4,'Max','Leitner','Salzburg'),(5,'David','Hofer','Klagenfurt'),(6,'Julia','Fischer','Innsbruck'),(7,'Paul','Wagner','Wien'),(8,'Lea','Pichler','Graz'),(9,'Noah','Koch','Linz'),(10,'Mia','Schmid','Salzburg'),(11,'Felix','Bauer','Wien'),(12,'Emma','Moser','Graz'),(13,'Moritz','Steiner','Innsbruck'),(14,'Lena','Gruber','Klagenfurt'),(15,'Elias','Maier','Linz'),(16,'Sarah','Winter','Wien'),(17,'Jonas','Neumann','Salzburg'),(18,'Nina','Lang','Graz'),(19,'Tobias','Krall','Wien'),(20,'Laura','Egger','Linz');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,20,NULL),(2,1,21,1),(3,2,2,2),(4,2,17,1),(5,3,1,1),(6,3,14,2),(7,4,7,1),(8,5,10,1),(9,5,18,2),(10,6,15,1),(11,6,21,1),(12,7,11,1),(13,7,2,1),(14,8,9,1),(15,8,14,1),(16,9,1,1),(17,9,17,2),(18,10,4,1),(19,10,18,1),(20,11,13,1),(21,11,14,2),(22,12,3,1),(23,13,22,1),(24,13,2,1),(25,14,20,1),(26,15,8,1),(27,15,17,1),(28,15,2,2),(29,16,16,1),(30,17,5,1),(31,17,18,1),(32,18,21,2),(33,19,7,1),(34,19,2,3),(35,20,10,1),(36,20,14,1),(37,21,9,1),(38,22,13,1),(39,22,17,2),(40,23,11,1),(41,23,18,2),(42,24,1,1),(43,24,2,1),(44,25,22,1),(45,25,20,1),(46,26,4,2),(47,26,14,1),(48,27,15,1),(49,27,16,1),(50,28,8,1),(51,29,7,1),(52,29,17,1),(53,30,5,2),(54,31,21,1),(55,31,20,1),(56,32,1,1),(57,33,3,1),(58,33,2,4),(59,34,12,1),(60,34,14,1),(61,35,18,3),(62,36,9,1),(63,36,10,1),(64,37,11,1),(65,38,13,1),(66,38,14,1),(67,38,17,1),(68,39,5,1),(69,39,20,1),(70,40,8,1),(71,40,2,2),(72,41,16,1),(73,41,15,1),(74,42,4,1),(75,43,22,1),(76,44,1,1),(77,44,17,2),(78,45,7,1),(79,45,9,1),(80,46,21,2),(81,47,12,1),(82,47,14,2),(83,48,5,1),(84,48,18,1),(85,48,17,2),(86,49,20,1),(87,49,13,1),(88,50,3,1),(89,50,2,3),(90,51,8,1),(91,51,17,2),(92,52,6,1),(93,53,11,1),(94,53,18,2),(95,54,19,1),(96,55,7,1),(97,55,21,1),(98,56,9,1),(99,56,10,2),(100,56,2,3),(101,57,1,1),(102,57,13,1),(103,57,18,2),(104,58,8,1),(105,58,7,1),(106,59,15,1),(107,59,16,1),(108,59,21,1),(109,60,3,1),(110,60,22,1),(111,60,20,1);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-01-03'),(2,7,'2025-01-09'),(3,2,'2025-01-14'),(4,11,'2025-01-22'),(5,3,'2025-01-28'),(6,5,'2025-02-02'),(7,8,'2025-02-08'),(8,1,'2025-02-16'),(9,12,'2025-02-21'),(10,9,'2025-02-27'),(11,6,'2025-03-03'),(12,4,'2025-03-07'),(13,15,'2025-03-12'),(14,16,'2025-03-18'),(15,7,'2025-03-26'),(16,10,'2025-04-02'),(17,2,'2025-04-06'),(18,14,'2025-04-14'),(19,1,'2025-04-22'),(20,18,'2025-04-29'),(21,3,'2025-05-04'),(22,11,'2025-05-09'),(23,8,'2025-05-16'),(24,9,'2025-05-21'),(25,5,'2025-05-30'),(26,6,'2025-06-03'),(27,12,'2025-06-11'),(28,13,'2025-06-18'),(29,7,'2025-06-25'),(30,15,'2025-06-30'),(31,16,'2025-07-05'),(32,2,'2025-07-12'),(33,1,'2025-07-19'),(34,17,'2025-07-24'),(35,10,'2025-07-29'),(36,3,'2025-08-02'),(37,18,'2025-08-09'),(38,8,'2025-08-16'),(39,5,'2025-08-21'),(40,11,'2025-08-28'),(41,14,'2025-09-03'),(42,6,'2025-09-10'),(43,9,'2025-09-17'),(44,12,'2025-09-22'),(45,7,'2025-09-29'),(46,1,'2025-10-04'),(47,15,'2025-10-11'),(48,2,'2025-10-19'),(49,16,'2025-10-23'),(50,10,'2025-10-31'),(51,3,'2025-11-03'),(52,5,'2025-11-09'),(53,8,'2025-11-15'),(54,11,'2025-11-22'),(55,18,'2025-11-28'),(56,1,'2025-12-02'),(57,2,'2025-12-07'),(58,7,'2025-12-14'),(59,12,'2025-12-20'),(60,3,'2025-12-28'),(61,4,'2025-06-15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'LEGO City - Feuerwehrstation (60320)',69.99),(2,'LEGO City - Polizei auf Patrouille (60239)',9.99),(3,'LEGO City - Güterzug (60198)',179.99),(4,'LEGO City - Weltraum-Rover (60348)',34.99),(5,'LEGO Technic - Bugatti Bolide (42151)',49.99),(6,'LEGO Technic - Liebherr R 9800 (42100)',449.99),(7,'LEGO Star Wars - X-Wing Starfighter (75355)',239.99),(8,'LEGO Star Wars - Millennium Falcon (75257)',169.99),(9,'LEGO Harry Potter - Hogwarts: Kammer des Schreckens (76389)',149.99),(10,'LEGO Harry Potter - Der Fahrende Ritter (75957)',39.99),(11,'LEGO NINJAGO - Lloyds Ninja-Mech (71757)',99.99),(12,'LEGO NINJAGO - Drachen Tempel (71795)',119.99),(13,'LEGO Creator 3in1 - Piratenschiff (31109)',99.99),(14,'LEGO Creator 3in1 - Raumfahrt-Roboter (31164)',24.99),(15,'LEGO Friends - Bio-Bauernhof (41721)',74.99),(16,'LEGO Friends - Heartlake City Schule (41682)',69.99),(17,'LEGO Speed Champions - Ferrari F8 Tributo (76895)',19.99),(18,'LEGO Speed Champions - Lamborghini Countach (76908)',19.99),(19,'LEGO Ideas - Schreibmaschine (21327)',249.99),(20,'LEGO Icons - Bonsai Baum (10281)',49.99),(21,'LEGO Icons - Blumenstrauß (10280)',59.99),(22,'LEGO Minecraft - Das Lamasdorf (21188)',129.99),(23,'LEGO Art - The Rolling Stones (31206)',149.99),(24,'LEGO Architecture - Schloss Neuschwanstein (21063)',59.99);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'legoshop'
--

--
-- Dumping routines for database 'legoshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-05  8:36:17
