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
-- Table structure for table `grupos_tematicos`
--

DROP TABLE IF EXISTS `grupos_tematicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos_tematicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grupo_tematico` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos_tematicos`
--

LOCK TABLES `grupos_tematicos` WRITE;
/*!40000 ALTER TABLE `grupos_tematicos` DISABLE KEYS */;
INSERT INTO `grupos_tematicos` VALUES (1,'Divisional'),(2,'Comité TIM'),(3,'Comité Ing. Ambiental '),(4,'Comité Ing. Civil'),(5,'Comité Ing. Computación'),(6,'Comité Ing. Eléctrica'),(7,'Comité Ing. Electrónica'),(8,'Comité Ing. Física'),(9,'Comité Ing. Industrial'),(10,'Comité Ing. Mecánica'),(11,'Comité Ing. Metalúrgica'),(12,'Comité Ing. Química'),(13,'Campos'),(14,'Física Moderna y Aplicaciones'),(15,'Laboratorio de Física Moderna, Acústica y Óptica'),(16,'Física'),(17,'Laboratorio de Física del Tronco General'),(18,'Calculo Multivariable'),(19,'Álgebra y Geometría'),(20,'Matemáticas Avanzadas del Posgrado'),(21,'Matemáticas para la computación'),(22,'Calculo Diferencial e Integral y Ecuaciones Diferenciales'),(23,'Química Orgánica'),(24,'Química Inorgánica I y II'),(25,'Química Experimental de Especialidad'),(26,'Química Analítica'),(27,'Fisicoquímica, Cinética y Catálisis'),(28,'Ciencias Ambientales'),(29,'Química Básica Teórica'),(30,'Química Básica Experimental'),(31,'Cómputo General'),(32,'Algoritmos y Sistemas'),(33,'Sistemas de Información'),(34,'Probabilidad y Optimización'),(35,'Análisis de Decisiones'),(36,'Organización del Trabajo'),(37,'Gestión de la Producción'),(38,'Calidad, Higiene y Segurida'),(39,'Electromagnetismo y su aplicaciones'),(40,'Sistemas Eléctricos de Potencia'),(41,'Máquinas Eléctricas'),(42,'Fundamentos de termofluidos'),(43,'Simulación y Control de Procesos'),(44,'Termodinámica y Fenómenos de Transporte'),(45,'Procesos'),(46,'Aplicaciones de Termofluidos'),(47,'Ingeniería ambiental'),(48,'Conversión de energía'),(49,'Aprovechamiento y Aplicaciones de Energías Renovables'),(50,'Hidráulica'),(51,'Dinámica de Sistemas'),(52,'Manufactura'),(53,'Proyecto Mecánico'),(54,'Mediciones'),(55,'Gestión ambiental'),(56,'Agua, suelo y residuos sólidos'),(57,'Laboratorios de Ing. Química'),(58,'Reactores'),(59,'Tópicos Avanzados en Ingeniería Civil'),(60,'Construcción'),(61,'Diseño Estructural'),(62,'Geotecnia'),(63,'Metalurgia Física'),(64,'Procesos Metalurgicos y calidad'),(65,'Metalurgia Mecánica'),(66,'Metalurgia Química'),(67,'Ingeniería de Materiales'),(68,'Trabajo en Planta y Prácticas Profesionales'),(69,'Diseño Lógico y Sistemas Embebidos'),(70,'Microprocesadores y Microcontroladores'),(71,'Redes'),(72,'Telecomunicaciones y  procesamiento de señales'),(73,'Comunicaciones Digitales'),(74,'Electrónica de Potencia e Instrumentación'),(75,'Electrónica Básica'),(76,'Circuitos Eléctricos'),(77,'Control Aplicado'),(78,'Control Teórico');
/*!40000 ALTER TABLE `grupos_tematicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 22:18:05
