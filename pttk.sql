-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pttk
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `bookedroom`
--

DROP TABLE IF EXISTS `bookedroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookedroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `return` date DEFAULT NULL,
  `receive` date DEFAULT NULL,
  `Room_id` int NOT NULL,
  `Booking_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_BookedRoom_Room1_idx` (`Room_id`),
  KEY `fk_BookedRoom_Booking1_idx` (`Booking_id`),
  CONSTRAINT `fk_BookedRoom_Booking1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `fk_BookedRoom_Room1` FOREIGN KEY (`Room_id`) REFERENCES `room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookedroom`
--

LOCK TABLES `bookedroom` WRITE;
/*!40000 ALTER TABLE `bookedroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookedroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paymentType` varchar(45) DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `Customer_id` int NOT NULL,
  `Staff_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Booking_Customer1_idx` (`Customer_id`),
  KEY `fk_Booking_Staff1_idx` (`Staff_id`),
  CONSTRAINT `fk_Booking_Customer1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`user_id`),
  CONSTRAINT `fk_Booking_Staff1` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'a','2020-09-09 15:30:00',2,11),(2,'b','2020-09-20 20:15:00',3,12),(3,'b','2020-09-25 10:07:40',4,13),(4,'a','2020-09-28 20:20:15',5,14),(5,'b','2020-10-01 15:50:10',6,15),(6,'c','2020-10-05 21:15:30',2,16),(7,'a','2020-10-10 23:30:00',3,17),(8,'a','2020-10-15 20:15:30',4,11),(9,'b','2020-10-20 19:20:15',5,12),(10,'a','2020-10-25 22:10:00',6,13);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `type` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_Customer_User1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('a',2),('b',3),('f',4),('w',5),('f',6);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale` float DEFAULT NULL,
  `Supplier_id` int NOT NULL,
  `manager_id` varchar(45) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Invoice_Supplier1_idx` (`Supplier_id`),
  CONSTRAINT `fk_Invoice_Supplier1` FOREIGN KEY (`Supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (9,5,1,'0',NULL),(10,0,3,'0',NULL),(11,5,1,'0',NULL),(12,5,3,'0',NULL),(13,5,1,'0',NULL),(14,5,1,'0',NULL),(15,5,3,'0',NULL),(16,10,1,'0',NULL),(17,5,1,'0',NULL),(18,5,1,'0',NULL),(19,5,2,'0',NULL),(20,5,3,'7',NULL),(21,5,11,'7','Tue Dec 08 14:08:02 ICT 2020'),(22,5,8,'7','Tue Dec 08 14:58:54 ICT 2020');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `describer` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Cocacola','nuoc ngot',NULL,20000),(2,'Pepsi','nuoc ngot',NULL,20000),(3,'7up','nuoc ngot',NULL,20000),(4,'ruou vang','ruou','abc',600000),(5,'Ruou nho','ruou',NULL,1000000),(6,'Ruou trang','ruou',NULL,200000),(7,'ruou vang Phap','ruou','fd',1500000),(8,'ruou nho hy lap','ruou','sgg',2000000),(11,'Bia Ha noi','bia','abc',70000),(12,'Bia sai gon','bia','bia ',50000),(13,'ruou hoa dao','ruou','abcjg',500000),(17,'ruou de lua','ruou','ajhfjas',450000);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iteminvoice`
--

DROP TABLE IF EXISTS `iteminvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iteminvoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `sale` float DEFAULT NULL,
  `Item_id` int NOT NULL,
  `Invoice_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ItemInvoice_Item1_idx` (`Item_id`),
  KEY `fk_ItemInvoice_Invoice1_idx` (`Invoice_id`),
  CONSTRAINT `fk_ItemInvoice_Invoice1` FOREIGN KEY (`Invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `fk_ItemInvoice_Item1` FOREIGN KEY (`Item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iteminvoice`
--

LOCK TABLES `iteminvoice` WRITE;
/*!40000 ALTER TABLE `iteminvoice` DISABLE KEYS */;
INSERT INTO `iteminvoice` VALUES (12,'20','50000.0',0,1,13),(13,'10','1000000.0',0,5,14),(14,'10','600000.0',0,4,16),(15,'10','600000.0',0,4,17),(16,'20','30000.0',0,11,18),(17,'10','35000.0',0,12,18),(18,'10','600000.0',0,4,19),(19,'10','500000.0',0,13,19),(20,'5','1000000.0',0,5,19),(21,'20','50000.0',0,1,20),(22,'10','200000.0',0,3,20),(23,'10','450000.0',0,17,21),(24,'10','600000.0',0,4,22),(25,'10','600000.0',0,4,22);
/*!40000 ALTER TABLE `iteminvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `quantity` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `Item_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `Booking_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_BookedItem_Item1_idx` (`Item_id`),
  KEY `fk_OrderItem_Booking1_idx` (`Booking_id`),
  CONSTRAINT `fk_BookedItem_Item1` FOREIGN KEY (`Item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `fk_OrderItem_Booking1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (5,600000,4,1,1),(2,2000000,8,2,2),(15,20000,3,3,2),(5,600000,4,4,3),(12,70000,11,5,3),(7,50000,12,6,8),(3,1000000,5,7,8),(10,20000,1,8,1),(1,20000,2,9,2),(4,20000,3,10,3),(3,600000,4,11,4),(10,20000,1,12,5),(20,1000000,5,13,6),(15,200000,6,14,7),(5,1500000,7,15,8),(8,2000000,8,16,9),(6,70000,11,17,10),(7,50000,12,18,1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `Store_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Room_Store1_idx` (`Store_id`),
  CONSTRAINT `fk_Room_Store1` FOREIGN KEY (`Store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Room 1',NULL,500000,NULL,1),(2,'Room 2',NULL,100000,NULL,1),(3,'Room 3',NULL,700000,NULL,1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `position` varchar(45) NOT NULL,
  `Store_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_Staff_Store1_idx` (`Store_id`),
  CONSTRAINT `fk_Staff_Store1` FOREIGN KEY (`Store_id`) REFERENCES `store` (`id`),
  CONSTRAINT `fk_Staff_User1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('manager',1,1),('warehousemanager',1,7),('phuc vu',1,11),('phuc vu',1,12),('phuc vu',1,13),('phuc vu',1,14),('phuc vu',1,15),('phuc vu',1,16),('phuc vu',1,17);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Cua hang 1','Ha Dong',NULL),(2,'Cua hang 2','Ha Dong',NULL);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `describer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Nuoc giai khat HN','ha dong','352352','asf'),(2,'Bia ruou Ha noi','ha dong','525226','safa'),(3,'Nuoc ngot Ha noi','ha noi','5263466','fadg'),(4,'bia ruou viet nam','ha noi','12415','sdghd'),(5,'bia ruou Dong Lao','ho chi minh','490144','asfg'),(6,'Nuoc giai khat ha noi','ha noi','48941','asfg'),(7,'ruou vang nhap khau My','ha noi','58389','adgds'),(8,'Dai ly bia ruou Dong Lao','ha noi','343843','jfnkdf'),(9,'Dai ly bia ruou dai viet','ha noi','89487','sjfba'),(10,'Dai ly nuoc giai khat BCD','ha dong','94717','jbfjk'),(11,'dai ly minh duc','ha dong','8479142','afbjbsj');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'quanly','1',NULL,NULL,NULL,'vu minh duc','manager'),(2,'',NULL,NULL,NULL,NULL,'thanh','customer'),(3,NULL,NULL,NULL,NULL,NULL,'dat','customer'),(4,NULL,NULL,NULL,NULL,NULL,'dang','customer'),(5,NULL,NULL,NULL,NULL,NULL,'do','customer'),(6,NULL,NULL,NULL,NULL,NULL,'thao','customer'),(7,'quanlykho','1',NULL,NULL,NULL,'vu minh duc','warehousemanager'),(8,NULL,NULL,NULL,NULL,NULL,'hanh','customer'),(9,NULL,NULL,NULL,NULL,NULL,'hung','customer'),(10,NULL,NULL,NULL,NULL,NULL,'thuy','customer'),(11,NULL,NULL,NULL,NULL,NULL,'dang','staff'),(12,NULL,NULL,NULL,NULL,NULL,'dinh','staff'),(13,NULL,NULL,NULL,NULL,NULL,'phuc','staff'),(14,NULL,NULL,NULL,NULL,NULL,'tam','staff'),(15,NULL,NULL,NULL,NULL,NULL,'khang','staff'),(16,NULL,NULL,NULL,NULL,NULL,'dung','staff'),(17,NULL,NULL,NULL,NULL,NULL,'khanh','staff');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 18:16:39
