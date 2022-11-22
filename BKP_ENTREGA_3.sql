-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ENTREGA_3
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `CARRITO_COMPRAS`
--

DROP TABLE IF EXISTS `CARRITO_COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARRITO_COMPRAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CANTIDAD` varchar(20) DEFAULT NULL,
  `PRECIO_TOTAL` varchar(50) DEFAULT NULL,
  `ID_USUARIO` int DEFAULT NULL,
  `ID_PRODUCTO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CARRITO_COMPRAS_USUARIO` (`ID_USUARIO`),
  KEY `FK_CARRITO_COMPRAS_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `FK_CARRITO_COMPRAS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `PRODUCTOS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_CARRITO_COMPRAS_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CATEGORIAS`
--

DROP TABLE IF EXISTS `CATEGORIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATEGORIAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FAVORITOS`
--

DROP TABLE IF EXISTS `FAVORITOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FAVORITOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int DEFAULT NULL,
  `ID_PRODUCTO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FAVORITOS_USUARIO` (`ID_USUARIO`),
  KEY `FK_FAVORITOS_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `FK_FAVORITOS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `PRODUCTOS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_FAVORITOS_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOG_AUDITORIA`
--

DROP TABLE IF EXISTS `LOG_AUDITORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_AUDITORIA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL,
  `DNI` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(250) DEFAULT NULL,
  `STOCK` varchar(10) DEFAULT NULL,
  `PRECIO` int DEFAULT NULL,
  `CAMPOANTERIOR_CAMPONUEVO` varchar(500) DEFAULT NULL,
  `NOMBRE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MARCAS`
--

DROP TABLE IF EXISTS `MARCAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MARCAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `IMAGEN` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ORDEN_COMPRA`
--

DROP TABLE IF EXISTS `ORDEN_COMPRA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDEN_COMPRA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DETALLES_COMPRA` varchar(1150) DEFAULT NULL,
  `ID_ORDEN_PAGO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORDEN_COMPRA_ORDEN_PAGO` (`ID_ORDEN_PAGO`),
  CONSTRAINT `FK_ORDEN_COMPRA_ORDEN_PAGO` FOREIGN KEY (`ID_ORDEN_PAGO`) REFERENCES `CARRITO_COMPRAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ORDEN_PAGO`
--

DROP TABLE IF EXISTS `ORDEN_PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDEN_PAGO` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `METODO_PAGO` varchar(20) DEFAULT NULL,
  `FECHA_COMPRA` date DEFAULT NULL,
  `ESTADO_COMPRA` varchar(20) DEFAULT NULL,
  `ID_CARRITO_COMPRA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORDEN_PAGO_CARRITO_COMPRA` (`ID_CARRITO_COMPRA`),
  CONSTRAINT `FK_ORDEN_PAGO_CARRITO_COMPRA` FOREIGN KEY (`ID_CARRITO_COMPRA`) REFERENCES `CARRITO_COMPRAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PRODUCTOS`
--

DROP TABLE IF EXISTS `PRODUCTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(250) DEFAULT NULL,
  `DESCRIPCION` varchar(2150) DEFAULT NULL,
  `STOCK` varchar(10) DEFAULT NULL,
  `IMAGEN` varchar(150) DEFAULT NULL,
  `PRECIO` int DEFAULT NULL,
  `ID_MARCA` int DEFAULT NULL,
  `ID_CATEGORIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCTOS_MARCA` (`ID_MARCA`),
  KEY `FK_PRODUCTOS_CATEGORIA` (`ID_CATEGORIA`),
  CONSTRAINT `FK_PRODUCTOS_CATEGORIA` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `CATEGORIAS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_PRODUCTOS_MARCA` FOREIGN KEY (`ID_MARCA`) REFERENCES `MARCAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_PRODUCTOS` AFTER INSERT ON `PRODUCTOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
							PRECIO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
		NEW.STOCK,
        NEW.PRECIO,
        'INSERT',
        'PRODUCTOS',
        CURRENT_USER(),
        NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_PRODUCTOS1` BEFORE UPDATE ON `PRODUCTOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
                            PRECIO,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
NEW.STOCK,
NEW.PRECIO,
CONCAT('CAMPOS ANTERIORES:',
		OLD.NOMBRE,
        ' ',
        OLD.STOCK,
        ' ',
        OLD.PRECIO,
        '-',
        'CAMPOS NUEVOS:',
        NEW.NOMBRE,
        ' ',
        NEW.STOCK,
        ' ',
        NEW.PRECIO),
'UPDATE',
'PRODUCTOS',
CURRENT_USER(),
NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `USUARIOS`
--

DROP TABLE IF EXISTS `USUARIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USUARIOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(25) DEFAULT NULL,
  `NOMBRE` varchar(25) DEFAULT NULL,
  `APELLIDO` varchar(25) DEFAULT NULL,
  `DOMICILIO` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL,
  `ALIAS` varchar(25) DEFAULT NULL,
  `CELULAR` varchar(20) DEFAULT NULL,
  `DNI` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_USUARIOS` AFTER INSERT ON `USUARIOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
							DNI,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,FECHA_UPD_INS_DEL)
VALUES(NEW.EMAIL,
		NEW.PASSWORD,
        NEW.DNI,
        'INSERT',
        'USUARIOS',
        CURRENT_USER(),
        NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_USUARIOS1` BEFORE UPDATE ON `USUARIOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
                            DNI,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.EMAIL,
NEW.PASSWORD,
NEW.DNI,
CONCAT('CAMPOS ANTERIORES:',
		OLD.EMAIL,
        ' ',
        OLD.PASSWORD,
        ' ',
        OLD.DNI,
        '-',
        'CAMPOS NUEVOS:',
        NEW.EMAIL,
        ' ',
        NEW.PASSWORD,
        ' ',
        NEW.DNI),
'UPDATE',
'USUARIOS',
CURRENT_USER(),
NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!50001 DROP VIEW IF EXISTS `comics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comics` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `STOCK`,
 1 AS `DESCRIPCION`,
 1 AS `PRECIO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compras_procesadas`
--

DROP TABLE IF EXISTS `compras_procesadas`;
/*!50001 DROP VIEW IF EXISTS `compras_procesadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compras_procesadas` AS SELECT 
 1 AS `ID`,
 1 AS `METODO_PAGO`,
 1 AS `FECHA_COMPRA`,
 1 AS `ESTADO_COMPRA`,
 1 AS `ID_CARRITO_COMPRA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!50001 DROP VIEW IF EXISTS `favoritos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `favoritos` AS SELECT 
 1 AS `USUARIO_NOMBRE`,
 1 AS `PRODUCTO_NOMBRE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `comics`
--

/*!50001 DROP VIEW IF EXISTS `comics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comics` AS select `PRODUCTOS`.`NOMBRE` AS `NOMBRE`,`PRODUCTOS`.`STOCK` AS `STOCK`,`PRODUCTOS`.`DESCRIPCION` AS `DESCRIPCION`,`PRODUCTOS`.`PRECIO` AS `PRECIO` from `PRODUCTOS` where (`PRODUCTOS`.`ID_CATEGORIA` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compras_procesadas`
--

/*!50001 DROP VIEW IF EXISTS `compras_procesadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compras_procesadas` AS select `ORDEN_PAGO`.`ID` AS `ID`,`ORDEN_PAGO`.`METODO_PAGO` AS `METODO_PAGO`,`ORDEN_PAGO`.`FECHA_COMPRA` AS `FECHA_COMPRA`,`ORDEN_PAGO`.`ESTADO_COMPRA` AS `ESTADO_COMPRA`,`ORDEN_PAGO`.`ID_CARRITO_COMPRA` AS `ID_CARRITO_COMPRA` from `ORDEN_PAGO` where (`ORDEN_PAGO`.`ESTADO_COMPRA` = 'PROCESADO') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `favoritos`
--

/*!50001 DROP VIEW IF EXISTS `favoritos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `favoritos` AS select `U`.`NOMBRE` AS `USUARIO_NOMBRE`,`P`.`NOMBRE` AS `PRODUCTO_NOMBRE` from ((`FAVORITOS` `F` join `USUARIOS` `U` on((`F`.`ID_USUARIO` = `U`.`ID`))) join `PRODUCTOS` `P` on((`P`.`ID` = `F`.`ID_PRODUCTO`))) */;
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

-- Dump completed on 2022-11-14 22:47:13
