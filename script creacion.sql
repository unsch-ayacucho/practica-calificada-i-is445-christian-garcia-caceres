/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `CER-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `CER_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `CER_db`;

--
-- Table structure for table `adjunto`
--

DROP TABLE IF EXISTS `adjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adjunto` (
  `id_documento` int(11) NOT NULL,
  `id_documento_adjunto` int(11) NOT NULL,
  PRIMARY KEY (`id_documento`,`id_documento_adjunto`),
  KEY `id_documento_adjunto` (`id_documento_adjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjunto`
--

LOCK TABLES `adjunto` WRITE;
/*!40000 ALTER TABLE `adjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consideracion`
--

DROP TABLE IF EXISTS `consideracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consideracion` (
  `id_consideracion` int(11) NOT NULL AUTO_INCREMENT,
  `consideracion_text` text NOT NULL,
  PRIMARY KEY (`id_consideracion`),
  CONSTRAINT `consideracion_ibfk_1` FOREIGN KEY (`id_consideracion`) REFERENCES `consideracionresolucion` (`id_consideracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consideracion`
--

LOCK TABLES `consideracion` WRITE;
/*!40000 ALTER TABLE `consideracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `consideracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consideracionresolucion`
--

DROP TABLE IF EXISTS `consideracionresolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consideracionresolucion` (
  `id_resolucion` int(11) NOT NULL,
  `id_consideracion` int(11) NOT NULL,
  PRIMARY KEY (`id_resolucion`,`id_consideracion`),
  KEY `id_consideracion` (`id_consideracion`),
  CONSTRAINT `consideracionresolucion_ibfk_1` FOREIGN KEY (`id_resolucion`) REFERENCES `resolucion` (`id_resolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consideracionresolucion`
--

LOCK TABLES `consideracionresolucion` WRITE;
/*!40000 ALTER TABLE `consideracionresolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `consideracionresolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datoadicional`
--

DROP TABLE IF EXISTS `datoadicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `datoadicional` (
  `id_dato_adicional` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_dato` varchar(30) NOT NULL,
  `dato_adicional` varchar(30) NOT NULL,
  `descripcion_opcional` text,
  PRIMARY KEY (`id_dato_adicional`),
  CONSTRAINT `datoadicional_ibfk_1` FOREIGN KEY (`id_dato_adicional`) REFERENCES `documentoadjuntodatoadicional` (`id_dato_adicional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datoadicional`
--

LOCK TABLES `datoadicional` WRITE;
/*!40000 ALTER TABLE `datoadicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `datoadicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decreto`
--

DROP TABLE IF EXISTS `decreto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `decreto` (
  `id_decreto` int(11) NOT NULL AUTO_INCREMENT,
  `nro_articulo` int(11) NOT NULL,
  `decreto_texto` text NOT NULL,
  PRIMARY KEY (`id_decreto`),
  CONSTRAINT `decreto_ibfk_1` FOREIGN KEY (`id_decreto`) REFERENCES `decretosresolucion` (`id_decreto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decreto`
--

LOCK TABLES `decreto` WRITE;
/*!40000 ALTER TABLE `decreto` DISABLE KEYS */;
/*!40000 ALTER TABLE `decreto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decretosresolucion`
--

DROP TABLE IF EXISTS `decretosresolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `decretosresolucion` (
  `id_resolucion` int(11) NOT NULL,
  `id_decreto` int(11) NOT NULL,
  PRIMARY KEY (`id_resolucion`,`id_decreto`),
  KEY `id_decreto` (`id_decreto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decretosresolucion`
--

LOCK TABLES `decretosresolucion` WRITE;
/*!40000 ALTER TABLE `decretosresolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `decretosresolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinatario`
--

DROP TABLE IF EXISTS `destinatario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `destinatario` (
  `id_destinatario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_destinatario`),
  CONSTRAINT `destinatario_ibfk_1` FOREIGN KEY (`id_destinatario`) REFERENCES `documento` (`id_destinatario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinatario`
--

LOCK TABLES `destinatario` WRITE;
/*!40000 ALTER TABLE `destinatario` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinatario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalledocumento`
--

DROP TABLE IF EXISTS `detalledocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalledocumento` (
  `id_detalle_documento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_presentacion` datetime DEFAULT NULL,
  `cuerpo` text,
  PRIMARY KEY (`id_detalle_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalledocumento`
--

LOCK TABLES `detalledocumento` WRITE;
/*!40000 ALTER TABLE `detalledocumento` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalledocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_documento` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_estado_documento` int(11) NOT NULL,
  `id_detalle_documento` int(11) NOT NULL,
  `id_destinatario` int(11) NOT NULL,
  `id_resolucion` int(11) NOT NULL,
  `codigo_seguimiento` char(1) NOT NULL,
  PRIMARY KEY (`id_documento`),
  UNIQUE KEY `codigo_seguimiento` (`codigo_seguimiento`) /*!80000 INVISIBLE */,
  UNIQUE KEY `id_resolucion` (`id_resolucion`) /*!80000 INVISIBLE */,
  KEY `id_tipo_documento` (`id_tipo_documento`) /*!80000 INVISIBLE */,
  KEY `id_solicitante` (`id_solicitante`) /*!80000 INVISIBLE */,
  KEY `id_estado_documento` (`id_estado_documento`) /*!80000 INVISIBLE */,
  KEY `id_detalle_documento` (`id_detalle_documento`) /*!80000 INVISIBLE */,
  KEY `id_destinatario` (`id_destinatario`) /*!80000 INVISIBLE */,
  CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`id_documento`) REFERENCES `solicitud` (`id_documento`),
  CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`id_documento`) REFERENCES `memorando` (`id_documento`),
  CONSTRAINT `documento_ibfk_3` FOREIGN KEY (`id_documento`) REFERENCES `oficio` (`id_documento`),
  CONSTRAINT `documento_ibfk_4` FOREIGN KEY (`id_estado_documento`) REFERENCES `estadodocumento` (`id_estado_documento`),
  CONSTRAINT `documento_ibfk_5` FOREIGN KEY (`id_detalle_documento`) REFERENCES `detalledocumento` (`id_detalle_documento`),
  CONSTRAINT `documento_ibfk_6` FOREIGN KEY (`id_documento`) REFERENCES `adjunto` (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentoadjunto`
--

DROP TABLE IF EXISTS `documentoadjunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documentoadjunto` (
  `id_documento_adjunto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_documento_adjunto` varchar(20) DEFAULT NULL,
  `detalle_contenido` text NOT NULL,
  `fecha_emision` date DEFAULT NULL,
  `archivo_adjunto` blob,
  `id_dato_adicional` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_documento_adjunto`),
  UNIQUE KEY `codigo_documento_adjunto` (`codigo_documento_adjunto`),
  CONSTRAINT `documentoadjunto_ibfk_1` FOREIGN KEY (`id_documento_adjunto`) REFERENCES `documentoadjuntodatoadicional` (`id_documento_adjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentoadjunto`
--

LOCK TABLES `documentoadjunto` WRITE;
/*!40000 ALTER TABLE `documentoadjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentoadjunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentoadjuntodatoadicional`
--

DROP TABLE IF EXISTS `documentoadjuntodatoadicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documentoadjuntodatoadicional` (
  `id_dato_adicional` int(11) NOT NULL,
  `id_documento_adjunto` int(11) NOT NULL,
  PRIMARY KEY (`id_dato_adicional`,`id_documento_adjunto`),
  KEY `fk_docadjunto_add` (`id_documento_adjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentoadjuntodatoadicional`
--

LOCK TABLES `documentoadjuntodatoadicional` WRITE;
/*!40000 ALTER TABLE `documentoadjuntodatoadicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentoadjuntodatoadicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadodocumento`
--

DROP TABLE IF EXISTS `estadodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estadodocumento` (
  `id_estado_documento` int(11) NOT NULL AUTO_INCREMENT,
  `estado_documento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estado_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadodocumento`
--

LOCK TABLES `estadodocumento` WRITE;
/*!40000 ALTER TABLE `estadodocumento` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `facultad` (
  `cod_facultad` char(1) DEFAULT NULL,
  `nombre_facultad` varchar(50) NOT NULL,
  UNIQUE KEY `cod_facultad` (`cod_facultad`),
  CONSTRAINT `facultad_ibfk_1` FOREIGN KEY (`cod_facultad`) REFERENCES `resolucion` (`cod_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memorando`
--

DROP TABLE IF EXISTS `memorando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `memorando` (
  `id_memorando` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) DEFAULT NULL,
  `asunto_memorando` varchar(255) NOT NULL,
  PRIMARY KEY (`id_memorando`),
  UNIQUE KEY `id_documento` (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memorando`
--

LOCK TABLES `memorando` WRITE;
/*!40000 ALTER TABLE `memorando` DISABLE KEYS */;
/*!40000 ALTER TABLE `memorando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficio`
--

DROP TABLE IF EXISTS `oficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oficio` (
  `id_oficio` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) DEFAULT NULL,
  `membrete` varchar(255) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `despedida` varchar(255) NOT NULL,
  PRIMARY KEY (`id_oficio`),
  UNIQUE KEY `id_documento` (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficio`
--

LOCK TABLES `oficio` WRITE;
/*!40000 ALTER TABLE `oficio` DISABLE KEYS */;
/*!40000 ALTER TABLE `oficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolucion`
--

DROP TABLE IF EXISTS `resolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resolucion` (
  `id_resolucion` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_resolucion` int(11) NOT NULL,
  `codigo_resolucion` varchar(60) DEFAULT NULL,
  `cod_facultad` char(1) NOT NULL,
  PRIMARY KEY (`id_resolucion`),
  UNIQUE KEY `codigo_resolucion` (`codigo_resolucion`),
  KEY `cod_facultad` (`cod_facultad`),
  KEY `fk_resolucion_tipores` (`id_tipo_resolucion`),
  CONSTRAINT `resolucion_ibfk_1` FOREIGN KEY (`id_resolucion`) REFERENCES `decretosresolucion` (`id_resolucion`),
  CONSTRAINT `resolucion_ibfk_2` FOREIGN KEY (`id_resolucion`) REFERENCES `documento` (`id_resolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolucion`
--

LOCK TABLES `resolucion` WRITE;
/*!40000 ALTER TABLE `resolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `resolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitante`
--

DROP TABLE IF EXISTS `solicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `solicitante` (
  `id_solicitante` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `codigo` char(1) NOT NULL,
  `dni` char(1) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_solicitante`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `dni` (`dni`),
  CONSTRAINT `solicitante_ibfk_1` FOREIGN KEY (`id_solicitante`) REFERENCES `documento` (`id_solicitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitante`
--

LOCK TABLES `solicitante` WRITE;
/*!40000 ALTER TABLE `solicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) DEFAULT NULL,
  `sumilla` varchar(255) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  UNIQUE KEY `id_documento` (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipodocumento` (
  `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`),
  CONSTRAINT `fk_tipodocu_documento` FOREIGN KEY (`id_tipo_documento`) REFERENCES `documento` (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporesolucion`
--

DROP TABLE IF EXISTS `tiporesolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tiporesolucion` (
  `id_tipo_resolucion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_resolucion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_resolucion`),
  CONSTRAINT `tiporesolucion_ibfk_1` FOREIGN KEY (`id_tipo_resolucion`) REFERENCES `resolucion` (`id_tipo_resolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporesolucion`
--

LOCK TABLES `tiporesolucion` WRITE;
/*!40000 ALTER TABLE `tiporesolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiporesolucion` ENABLE KEYS */;
UNLOCK TABLES;