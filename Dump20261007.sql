-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cooperative_society_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `dividend`
--

DROP TABLE IF EXISTS `dividend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dividend` (
  `dividend_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `financial_year` varchar(9) DEFAULT NULL,
  `dividend_amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`dividend_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `dividend_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dividend`
--

LOCK TABLES `dividend` WRITE;
/*!40000 ALTER TABLE `dividend` DISABLE KEYS */;
INSERT INTO `dividend` VALUES (1,1,'2008-2009',800.00,'2009-06-15','Paid'),(2,2,'2009-2010',900.00,'2010-06-20','Paid'),(3,3,'2010-2011',1000.00,'2011-06-18','Paid'),(4,4,'2011-2012',700.00,'2012-06-20','Paid'),(5,5,'2012-2013',1200.00,'2013-06-18','Paid'),(6,6,'2013-2014',1500.00,'2014-06-22','Paid'),(7,7,'2014-2015',950.00,'2015-06-20','Paid'),(8,8,'2015-2016',1800.00,'2016-06-25','Paid'),(9,9,'2016-2017',1400.00,'2017-06-20','Pending'),(10,10,'2017-2018',1000.00,'2018-06-25','Paid'),(11,11,'2018-2019',2200.00,'2019-06-20','Paid'),(12,12,'2019-2020',1300.00,'2020-06-25','Pending'),(13,13,'2020-2021',1100.00,'2021-06-20','Paid'),(14,14,'2021-2022',2500.00,'2022-06-25','Pending'),(15,15,'2022-2023',1600.00,'2023-06-30','Paid');
/*!40000 ALTER TABLE `dividend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `loan_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `loan_product_id` int DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `loan_amount` decimal(12,2) DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `tenure_months` int DEFAULT NULL,
  `outstanding_amount` decimal(12,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `member_id` (`member_id`),
  KEY `loan_product_id` (`loan_product_id`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`loan_product_id`) REFERENCES `loan_product` (`loan_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,1,1,'2010-03-10','2010-03-15',80000.00,10.50,24,0.00,'Closed'),(2,1,6,'2014-06-20','2014-06-25',150000.00,9.50,60,0.00,'Closed'),(3,2,2,'2012-04-15','2012-04-20',120000.00,8.50,48,0.00,'Closed'),(4,3,3,'2012-08-05','2012-08-10',40000.00,9.00,12,0.00,'Closed'),(5,3,4,'2016-05-10','2016-05-15',180000.00,7.50,60,50000.00,'Active'),(6,3,1,'2021-09-01','2021-09-05',70000.00,10.50,24,25000.00,'Active'),(7,5,3,'2015-07-15','2015-07-20',45000.00,9.00,12,0.00,'Closed'),(8,5,6,'2020-11-10','2020-11-15',160000.00,9.50,60,60000.00,'Active'),(9,6,2,'2016-08-20','2016-08-25',100000.00,8.50,48,0.00,'Closed'),(10,7,1,'2017-10-05','2017-10-10',60000.00,10.50,24,0.00,'Closed'),(11,7,5,'2023-04-15','2023-04-20',300000.00,8.00,120,270000.00,'Active'),(12,9,5,'2018-11-05','2018-11-10',350000.00,8.00,120,180000.00,'Active'),(13,9,1,'2022-03-10','2022-03-15',75000.00,10.50,24,30000.00,'Active'),(14,10,2,'2019-06-15','2019-06-20',130000.00,8.50,48,0.00,'Closed'),(15,11,6,'2020-09-10','2020-09-15',180000.00,9.50,60,70000.00,'Active'),(16,11,3,'2024-02-10','2024-02-15',45000.00,9.00,12,30000.00,'Active'),(17,12,4,'2021-07-05','2021-07-10',200000.00,7.50,60,100000.00,'Active'),(18,14,6,'2023-08-15','2023-08-20',120000.00,9.50,60,90000.00,'Active');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_product`
--

DROP TABLE IF EXISTS `loan_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_product` (
  `loan_product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `maximum_amount` decimal(12,2) DEFAULT NULL,
  `tenure_months` int DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`loan_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_product`
--

LOCK TABLES `loan_product` WRITE;
/*!40000 ALTER TABLE `loan_product` DISABLE KEYS */;
INSERT INTO `loan_product` VALUES (1,'Personal Loan',10.50,100000.00,24,'Active'),(2,'Education Loan',8.50,200000.00,48,'Active'),(3,'Emergency Loan',9.00,50000.00,12,'Active'),(4,'Agriculture Loan',7.50,300000.00,60,'Active'),(5,'Housing Loan',8.00,500000.00,120,'Active'),(6,'Vehicle Loan',9.50,250000.00,60,'Active');
/*!40000 ALTER TABLE `loan_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_repayment`
--

DROP TABLE IF EXISTS `loan_repayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_repayment` (
  `repayment_id` int NOT NULL,
  `loan_id` int DEFAULT NULL,
  `repayment_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`repayment_id`),
  KEY `loan_id` (`loan_id`),
  CONSTRAINT `loan_repayment_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loan` (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_repayment`
--

LOCK TABLES `loan_repayment` WRITE;
/*!40000 ALTER TABLE `loan_repayment` DISABLE KEYS */;
INSERT INTO `loan_repayment` VALUES (1,1,'2010-04-15',30000.00,'Bank Transfer','First repayment'),(2,1,'2010-06-15',25000.00,'UPI','Second repayment'),(3,1,'2010-08-15',25000.00,'Cash','Final repayment'),(4,2,'2014-08-25',50000.00,'Bank Transfer','First repayment'),(5,2,'2014-10-25',50000.00,'UPI','Second repayment'),(6,2,'2014-12-25',50000.00,'Bank Transfer','Final repayment'),(7,3,'2012-06-20',40000.00,'UPI','First repayment'),(8,3,'2012-08-20',40000.00,'Cash','Second repayment'),(9,3,'2012-10-20',40000.00,'Bank Transfer','Final repayment'),(10,4,'2012-09-10',15000.00,'Cash','First repayment'),(11,4,'2012-11-10',15000.00,'UPI','Second repayment'),(12,4,'2013-01-10',10000.00,'Bank Transfer','Final repayment'),(13,5,'2016-07-15',40000.00,'Bank Transfer','First repayment'),(14,5,'2016-09-15',40000.00,'UPI','Second repayment'),(15,5,'2016-11-15',50000.00,'Bank Transfer','Partial repayment'),(16,6,'2021-11-05',20000.00,'UPI','First repayment'),(17,6,'2022-01-05',15000.00,'Cash','Second repayment'),(18,6,'2022-03-05',10000.00,'Bank Transfer','Partial repayment'),(19,7,'2015-09-20',15000.00,'Cash','First repayment'),(20,7,'2015-11-20',15000.00,'UPI','Second repayment'),(21,7,'2016-01-20',15000.00,'Bank Transfer','Final repayment'),(22,8,'2021-01-15',30000.00,'UPI','First repayment'),(23,8,'2021-03-15',35000.00,'Bank Transfer','Second repayment'),(24,8,'2021-05-15',35000.00,'Cash','Partial repayment'),(25,9,'2016-10-25',30000.00,'Bank Transfer','First repayment'),(26,9,'2016-12-25',30000.00,'UPI','Second repayment'),(27,9,'2017-02-25',40000.00,'Cash','Final repayment'),(28,10,'2017-12-10',20000.00,'UPI','First repayment'),(29,10,'2018-02-10',20000.00,'Bank Transfer','Second repayment'),(30,10,'2018-04-10',20000.00,'Cash','Final repayment'),(31,11,'2023-06-20',10000.00,'UPI','First repayment'),(32,11,'2023-09-20',10000.00,'Bank Transfer','Second repayment'),(33,11,'2023-12-20',10000.00,'UPI','Partial repayment'),(34,12,'2019-01-10',50000.00,'Bank Transfer','First repayment'),(35,12,'2019-04-10',50000.00,'UPI','Second repayment'),(36,12,'2019-07-10',70000.00,'Cash','Partial repayment'),(37,13,'2022-06-15',15000.00,'UPI','First repayment'),(38,13,'2022-09-15',15000.00,'Bank Transfer','Second repayment'),(39,13,'2022-12-15',15000.00,'Cash','Partial repayment'),(40,14,'2019-08-20',40000.00,'Bank Transfer','First repayment'),(41,14,'2019-10-20',45000.00,'UPI','Second repayment'),(42,14,'2019-12-20',45000.00,'Cash','Final repayment'),(43,15,'2021-11-15',25000.00,'UPI','First repayment'),(44,15,'2022-02-15',25000.00,'Bank Transfer','Second repayment'),(45,15,'2022-05-15',30000.00,'Cash','Partial repayment'),(46,16,'2024-04-15',5000.00,'UPI','First repayment'),(47,16,'2024-06-15',5000.00,'Bank Transfer','Second repayment'),(48,16,'2024-08-15',5000.00,'UPI','Partial repayment'),(49,17,'2021-09-10',30000.00,'Bank Transfer','First repayment'),(50,17,'2021-12-10',30000.00,'UPI','Second repayment'),(51,17,'2022-03-10',40000.00,'Cash','Partial repayment'),(52,18,'2023-10-20',10000.00,'UPI','First repayment'),(53,18,'2024-01-20',10000.00,'Bank Transfer','Second repayment'),(54,18,'2024-04-20',10000.00,'Cash','Partial repayment');
/*!40000 ALTER TABLE `loan_repayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting` (
  `meeting_id` int NOT NULL,
  `meeting_date` date DEFAULT NULL,
  `meeting_type` varchar(30) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `agenda` varchar(200) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES (1,'2008-04-15','Annual General Meeting','Society Hall','Annual financial review','Completed'),(2,'2009-09-20','General Meeting','Society Hall','Member savings discussion','Completed'),(3,'2010-03-10','Board Meeting','Society Office','Loan and finance review','Completed'),(4,'2011-08-25','Annual General Meeting','Community Hall','Annual report and dividends','Completed'),(5,'2012-02-18','General Meeting','Society Hall','New loan schemes discussion','Completed'),(6,'2013-09-12','Board Meeting','Society Office','Loan applications review','Completed'),(7,'2014-04-22','Annual General Meeting','Community Hall','Annual financial review','Completed'),(8,'2015-10-05','General Meeting','Society Hall','Savings and membership review','Completed'),(9,'2016-03-15','Board Meeting','Society Office','Loan repayment review','Completed'),(10,'2017-09-20','Annual General Meeting','Community Hall','Annual report and future plans','Completed'),(11,'2018-04-18','General Meeting','Society Hall','Member welfare discussion','Completed'),(12,'2019-11-10','Board Meeting','Society Office','Financial and loan review','Completed'),(13,'2020-06-25','Annual General Meeting','Society Hall','Annual accounts review','Completed'),(14,'2021-10-15','General Meeting','Community Hall','Membership and savings review','Completed'),(15,'2022-03-20','Board Meeting','Society Office','Loan and repayment review','Completed'),(16,'2023-09-25','Annual General Meeting','Society Hall','Annual report and dividend discussion','Completed'),(17,'2024-04-20','Annual General Meeting','Society Hall','Annual financial review','Completed'),(18,'2025-09-15','General Meeting','Community Hall','Membership and savings review','Completed'),(19,'2026-06-20','Annual General Meeting','Society Hall','Annual report and dividend discussion','Completed');
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_attendance`
--

DROP TABLE IF EXISTS `meeting_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_attendance` (
  `attendance_id` int NOT NULL,
  `meeting_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `attendance_status` varchar(15) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `meeting_id` (`meeting_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `meeting_attendance_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meeting` (`meeting_id`),
  CONSTRAINT `meeting_attendance_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_attendance`
--

LOCK TABLES `meeting_attendance` WRITE;
/*!40000 ALTER TABLE `meeting_attendance` DISABLE KEYS */;
INSERT INTO `meeting_attendance` VALUES (1,1,1,'Present','Attended'),(2,2,1,'Present','Attended'),(3,2,2,'Present','Attended'),(4,3,1,'Present','Attended'),(5,3,2,'Absent','Personal reason'),(6,3,3,'Present','Attended'),(7,4,1,'Present','Attended'),(8,4,2,'Present','Attended'),(9,4,3,'Present','Attended'),(10,4,4,'Absent','Not available'),(11,5,1,'Present','Attended'),(12,5,2,'Present','Attended'),(13,5,3,'Absent','Personal reason'),(14,5,4,'Present','Attended'),(15,5,5,'Present','Attended'),(16,6,1,'Present','Attended'),(17,6,2,'Absent','Personal reason'),(18,6,3,'Present','Attended'),(19,6,4,'Present','Attended'),(20,6,5,'Present','Attended'),(21,6,6,'Present','Attended'),(22,7,1,'Present','Attended'),(23,7,2,'Present','Attended'),(24,7,3,'Present','Attended'),(25,7,4,'Absent','Not available'),(26,7,5,'Present','Attended'),(27,7,6,'Present','Attended'),(28,7,7,'Present','Attended'),(29,8,1,'Present','Attended'),(30,8,2,'Present','Attended'),(31,8,3,'Absent','Personal reason'),(32,8,4,'Present','Attended'),(33,8,5,'Present','Attended'),(34,8,6,'Present','Attended'),(35,8,7,'Absent','Not available'),(36,8,8,'Present','Attended'),(37,9,1,'Present','Attended'),(38,9,2,'Absent','Personal reason'),(39,9,3,'Present','Attended'),(40,9,4,'Present','Attended'),(41,9,5,'Present','Attended'),(42,9,6,'Present','Attended'),(43,9,7,'Present','Attended'),(44,9,8,'Absent','Not available'),(45,9,9,'Present','Attended'),(46,10,1,'Present','Attended'),(47,10,2,'Present','Attended'),(48,10,3,'Present','Attended'),(49,10,4,'Absent','Personal reason'),(50,10,5,'Present','Attended'),(51,10,6,'Present','Attended'),(52,10,7,'Present','Attended'),(53,10,8,'Present','Attended'),(54,10,9,'Absent','Not available'),(55,10,10,'Present','Attended'),(56,11,1,'Present','Attended'),(57,11,2,'Present','Attended'),(58,11,3,'Absent','Personal reason'),(59,11,4,'Present','Attended'),(60,11,5,'Present','Attended'),(61,11,6,'Present','Attended'),(62,11,7,'Absent','Not available'),(63,11,8,'Present','Attended'),(64,11,9,'Present','Attended'),(65,11,10,'Present','Attended'),(66,11,11,'Present','Attended'),(67,12,1,'Present','Attended'),(68,12,2,'Absent','Personal reason'),(69,12,3,'Present','Attended'),(70,12,4,'Present','Attended'),(71,12,5,'Present','Attended'),(72,12,6,'Present','Attended'),(73,12,7,'Present','Attended'),(74,12,8,'Absent','Not available'),(75,12,9,'Present','Attended'),(76,12,10,'Present','Attended'),(77,12,11,'Present','Attended'),(78,12,12,'Present','Attended'),(79,13,1,'Present','Attended'),(80,13,2,'Present','Attended'),(81,13,3,'Present','Attended'),(82,13,4,'Absent','Personal reason'),(83,13,5,'Present','Attended'),(84,13,6,'Present','Attended'),(85,13,7,'Present','Attended'),(86,13,8,'Present','Attended'),(87,13,9,'Absent','Not available'),(88,13,10,'Present','Attended'),(89,13,11,'Present','Attended'),(90,13,12,'Present','Attended'),(91,13,13,'Present','Attended'),(92,14,1,'Present','Attended'),(93,14,2,'Present','Attended'),(94,14,3,'Absent','Personal reason'),(95,14,4,'Present','Attended'),(96,14,5,'Present','Attended'),(97,14,6,'Present','Attended'),(98,14,7,'Present','Attended'),(99,14,8,'Absent','Not available'),(100,14,9,'Present','Attended'),(101,14,10,'Present','Attended'),(102,14,11,'Present','Attended'),(103,14,12,'Present','Attended'),(104,14,13,'Absent','Personal reason'),(105,14,14,'Present','Attended'),(106,15,1,'Present','Attended'),(107,15,2,'Present','Attended'),(108,15,3,'Present','Attended'),(109,15,4,'Absent','Personal reason'),(110,15,5,'Present','Attended'),(111,15,6,'Present','Attended'),(112,15,7,'Present','Attended'),(113,15,8,'Present','Attended'),(114,15,9,'Absent','Not available'),(115,15,10,'Present','Attended'),(116,15,11,'Present','Attended'),(117,15,12,'Present','Attended'),(118,15,13,'Present','Attended'),(119,15,14,'Present','Attended'),(120,15,15,'Present','Attended'),(121,16,1,'Present','Attended'),(122,16,2,'Present','Attended'),(123,16,3,'Absent','Personal reason'),(124,16,4,'Present','Attended'),(125,16,5,'Present','Attended'),(126,16,6,'Present','Attended'),(127,16,7,'Present','Attended'),(128,16,8,'Absent','Not available'),(129,16,9,'Present','Attended'),(130,16,10,'Present','Attended'),(131,16,11,'Present','Attended'),(132,16,12,'Present','Attended'),(133,16,13,'Present','Attended'),(134,16,14,'Absent','Personal reason'),(135,16,15,'Present','Attended'),(136,17,1,'Present','Attended'),(137,17,2,'Absent','Personal reason'),(138,17,3,'Present','Attended'),(139,17,4,'Present','Attended'),(140,17,5,'Present','Attended'),(141,17,6,'Present','Attended'),(142,17,7,'Absent','Not available'),(143,17,8,'Present','Attended'),(144,17,9,'Present','Attended'),(145,17,10,'Present','Attended'),(146,17,11,'Present','Attended'),(147,17,12,'Absent','Personal reason'),(148,17,13,'Present','Attended'),(149,17,14,'Present','Attended'),(150,17,15,'Present','Attended'),(151,18,1,'Present','Attended'),(152,18,2,'Present','Attended'),(153,18,3,'Present','Attended'),(154,18,4,'Absent','Personal reason'),(155,18,5,'Present','Attended'),(156,18,6,'Present','Attended'),(157,18,7,'Present','Attended'),(158,18,8,'Present','Attended'),(159,18,9,'Absent','Not available'),(160,18,10,'Present','Attended'),(161,18,11,'Present','Attended'),(162,18,12,'Present','Attended'),(163,18,13,'Present','Attended'),(164,18,14,'Present','Attended'),(165,18,15,'Absent','Personal reason'),(166,19,1,'Present','Attended'),(167,19,2,'Present','Attended'),(168,19,3,'Absent','Personal reason'),(169,19,4,'Present','Attended'),(170,19,5,'Present','Attended'),(171,19,6,'Present','Attended'),(172,19,7,'Present','Attended'),(173,19,8,'Absent','Not available'),(174,19,9,'Present','Attended'),(175,19,10,'Present','Attended'),(176,19,11,'Present','Attended'),(177,19,12,'Present','Attended'),(178,19,13,'Present','Attended'),(179,19,14,'Absent','Personal reason'),(180,19,15,'Present','Attended');
/*!40000 ALTER TABLE `meeting_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL,
  `member_no` varchar(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_no` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'M001','Ravi','Kumar','1980-04-12','Male','9000000001','ravi@gmail.com','Hyderabad','2008-01-10','Active'),(2,'M002','Priya','Rao','1983-07-25','Female','9000000002','priya@gmail.com','Vijayawada','2009-02-15','Active'),(3,'M003','Arun','Kumar','1978-11-18','Male','9000000003','arun@gmail.com','Guntur','2010-03-20','Active'),(4,'M004','Anu','Reddy','1987-02-10','Female','9000000004','anu@gmail.com','Nellore','2011-04-12','Inactive'),(5,'M005','Rahul','Das','1975-09-05','Male','9000000005','rahul@gmail.com','Warangal','2012-05-18','Active'),(6,'M006','Sita','Devi','1982-06-22','Female','9000000006','sita@gmail.com','Rajahmundry','2013-06-25','Active'),(7,'M007','Kiran','Rao','1977-12-15','Male','9000000007','kiran@gmail.com','Kakinada','2014-07-14','Inactive'),(8,'M008','Neha','Sharma','1990-03-28','Female','9000000008','neha@gmail.com','Hyderabad','2015-08-22','Active'),(9,'M009','Vijay','Kumar','1981-10-09','Male','9000000009','vijay@gmail.com','Warangal','2016-09-09','Active'),(10,'M010','Meena','Rao','1988-01-17','Female','9000000010','meena@gmail.com','Guntur','2017-10-11','Suspended'),(11,'M011','Ajay','Reddy','1972-05-30','Male','9000000011','ajay@gmail.com','Vijayawada','2018-11-19','Active'),(12,'M012','Latha','Devi','1985-08-14','Female','9000000012','latha@gmail.com','Nellore','2019-12-05','Active'),(13,'M013','Mohan','Rao','1979-04-26','Male','9000000013','mohan@gmail.com','Kakinada','2020-01-25','Inactive'),(14,'M014','Pooja','Kumar','1992-09-11','Female','9000000014','pooja@gmail.com','Hyderabad','2021-02-28','Active'),(15,'M015','Ramesh','Das','1987-12-03','Male','9000000015','ramesh@gmail.com','Rajahmundry','2022-03-16','Active');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominee`
--

DROP TABLE IF EXISTS `nominee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nominee` (
  `nominee_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `nominee_name` varchar(50) DEFAULT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nominee_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `nominee_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominee`
--

LOCK TABLES `nominee` WRITE;
/*!40000 ALTER TABLE `nominee` DISABLE KEYS */;
INSERT INTO `nominee` VALUES (1,1,'Lakshmi Devi','Mother','9100000001','Hyderabad'),(2,2,'Ramesh Rao','Father','9100000002','Vijayawada'),(3,3,'Anitha Kumar','Sister','9100000003','Guntur'),(4,4,'Suresh Reddy','Brother','9100000004','Nellore'),(5,5,'Kavitha Das','Wife','9100000005','Warangal'),(6,6,'Arjun Kumar','Husband','9100000006','Rajahmundry'),(7,7,'Sunitha Rao','Mother','9100000007','Kakinada'),(8,8,'Mahesh Sharma','Brother','9100000008','Hyderabad'),(9,9,'Geetha Kumar','Wife','9100000009','Warangal'),(10,10,'Prakash Rao','Father','9100000010','Guntur'),(11,11,'Padma Reddy','Mother','9100000011','Vijayawada'),(12,12,'Rohit Devi','Brother','9100000012','Nellore'),(13,13,'Rani Rao','Sister','9100000013','Kakinada'),(14,14,'Srinivas Kumar','Husband','9100000014','Hyderabad'),(15,15,'Saritha Das','Daughter','9100000015','Rajahmundry');
/*!40000 ALTER TABLE `nominee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings_account`
--

DROP TABLE IF EXISTS `savings_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_account` (
  `savings_account_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`savings_account_id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `savings_account_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_account`
--

LOCK TABLES `savings_account` WRITE;
/*!40000 ALTER TABLE `savings_account` DISABLE KEYS */;
INSERT INTO `savings_account` VALUES (1,1,'SA1001','2009-02-10',15000.00,'Active'),(2,2,'SA1002','2010-03-15',22000.00,'Active'),(3,3,'SA1003','2011-04-20',8500.00,'Active'),(4,4,'SA1004','2012-05-25',5000.00,'Inactive'),(5,5,'SA1005','2013-06-30',18000.00,'Active'),(6,6,'SA1006','2014-07-20',12500.00,'Active'),(7,7,'SA1007','2015-08-18',7000.00,'Inactive'),(8,8,'SA1008','2016-09-15',25000.00,'Active'),(9,9,'SA1009','2017-10-20',11000.00,'Active'),(10,10,'SA1010','2018-04-15',6500.00,'Suspended'),(11,11,'SA1011','2019-08-10',30000.00,'Active'),(12,12,'SA1012','2020-06-20',9500.00,'Active'),(13,13,'SA1013','2021-03-25',4000.00,'Inactive'),(14,14,'SA1014','2022-07-10',27000.00,'Active'),(15,15,'SA1015','2023-04-20',13500.00,'Active');
/*!40000 ALTER TABLE `savings_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings_transaction`
--

DROP TABLE IF EXISTS `savings_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_transaction` (
  `transaction_id` int NOT NULL,
  `savings_account_id` int DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_type` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `savings_account_id` (`savings_account_id`),
  CONSTRAINT `savings_transaction_ibfk_1` FOREIGN KEY (`savings_account_id`) REFERENCES `savings_account` (`savings_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_transaction`
--

LOCK TABLES `savings_transaction` WRITE;
/*!40000 ALTER TABLE `savings_transaction` DISABLE KEYS */;
INSERT INTO `savings_transaction` VALUES (1,1,'2009-03-05','Deposit',5000.00,'Initial Deposit'),(2,1,'2009-05-05','Deposit',3000.00,'Monthly Savings'),(3,2,'2010-04-10','Deposit',8000.00,'Initial Deposit'),(4,2,'2010-06-10','Withdrawal',2000.00,'Personal Use'),(5,3,'2011-05-20','Deposit',4500.00,'Monthly Savings'),(6,4,'2012-06-15','Deposit',5000.00,'Initial Deposit'),(7,5,'2013-08-10','Deposit',7000.00,'Monthly Savings'),(8,6,'2014-09-20','Withdrawal',1500.00,'Emergency Expense'),(9,8,'2016-01-15','Deposit',10000.00,'Initial Deposit'),(10,9,'2017-11-20','Deposit',5000.00,'Monthly Savings'),(11,11,'2019-09-15','Deposit',12000.00,'Monthly Savings'),(12,12,'2020-08-20','Withdrawal',1000.00,'Personal Use'),(13,14,'2022-08-15','Deposit',9000.00,'Monthly Savings'),(14,15,'2023-05-20','Deposit',6000.00,'Initial Deposit'),(15,5,'2023-07-20','Withdrawal',2000.00,'Personal Use');
/*!40000 ALTER TABLE `savings_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_class`
--

DROP TABLE IF EXISTS `share_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_class` (
  `share_class_id` int NOT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `share_value` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`share_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_class`
--

LOCK TABLES `share_class` WRITE;
/*!40000 ALTER TABLE `share_class` DISABLE KEYS */;
INSERT INTO `share_class` VALUES (1,'Class A',100.00,'Ordinary Membership Share','Active'),(2,'Class B',500.00,'Premium Share','Active'),(3,'Class C',1000.00,'Special Share','Active'),(4,'Class D',2000.00,'Investment Share','Active'),(5,'Class E',5000.00,'Capital Share','Active'),(6,'Class F',10000.00,'Senior Member Share','Active');
/*!40000 ALTER TABLE `share_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_holding`
--

DROP TABLE IF EXISTS `share_holding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_holding` (
  `holding_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `share_class_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `total_value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`holding_id`),
  KEY `member_id` (`member_id`),
  KEY `share_class_id` (`share_class_id`),
  CONSTRAINT `share_holding_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `share_holding_ibfk_2` FOREIGN KEY (`share_class_id`) REFERENCES `share_class` (`share_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_holding`
--

LOCK TABLES `share_holding` WRITE;
/*!40000 ALTER TABLE `share_holding` DISABLE KEYS */;
INSERT INTO `share_holding` VALUES (1,1,2,4,'2009-03-15',2000.00),(2,2,1,12,'2010-05-20',1200.00),(3,3,3,3,'2011-07-10',3000.00),(4,4,5,2,'2012-09-05',10000.00),(5,5,2,6,'2013-02-18',3000.00),(6,6,4,3,'2014-06-25',6000.00),(7,7,1,15,'2015-08-12',1500.00),(8,8,6,1,'2016-04-20',10000.00),(9,9,3,5,'2017-10-15',5000.00),(10,10,2,8,'2018-03-22',4000.00),(11,11,5,3,'2019-07-18',15000.00),(12,12,1,20,'2020-05-10',2000.00),(13,13,4,2,'2021-02-25',4000.00),(14,14,6,2,'2022-06-15',20000.00),(15,15,3,4,'2023-04-05',4000.00);
/*!40000 ALTER TABLE `share_holding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `member_no` varchar(10) DEFAULT NULL,
  `role_id` int NOT NULL,
  `status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `member_no` (`member_no`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin01','Admin@123',NULL,1,'Active'),(2,'clerk01','Clerk@123',NULL,2,'Active'),(3,'manager01','Manager@123',NULL,3,'Active'),(4,'accountant01','Account@123',NULL,4,'Active'),(5,'ravi01','Ravi@123','M001',5,'Active'),(6,'priya01','Priya@123','M002',5,'Active'),(7,'arun01','Arun@123','M003',5,'Active'),(8,'anu01','Anu@123','M004',5,'Inactive'),(9,'rahul01','Rahul@123','M005',5,'Active'),(10,'sita01','Sita@123','M006',5,'Inactive'),(11,'kiran01','Kiran@123','M007',5,'Active'),(12,'neha01','Neha@123','M008',5,'Active'),(13,'vijay01','Vijay@123','M009',5,'Suspended'),(14,'meena01','Meena@123','M010',5,'Active'),(15,'ajay01','Ajay@123','M011',5,'Inactive'),(16,'latha01','Latha@123','M012',5,'Active'),(17,'mohan01','Mohan@123','M013',5,'Active'),(18,'pooja01','Pooja@123','M014',5,'Active'),(19,'ramesh01','Ramesh@123','M015',5,'Active');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `role_id` int NOT NULL,
  `role_name` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin','Manages the complete system'),(2,'Clerk','Manages member records'),(3,'Manager','Manages society operations'),(4,'Accountant','Manages financial transactions'),(5,'Member','Views personal account details');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-07  9:23:34
