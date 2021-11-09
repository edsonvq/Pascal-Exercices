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
-- Create schema lojaplus
--

CREATE DATABASE IF NOT EXISTS lojaplus;
USE lojaplus;

--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `CodCliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Telefone` varchar(9) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `CPF` varchar(12) NOT NULL,
  PRIMARY KEY (`CodCliente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `CodProduto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Produto` varchar(45) NOT NULL,
  `Valor` double NOT NULL,
  `Estoque` int(10) unsigned NOT NULL,
  `Marca` varchar(45) NOT NULL,
  PRIMARY KEY (`CodProduto`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produtos`
--

/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`CodProduto`,`Produto`,`Valor`,`Estoque`,`Marca`) VALUES 
 (1,'Teclado',90,33,'Razer'),
 (2,'Monitor',200,1,'LG'),
 (3,'Mouse',20,30,'Itautec'),
 (4,'Estabilizador',50,15,'Enermax'),
 (5,'Papel',10,100,'Papex');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;


--
-- Definition of table `venda`
--

DROP TABLE IF EXISTS `venda`;
CREATE TABLE `venda` (
  `Codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CodVenda` int(10) unsigned NOT NULL,
  `CodCliente` int(10) unsigned NOT NULL,
  `CodProduto` int(10) unsigned NOT NULL,
  `Data` datetime NOT NULL,
  `Valor` double NOT NULL,
  `Quantidade` int(10) unsigned NOT NULL,
  `Cliente` varchar(45) NOT NULL,
  `Produto` varchar(45) NOT NULL,
  PRIMARY KEY (`Codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venda`
--

/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
