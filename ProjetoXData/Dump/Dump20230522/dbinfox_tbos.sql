-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dbinfox
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
-- Table structure for table `tbos`
--

DROP TABLE IF EXISTS `tbos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbos` (
  `os` int NOT NULL AUTO_INCREMENT,
  `data_os` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(15) NOT NULL,
  `situacao` varchar(30) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int NOT NULL,
  PRIMARY KEY (`os`),
  KEY `idcli` (`idcli`),
  CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbos`
--

LOCK TABLES `tbos` WRITE;
/*!40000 ALTER TABLE `tbos` DISABLE KEYS */;
INSERT INTO `tbos` VALUES (2,'2023-05-15 18:19:31','OS','Aguardando peças','Notebook Dell','Placa de Rede Queimada','Consertar placa','Rodrigo',219.99,2),(4,'2023-05-15 19:10:33','Orçamento','Abandonado pelo Cliente','MACBOOK PRO','ESQUENTA','CONSERTO DO COOLER','RODRIGO',0.00,1),(5,'2023-05-15 19:23:09','Orçamento','Orçamento REPROVADO','PC','NAO LIGA','','',0.00,2),(6,'2023-05-15 19:25:13','Orçamento','Entrega OK','assvdsdfg','sdfgdfg','dfgsdfgsdfgsdf','gsdfgsdfgsdfg',200.00,1),(7,'2023-05-15 19:28:14','Orçamento','Orçamento REPROVADO','FSDFGSDFSDF','SDFSDSDF','SDFSDF','SDFSDFSD',1000.00,2),(8,'2023-05-15 19:29:27','Orçamento','Aguardando peças','dfghdfghfgh','dfghdfghfdg','hdfghdfgh','fdghfghfgh',1500.00,1),(9,'2023-05-15 19:59:35','Orçamento','Orçamento REPROVADO','dsfsfsd','fsdfsdf','sdfsdf','sdfsdfsdf',300.00,7),(10,'2023-05-22 21:48:11','Orçamento','Aguardando peças','NOTEBOOK','MUITO RUIM','CONSERTO','LUCAS',800.99,7);
/*!40000 ALTER TABLE `tbos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 19:05:18
