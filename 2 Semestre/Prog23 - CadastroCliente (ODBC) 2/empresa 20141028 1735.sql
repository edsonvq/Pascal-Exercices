-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.27


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema empresa
--

CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

--
-- Definition of table `meta_vendas`
--

DROP TABLE IF EXISTS `meta_vendas`;
CREATE TABLE `meta_vendas` (
  `CodVendedor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Vendedor` varchar(20) NOT NULL,
  `TotalVendido` double NOT NULL,
  `MetaVenda` double NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Cidade` varchar(20) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  PRIMARY KEY (`CodVendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_vendas`
--

/*!40000 ALTER TABLE `meta_vendas` DISABLE KEYS */;
INSERT INTO `meta_vendas` (`CodVendedor`,`Vendedor`,`TotalVendido`,`MetaVenda`,`Sexo`,`Cidade`,`DDD`,`Celular`) VALUES 
 (1,'Bruno',1000,800,'Masculino','Rio Claro','19','912345678'),
 (2,'Edson',700,800,'M','Rio Claro','19','91235697'),
 (3,'John',500,800,'M','Rio Claro','19','09876543'),
 (4,'Mayara',1000,900,'F','Rio Claro','19','956554656');
/*!40000 ALTER TABLE `meta_vendas` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
