-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: weather_data
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB-1~trusty

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `weather_data`
--
drop database `weather_data`;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `weather_data` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weather_data`;

--
-- Table structure for table `Station_sensors`
--

DROP TABLE IF EXISTS `Station_sensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Station_sensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_hash` varchar(64) NOT NULL,
  `dht11` tinyint(1) NOT NULL,
  `dht22` tinyint(1) NOT NULL,
  `bmp085` tinyint(1) NOT NULL,
  `bmp180` tinyint(1) NOT NULL,
  `bmp280` tinyint(1) NOT NULL,
  `thermistor` tinyint(1) NOT NULL,
  `analog_temp_sensor` tinyint(1) NOT NULL,
  `photoresistor` tinyint(1) NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `am2302` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stations`
--

DROP TABLE IF EXISTS `Stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(255) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `lastupdate` varchar(32) DEFAULT NULL,
  `station_key` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `station_hash` (`station_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `am2302`
--

DROP TABLE IF EXISTS `am2302`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am2302` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `humidity` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `analog_temp_sensor`
--

DROP TABLE IF EXISTS `analog_temp_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analog_temp_sensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bmp085`
--

DROP TABLE IF EXISTS `bmp085`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmp085` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pressure` float NOT NULL,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `altitude` float NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bmp180`
--

DROP TABLE IF EXISTS `bmp180`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmp180` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pressure` float NOT NULL,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `altitude` float NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bmp280`
--

DROP TABLE IF EXISTS `bmp280`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmp280` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pressure` float NOT NULL,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `altitude` float NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dht11`
--

DROP TABLE IF EXISTS `dht11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dht11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `humidity` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dht22`
--

DROP TABLE IF EXISTS `dht22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dht22` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `humidity` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoresistor`
--

DROP TABLE IF EXISTS `photoresistor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoresistor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photolevel` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `power_monitor`
--

DROP TABLE IF EXISTS `power_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_monitor` (
	`id` INT(255) NOT NULL AUTO_INCREMENT,
	`voltage` FLOAT NOT NULL,
	`shunt_mV` FLOAT NOT NULL,
	`current_mA` int(11) NOT NULL,
	`power_mW` FLOAT NOT NULL,
	`station_hash` VARCHAR(64) NOT NULL,
	`channel` INT(11) NOT NULL,
	`timestamp` VARCHAR(255) NOT NULL,

	`buffered_data` tinyint(4) DEFAULT '0',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `thermistor`
--

DROP TABLE IF EXISTS `thermistor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thermistor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_temp` int(11) NOT NULL,
  `f_temp` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Table structure for table `wind_speed`
--

DROP TABLE IF EXISTS `wind_speed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wind_speed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `miles_per_hour` float(3,2) NOT NULL,
  `meters_per_second` float(3,2) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

--
-- Table structure for table `wind_direction`
--

DROP TABLE IF EXISTS `wind_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wind_direction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direction` int(11) NOT NULL,
  `station_hash` varchar(64) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `buffered_data` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
