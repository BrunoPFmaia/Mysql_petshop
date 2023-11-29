-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_contato` int NOT NULL,
  `ID_endereco` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `genero` varchar(25) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ID_contato` (`ID_contato`),
  KEY `FK_ID_endereco` (`ID_endereco`),
  CONSTRAINT `FK_ID_contato` FOREIGN KEY (`ID_contato`) REFERENCES `contato` (`ID`),
  CONSTRAINT `FK_ID_endereco` FOREIGN KEY (`ID_endereco`) REFERENCES `endereco` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,1,'Jorge verissimo','masculino','111-222-333-00'),(2,2,2,'Amaru Lopez','Feminino','000-000-000-11'),(3,3,3,'Leonardo Cabral','masculino','999-999-222-77'),(4,4,4,'Maria Antonieta','feminino','888-888-111-55'),(5,5,5,'Toji fushiguro','masculino','666-666-111-99');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'83988888888'),(2,'83977777777'),(3,'83911111111'),(4,'83922222222'),(5,'83966666666');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(25) NOT NULL,
  `numero` int NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'mar gelado',20,'Cabedelo','intermares'),(2,'cabo frio',13,'Cabedelo','intermares'),(3,'mar caspio',111,'Cabedelo','intermares'),(4,'oceano atlantico',200,'Cabedelo','intermares'),(5,'Alemao',777,'Joao pessoa','Bessa');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(20) NOT NULL,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'7777777777','Romulo Pires'),(2,'8888888888','Lolita Mota'),(3,'9999999999','Leoncio Trajano'),(4,'1111111111','Cleo Nunez');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Rebeca Sobrado','feminino','atendente',1800.00),(2,'Pedro Maluf','masculino','atendente',1800.00),(3,'Paula Sobrando','feminino','tosadora',2500.00),(4,'Luan Pereira','masculino','zelador',1300.00),(5,'Mario Silva','maculino','veterinario',3500.00),(6,'leonardo Cavalcante','masculino','vendedor',1600.00),(7,'Clara Maia','feminino','vendedor',1600.00),(8,'Maria Aparecida','feminino','vendedora',1600.00);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_cliente` int NOT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `raca` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ID_cliente_pet` (`ID_cliente`),
  CONSTRAINT `fk_ID_cliente_pet` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (1,1,'Rex',5,'galgo Alemao'),(2,2,'Lucy',2,'Pastor'),(3,3,'Toby',1,'golden'),(4,3,'Luthor',8,'yorkshire'),(5,5,'Hulk',NULL,NULL);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_fornecedor` int NOT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(35) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `estoque` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ID_fornecedor` (`ID_fornecedor`),
  CONSTRAINT `FK_ID_fornecedor` FOREIGN KEY (`ID_fornecedor`) REFERENCES `fornecedor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'osso',NULL,20.00,100),(2,1,'coleira',NULL,25.00,12),(3,2,'colar',NULL,12.00,27),(4,3,'bolinha','bola de borracha Petz',15.00,32),(5,4,'racao','racao multivitaminica X',54.00,65),(6,2,'remedio pulgas','Solucao antipulgas y',21.00,10);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_funcionario` int NOT NULL,
  `ID_produto` int NOT NULL,
  `ID_cliente` int NOT NULL,
  `quantidade_produto` int DEFAULT '0',
  `servico` decimal(7,2) DEFAULT '0.00',
  `valor_total` decimal(10,2) DEFAULT NULL,
  `forma_pagamento` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ID_funcionario` (`ID_funcionario`),
  KEY `FK_ID_produto` (`ID_produto`),
  KEY `FK_ID_cliente_venda` (`ID_cliente`),
  CONSTRAINT `FK_ID_cliente_venda` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID`),
  CONSTRAINT `FK_ID_funcionario` FOREIGN KEY (`ID_funcionario`) REFERENCES `funcionario` (`ID`),
  CONSTRAINT `FK_ID_produto` FOREIGN KEY (`ID_produto`) REFERENCES `produto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,7,1,1,2,NULL,NULL,'debito'),(2,7,1,1,1,NULL,NULL,'a vista'),(3,6,2,2,3,NULL,NULL,'credito'),(4,6,3,2,3,25.00,61.00,'credito'),(5,7,4,3,4,10.00,70.00,'credito'),(6,8,4,4,7,NULL,NULL,'debito'),(7,8,5,5,1,15.00,69.00,'a vista');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_valor_total` BEFORE INSERT ON `venda` FOR EACH ROW set new.valor_total = (new.servico + new.quantidade_produto * (select valor from produto where ID = new.ID_produto)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16 19:46:55
