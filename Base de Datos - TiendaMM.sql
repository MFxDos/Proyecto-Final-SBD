CREATE DATABASE  IF NOT EXISTS `pruebatienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pruebatienda`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pruebatienda
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Lencería','Ropa interior y prendas sensuales'),(2,'Ropa Interior','Prendas íntimas y cómodas'),(3,'Joyería','Accesorios ornamentales'),(4,'Perfumes','Fragancias y aromas'),(5,'Trajes de Baño','Prendas para la playa y la piscina'),(6,'prueba','pruebita');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` text,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `historial_compras` text,
  `preferencias` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Felipe Nya','calle 80','sadasdsaf@dsadsa','312312412','sdad','Perfumes'),(4,'Martin','Calle 183 55-C','martinmartinez.f4@gmail.comm','3192982364','0','Ninguna'),(5,'Jorge','Calle 187','jorge.jlof@gmail.com','32132134','No posee','Lencerias'),(6,'Santi','Calle 186','santiagoAAA@gmail.com','31512321','Tiene 4 compras','Lencerias y Perfumes'),(7,'Juan Pérez','Calle 123','juanperez@gmail.com','123456789','2','Perfumes'),(8,'María Rodríguez','Avenida 456','mariarodriguez@gmail.com','987654321','1','Lencerias y joyas'),(9,'Pedro García','Carrera 789','pedrogarcia@gmail.com','456123789','3','Joyas'),(10,'Ana López','Calle 987','analopez@gmail.com','789123456','5','Perfumes y JOyas'),(11,'Luis Martínez','Avenida 654','luismartinez@gmail.com','321654987','2','Ropa interior y trajes de baño'),(12,'Sofía Hernández','Carrera 321','sofiahernandez@gmail.com','654987321','4','Cliente satisfecho'),(13,'Carlos González','Calle 852','carlosgonzalez@gmail.com','987321654','1','Cliente ocasional'),(14,'Laura Díaz','Avenida 963','lauradiaz@gmail.com','123789456','3','Perfumes'),(15,'Daniel Sánchez','Calle 741','danielsanchez@gmail.com','789456123','2','Cliente potencial'),(16,'Marta Gómez','Carrera 258','martagomez@gmail.com','456789123','4','Ropa interior'),(17,'José Vargas','Avenida 369','josevargas@gmail.com','321987654','5','Lenceria y Ropa Interior'),(18,'Patricia Castro','Calle 147','patriciacastro@gmail.com','987654321','3','Ropa interior, Perfumes, Joyas y Lencerias'),(19,'Roberto Ramírez','Carrera 852','robertoramirez@gmail.com','654321987','2','Ropa interior, Joyas y Lencerias'),(20,'Elena Ruiz','Avenida 963','elenaruiz@gmail.com','321654987','1','Ropa interior y Lencerias'),(21,'Nosfe',NULL,NULL,'7871731',NULL,NULL),(22,'Emilio','calle 2','nosferatu@gmail.com','38383838','2','Lencerias'),(23,'Sack','calle 176','sackin@hotmail.com','555555','0','Ningunaa'),(24,'Tilin','Cerru','esotilin@gmail.com','777777','0','Joyeria'),(25,'Juan P','Calle 186','juanpis@gmail.com','111111','0','Lencerias'),(26,'Pipe','20 de Julio','pipelon@gmail.com','899998','2','Joyas y Perfumes'),(27,'Valeria M','','','','',''),(29,'Nokas','','','','',''),(30,'Luis','Callle 19','luis.l@gmail.com','202020','25','Lencerias, Ropa interior y Perfumes'),(31,'Felix Fagua','Calle 95','felix.fa@gmail.com','10101010','2','Joyas y Perfumes'),(33,'Lucho','Calle 76','luchc qgmail.com','9999','0','Perfumes');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleordenes`
--

DROP TABLE IF EXISTS `detalleordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleordenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orden_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orden_id` (`orden_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detalleordenes_ibfk_1` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`),
  CONSTRAINT `detalleordenes_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleordenes`
--

LOCK TABLES `detalleordenes` WRITE;
/*!40000 ALTER TABLE `detalleordenes` DISABLE KEYS */;
INSERT INTO `detalleordenes` VALUES (1,1,1,1,150000.00),(2,2,2,1,200000.00),(3,3,3,1,120000.00),(4,4,4,1,250000.00),(5,5,5,1,170000.00),(6,6,6,1,230000.00),(7,7,7,1,180000.00),(8,8,8,1,210000.00),(9,9,9,1,190000.00),(10,10,10,1,220000.00),(11,11,11,1,160000.00),(12,12,12,1,240000.00),(13,13,13,1,130000.00),(14,14,14,1,260000.00),(15,28,2,3,267000.00),(17,30,2,2,NULL),(18,31,6,3,NULL),(19,32,6,3,NULL),(20,33,1,2,NULL),(21,34,6,3,135000.00),(22,35,6,3,135000.00),(23,36,6,2,90000.00),(24,37,10,5,150000.00),(25,38,21,2,800000.00),(26,39,21,2,800000.00),(27,40,26,2,180000.00),(28,41,22,2,600000.00),(29,42,2,2,178000.00),(30,43,1,2,100000.00),(31,44,19,1,400000.00),(32,45,19,1,400000.00),(33,46,14,1,10000.00),(34,47,14,1,10000.00),(35,48,14,1,10000.00),(36,49,14,1,10000.00),(37,50,21,1,400000.00),(38,51,14,1,10000.00),(39,52,16,1,4000000.00),(40,53,19,1,400000.00),(41,54,19,1,400000.00),(42,55,19,1,400000.00),(43,56,20,1,500000.00),(44,57,2,1,89000.00),(45,58,7,1,20000.00),(46,59,8,1,33000.00),(47,60,10,1,30000.00),(48,61,17,1,6500000.00),(49,62,30,2,360000.00),(50,63,30,2,360000.00),(51,64,34,3,33000.00),(52,65,30,4,720000.00),(53,66,30,1,180000.00);
/*!40000 ALTER TABLE `detalleordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orden_id` int DEFAULT NULL,
  `fecha_emision` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `direccion_envio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordenes_id` (`orden_id`),
  CONSTRAINT `fk_ordenes_id` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,42,'2024-05-27 15:55:28',178000.00,'Luis','Callle 19'),(2,63,'2024-05-27 17:05:30',360000.00,'Felix Fagua','Calle 95'),(3,32,'2024-05-27 17:12:42',NULL,'Pipe','20 de Julio'),(4,66,'2024-05-27 18:10:33',180000.00,'Felix Fagua','Calle 95');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int DEFAULT NULL,
  `cantidad_disponible` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,16),(2,2,15),(3,3,17),(4,4,12),(5,5,10),(6,6,20),(7,7,10),(8,8,15),(9,9,20),(10,10,18),(11,11,20),(12,12,17),(13,13,23),(14,14,14),(15,15,10),(16,16,10),(17,17,12),(18,18,10),(19,19,15),(20,20,10),(21,21,20),(22,22,12),(23,23,10),(24,24,11),(25,25,12),(26,26,15),(27,27,10),(28,28,20),(29,29,19),(30,30,17);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodospago`
--

DROP TABLE IF EXISTS `metodospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodospago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `detalles` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodospago`
--

LOCK TABLES `metodospago` WRITE;
/*!40000 ALTER TABLE `metodospago` DISABLE KEYS */;
INSERT INTO `metodospago` VALUES (1,'Tarjeta de Crédito','Solo se aceptan tarjetas físicas'),(2,'Efectivo','Solo se recibe efectivo por más de 100.000 COP');
/*!40000 ALTER TABLE `metodospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `direccion_envio` text,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,2,'2024-05-23 12:54:09','calle 80','Tarjeta de Crédito',150000.00,'Procesando'),(2,2,'2024-05-23 12:54:09','calle 80','Efectivo',200000.00,'Enviado'),(3,4,'2024-05-23 12:54:09','Calle 183 55-C','Tarjeta de Crédito',120000.00,'Procesando'),(4,4,'2024-05-23 12:54:09','Calle 183 55-C','Efectivo',250000.00,'Enviado'),(5,5,'2024-05-23 12:54:09','Calle 187','Tarjeta de Crédito',170000.00,'Procesando'),(6,5,'2024-05-23 12:54:09','Calle 187','Efectivo',230000.00,'Enviado'),(7,6,'2024-05-23 12:54:09','Calle 186','Tarjeta de Crédito',180000.00,'Procesando'),(8,6,'2024-05-23 12:54:09','Calle 186','Efectivo',210000.00,'Enviado'),(9,9,'2024-05-23 12:54:09','Carrera 789','Tarjeta de Crédito',190000.00,'Procesando'),(10,9,'2024-05-23 12:54:09','Carrera 789','Efectivo',220000.00,'Enviado'),(11,14,'2024-05-23 12:54:09','Avenida 963','Tarjeta de Crédito',160000.00,'Procesando'),(12,14,'2024-05-23 12:54:09','Avenida 963','Efectivo',240000.00,'Enviado'),(13,20,'2024-05-23 12:54:09','Avenida 963','Tarjeta de crédito',130000.00,'Pagado'),(14,20,'2024-05-23 12:54:09','Avenida 963','Efectivo',260000.00,'Enviado'),(15,23,'2024-05-24 00:00:00','Dirección de envío','Método de pago',0.00,'no pago'),(16,23,'2024-05-24 00:00:00','Dirección de envío','Método de pago',0.00,'no pago'),(17,24,'2024-05-24 00:00:00','Dirección de envío','Método de pago',0.00,'no pago'),(18,24,'2024-05-24 00:00:00','Dirección de envío','Efectivo',0.00,'Pagado'),(19,25,'2024-05-24 00:00:00','Dirección de envío','Tarjeta de crédito',0.00,'Pagado'),(20,26,'2024-05-24 22:12:29','20 de Julio','Tarjeta de crédito',NULL,'Pagado'),(21,26,'2024-05-24 22:19:31','20 de Julio','Efectivo',NULL,'Pagado'),(22,26,'2024-05-24 22:29:31','20 de Julio','Efectivo',NULL,'Pagado'),(23,26,'2024-05-24 22:52:35','20 de Julio','Efectivo',NULL,'Pagado'),(24,26,'2024-05-24 22:57:45','20 de Julio','Efectivo',70000.00,'Pagado'),(25,26,'2024-05-24 23:52:30','20 de Julio',NULL,180000.00,'Pagado'),(26,26,'2024-05-24 23:55:05','20 de Julio',NULL,180000.00,'Pagado'),(27,26,'2024-05-25 00:08:30','20 de Julio','Efectivo',150000.00,'Pagado'),(28,26,'2024-05-25 08:15:16','20 de Julio','Efectivo',267000.00,'Pagado'),(30,26,'2024-05-25 08:34:16','20 de Julio','Tarjeta de crédito',NULL,'Pagado'),(31,26,'2024-05-25 08:39:01','20 de Julio','Efectivo',NULL,'Pagado'),(32,26,'2024-05-25 08:58:10','20 de Julio','Efectivo',NULL,'Pagado'),(33,26,'2024-05-25 09:00:44','20 de Julio',NULL,NULL,'No Pagado'),(34,26,'2024-05-26 19:36:42','20 de Julio','Tarjeta de crédito',135000.00,'Pagado'),(35,26,'2024-05-26 20:04:19','20 de Julio','Efectivo',135000.00,'Pagado'),(36,30,'2024-05-26 20:30:38','Callle 19','Tarjeta de crédito',90000.00,'Pagado'),(37,30,'2024-05-26 20:40:40','Callle 19','Efectivo',150000.00,'Pagado'),(38,26,'2024-05-26 21:07:56','20 de Julio','Tarjeta de crédito',800000.00,'Pagado'),(39,30,'2024-05-26 23:46:47','Callle 19',NULL,800000.00,'Finalizado'),(40,30,'2024-05-27 00:12:00','Callle 19','Efectivo',180000.00,'Finalizado'),(41,30,'2024-05-27 00:29:22','Callle 19','Tarjeta de Crédito',600000.00,'Pagado'),(42,30,'2024-05-27 00:37:13','Callle 19','Tarjeta de Crédito',178000.00,'Pagado'),(43,30,'2024-05-27 00:45:23','Callle 19','Tarjeta de Crédito',100000.00,'Pagado'),(44,30,'2024-05-27 00:47:48','Callle 19','Tarjeta de Crédito',400000.00,'Pagado'),(45,30,'2024-05-27 02:45:28','Callle 19','Tarjeta de Crédito',400000.00,'Pagado'),(46,30,'2024-05-27 02:49:54','Callle 19','Tarjeta de Crédito',10000.00,'Pagado'),(47,30,'2024-05-27 02:53:05','Callle 19','Tarjeta de Crédito',10000.00,'Pagado'),(48,30,'2024-05-27 02:57:51','Callle 19','Tarjeta de Crédito',10000.00,'Pagado'),(49,30,'2024-05-27 03:01:58','Callle 19','Tarjeta de Crédito',10000.00,'Pagado'),(50,30,'2024-05-27 03:04:44','Callle 19','Efectivo',400000.00,'Pagado'),(51,30,'2024-05-27 03:17:17','Callle 19','Tarjeta de Crédito',10000.00,'Pagado'),(52,30,'2024-05-27 03:33:29','Callle 19','Tarjeta de Crédito',4000000.00,'Pagado'),(53,30,'2024-05-27 03:53:41','Callle 19','Efectivo',400000.00,'Pagado'),(54,30,'2024-05-27 04:02:46','Callle 19','Tarjeta de Crédito',400000.00,'Pagado'),(55,30,'2024-05-27 04:03:18','Callle 19','Efectivo',400000.00,'Pagado'),(56,30,'2024-05-27 04:07:22','Callle 19','Tarjeta de Crédito',500000.00,'Pagado'),(57,30,'2024-05-27 04:24:04','Callle 19','Tarjeta de Crédito',89000.00,'Pagado'),(58,30,'2024-05-27 04:45:15','Callle 19','Tarjeta de Crédito',20000.00,'Pagado'),(59,30,'2024-05-27 04:54:22','Callle 19','Tarjeta de Crédito',33000.00,'Pagado'),(60,30,'2024-05-27 04:57:32','Callle 19','Tarjeta de Crédito',30000.00,'Pagado'),(61,30,'2024-05-27 04:59:46','Callle 19','Efectivo',6500000.00,'Pagado'),(62,26,'2024-05-27 15:50:37','20 de Julio',NULL,360000.00,'No Pagado'),(63,31,'2024-05-27 17:00:19','Calle 95','Tarjeta de Crédito',360000.00,'Pagado'),(64,31,'2024-05-27 17:38:10','Calle 95',NULL,33000.00,'No Pagado'),(65,31,'2024-05-27 17:56:50','Calle 95',NULL,720000.00,'No Pagado'),(66,31,'2024-05-27 18:08:56','Calle 95','Efectivo',180000.00,'Pagado');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `disponibilidad` int NOT NULL,
  `categoria_id` int DEFAULT NULL,
  `proveedor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `subcategorias` (`id`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Baby doll duan kam style','Descripción del Baby doll duan kam style',50000.00,16,1,1),(2,'Bata + Babydoll Luci Blanco Kam Style','Descripción de la Bata + Babydoll Luci Blanco Kam Style',89000.00,15,1,2),(3,'Liguero Arnes Pamela','Descripción del Liguero Arnes Pamela',56000.00,17,1,3),(4,'Conjunto Arnes Eir Bra y Panty','Descripción del Conjunto Arnes Eir Bra y Panty',75000.00,12,1,4),(5,'Babydoll Amaranta Kam Style','Descripción del Babydoll Amaranta Kam Style',60000.00,10,1,5),(6,'Body Sexy Encaje Tiras Tipo Arnes Liguero','Descripción del Body Sexy Encaje Tiras Tipo Arnes Liguero',45000.00,20,1,1),(7,'Conjunto de Encaje','Descripción del Conjunto de Encaje',20000.00,10,2,2),(8,'Panty Cachetero Musa','Descripción del Panty Cachetero Musa',33000.00,15,2,3),(9,'Conjunto con Encaje y Torates Cruzados','Descripción del Conjunto con Encaje y Torates Cruzados',40000.00,20,2,4),(10,'Trendy Cachetero Algodon','Descripción del Trendy Cachetero Algodon',30000.00,18,2,5),(11,'Brasilera Julia','Descripción de la Brasilera Julia',30000.00,20,2,1),(12,'Top Basico','Descripción del Top Basico',70000.00,17,2,2),(13,'Colgante Yoshie','Descripción del Colgante Yoshie',1500000.00,23,3,3),(14,'Anillo Semasia','Descripción del Anillo Semasia',10000.00,14,3,4),(15,'Brazalete Striebron','Descripción del Brazalete Striebron',11000000.00,10,3,5),(16,'Colgante Alastriona','Descripción del Colgante Alastriona',4000000.00,10,3,1),(17,'Anillo Norene','Descripción del Anillo Norene',6500000.00,12,3,2),(18,'Brazalete Leija','Descripción del Brazalete Leija',6400000.00,10,3,3),(19,'Perfume Bade Al Oud For Glory-100ml','Descripción del Perfume Bade Al Oud For Glory-100ml',400000.00,15,4,4),(20,'Perfume Light Blue D&G-100ml','Descripción del Perfume Light Blue D&G-100ml',500000.00,10,4,5),(21,'Perfume Thank U Next Ariana G. Eau de Parfum-100ml','Descripción del Perfume Thank U Next Ariana G. Eau de Parfum-100ml',400000.00,20,4,1),(22,'Perfume Yara Moi-100ml','Descripción del Perfume Yara Moi-100ml',300000.00,12,4,2),(23,'Perfume Boucheron-100ml','Descripción del Perfume Boucheron-100ml',350000.00,10,4,3),(24,'Perfume Guess-75ml','Descripción del Perfume Guess-75ml',200000.00,11,4,4),(25,'C+Vestido de Baño Medeley Logo Medalist Azul','Descripción del C+Vestido de Baño Medeley Logo Medalist Azul',110000.00,12,5,5),(26,'Vestido de Baño de Dos Piezas','Descripción del Vestido de Baño de Dos Piezas',90000.00,15,5,1),(27,'Conjunto de Mango Larga Push Up Top','Descripción del Conjunto de Mango Larga Push Up Top',120000.00,10,5,2),(28,'Tankini Short y Manga Larga Azul Florerado','Descripción del Tankini Short y Manga Larga Azul Florerado',100000.00,20,5,3),(29,'Vestido de Baño de una Pieza con Estampado Tropical','Descripción del Vestido de Baño de una Pieza con Estampado Tropical',150000.00,19,5,4),(30,'Vestido de Baño Nikini Honolulu','Descripción del Vestido de Baño Nikini Honolulu',180000.00,17,5,5),(34,'Producto11','Producto11',11000.00,8,1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Lencería S.A.','Colombia','Juan Pérez, juan@lenceria.com'),(2,'Fashion Wear Inc.','Estados Unidos','María Rodríguez, maria@fashionwear.com'),(3,'Joyería Elegance','España','Javier García, javier@joyeriaelegance.es'),(4,'Fragancias del Mundo','Francia','Ana López, ana@fraganciasmundo.fr'),(5,'Trajes de Baño Tropicales','Brasil','Carlos Silva, carlos@trajestropicales.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria_id` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `subcategorias_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategorias`
--

LOCK TABLES `subcategorias` WRITE;
/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
INSERT INTO `subcategorias` VALUES (1,1,'Baby Doll'),(2,1,'Ligueros'),(3,1,'Batas'),(4,2,'Conjuntos de Encaje'),(5,2,'Panties'),(6,2,'Tops'),(7,3,'Colgantes'),(8,3,'Anillos'),(9,3,'Brazaletes'),(10,4,'Para Mujeres'),(11,4,'Para Hombres'),(12,5,'Bikinis'),(13,5,'Trajes de Baño de Dos Piezas'),(14,5,'Trajes de Baño de Una Pieza'),(15,6,'pruebitaaa');
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orden_id` int DEFAULT NULL,
  `metodo_pago_id` int DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orden_id` (`orden_id`),
  KEY `metodo_pago_id` (`metodo_pago_id`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`),
  CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`metodo_pago_id`) REFERENCES `metodospago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10044 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (10000,1,1,150000.00,'2024-05-23','Pendiente'),(10001,2,2,200000.00,'2024-05-23','Pendiente'),(10002,3,1,120000.00,'2024-05-23','Pendiente'),(10003,4,2,250000.00,'2024-05-23','Pendiente'),(10004,5,1,170000.00,'2024-05-23','Pendiente'),(10005,6,2,230000.00,'2024-05-23','Pendiente'),(10006,7,1,180000.00,'2024-05-23','Pendiente'),(10007,8,2,210000.00,'2024-05-23','Pendiente'),(10008,9,1,190000.00,'2024-05-23','Pendiente'),(10009,10,2,220000.00,'2024-05-23','Pendiente'),(10010,11,1,160000.00,'2024-05-23','Pendiente'),(10011,12,2,240000.00,'2024-05-23','Pendiente'),(10012,13,1,130000.00,'2024-05-23','Pendiente'),(10013,14,2,260000.00,'2024-05-23','Pendiente'),(10014,39,NULL,800000.00,'2024-05-26','Pendiente'),(10015,40,NULL,180000.00,'2024-05-27','Pendiente'),(10020,44,1,400000.00,'2024-05-27','Pagado'),(10021,43,1,100000.00,'2024-05-27','Pagado'),(10022,45,1,400000.00,'2024-05-27','Pagado'),(10023,46,1,10000.00,'2024-05-27','Pagado'),(10024,47,1,10000.00,'2024-05-27','Pagado'),(10025,48,1,10000.00,'2024-05-27','Pagado'),(10026,49,1,10000.00,'2024-05-27','Pagado'),(10027,50,2,400000.00,'2024-05-27','Pagado'),(10028,41,1,600000.00,'2024-05-27','Pagado'),(10029,52,1,4000000.00,'2024-05-27','Pagado'),(10030,53,2,400000.00,'2024-05-27','Pagado'),(10031,54,1,400000.00,'2024-05-27','Pagado'),(10032,55,2,400000.00,'2024-05-27','Pagado'),(10033,56,1,500000.00,'2024-05-27','Pagado'),(10034,51,1,10000.00,'2024-05-27','Pagado'),(10035,57,1,89000.00,'2024-05-27','Pagado'),(10036,58,1,20000.00,'2024-05-27','Pagado'),(10037,59,1,33000.00,'2024-05-27','Pagado'),(10038,60,1,30000.00,'2024-05-27','Pagado'),(10039,61,2,6500000.00,'2024-05-27','Pagado'),(10040,42,1,178000.00,'2024-05-27','Pagado'),(10041,63,1,360000.00,'2024-05-27','Pagado'),(10042,32,2,NULL,'2024-05-27','Pagado'),(10043,66,2,180000.00,'2024-05-27','Pagado');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pruebatienda'
--

--
-- Dumping routines for database 'pruebatienda'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_cliente`(
    IN p_nombre VARCHAR(100),
    IN p_direccion TEXT,
    IN p_email VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_historial_compras TEXT,
    IN p_preferencias TEXT
)
BEGIN
    INSERT INTO Clientes (nombre, direccion, email, telefono, historial_compras, preferencias)
    VALUES (p_nombre, p_direccion, p_email, p_telefono, p_historial_compras, p_preferencias);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_detalle_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_detalle_orden`(
    IN orden_id INT,
    IN producto_id INT,
    IN cantidad INT,
    IN precio DECIMAL(10, 2)
)
BEGIN
    INSERT INTO detalleordenes (orden_id, producto_id, cantidad, precio)
    VALUES (orden_id, producto_id, cantidad, precio * cantidad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_factura`(
    IN p_orden_id INT
)
BEGIN
    DECLARE v_total DECIMAL(10, 2);
    DECLARE v_fecha_emision DATETIME;
    DECLARE v_nombre_cliente VARCHAR(255);
    DECLARE v_direccion_envio VARCHAR(255);

    -- Obtener el total de la orden y la fecha actual
    SELECT total, NOW() INTO v_total, v_fecha_emision
    FROM ordenes
    WHERE id = p_orden_id;

    -- Obtener el nombre del cliente y la dirección de envío
    SELECT c.nombre, o.direccion_envio
    INTO v_nombre_cliente, v_direccion_envio
    FROM ordenes o
    JOIN clientes c ON o.cliente_id = c.id
    WHERE o.id = p_orden_id;

    -- Insertar la factura
    INSERT INTO facturas (orden_id, fecha_emision, total, nombre_cliente, direccion_envio)
    VALUES (p_orden_id, v_fecha_emision, v_total, v_nombre_cliente, v_direccion_envio);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_orden`(
    IN cliente_id INT,
    IN estado VARCHAR(50),
    IN producto_id INT,
    IN cantidad INT
)
BEGIN
    DECLARE direccion_envio VARCHAR(255);
    DECLARE precio_producto DECIMAL(10, 2);
    DECLARE orden_id INT;

    -- Obtener la dirección del cliente
    SELECT direccion INTO direccion_envio FROM clientes WHERE id = cliente_id;

    -- Obtener el precio del producto
    SELECT precio INTO precio_producto FROM productos WHERE id = producto_id;

    -- Insertar la orden con la dirección de envío y el total basado en el precio del producto
    INSERT INTO ordenes (cliente_id, fecha, estado, direccion_envio, total)
    VALUES (cliente_id, NOW(), estado, direccion_envio, precio_producto * cantidad);

    -- Obtener el ID de la orden recién creada
    SET orden_id = LAST_INSERT_ID();

    -- Crear el detalle de la orden
    CALL create_detalle_orden(orden_id, producto_id, cantidad, precio_producto);

    -- Actualizar el inventario
    CALL update_inventario(producto_id, cantidad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_producto`(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio DECIMAL(10, 2),
    IN p_disponibilidad INT,
    IN p_categoria_id INT,
    IN p_proveedor_id INT
)
BEGIN
    INSERT INTO Productos (nombre, descripcion, precio, disponibilidad, categoria_id, proveedor_id)
    VALUES (p_nombre, p_descripcion, p_precio, p_disponibilidad, p_categoria_id, p_proveedor_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_transaccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_transaccion`(
    IN p_orden_id INT,
    IN p_metodo_de_pago_id INT,
    IN p_monto DECIMAL(10, 2),
    IN p_fecha DATE,
    IN p_estado VARCHAR(50)
)
BEGIN
    -- Insertar la transacción en la tabla transacciones
    INSERT INTO transacciones (orden_id, metodo_pago_id, monto, fecha, estado)
    VALUES (p_orden_id, p_metodo_de_pago_id, p_monto, p_fecha, p_estado);

    -- Actualizar el estado de la orden a "Pagado"
    UPDATE ordenes 
    SET estado = 'Pagado', metodo_pago = (SELECT nombre FROM metodospago WHERE id = p_metodo_de_pago_id) 
    WHERE id = p_orden_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_cliente`(
    IN p_id INT
)
BEGIN
    DELETE FROM Clientes WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_producto`(
    IN p_producto_id INT
)
BEGIN
    DELETE FROM Productos WHERE id = p_producto_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_factura`(
    IN p_telefono VARCHAR(20),
    IN p_orden_id INT
)
BEGIN
    SELECT f.id, f.fecha_emision, f.total, f.nombre_cliente, f.direccion_envio
    FROM facturas f
    JOIN ordenes o ON f.orden_id = o.id
    JOIN clientes c ON o.cliente_id = c.id
    WHERE c.telefono = p_telefono AND f.orden_id = p_orden_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pagar_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pagar_orden`(IN p_orden_id INT)
BEGIN
    UPDATE ordenes
    SET estado = 'Pagado'
    WHERE id = p_orden_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_cliente`(IN p_id INT)
BEGIN
    SELECT * FROM Clientes WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_producto`(
    IN p_producto_id INT
)
BEGIN
    SELECT * FROM Productos WHERE id = p_producto_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_productos_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_productos_all`()
BEGIN
    SELECT * FROM Productos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_cliente`(
    IN p_id INT,
    IN p_nombre VARCHAR(100),
    IN p_direccion TEXT,
    IN p_email VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_historial_compras TEXT,
    IN p_preferencias TEXT
)
BEGIN
    UPDATE Clientes
    SET 
        nombre = p_nombre,
        direccion = p_direccion,
        email = p_email,
        telefono = p_telefono,
        historial_compras = p_historial_compras,
        preferencias = p_preferencias
    WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_estado_metodo_pago_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_estado_metodo_pago_orden`(
    IN p_orden_id INT, 
    IN p_estado VARCHAR(50), 
    IN p_metodo_pago_id INT
)
BEGIN
    UPDATE ordenes 
    SET estado = p_estado, metodo_pago_id = p_metodo_pago_id
    WHERE id = p_orden_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_estado_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_estado_orden`(
    IN p_orden_id INT, 
    IN p_estado VARCHAR(50), 
    IN p_metodo_pago VARCHAR(50)
)
BEGIN
    UPDATE ordenes 
    SET estado = p_estado, metodo_pago = p_metodo_pago
    WHERE id = p_orden_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_inventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_inventario`(
    IN in_producto_id INT,
    IN in_cantidad INT
)
BEGIN
    UPDATE inventario 
    SET cantidad_disponible = cantidad_disponible - in_cantidad 
    WHERE producto_id = in_producto_id;

    UPDATE productos 
    SET disponibilidad = disponibilidad - in_cantidad 
    WHERE id = in_producto_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_producto`(
    IN p_producto_id INT,
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio DECIMAL(10, 2),
    IN p_disponibilidad INT,
    IN p_categoria_id INT,
    IN p_proveedor_id INT
)
BEGIN
    UPDATE Productos
    SET nombre = p_nombre,
        descripcion = p_descripcion,
        precio = p_precio,
        disponibilidad = p_disponibilidad,
        categoria_id = p_categoria_id,
        proveedor_id = p_proveedor_id
    WHERE id = p_producto_id;
END ;;
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

-- Dump completed on 2024-05-27 19:41:36
