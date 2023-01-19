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
-- Table structure for table `indicador`
--

DROP TABLE IF EXISTS `indicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicador` (
  `id_indicador` int NOT NULL AUTO_INCREMENT,
  `criterio_id_criterio` int DEFAULT NULL,
  `clave_indicador` varchar(3) DEFAULT NULL,
  `indicador` text,
  PRIMARY KEY (`id_indicador`),
  KEY `criterio_id_criterio` (`criterio_id_criterio`),
  CONSTRAINT `indicador_ibfk_1` FOREIGN KEY (`criterio_id_criterio`) REFERENCES `criterio` (`id_criterio`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador`
--

LOCK TABLES `indicador` WRITE;
/*!40000 ALTER TABLE `indicador` DISABLE KEYS */;
INSERT INTO `indicador` VALUES (1,1,'I1','X% de los alumnos identifica las variables y parámetros involucrados en los problemas a resolver'),(2,2,'I1','X% de los alumnos aplica herramientas matemáticas para simular fenómenos y procesos'),(3,2,'I2','X% de los alumnos aplica herramientas de cómputo para simular fenómenos y procesos.'),(4,3,'I1','X% de los alumnos Integra conocimientos, de ciencias básicas o de ingeniería, para formular y resolver problemas.'),(5,4,'I1','X % de los alumnos identifica las necesidades asociadas a un proyecto.'),(6,5,'I1','X % de los alumnos propone al menos una opción de diseño que cumpla las necesidades especificadas.'),(7,5,'I2','X % de los alumnos desarrolla al menos una opción de diseño que cumpla las necesidades especificadas.'),(8,6,'I1','X % de los alumnos expresa la solución seleccionada mediante documentación técnica.'),(9,7,'I1','X % de los alumnos establece la secuencia de actividades para la realización de un proyecto.'),(10,8,'I1','X % de los alumnos analiza la factibilidad técnica o económica de un proyecto de ingeniería.'),(11,9,'I1','X % de los alumnos realiza experimentos siguiendo el protocolo establecido.'),(12,10,'I1','X% de los alumnos planea protocolos de experimentación.'),(13,11,'I1','X % de los alumnos analiza los resultados de la experimentación y emite conclusiones congruentes con los objetivos.'),(14,12,'I1','X % de los alumnos utiliza información experimental para el análisis y evaluación en ingeniería.'),(15,12,'I2','X % de los alumnos utiliza información experimental para el diseño en ingeniería.'),(16,13,'I1','X% de los alumnos elabora documentos académicos escritos que incluyen elementos como gráficas, tablas e imágenes.'),(17,13,'I2','X% de los alumnos redactan documentos académicos cuidando la claridad, coherencia y ortografía.'),(18,14,'I1','X% de los alumnos expone oralmente de forma fluida.'),(19,14,'I2','X% de los alumnos expone oralmente sus ideas de manera fundamentada.'),(20,14,'I3','X% de los alumnos tiene un control en su exposición oral con base en el tiempo que tiene disponible.'),(21,15,'I1','X % de los alumnos se conducen con ética en el desarrollo de sus actividades.'),(22,16,'I1','X % de los alumnos distingue el contexto e impacto social de los proyectos de ingeniería.'),(23,17,'I1','X % de los alumnos desarrolla los proyectos de ingeniería considerando los criterios sociales, ambientales, de desarrollo sustentable o económicos'),(24,18,'I1','X % de alumnos integra en sus reportes antecedentes suficientes, claros y fundamentados.'),(25,19,'I1','X % de alumnos colabora en la planeación de tareas y fechas de entrega.'),(26,20,'I1','X % de alumnos de forma colaborativa establece objetivos y metas para la resolución de un problema específico.'),(27,20,'I2','X % de alumnos de forma colaborativa cumple con la entrega de los resultadosen el tiempo establecido.'),(28,21,'I1','X % de alumnos colabora en el análisis de riesgos e incertidumbre en la toma de decisiones.');
/*!40000 ALTER TABLE `indicador` ENABLE KEYS */;
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
