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
-- Table structure for table `criterio`
--

DROP TABLE IF EXISTS `criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criterio` (
  `id_criterio` int NOT NULL AUTO_INCREMENT,
  `atributo_id_atributo` varchar(3) DEFAULT NULL,
  `clave_criterio` varchar(3) DEFAULT NULL,
  `criterio` text,
  PRIMARY KEY (`id_criterio`),
  KEY `atributo_id_atributo` (`atributo_id_atributo`),
  CONSTRAINT `criterio_ibfk_1` FOREIGN KEY (`atributo_id_atributo`) REFERENCES `atributo` (`id_atributo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterio`
--

LOCK TABLES `criterio` WRITE;
/*!40000 ALTER TABLE `criterio` DISABLE KEYS */;
INSERT INTO `criterio` VALUES (1,'AE1','CD1','El alumno identifica las variables y parámetros involucrados en los problemas a resolver.'),(2,'AE1','CD2','El alumno elabora modelos aplicando herramientas matemáticas o de cómputo para simular fenómenos y procesos.'),(3,'AE1','CD3','El alumno integra conocimientos, de ciencias básicas o de ingeniería, para formular y resolver problemas.'),(4,'AE2','CD1','El alumno identifica las necesidades asociadas al diseño de un proyecto de ingeniería.'),(5,'AE2','CD2','El alumno propone al menos una opción de diseño y la desarrolla, conforme a los criterios establecidos y las necesidades identificadas.'),(6,'AE2','CD3','El alumno expresa la solución seleccionada mediante documentación técnica.'),(7,'AE2','CD4','El alumno establece el programa de actividades para el desarrollo de un proyecto.'),(8,'AE2','CD5','El alumno analiza la factibilidad técnica o económica de un proyecto determinado de ingeniería.'),(9,'AE3','CD1','El alumno realiza experimentación siguiendo el protocolo establecido.'),(10,'AE3','CD2','El alumno planea protocolos de experimentación.'),(11,'AE3','CD3','El alumno analiza resultados experimentales y emite conclusiones congruentes con los objetivos.'),(12,'AE3','CD4','El alumno utiliza información experimental para el análisis, evaluación y diseño en ingeniería.'),(13,'AE4','CD1','El alumno redacta documentos académicos de manera clara y coherente.'),(14,'AE4','CD2','El alumno expone oralmente de forma adecuada el desarrollo y los resultados de proyectos.'),(15,'AE5','CD1','El alumno distingue la importancia de la ética en el desarrollo de sus actividades.'),(16,'AE5','CD2','El alumno describe las características de los proyectos de ingeniería en términos de contexto e impacto social del entorno local o global.'),(17,'AE5','CD3','El alumno planea proyectos considerando criterios sociales, ambientales, de desarrollo sustentable o económicos.'),(18,'AE6','CD1','El alumno investiga, selecciona, jerarquiza y organiza información relevante y novedosa de manera independiente.'),(19,'AE7','CD1','El alumno colabora en la planeación de tareas y fechas de entrega.'),(20,'AE7','CD2','El alumno de forma colaborativa propone objetivos y metas para la resolución de un problema específico en los tiempos establecidos.'),(21,'AE7','CD3','El alumno colabora en el análisis de los riesgos e incertidumbre para la toma de decisiones.');
/*!40000 ALTER TABLE `criterio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-13 22:18:04
