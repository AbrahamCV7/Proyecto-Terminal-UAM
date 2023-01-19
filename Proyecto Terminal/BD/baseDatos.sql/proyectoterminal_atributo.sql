-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectoterminal
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `atributo`
--

DROP TABLE IF EXISTS `atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atributo` (
  `id_atributo` varchar(3) NOT NULL,
  `atributo` text,
  PRIMARY KEY (`id_atributo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributo`
--

LOCK TABLES `atributo` WRITE;
/*!40000 ALTER TABLE `atributo` DISABLE KEYS */;
INSERT INTO `atributo` VALUES ('AE1','Identificar, formular y resolver problemas de ingeniería con base en los fundamentos de las ciencias básicas y los principios de la ingeniería'),('AE2','Aplicar fundamentos de ciencias básicas e ingeniería para analizar y desarrollar procesos de diseño de ingeniería que resulten en proyectos que cumplen las necesidades especificadas'),('AE3','Planear y realizar experimentación fundamentada en el método científico, aplicada a la ingeniería para el análisis y evaluación de proyectos'),('AE4','Comunicarse efectivamente de forma oral y escrita con diferentes audiencias y empleando los distintos medios a su alcance'),('AE5','Reconocer su responsabilidad ética y profesional en situaciones relevantes para la ingeniería y realizar juicios informados que consideren el impacto de las soluciones en los contextos social, ambiental y económico en los ámbitos local y global'),('AE6','Adaptarse a las circunstancias cambiantes del ámbito profesional y a los avances del conocimiento, a través de la búsqueda, selección y uso de la información relevante para la gestión del conocimiento y autoaprendizaje'),('AE7','Trabajar efectivamente en equipos que establecen metas, planean tareas, cumplen fechas límite, y analizan riesgos e incertidumbre');
/*!40000 ALTER TABLE `atributo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 22:18:06
