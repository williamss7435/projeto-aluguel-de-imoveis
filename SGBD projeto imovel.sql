/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.7.19-log : Database - dados
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dados` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dados`;

/*Table structure for table `imovel` */

DROP TABLE IF EXISTS `imovel`;

CREATE TABLE `imovel` (
  `codigo` varchar(10) NOT NULL,
  `cep` int(10) NOT NULL,
  `valor_aluguel` float(6,2) DEFAULT NULL,
  `comissao` int(3) DEFAULT NULL,
  `proprietario` varchar(50) DEFAULT NULL,
  `locatario` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `data_inicio` varchar(12) DEFAULT NULL,
  `data_fim` varchar(12) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `imovel` */

insert  into `imovel`(`codigo`,`cep`,`valor_aluguel`,`comissao`,`proprietario`,`locatario`,`endereco`,`data_inicio`,`data_fim`,`descricao`) values 
('1',8081400,1500.00,5,'William Dos Santos','Raiza Pimentel','Rua A','2017-11-02','2020-07-06','sadasd'),
('2',8081301,2000.00,3,'Higor Dos Santos','Tania Pereira','Rua Dos Pumas','2017-08-02','2050-12-04','Descrição 2');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `nome` varchar(50) NOT NULL,
  `cpf` int(15) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `creci` int(25) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`nome`,`cpf`,`usuario`,`senha`,`email`,`creci`) values 
('admin',0,'admin','admin','admin@admin',0),
('William Dos Santos',123123,'will','1234','www@www.com',555555),
('sdfsdf',234234,'2324342','','WWWW@123123.com',234234);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
