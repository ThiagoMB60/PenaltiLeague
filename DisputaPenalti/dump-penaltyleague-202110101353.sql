-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: penaltyleague
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chute`
--

DROP TABLE IF EXISTS `chute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chute` (
  `idChute` int NOT NULL,
  `descChute` varchar(100) DEFAULT NULL,
  `ptChute` int DEFAULT NULL,
  PRIMARY KEY (`idChute`),
  UNIQUE KEY `idChute_UNIQUE` (`idChute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chute`
--

LOCK TABLES `chute` WRITE;
/*!40000 ALTER TABLE `chute` DISABLE KEYS */;
INSERT INTO `chute` VALUES (1,'1 - Gol no ângulo: +10 pontos',10),(2,'2 - Gol no canto meia altura: +8 pontos',8),(3,'3 - Gol no canto rasteiro: +6 pontos',6),(4,'4 - Gol no meio: +4 pontos',4),(5,'5 - Acerto no travessão: +2 pontos',2),(6,'6 - Acerto na trave: +1 ponto',1),(7,'7 - Defesa do Goleiro: - 8 pontos',-8),(8,'8 - Chute pra fora: - 15 pontos',-15),(9,'9 - Acertou o Árbitro: - 30 pontos',-30);
/*!40000 ALTER TABLE `chute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pontuacao`
--

DROP TABLE IF EXISTS `pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pontuacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playername` varchar(45) NOT NULL,
  `chute` int NOT NULL,
  `nChute` int DEFAULT NULL,
  PRIMARY KEY (`id`,`playername`,`chute`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `c1_idx` (`chute`),
  CONSTRAINT `jogador_chute` FOREIGN KEY (`chute`) REFERENCES `chute` (`idChute`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pontuacao`
--

LOCK TABLES `pontuacao` WRITE;
/*!40000 ALTER TABLE `pontuacao` DISABLE KEYS */;
INSERT INTO `pontuacao` VALUES (41,'RETASD',4,1),(42,'RETASD',3,2),(43,'RETASD',3,3),(44,'RETASD',4,4),(45,'RETASD',1,5),(56,'TESTE 2',1,1),(57,'TESTE 2',9,2),(58,'TESTE 2',4,3),(59,'TESTE 2',4,4),(60,'TESTE 2',2,5),(61,'TESTE 3',3,1),(62,'TESTE 3',6,2),(63,'TESTE 3',6,3),(64,'TESTE 3',6,4),(65,'TESTE 3',6,5),(86,'ASMDAD',2,1),(87,'ASMDAD',8,2),(88,'ASMDAD',4,3),(89,'ASMDAD',5,4),(90,'ASMDAD',1,5),(96,'THIAGO',5,1),(97,'THIAGO',7,2),(98,'THIAGO',3,3),(99,'THIAGO',1,4),(100,'THIAGO',1,5),(106,'THIAGO 3',2,1),(107,'THIAGO 3',1,2),(108,'THIAGO 3',4,3),(109,'THIAGO 3',2,4),(110,'THIAGO 3',5,5),(121,'PI',8,1),(122,'PI',2,2),(123,'PI',2,3),(124,'PI',5,4),(125,'PI',7,5);
/*!40000 ALTER TABLE `pontuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'penaltyleague'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-10 13:53:41
