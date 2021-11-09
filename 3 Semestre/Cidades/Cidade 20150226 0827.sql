-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.21


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cidade
--

CREATE DATABASE IF NOT EXISTS cidade;
USE cidade;

--
-- Definition of table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE `cidades` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cidades`
--

/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;


--
-- Definition of table `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `codigo` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estados`
--

/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` (`codigo`,`estado`) VALUES 
 (1,'AC'),
 (2,'AL'),
 (3,'AP'),
 (4,'AM'),
 (5,'BA'),
 (6,'CE'),
 (7,'DF'),
 (8,'GO'),
 (9,'ES'),
 (10,'MA'),
 (11,'MT'),
 (12,'MS'),
 (13,'MG'),
 (14,'PA'),
 (15,'PB'),
 (16,'PR'),
 (17,'PE'),
 (18,'PI'),
 (19,'RJ'),
 (20,'RN'),
 (21,'RS'),
 (22,'RO'),
 (23,'RR'),
 (24,'SP'),
 (25,'SC'),
 (26,'SE'),
 (27,'TO');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
