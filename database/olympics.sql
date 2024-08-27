CREATE DATABASE  IF NOT EXISTS `olympics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `olympics`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: olympics
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `athens_2004`
--

DROP TABLE IF EXISTS `athens_2004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athens_2004` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athens_2004`
--

LOCK TABLES `athens_2004` WRITE;
/*!40000 ALTER TABLE `athens_2004` DISABLE KEYS */;
INSERT INTO `athens_2004` VALUES ('USA',36,39,26,101),('CHN',32,17,15,64),('RUS',28,26,36,90),('AUS',17,16,17,50),('JPN',16,9,12,37),('GER',13,16,20,49),('FRA',11,9,13,33),('ITA',10,11,11,32),('KOR',9,12,9,30),('GBR',9,9,12,30),('CUB',9,7,11,27),('HUN',8,6,3,17),('UKR',8,5,9,22),('ROU',8,5,6,19),('GRE',6,6,4,16),('BRA',5,2,3,10),('NOR',5,0,1,6),('NED',4,9,9,22),('SWE',4,2,1,7),('ESP',3,11,6,20),('CAN',3,6,3,12),('TUR',3,4,4,11),('POL',3,2,5,10),('NZL',3,2,0,5),('THA',3,1,4,8),('BLR',2,5,7,14),('AUT',2,4,1,7),('ETH',2,3,2,7),('IRI',2,2,2,6),('SVK',2,2,2,6),('TPE',2,2,1,5),('GEO',2,2,0,4),('BUL',2,1,9,12),('DEN',2,1,5,8),('UZB',2,1,2,5),('JAM',2,1,2,5),('MAR',2,1,0,3),('ARG',2,0,4,6),('CHI',2,0,1,3),('KAZ',1,4,3,8),('KEN',1,4,2,7),('CZE',1,3,5,9),('RSA',1,3,2,6),('CRO',1,2,2,5),('LTU',1,2,0,3),('SUI',1,1,3,5),('EGY',1,1,3,5),('INA',1,1,2,4),('ZIM',1,1,1,3),('AZE',1,0,4,5),('BEL',1,0,2,3),('ISR',1,0,1,2),('BAH',1,0,1,2),('DOM',1,0,0,1),('CMR',1,0,0,1),('UAE',1,0,0,1),('PRK',0,4,1,5),('LAT',0,4,0,4),('MEX',0,3,1,4),('POR',0,2,1,3),('FIN',0,2,0,2),('SCG',0,2,0,2),('SLO',0,1,3,4),('EST',0,1,2,3),('HKG',0,1,0,1),('IND',0,1,0,1),('PAR',0,1,0,1),('COL',0,0,2,2),('NGR',0,0,2,2),('VEN',0,0,2,2),('SYR',0,0,1,1),('TTO',0,0,1,1),('ERI',0,0,1,1),('MGL',0,0,1,1);
/*!40000 ALTER TABLE `athens_2004` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atlanta_1996`
--

DROP TABLE IF EXISTS `atlanta_1996`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atlanta_1996` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atlanta_1996`
--

LOCK TABLES `atlanta_1996` WRITE;
/*!40000 ALTER TABLE `atlanta_1996` DISABLE KEYS */;
INSERT INTO `atlanta_1996` VALUES ('USA',44,32,25,101),('RUS',26,21,16,63),('GER',20,18,27,65),('CHN',16,22,12,50),('FRA',15,7,15,37),('ITA',13,10,12,35),('AUS',9,9,23,41),('CUB',9,8,8,25),('UKR',9,2,12,23),('KOR',7,15,5,27),('POL',7,5,5,17),('HUN',7,4,10,21),('ESP',5,6,6,17),('ROU',4,7,9,20),('NED',4,5,10,19),('GRE',4,4,0,8),('CZE',4,3,4,11),('SUI',4,3,0,7),('DEN',4,1,1,6),('TUR',4,1,1,6),('CAN',3,11,8,22),('BUL',3,7,5,15),('JPN',3,6,5,14),('KAZ',3,4,4,11),('BRA',3,3,9,15),('NZL',3,2,1,6),('RSA',3,1,1,5),('IRL',3,0,1,4),('SWE',2,4,2,8),('NOR',2,2,3,7),('BEL',2,2,2,6),('NGR',2,1,3,6),('PRK',2,1,2,5),('ETH',2,0,1,3),('ALG',2,0,1,3),('GBR',1,8,6,15),('BLR',1,6,8,15),('KEN',1,4,3,8),('JAM',1,3,2,6),('FIN',1,2,1,4),('YUG',1,1,2,4),('INA',1,1,2,4),('SVK',1,1,1,3),('IRI',1,1,1,3),('CRO',1,1,0,2),('ARM',1,1,0,2),('POR',1,0,1,2),('THA',1,0,1,2),('HKG',1,0,0,1),('CRC',1,0,0,1),('BDI',1,0,0,1),('SYR',1,0,0,1),('ECU',1,0,0,1),('ARG',0,2,1,3),('SLO',0,2,0,2),('NAM',0,2,0,2),('AUT',0,1,2,3),('UZB',0,1,1,2),('MAS',0,1,1,2),('MDA',0,1,1,2),('PHI',0,1,0,1),('BAH',0,1,0,1),('ZAM',0,1,0,1),('AZE',0,1,0,1),('LAT',0,1,0,1),('TPE',0,1,0,1),('TGA',0,1,0,1),('GEO',0,0,2,2),('TTO',0,0,2,2),('MAR',0,0,2,2),('TUN',0,0,1,1),('UGA',0,0,1,1),('LTU',0,0,1,1),('MEX',0,0,1,1),('MGL',0,0,1,1),('IND',0,0,1,1),('MOZ',0,0,1,1),('PUR',0,0,1,1);
/*!40000 ALTER TABLE `atlanta_1996` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beijing_2008`
--

DROP TABLE IF EXISTS `beijing_2008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beijing_2008` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing_2008`
--

LOCK TABLES `beijing_2008` WRITE;
/*!40000 ALTER TABLE `beijing_2008` DISABLE KEYS */;
INSERT INTO `beijing_2008` VALUES ('AFG',0,0,1,1),('ALG',0,1,1,2),('ARG',2,0,4,6),('ARM',0,1,4,5),('AUS',14,15,17,46),('AUT',0,1,2,3),('AZE',1,1,4,6),('BAH',0,1,1,2),('BLR',3,4,7,14),('BEL',2,0,0,2),('BRA',3,4,10,17),('BUL',1,1,3,5),('CMR',1,0,0,1),('CAN',3,9,8,20),('CHI',0,1,0,1),('TPE',1,1,2,4),('COL',0,2,1,3),('CRO',0,2,3,5),('CUB',3,10,17,30),('CZE',3,3,1,7),('PRK',2,2,2,6),('DEN',2,2,3,7),('DOM',1,1,0,2),('ECU',0,1,0,1),('EGY',0,0,2,2),('EST',1,1,0,2),('ETH',4,2,1,7),('FIN',1,1,2,4),('FRA',7,16,20,43),('GEO',3,2,2,7),('GER',16,11,14,41),('GBR',19,13,19,51),('GRE',0,2,1,3),('HUN',3,5,2,10),('ISL',0,1,0,1),('IND',1,0,2,3),('INA',1,1,4,6),('IRL',0,1,2,3),('IRI',1,0,1,2),('ISR',0,0,1,1),('ITA',8,9,10,27),('JAM',5,4,2,11),('JPN',9,8,8,25),('KAZ',2,3,4,9),('KEN',6,4,6,16),('KGZ',0,1,2,3),('LAT',1,1,1,3),('LTU',0,3,2,5),('MAS',0,1,0,1),('MRI',0,0,1,1),('MEX',2,0,2,4),('MGL',2,2,0,4),('MAR',0,1,1,2),('NED',7,5,4,16),('NZL',3,2,4,9),('NGR',0,3,2,5),('NOR',3,5,1,9),('PAN',1,0,0,1),('CHN',48,22,30,100),('POL',4,5,2,11),('POR',1,1,0,2),('KOR',13,11,8,32),('MDA',0,0,1,1),('ROU',4,1,4,9),('RUS',24,13,23,60),('SAM',0,1,0,1),('SRB',0,1,2,3),('SGP',0,1,0,1),('SVK',3,3,0,6),('SLO',1,2,2,5),('RSA',0,1,0,1),('ESP',5,11,3,19),('SUD',0,1,0,1),('SWE',0,4,1,5),('SUI',2,1,4,7),('TJK',0,1,1,2),('THA',2,2,2,6),('TOG',0,0,1,1),('TTO',1,1,0,2),('TUN',1,0,0,1),('TUR',1,1,3,5),('UKR',7,4,11,22),('USA',36,39,37,112),('UZB',0,1,3,4),('VEN',0,0,1,1),('VIE',0,1,0,1),('ZIM',1,3,0,4);
/*!40000 ALTER TABLE `beijing_2008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beijing_2022`
--

DROP TABLE IF EXISTS `beijing_2022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beijing_2022` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing_2022`
--

LOCK TABLES `beijing_2022` WRITE;
/*!40000 ALTER TABLE `beijing_2022` DISABLE KEYS */;
INSERT INTO `beijing_2022` VALUES ('NOR',16,8,13,37),('GER',12,10,5,27),('USA',8,10,7,25),('CHN',9,4,2,15),('SWE',8,5,5,18),('NED',8,5,4,17),('AUT',7,7,4,18),('SUI',7,2,6,15),('ROC',6,12,14,32),('FRA',5,7,2,14),('CAN',4,8,14,26),('JPN',3,6,9,18),('ITA',2,7,8,17),('KOR',2,5,2,9),('SLO',2,3,2,7),('FIN',2,2,4,8),('NZL',2,1,0,3),('AUS',1,2,1,4),('GBR',1,1,0,2),('HUN',1,0,2,3),('CZE',1,0,1,2),('SVK',1,0,1,2),('BLR',0,2,0,2),('ESP',0,1,0,1),('UKR',0,1,0,1),('BEL',0,1,0,1),('EST',0,0,1,1),('LVA',0,0,1,1),('POL',0,0,1,1);
/*!40000 ALTER TABLE `beijing_2022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lillehammer_1994`
--

DROP TABLE IF EXISTS `lillehammer_1994`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lillehammer_1994` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lillehammer_1994`
--

LOCK TABLES `lillehammer_1994` WRITE;
/*!40000 ALTER TABLE `lillehammer_1994` DISABLE KEYS */;
INSERT INTO `lillehammer_1994` VALUES ('RUS',11,8,4,23),('NOR',10,11,5,26),('GER',9,7,8,24),('ITA',7,5,8,20),('USA',6,5,2,13),('KOR',4,1,1,6),('CAN',3,6,4,13),('SUI',3,4,2,9),('AUT',2,3,4,9),('SWE',2,1,0,3),('JPN',1,2,2,5),('KAZ',1,2,0,3),('UKR',1,0,1,2),('UZB',1,0,0,1),('BLR',0,2,0,2),('FIN',0,1,5,6),('FRA',0,1,4,5),('NED',0,1,3,4),('CHN',0,1,2,3),('SLO',0,0,3,3),('GBR',0,0,2,2),('AUS',0,0,1,1);
/*!40000 ALTER TABLE `lillehammer_1994` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `london_2012`
--

DROP TABLE IF EXISTS `london_2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `london_2012` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `london_2012`
--

LOCK TABLES `london_2012` WRITE;
/*!40000 ALTER TABLE `london_2012` DISABLE KEYS */;
INSERT INTO `london_2012` VALUES ('USA',48,26,30,104),('CHN',39,31,22,92),('GBR',29,18,18,65),('RUS',18,21,26,65),('KOR',13,9,9,31),('GER',11,20,13,44),('FRA',11,11,13,35),('AUS',8,15,12,35),('ITA',8,9,11,28),('HUN',8,4,6,18),('JPN',7,14,17,38),('IRI',7,5,1,13),('NED',6,6,8,20),('NZL',6,2,5,13),('UKR',5,4,10,19),('CUB',5,3,7,15),('ESP',4,10,6,20),('JAM',4,5,4,13),('CZE',4,4,3,11),('RSA',4,1,1,6),('PRK',4,0,3,7),('BRA',3,5,9,17),('KAZ',3,2,6,11),('POL',3,2,6,11),('ETH',3,2,3,8),('CRO',3,1,2,6),('CAN',2,6,10,18),('BLR',2,5,3,10),('KEN',2,4,7,13),('DEN',2,4,3,9),('ROU',2,4,1,7),('AZE',2,2,5,9),('SUI',2,2,0,4),('NOR',2,1,1,4),('LTU',2,0,3,5),('TUN',2,0,1,3),('SWE',1,4,3,8),('COL',1,3,5,9),('MEX',1,3,4,8),('GEO',1,2,3,6),('IRL',1,1,4,6),('ARG',1,1,2,4),('SLO',1,1,2,4),('TTO',1,1,2,4),('SRB',1,1,2,4),('TUR',1,1,1,3),('DOM',1,1,0,2),('TPE',1,0,1,2),('LAT',1,0,1,2),('BAH',1,0,0,1),('ALG',1,0,0,1),('GRN',1,0,0,1),('VEN',1,0,0,1),('BRN',1,0,0,1),('UGA',1,0,0,1),('EGY',0,3,1,4),('IND',0,2,4,6),('MGL',0,2,3,5),('THA',0,2,2,4),('INA',0,2,1,3),('BUL',0,2,1,3),('FIN',0,2,1,3),('SVK',0,1,3,4),('BEL',0,1,2,3),('MAS',0,1,1,2),('QAT',0,1,1,2),('ARM',0,1,1,2),('EST',0,1,1,2),('PUR',0,1,1,2),('GUA',0,1,0,1),('CYP',0,1,0,1),('BOT',0,1,0,1),('POR',0,1,0,1),('MNE',0,1,0,1),('GAB',0,1,0,1),('UZB',0,0,3,3),('SIN',0,0,2,2),('GRE',0,0,2,2),('VIE',0,0,1,1),('MAR',0,0,1,1),('TJK',0,0,1,1),('KUW',0,0,1,1),('HKG',0,0,1,1),('CMR',0,0,1,1),('KSA',0,0,1,1),('AFG',0,0,1,1);
/*!40000 ALTER TABLE `london_2012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nagano_1998`
--

DROP TABLE IF EXISTS `nagano_1998`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nagano_1998` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nagano_1998`
--

LOCK TABLES `nagano_1998` WRITE;
/*!40000 ALTER TABLE `nagano_1998` DISABLE KEYS */;
INSERT INTO `nagano_1998` VALUES ('GER',12,9,8,29),('NOR',10,10,5,25),('RUS',9,6,3,18),('CAN',6,5,4,15),('USA',6,3,4,13),('NED',5,4,2,11),('JPN',5,1,4,10),('AUT',3,5,9,17),('KOR',3,1,2,6),('ITA',2,6,2,10),('FIN',2,4,6,12),('SUI',2,2,3,7),('FRA',2,1,5,8),('CZE',1,1,1,3),('BUL',1,0,0,1),('CHN',0,6,2,8),('SWE',0,2,1,3),('DEN',0,1,0,1),('UKR',0,1,0,1),('KAZ',0,0,2,2),('BLR',0,0,2,2),('GBR',0,0,1,1),('BEL',0,0,1,1),('AUS',0,0,1,1);
/*!40000 ALTER TABLE `nagano_1998` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paris_2024`
--

DROP TABLE IF EXISTS `paris_2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paris_2024` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paris_2024`
--

LOCK TABLES `paris_2024` WRITE;
/*!40000 ALTER TABLE `paris_2024` DISABLE KEYS */;
INSERT INTO `paris_2024` VALUES ('USA',40,44,42,126),('CHN',40,27,24,91),('JPN',20,12,13,45),('AUS',18,19,16,53),('FRA',16,26,22,64),('NED',15,7,12,34),('GBR',14,22,29,65),('KOR',13,9,10,32),('ITA',12,13,15,40),('GER',12,13,8,33),('NZL',10,7,3,20),('CAN',9,7,11,27),('UZB',8,2,3,13),('HUN',6,7,6,19),('ESP',5,4,9,18),('SWE',4,4,3,11),('KEN',4,2,5,11),('NOR',4,1,3,8),('IRL',4,0,3,7),('BRA',3,7,10,20),('IRI',3,6,3,12),('UKR',3,5,4,12),('ROU',3,4,2,9),('GEO',3,3,1,7),('BEL',3,1,6,10),('BUL',3,1,3,7),('SRB',3,1,1,5),('CZE',3,0,2,5),('DEN',2,2,5,9),('CRO',2,2,3,7),('AZE',2,2,3,7),('CUB',2,1,6,9),('BRN',2,1,1,4),('SLO',2,1,0,3),('TPE',2,0,5,7),('AUT',2,0,3,5),('PHI',2,0,2,4),('HKG',2,0,2,4),('INA',2,0,1,3),('ALG',2,0,1,3),('ISR',1,5,1,7),('POL',1,4,5,10),('KAZ',1,3,3,7),('JAM',1,3,2,6),('THA',1,3,2,6),('RSA',1,3,2,6),('AIN',1,3,1,5),('ETH',1,3,0,4),('SUI',1,2,5,8),('ECU',1,2,2,5),('POR',1,2,1,4),('GRE',1,1,6,8),('ARG',1,1,1,3),('EGY',1,1,1,3),('TUN',1,1,1,3),('LCA',1,1,0,2),('CHI',1,1,0,2),('UGA',1,1,0,2),('BOT',1,1,0,2),('DOM',1,0,1,2),('MAR',1,0,1,2),('PAK',1,0,0,1),('DMA',1,0,0,1),('TUR',0,3,5,8),('MEX',0,3,2,5),('COL',0,3,1,4),('ARM',0,3,1,4),('PRK',0,2,4,6),('KGZ',0,2,4,6),('LTU',0,2,2,4),('IND',0,1,5,6),('MDA',0,1,3,4),('KOS',0,1,1,2),('PAN',0,1,0,1),('JOR',0,1,0,1),('CYP',0,1,0,1),('MGL',0,1,0,1),('FIJ',0,1,0,1),('TJK',0,0,3,3),('ALB',0,0,2,2),('GRN',0,0,2,2),('PUR',0,0,2,2),('MAS',0,0,2,2),('CPV',0,0,1,1),('QAT',0,0,1,1),('ZAM',0,0,1,1),('SIN',0,0,1,1),('CIV',0,0,1,1),('ROT',0,0,1,1),('PER',0,0,1,1),('SVK',0,0,1,1);
/*!40000 ALTER TABLE `paris_2024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pyeongchang_2018`
--

DROP TABLE IF EXISTS `pyeongchang_2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pyeongchang_2018` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pyeongchang_2018`
--

LOCK TABLES `pyeongchang_2018` WRITE;
/*!40000 ALTER TABLE `pyeongchang_2018` DISABLE KEYS */;
INSERT INTO `pyeongchang_2018` VALUES ('NOR',14,14,11,39),('GER',14,10,7,31),('CAN',11,8,10,29),('USA',9,8,6,23),('NED',8,6,6,20),('SWE',7,6,1,14),('KOR',5,8,4,17),('SUI',5,6,4,15),('FRA',5,4,6,15),('AUT',5,3,6,14),('JPN',4,5,4,13),('ITA',3,2,5,10),('OAR',2,6,9,17),('CZE',2,2,3,7),('BLR',2,1,0,3),('CHN',1,6,2,9),('SVK',1,2,0,3),('FIN',1,1,4,6),('GBR',1,0,4,5),('POL',1,0,1,2),('UKR',1,0,0,1),('HUN',1,0,0,1),('AUS',0,2,1,3),('SLO',0,1,1,2),('BEL',0,1,0,1),('NZL',0,0,2,2),('ESP',0,0,2,2),('KAZ',0,0,1,1),('LIE',0,0,1,1),('LAT',0,0,1,1);
/*!40000 ALTER TABLE `pyeongchang_2018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rio_2016`
--

DROP TABLE IF EXISTS `rio_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rio_2016` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rio_2016`
--

LOCK TABLES `rio_2016` WRITE;
/*!40000 ALTER TABLE `rio_2016` DISABLE KEYS */;
INSERT INTO `rio_2016` VALUES ('USA',46,37,38,121),('GBR',27,23,17,67),('CHN',26,18,26,70),('RUS',19,17,20,56),('GER',17,10,15,42),('JPN',12,8,21,41),('FRA',10,18,14,42),('KOR',9,3,9,21),('ITA',8,12,8,28),('AUS',8,11,10,29),('NED',8,7,4,19),('HUN',8,3,4,15),('BRA',7,6,6,19),('ESP',7,4,6,17),('KEN',6,6,1,13),('JAM',6,3,2,11),('CRO',5,3,2,10),('CUB',5,2,4,11),('NZL',4,9,5,18),('CAN',4,3,15,22),('UZB',4,2,7,13),('COL',3,2,3,8),('SUI',3,2,2,7),('IRI',3,1,4,8),('GRE',3,1,2,6),('ARG',3,1,0,4),('DEN',2,6,7,15),('SWE',2,6,3,11),('RSA',2,6,2,10),('KAZ',2,5,10,17),('UKR',2,5,4,11),('SRB',2,4,2,8),('POL',2,3,6,11),('PRK',2,3,2,7),('BEL',2,2,2,6),('THA',2,2,2,6),('SVK',2,2,0,4),('GEO',2,1,4,7),('AZE',1,7,10,18),('BLR',1,4,4,9),('TUR',1,3,4,8),('ARM',1,3,0,4),('CZE',1,2,7,10),('ETH',1,2,5,8),('SLO',1,2,1,4),('INA',1,2,0,3),('ROU',1,1,2,4),('BRN',1,1,0,2),('VIE',1,1,0,2),('TPE',1,0,2,3),('IOA',1,0,1,2),('BAH',1,0,1,2),('CIV',1,0,1,2),('KOS',1,0,0,1),('TJK',1,0,0,1),('FIJ',1,0,0,1),('JOR',1,0,0,1),('PUR',1,0,0,1),('SIN',1,0,0,1),('MAS',0,4,1,5),('MEX',0,3,2,5),('VEN',0,2,1,3),('ALG',0,2,0,2),('IRL',0,2,0,2),('LTU',0,1,3,4),('BUL',0,1,2,3),('MGL',0,1,1,2),('IND',0,1,1,2),('NIG',0,1,0,1),('PHI',0,1,0,1),('QAT',0,1,0,1),('BDI',0,1,0,1),('GRN',0,1,0,1),('NOR',0,0,4,4),('EGY',0,0,3,3),('TUN',0,0,3,3),('NGR',0,0,1,1),('DOM',0,0,1,1),('EST',0,0,1,1),('TTO',0,0,1,1),('UAE',0,0,1,1),('AUT',0,0,1,1),('POR',0,0,1,1),('FIN',0,0,1,1),('MAR',0,0,1,1);
/*!40000 ALTER TABLE `rio_2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saltlakecity_2002`
--

DROP TABLE IF EXISTS `saltlakecity_2002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saltlakecity_2002` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saltlakecity_2002`
--

LOCK TABLES `saltlakecity_2002` WRITE;
/*!40000 ALTER TABLE `saltlakecity_2002` DISABLE KEYS */;
INSERT INTO `saltlakecity_2002` VALUES ('NOR',13,5,7,25),('GER',12,16,8,36),('USA',10,13,11,34),('CAN',7,3,7,17),('RUS',5,4,4,13),('FRA',4,5,2,11),('ITA',4,4,5,13),('FIN',4,2,1,7),('NED',3,5,0,8),('AUT',3,4,10,17),('SUI',3,2,6,11),('CRO',3,1,0,4),('CHN',2,2,4,8),('KOR',2,2,0,4),('AUS',2,0,0,2),('CZE',1,2,0,3),('EST',1,1,1,3),('GBR',1,0,1,2),('SWE',0,2,5,7),('BUL',0,1,2,3),('POL',0,1,1,2),('JPN',0,1,1,2),('BLR',0,0,1,1),('SLO',0,0,1,1);
/*!40000 ALTER TABLE `saltlakecity_2002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sochi_2014`
--

DROP TABLE IF EXISTS `sochi_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sochi_2014` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sochi_2014`
--

LOCK TABLES `sochi_2014` WRITE;
/*!40000 ALTER TABLE `sochi_2014` DISABLE KEYS */;
INSERT INTO `sochi_2014` VALUES ('RUS',11,9,9,29),('NOR',11,6,9,26),('CAN',10,10,5,25),('USA',9,9,10,28),('NED',8,7,9,24),('GER',8,6,5,19),('SUI',7,2,2,11),('BLR',5,0,1,6),('AUT',4,8,5,17),('FRA',4,4,7,15),('POL',4,1,1,6),('CHN',3,4,2,9),('KOR',3,3,2,8),('SWE',2,7,6,15),('CZE',2,4,3,9),('SLO',2,2,4,8),('JPN',1,4,3,8),('FIN',1,3,1,5),('GBR',1,1,3,5),('LAT',1,1,3,5),('UKR',1,1,0,2),('SVK',1,0,0,1),('ITA',0,2,7,9),('AUS',0,2,1,3),('CRO',0,1,0,1),('KAZ',0,0,1,1);
/*!40000 ALTER TABLE `sochi_2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sydney_2000`
--

DROP TABLE IF EXISTS `sydney_2000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sydney_2000` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sydney_2000`
--

LOCK TABLES `sydney_2000` WRITE;
/*!40000 ALTER TABLE `sydney_2000` DISABLE KEYS */;
INSERT INTO `sydney_2000` VALUES ('USA',37,24,32,93),('RUS',32,28,29,89),('CHN',28,16,14,58),('AUS',16,25,17,58),('GER',13,17,26,56),('FRA',13,14,11,38),('ITA',13,8,13,34),('NED',12,9,4,25),('CUB',11,11,7,29),('GBR',11,10,7,28),('ROU',11,6,9,26),('KOR',8,10,10,28),('HUN',8,6,3,17),('POL',6,5,3,14),('JPN',5,8,5,18),('BUL',5,6,2,13),('GRE',4,6,3,13),('SWE',4,5,3,12),('NOR',4,3,3,10),('ETH',4,1,3,8),('UKR',3,10,10,23),('KAZ',3,4,0,7),('BLR',3,3,11,17),('CAN',3,3,8,14),('ESP',3,3,5,11),('TUR',3,0,2,5),('IRI',3,0,1,4),('CZE',2,3,3,8),('KEN',2,3,2,7),('DEN',2,3,1,6),('FIN',2,1,1,4),('AUT',2,1,0,3),('LTU',2,0,3,5),('BAH',2,0,1,3),('AZE',2,0,1,3),('SLO',2,0,0,2),('SUI',1,6,2,9),('INA',1,3,2,6),('SVK',1,3,1,5),('MEX',1,2,3,6),('NGR',1,2,0,3),('ALG',1,1,3,5),('UZB',1,1,2,4),('YUG',1,1,1,3),('LAT',1,1,1,3),('NZL',1,0,3,4),('THA',1,0,2,3),('EST',1,0,2,3),('CRO',1,0,1,2),('CMR',1,0,0,1),('COL',1,0,0,1),('MOZ',1,0,0,1),('BRA',0,6,6,12),('JAM',0,6,3,9),('BEL',0,2,3,5),('RSA',0,2,3,5),('ARG',0,2,2,4),('MAR',0,1,4,5),('TPE',0,1,4,5),('PRK',0,1,3,4),('TTO',0,1,1,2),('KSA',0,1,1,2),('MDA',0,1,1,2),('URU',0,1,0,1),('VIE',0,1,0,1),('IRL',0,1,0,1),('SRI',0,1,0,1),('GEO',0,0,6,6),('CRC',0,0,2,2),('POR',0,0,2,2),('BAR',0,0,1,1),('QAT',0,0,1,1),('KGZ',0,0,1,1),('IND',0,0,1,1),('ARM',0,0,1,1),('KUW',0,0,1,1),('MKD',0,0,1,1),('CHI',0,0,1,1),('ISL',0,0,1,1);
/*!40000 ALTER TABLE `sydney_2000` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokyo_2020`
--

DROP TABLE IF EXISTS `tokyo_2020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokyo_2020` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokyo_2020`
--

LOCK TABLES `tokyo_2020` WRITE;
/*!40000 ALTER TABLE `tokyo_2020` DISABLE KEYS */;
INSERT INTO `tokyo_2020` VALUES ('USA',39,41,33,113),('CHN',38,32,19,89),('JPN',27,14,17,58),('GBR',22,20,22,64),('ROC',20,28,23,71),('AUS',17,7,22,46),('NED',10,12,14,36),('FRA',10,12,11,33),('GER',10,11,16,37),('ITA',10,10,20,40),('CAN',7,7,10,24),('BRA',7,6,8,21),('NZL',7,6,7,20),('CUB',7,3,5,15),('HUN',6,7,7,20),('KOR',6,4,10,20),('POL',4,5,5,14),('CZE',4,4,3,11),('KEN',4,4,2,10),('NOR',4,2,2,8),('JAM',4,1,4,9),('ESP',3,8,6,17),('SWE',3,6,0,9),('SUI',3,4,6,13),('DEN',3,4,4,11),('CRO',3,3,2,8),('IRI',3,2,2,7),('SRB',3,1,5,9),('BEL',3,1,3,7),('BUL',3,1,2,6),('SLO',3,1,1,5),('UZB',3,0,2,5),('GEO',2,5,1,8),('TPE',2,4,6,12),('TUR',2,2,9,13),('UGA',2,1,1,4),('GRE',2,1,1,4),('ECU',2,1,0,3),('IRL',2,0,2,4),('QAT',2,0,1,3),('BAH',2,0,0,2),('KOS',2,0,0,2),('UKR',1,6,12,19),('BLR',1,3,3,7),('ROU',1,3,0,4),('VEN',1,3,0,4),('IND',1,2,4,7),('HKG',1,2,3,6),('SVK',1,2,1,4),('PHI',1,2,1,4),('RSA',1,2,0,3),('AUT',1,1,5,7),('EGY',1,1,4,6),('INA',1,1,3,5),('ETH',1,1,2,4),('POR',1,1,2,4),('TUN',1,1,0,2),('EST',1,0,1,2),('FIJ',1,0,1,2),('THA',1,0,1,2),('LAT',1,0,1,2),('BER',1,0,0,1),('PUR',1,0,0,1),('MAR',1,0,0,1),('COL',0,4,1,5),('AZE',0,3,4,7),('DOM',0,3,2,5),('ARM',0,2,2,4),('KGZ',0,2,1,3),('MGL',0,1,3,4),('SMR',0,1,2,3),('ARG',0,1,2,3),('JOR',0,1,1,2),('MAS',0,1,1,2),('NGR',0,1,1,2),('MKD',0,1,0,1),('NAM',0,1,0,1),('LTU',0,1,0,1),('TKM',0,1,0,1),('KSA',0,1,0,1),('BRN',0,1,0,1),('KAZ',0,0,8,8),('MEX',0,0,4,4),('FIN',0,0,2,2),('BUR',0,0,1,1),('SYR',0,0,1,1),('GRN',0,0,1,1),('MDA',0,0,1,1),('CIV',0,0,1,1),('BOT',0,0,1,1),('GHA',0,0,1,1),('KUW',0,0,1,1);
/*!40000 ALTER TABLE `tokyo_2020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torino_2006`
--

DROP TABLE IF EXISTS `torino_2006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torino_2006` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torino_2006`
--

LOCK TABLES `torino_2006` WRITE;
/*!40000 ALTER TABLE `torino_2006` DISABLE KEYS */;
INSERT INTO `torino_2006` VALUES ('GER',11,12,6,29),('USA',9,9,7,25),('AUT',9,7,7,23),('RUS',8,6,8,22),('CAN',7,10,7,24),('SWE',7,2,5,14),('KOR',6,3,2,11),('SUI',5,4,5,14),('ITA',5,0,6,11),('FRA',3,2,4,9),('NED',3,2,4,9),('EST',3,0,0,3),('NOR',2,8,9,19),('CHN',2,4,5,11),('CZE',1,2,1,4),('CRO',1,2,0,3),('AUS',1,0,1,2),('JPN',1,0,0,1),('FIN',0,6,3,9),('POL',0,1,1,2),('BLR',0,1,0,1),('GBR',0,1,0,1),('BUL',0,1,0,1),('SVK',0,1,0,1),('UKR',0,0,2,2),('LAT',0,0,1,1);
/*!40000 ALTER TABLE `torino_2006` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vancouver_2010`
--

DROP TABLE IF EXISTS `vancouver_2010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vancouver_2010` (
  `NOC` text,
  `Gold` int DEFAULT NULL,
  `Silver` int DEFAULT NULL,
  `Bronze` int DEFAULT NULL,
  `Total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vancouver_2010`
--

LOCK TABLES `vancouver_2010` WRITE;
/*!40000 ALTER TABLE `vancouver_2010` DISABLE KEYS */;
INSERT INTO `vancouver_2010` VALUES ('CAN',14,7,5,26),('GER',10,13,7,30),('USA',9,15,13,37),('NOR',9,8,6,23),('KOR',6,6,2,14),('SUI',6,0,3,9),('CHN',5,2,4,11),('SWE',5,2,4,11),('AUT',4,6,6,16),('NED',4,1,3,8),('RUS',3,5,7,15),('FRA',2,3,6,11),('AUS',2,1,0,3),('CZE',2,0,4,6),('POL',1,3,2,6),('ITA',1,1,3,5),('BLR',1,1,1,3),('SVK',1,1,1,3),('GBR',1,0,0,1),('JPN',0,3,2,5),('SLO',0,2,1,3),('CRO',0,2,1,3),('LAT',0,2,0,2),('FIN',0,1,4,5),('KAZ',0,1,0,1),('EST',0,1,0,1);
/*!40000 ALTER TABLE `vancouver_2010` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 13:09:14
