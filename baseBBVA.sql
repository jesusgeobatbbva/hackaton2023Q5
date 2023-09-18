CREATE DATABASE  IF NOT EXISTS `test1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test1`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `id` varchar(24) NOT NULL,
  `user` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES ('BBVA10','TEST','gAAAAABlCMUnzlh1oOXPlzDs93X4V95ie-OpnxXz09ONy-H8-JQv2AJh2UTuuweluj8E88_uJnb8ns6FttG2p9adcWfADwgz7g==',3900),('BBVA2001','RODRIGO IGLESAS','gAAAAABlCMi1FXccC9aasgWo3s5l8TZCt6H1U1exLFhxcj8Tj5nA4VXzhlq5SELtqfEPYX8KSS5TYThYdFWlnl8LGd6dLDHdTQ==',2800),('BBVA20045','BBVA20045','gAAAAABlCMk8E_J7vjfXntI5t_VTDFg_ov92YkGTskZoNwSh1eqvA93F5xVoX1P19H2fADb50RIHoNKX1N8riAbD-WqVjk-YyQ==',2400),('BBVA2836','BBVA2836','gAAAAABlCMMcFLT0yGSF1xA0Gex0a4sqcARRI14mDkRYSJ_dz7nvePXMfsxjq2_O7mGQ52W4iLhwNVP2WSc0cP9On85Q-uOgqw==',780),('BBVA999','USER999','gAAAAABlCMo0sRQeH2os5dMNlhrIIQPaJ3THPRRQXipUQ-K79PdQMd4qY28GQkzStmPEWEyfZ82uEHJkqfeYSnHHG6p-yxdt3A==',2000);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `idTransaccion` int NOT NULL AUTO_INCREMENT,
  `idCuenta` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (55,'BBVA76786','Ingreso',600,'2023-09-18 14:47:55'),(56,'BBVA76786','Retiro',-300,'2023-09-18 14:48:03'),(57,'BBVA76786','Transferencia',-200,'2023-09-18 14:48:11'),(60,'BBVA20045','Ingreso',200,'2023-09-18 16:03:58'),(61,'BBVA20045','Retiro',-100,'2023-09-18 16:04:08'),(62,'BBVA20045','Transferencia',-500,'2023-09-18 16:04:22'),(64,'BBVA20045','Transferencia',-200,'2023-09-18 16:04:51'),(65,'BBVA10','Transferencia',200,'2023-09-18 16:04:51'),(66,'BBVA999','Ingreso',30,'2023-09-18 16:08:03'),(67,'BBVA999','Retiro',-100,'2023-09-18 16:08:09'),(68,'BBVA999','Transferencia',-900,'2023-09-18 16:08:25'),(69,'BBVA10','Transferencia',900,'2023-09-18 16:08:25');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 16:10:56
