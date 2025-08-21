-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bd_David_20250818
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `cedula` varchar(10) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES ('V5721483','Frank','Rodriguez','Calle 123','+58 424-1234567','frank@example'),('V5678','YOLANDA','TORTOZA','CATIA LA MAR','+58 416 9876543','YT@GMAIL.COM'),('V9012','LIBIA','COLS','GUARENAS','+58 414 4567890','LC@GMAIL.COM');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos1`
--

DROP TABLE IF EXISTS `contactos1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos1`
--

LOCK TABLES `contactos1` WRITE;
/*!40000 ALTER TABLE `contactos1` DISABLE KEYS */;
INSERT INTO `contactos1` VALUES (1,'Frank','Rodriguez','+58 424-1234567','frank@example'),(2,'YOLANDA','TORTOZA','+58 416 9876543','YT@GMAIL.COM'),(3,'LIBIA','COLS','+58 414 4567890','libia@example'),(4,'LUISA','GOMEZ','+58 414 9234567','LG@GMAIL.COM'),(5,'NELLY','CONTRERAS','+58 412 6543210','NC@GMAIL.COM');
/*!40000 ALTER TABLE `contactos1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos2`
--

DROP TABLE IF EXISTS `contactos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos2`
--

LOCK TABLES `contactos2` WRITE;
/*!40000 ALTER TABLE `contactos2` DISABLE KEYS */;
INSERT INTO `contactos2` VALUES (1,'Frank','Rodriguez','+58 424-1234567','frank@example'),(2,'YOLANDA','TORTOZA','+58 416 9876543','YT@GMAIL.COM'),(3,'LIBIA','COLS','+58 414 4567890','libia@example'),(4,'Tailor','Davis','+58 424 5487963','TD@GMAIL.COM');
/*!40000 ALTER TABLE `contactos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Juan','P?rez'),(2,'Ana','G?mez'),(3,'Luis','Mart?nez'),(4,'Mar?a','L?pez');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes_materias`
--

DROP TABLE IF EXISTS `estudiantes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes_materias` (
  `estudiante_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  PRIMARY KEY (`estudiante_id`,`materia_id`),
  KEY `materia_id` (`materia_id`),
  CONSTRAINT `estudiantes_materias_ibfk_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  CONSTRAINT `estudiantes_materias_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_materias`
--

LOCK TABLES `estudiantes_materias` WRITE;
/*!40000 ALTER TABLE `estudiantes_materias` DISABLE KEYS */;
INSERT INTO `estudiantes_materias` VALUES (1,1),(1,2),(2,1),(2,3),(3,2),(3,4);
/*!40000 ALTER TABLE `estudiantes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matem?ticas'),(2,'Historia'),(3,'Castellano'),(4,'Biologia');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'LAVADORA',450.00,10),(2,1,'REFRIGERADOR',800.00,5),(3,2,'LAVADORA',500.00,8),(4,2,'REFRIGERADOR',850.00,6),(5,3,'LAVADORA',400.00,12),(6,3,'REFRIGERADOR',750.00,7),(7,4,'LAVADORA',600.00,9),(8,4,'REFRIGERADOR',900.00,4),(9,1,'MICROONDAS',150.00,15),(10,2,'MICROONDAS',180.00,10),(11,3,'MICROONDAS',170.00,8),(12,4,'MICROONDAS',200.00,5),(13,1,'HORNOS',300.00,6),(14,2,'HORNOS',320.00,4),(15,3,'HORNOS',310.00,5),(16,4,'HORNOS',350.00,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos1`
--

DROP TABLE IF EXISTS `productos1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos1`
--

LOCK TABLES `productos1` WRITE;
/*!40000 ALTER TABLE `productos1` DISABLE KEYS */;
INSERT INTO `productos1` VALUES (1,12,'LAVADORA',450.00,10),(2,11,'REFRIGERADOR',800.00,5),(3,22,'LAVADORA',500.00,8),(4,22,'REFRIGERADOR',850.00,6),(5,33,'LAVADORA',400.00,12),(6,33,'REFRIGERADOR',750.00,7),(7,44,'LAVADORA',600.00,9),(8,11,'LAVADORA',450.00,10),(9,11,'REFRIGERADOR',800.00,5),(10,22,'LAVADORA',500.00,8),(11,22,'REFRIGERADOR',850.00,6),(12,33,'LAVADORA',400.00,12),(13,33,'REFRIGERADOR',750.00,7),(14,44,'LAVADORA',600.00,9);
/*!40000 ALTER TABLE `productos1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos2`
--

DROP TABLE IF EXISTS `productos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos2_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos2`
--

LOCK TABLES `productos2` WRITE;
/*!40000 ALTER TABLE `productos2` DISABLE KEYS */;
INSERT INTO `productos2` VALUES (1,11,'LAVADORA',450.00,10),(2,11,'REFRIGERADOR',800.00,5),(3,12,'LAVADORA',500.00,8),(4,12,'REFRIGERADOR',850.00,6),(7,4,'LAVADORA',600.00,9),(8,4,'REFRIGERADOR',900.00,4),(9,11,'MICROONDAS',150.00,15),(10,12,'MICROONDAS',180.00,10),(12,4,'MICROONDAS',200.00,5),(13,11,'HORNOS',300.00,6),(14,12,'HORNOS',320.00,4),(16,4,'HORNOS',350.00,3);
/*!40000 ALTER TABLE `productos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'General Electric','DireccionGE','+58 212 1234567','info@ge.com'),(2,'LG','DireccionLG','+58 212 7654321','info@lg.com'),(3,'MABE','DireccionMABE','+58 212 1122334','info@mabe.com'),(4,'WHIRLPOOL','DireccionWHIRLPOOL','+58 212 4433221','info@wp.com'),(5,'ElectroLuz','DireccionEL','+58 212 1234567','info@EL.com'),(6,'Sony','DireccionSony','+58 212 7654321','info@sony.com'),(7,'Samsung','DireccionSamsung','+58 212 1122334','info@samsung.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores1`
--

DROP TABLE IF EXISTS `proveedores1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores1`
--

LOCK TABLES `proveedores1` WRITE;
/*!40000 ALTER TABLE `proveedores1` DISABLE KEYS */;
INSERT INTO `proveedores1` VALUES (1,'General Electric','DireccionGE','+58 212 1234567','info@ge.com'),(2,'LG','DireccionLG','+58 212 7654321','info@lg.com'),(3,'MABE','DireccionMABE','+58 212 1122334','info@mabe.com'),(4,'WHIRLPOOL','DireccionWHIRLPOOL','+58 212 4433221','info@wp.com'),(5,'ELECTROLUX','AV. PPAL. DE LAS MERCEDES','+58 212 9234567','info@electrolux.com'),(6,'SONY','AV. VICTORIA','+58 212 8234567','info@sony.com'),(7,'DAMASCO','AV. PRESIDENTE MEDINA','+58 212 7234567','info@damasco.com');
/*!40000 ALTER TABLE `proveedores1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores2`
--

DROP TABLE IF EXISTS `proveedores2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores2`
--

LOCK TABLES `proveedores2` WRITE;
/*!40000 ALTER TABLE `proveedores2` DISABLE KEYS */;
INSERT INTO `proveedores2` VALUES (4,'WHIRLPOOL','DireccionWHIRLPOOL','+58 212 4433221','info@wp.com'),(11,'General Electric','DireccionGE','+58 212 1234567','info@ge.com'),(12,'LG','DireccionLG','+58 212 7654321','info@lg.com');
/*!40000 ALTER TABLE `proveedores2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_estudiantes_materias`
--

DROP TABLE IF EXISTS `view_estudiantes_materias`;
/*!50001 DROP VIEW IF EXISTS `view_estudiantes_materias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_estudiantes_materias` AS SELECT
 1 AS `nombre`,
  1 AS `apellido`,
  1 AS `materia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_innerjoin_estudiantes_materias`
--

DROP TABLE IF EXISTS `view_innerjoin_estudiantes_materias`;
/*!50001 DROP VIEW IF EXISTS `view_innerjoin_estudiantes_materias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_innerjoin_estudiantes_materias` AS SELECT
 1 AS `nombre`,
  1 AS `apellido`,
  1 AS `materia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_agrupada_productos`
--

DROP TABLE IF EXISTS `vista_agrupada_productos`;
/*!50001 DROP VIEW IF EXISTS `vista_agrupada_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_agrupada_productos` AS SELECT
 1 AS `producto`,
  1 AS `total_cantidad`,
  1 AS `minimo_precio`,
  1 AS `maximo_precio`,
  1 AS `promedio_precio` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_agrupada_proveedores`
--

DROP TABLE IF EXISTS `vista_agrupada_proveedores`;
/*!50001 DROP VIEW IF EXISTS `vista_agrupada_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_agrupada_proveedores` AS SELECT
 1 AS `proveedor`,
  1 AS `total_cantidad`,
  1 AS `minimo_precio`,
  1 AS `maximo_precio`,
  1 AS `promedio_precio` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_fulljoin_agrupada_proveedores`
--

DROP TABLE IF EXISTS `vista_fulljoin_agrupada_proveedores`;
/*!50001 DROP VIEW IF EXISTS `vista_fulljoin_agrupada_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_fulljoin_agrupada_proveedores` AS SELECT
 1 AS `proveedor`,
  1 AS `total_cantidad`,
  1 AS `minimo_precio`,
  1 AS `maximo_precio`,
  1 AS `promedio_precio` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_fulljoin_proveedores1_productos1`
--

DROP TABLE IF EXISTS `vista_fulljoin_proveedores1_productos1`;
/*!50001 DROP VIEW IF EXISTS `vista_fulljoin_proveedores1_productos1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_fulljoin_proveedores1_productos1` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo_electronico`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_ifnull_proveedores`
--

DROP TABLE IF EXISTS `vista_ifnull_proveedores`;
/*!50001 DROP VIEW IF EXISTS `vista_ifnull_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_ifnull_proveedores` AS SELECT
 1 AS `proveedor`,
  1 AS `total_cantidad`,
  1 AS `minimo_precio`,
  1 AS `maximo_precio`,
  1 AS `promedio_precio` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_innerjoin_proveedores1_productos1`
--

DROP TABLE IF EXISTS `vista_innerjoin_proveedores1_productos1`;
/*!50001 DROP VIEW IF EXISTS `vista_innerjoin_proveedores1_productos1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_innerjoin_proveedores1_productos1` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo_electronico`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_leftjoin1_proveedores1_productos1`
--

DROP TABLE IF EXISTS `vista_leftjoin1_proveedores1_productos1`;
/*!50001 DROP VIEW IF EXISTS `vista_leftjoin1_proveedores1_productos1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_leftjoin1_proveedores1_productos1` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo_electronico`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_proveedores_productos`
--

DROP TABLE IF EXISTS `vista_proveedores_productos`;
/*!50001 DROP VIEW IF EXISTS `vista_proveedores_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_proveedores_productos` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo_electronico`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_rightjoin_proveedores1_productos1`
--

DROP TABLE IF EXISTS `vista_rightjoin_proveedores1_productos1`;
/*!50001 DROP VIEW IF EXISTS `vista_rightjoin_proveedores1_productos1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_rightjoin_proveedores1_productos1` AS SELECT
 1 AS `proveedor`,
  1 AS `direccion`,
  1 AS `telefono`,
  1 AS `correo_electronico`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_estudiantes_materias`
--

/*!50001 DROP VIEW IF EXISTS `view_estudiantes_materias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_estudiantes_materias` AS select `a`.`nombre` AS `nombre`,`a`.`apellido` AS `apellido`,`b`.`nombre` AS `materia` from ((`estudiantes` `a` join `materias` `b`) join `estudiantes_materias` `c`) where `a`.`id` = `c`.`estudiante_id` and `b`.`id` = `c`.`materia_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_innerjoin_estudiantes_materias`
--

/*!50001 DROP VIEW IF EXISTS `view_innerjoin_estudiantes_materias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_innerjoin_estudiantes_materias` AS select `a`.`nombre` AS `nombre`,`a`.`apellido` AS `apellido`,`b`.`nombre` AS `materia` from ((`estudiantes` `a` join `estudiantes_materias` `c` on(`a`.`id` = `c`.`estudiante_id`)) join `materias` `b` on(`b`.`id` = `c`.`materia_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_agrupada_productos`
--

/*!50001 DROP VIEW IF EXISTS `vista_agrupada_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_agrupada_productos` AS select distinct `vista_innerjoin_proveedores1_productos1`.`producto` AS `producto`,sum(`vista_innerjoin_proveedores1_productos1`.`cantidad`) AS `total_cantidad`,min(`vista_innerjoin_proveedores1_productos1`.`precio`) AS `minimo_precio`,max(`vista_innerjoin_proveedores1_productos1`.`precio`) AS `maximo_precio`,round(avg(`vista_innerjoin_proveedores1_productos1`.`precio`),2) AS `promedio_precio` from `vista_innerjoin_proveedores1_productos1` group by `vista_innerjoin_proveedores1_productos1`.`producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_agrupada_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `vista_agrupada_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_agrupada_proveedores` AS select distinct `vista_leftjoin1_proveedores1_productos1`.`proveedor` AS `proveedor`,sum(`vista_leftjoin1_proveedores1_productos1`.`cantidad`) AS `total_cantidad`,min(`vista_leftjoin1_proveedores1_productos1`.`precio`) AS `minimo_precio`,max(`vista_leftjoin1_proveedores1_productos1`.`precio`) AS `maximo_precio`,round(avg(`vista_leftjoin1_proveedores1_productos1`.`precio`),2) AS `promedio_precio` from `vista_leftjoin1_proveedores1_productos1` group by `vista_leftjoin1_proveedores1_productos1`.`proveedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_fulljoin_agrupada_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `vista_fulljoin_agrupada_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_fulljoin_agrupada_proveedores` AS select distinct `vista_fulljoin_proveedores1_productos1`.`proveedor` AS `proveedor`,sum(`vista_fulljoin_proveedores1_productos1`.`cantidad`) AS `total_cantidad`,min(`vista_fulljoin_proveedores1_productos1`.`precio`) AS `minimo_precio`,max(`vista_fulljoin_proveedores1_productos1`.`precio`) AS `maximo_precio`,round(avg(`vista_fulljoin_proveedores1_productos1`.`precio`),2) AS `promedio_precio` from `vista_fulljoin_proveedores1_productos1` group by `vista_fulljoin_proveedores1_productos1`.`proveedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_fulljoin_proveedores1_productos1`
--

/*!50001 DROP VIEW IF EXISTS `vista_fulljoin_proveedores1_productos1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_fulljoin_proveedores1_productos1` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`proveedores1` `a` left join `productos1` `b` on(`a`.`id` = `b`.`proveedor_id`)) union select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`productos1` `b` left join `proveedores1` `a` on(`a`.`id` = `b`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ifnull_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `vista_ifnull_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ifnull_proveedores` AS select distinct ifnull(`vista_fulljoin_proveedores1_productos1`.`proveedor`,'Producto sin proveedor') AS `proveedor`,ifnull(sum(`vista_fulljoin_proveedores1_productos1`.`cantidad`),0) AS `total_cantidad`,ifnull(min(`vista_fulljoin_proveedores1_productos1`.`precio`),0) AS `minimo_precio`,ifnull(max(`vista_fulljoin_proveedores1_productos1`.`precio`),0) AS `maximo_precio`,ifnull(round(avg(`vista_fulljoin_proveedores1_productos1`.`precio`),2),0) AS `promedio_precio` from `vista_fulljoin_proveedores1_productos1` group by `vista_fulljoin_proveedores1_productos1`.`proveedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_innerjoin_proveedores1_productos1`
--

/*!50001 DROP VIEW IF EXISTS `vista_innerjoin_proveedores1_productos1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_innerjoin_proveedores1_productos1` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`proveedores1` `a` join `productos1` `b` on(`a`.`id` = `b`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_leftjoin1_proveedores1_productos1`
--

/*!50001 DROP VIEW IF EXISTS `vista_leftjoin1_proveedores1_productos1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_leftjoin1_proveedores1_productos1` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`proveedores1` `a` left join `productos1` `b` on(`a`.`id` = `b`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_proveedores_productos`
--

/*!50001 DROP VIEW IF EXISTS `vista_proveedores_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_proveedores_productos` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`proveedores` `a` join `productos` `b`) where `a`.`id` = `b`.`proveedor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_rightjoin_proveedores1_productos1`
--

/*!50001 DROP VIEW IF EXISTS `vista_rightjoin_proveedores1_productos1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_rightjoin_proveedores1_productos1` AS select `a`.`nombre` AS `proveedor`,`a`.`direccion` AS `direccion`,`a`.`telefono` AS `telefono`,`a`.`correo_electronico` AS `correo_electronico`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`productos1` `b` left join `proveedores1` `a` on(`a`.`id` = `b`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21  8:41:42
