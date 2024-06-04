-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: elaparato
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (-43,800,'producto de testeo','test franco edit',12),(-42,800,'producto de testeo','test franco',12),(1,10,'Lavadora de carga frontal con capacidad de 15 kg','Lavadora Samsung',1300),(2,5,'Refrigeradora de 3 puertas con capacidad de 25 pies cúbicos','Refrigeradora LG',1600),(3,15,'Televisor LED 4K de 55 pulgadas con Android TV','Televisor Sony',900),(4,7,'Horno eléctrico de acero inoxidable con capacidad de 6.4 pies cúbicos','Horno eléctrico Whirlpool',800),(5,20,'Aspiradora inalámbrica con tecnología Cyclone V10','Aspiradora Dyson',500);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_lista_ventas`
--

DROP TABLE IF EXISTS `producto_lista_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto_lista_ventas` (
  `lista_productos_id` int(11) NOT NULL,
  `lista_ventas_id_venta` int(11) NOT NULL,
  KEY `FK1fdtjo95u9dpdpw7hgasvdd8t` (`lista_ventas_id_venta`),
  KEY `FKovl0eysf05onnjdr1x1rowtfp` (`lista_productos_id`),
  CONSTRAINT `FK1fdtjo95u9dpdpw7hgasvdd8t` FOREIGN KEY (`lista_ventas_id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `FKovl0eysf05onnjdr1x1rowtfp` FOREIGN KEY (`lista_productos_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_lista_ventas`
--

LOCK TABLES `producto_lista_ventas` WRITE;
/*!40000 ALTER TABLE `producto_lista_ventas` DISABLE KEYS */;
INSERT INTO `producto_lista_ventas` VALUES (1,1),(2,1),(3,1),(1,2),(4,2),(2,3),(5,3),(3,3),(1,4),(2,4),(5,4),(3,5),(4,5);
/*!40000 ALTER TABLE `producto_lista_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_seq`
--

DROP TABLE IF EXISTS `producto_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_seq`
--

LOCK TABLES `producto_seq` WRITE;
/*!40000 ALTER TABLE `producto_seq` DISABLE KEYS */;
INSERT INTO `producto_seq` VALUES (56);
/*!40000 ALTER TABLE `producto_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (-43,'2023-01-16 00:00:00.000000'),(-42,'2023-01-16 00:00:00.000000'),(1,'2023-01-15 00:00:00.000000'),(2,'2023-02-05 00:00:00.000000'),(3,'2023-03-10 00:00:00.000000'),(4,'2023-04-20 00:00:00.000000'),(5,'2023-05-01 00:00:00.000000');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_seq`
--

DROP TABLE IF EXISTS `venta_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_seq`
--

LOCK TABLES `venta_seq` WRITE;
/*!40000 ALTER TABLE `venta_seq` DISABLE KEYS */;
INSERT INTO `venta_seq` VALUES (56);
/*!40000 ALTER TABLE `venta_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 20:20:34
