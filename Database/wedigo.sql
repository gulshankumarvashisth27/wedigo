/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.21 : Database - wedding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wedding` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `wedding`;

/*Table structure for table `caterer` */

DROP TABLE IF EXISTS `caterer`;

CREATE TABLE `caterer` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `caterer` */

insert  into `caterer`(`id`,`address`,`contact`,`name`,`price`) values 
(13,'','','kp','1489');

/*Table structure for table `dj` */

DROP TABLE IF EXISTS `dj`;

CREATE TABLE `dj` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `dj` */

insert  into `dj`(`id`,`address`,`contact`,`name`,`price`) values 
(9,'chennai','898989898','shukhvir','965');

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(19);

/*Table structure for table `photographer` */

DROP TABLE IF EXISTS `photographer`;

CREATE TABLE `photographer` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `photographer` */

insert  into `photographer`(`id`,`address`,`contact`,`name`,`price`) values 
(8,'208','09466992551','Gulshan kumar Vashisth','4944'),
(14,'new delhi','123456789','Kp','80,000');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `register` */

insert  into `register`(`id`,`about`,`email`,`gender`,`name`,`password`) values 
(2,'gcgcd','gulshankumarvashisth@gmail.com','Male','Gulshan Kumar Vashisth','sonu'),
(3,'fefe','himanshu@gmail','Male','Himanshu Vashisth','himu'),
(5,'wfqwfq3','p@gmail.com','Female','parnita','p');

/*Table structure for table `weddinghall` */

DROP TABLE IF EXISTS `weddinghall`;

CREATE TABLE `weddinghall` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `weddinghall` */

insert  into `weddinghall`(`id`,`address`,`contact`,`name`,`price`) values 
(7,'new delhi','09466992551','Gulshan kumar Vashisth','1489'),
(10,'mumbai','848496161','hotel neel kanth','255');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
