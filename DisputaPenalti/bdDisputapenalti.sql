CREATE DATABASE `penaltyleague` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- penaltyleague.chute definition

CREATE TABLE `chute` (
  `idChute` int NOT NULL,
  `descChute` varchar(100) DEFAULT NULL,
  `ptChute` int DEFAULT NULL,
  PRIMARY KEY (`idChute`),
  UNIQUE KEY `idChute_UNIQUE` (`idChute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- penaltyleague.pontuacao definition

CREATE TABLE `pontuacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playername` varchar(45) NOT NULL,
  `chute` int NOT NULL,
  `nChute` int DEFAULT NULL,
  PRIMARY KEY (`id`,`playername`,`chute`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `c1_idx` (`chute`),
  CONSTRAINT `jogador_chute` FOREIGN KEY (`chute`) REFERENCES `chute` (`idChute`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;