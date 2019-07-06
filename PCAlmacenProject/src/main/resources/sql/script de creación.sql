create database `almacenbd`;

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

use almacenbd;

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(30) not null,
  `ciudad` VARCHAR(20) NOT NULL,
  `pais` VARCHAR(20) not null,
  PRIMARY KEY (`id_proveedor`),
  KEY `id_proveedor` (`id_proveedor`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) not null,
  `precio` FLOAT NOT NULL,
  `cantidad` int not null,
  `id_proveedor` int not null,
  PRIMARY KEY (`id_producto`),
  KEY `id_producto` (`id_producto`),
  FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

use almacenbd;

INSERT INTO proveedor(nombre_proveedor, ciudad, pais) 
values ("ChinChing Co.", "Beijing", "China"), 				/*id:1*/
	   ("El Chinito del Tractor S.R.L.", "Lima", "Perú");	/*id:2*/
       
INSERT INTO producto(nombre, precio, cantidad, id_proveedor) 
values ("Memoría RAM 8GB", 505.5, 20, 1),
	   ("Procesador AMD A4", 420.3, 5, 2);
