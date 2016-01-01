-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sysrandevu
-- ------------------------------------------------------
-- Server version	5.5.17

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (4,'Admin52','Ufuk','Palavar','admin@hotmail.com','0(531) 514 14 50','1993-01-01');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doktor`
--

DROP TABLE IF EXISTS `doktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doktor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` date NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doktor`
--

LOCK TABLES `doktor` WRITE;
/*!40000 ALTER TABLE `doktor` DISABLE KEYS */;
INSERT INTO `doktor` VALUES (10,'Ufuk','Palavar','1993-01-01','ufukpalavar52@gmail.com','0(531) 514 14 50');
/*!40000 ALTER TABLE `doktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doktor_bilgi`
--

DROP TABLE IF EXISTS `doktor_bilgi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doktor_bilgi` (
  `doktor_id` int(11) NOT NULL,
  `bilgi` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`doktor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doktor_bilgi`
--

LOCK TABLES `doktor_bilgi` WRITE;
/*!40000 ALTER TABLE `doktor_bilgi` DISABLE KEYS */;
/*!40000 ALTER TABLE `doktor_bilgi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iletisim`
--

DROP TABLE IF EXISTS `iletisim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text COLLATE utf8_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iletisim`
--

LOCK TABLES `iletisim` WRITE;
/*!40000 ALTER TABLE `iletisim` DISABLE KEYS */;
INSERT INTO `iletisim` VALUES (1,'Ali  Veli','ali@gmail.com','Siteniz çok güzel'),(2,'Ufuk Palavar','ufukpalavar52@gmail.com','Siteniz harika Olmuş');
/*!40000 ALTER TABLE `iletisim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanicigiris`
--

DROP TABLE IF EXISTS `kullanicigiris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kullanicigiris` (
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yetki_id` int(11) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanicigiris`
--

LOCK TABLES `kullanicigiris` WRITE;
/*!40000 ALTER TABLE `kullanicigiris` DISABLE KEYS */;
INSERT INTO `kullanicigiris` VALUES ('admin@hotmail.com','44209a6a592dea91bcf7d4dd53e47a5a',1,'dist/resimler/admin/4/4.jpg'),('ufukpalavar52@gmail.com','44209a6a592dea91bcf7d4dd53e47a5a',0,'dist/resimler/doktor/10/10.jpg');
/*!40000 ALTER TABLE `kullanicigiris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musteri`
--

DROP TABLE IF EXISTS `musteri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musteri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musteriAd` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `musteriSoyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci,
  `randevuTarihi` date NOT NULL,
  `saat_id` int(11) NOT NULL,
  `doktor_id` int(11) DEFAULT NULL,
  `randevuOnay` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musteri`
--

LOCK TABLES `musteri` WRITE;
/*!40000 ALTER TABLE `musteri` DISABLE KEYS */;
INSERT INTO `musteri` VALUES (12,'Ali','Veli','ali@gmail.com','0(531) 514 14 50','Dişim Ağrıyor','2016-01-02',4,10,1);
/*!40000 ALTER TABLE `musteri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musteri_detay`
--

DROP TABLE IF EXISTS `musteri_detay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musteri_detay` (
  `detay_id` int(11) NOT NULL AUTO_INCREMENT,
  `musteri_id` int(11) DEFAULT NULL,
  `randevu_tarihi` date DEFAULT NULL,
  `saat_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `doktor_id` int(11) DEFAULT NULL,
  `yapilan_islem` text COLLATE utf8_turkish_ci,
  `yapilacak_islem` text COLLATE utf8_turkish_ci,
  `muayneDurumu` int(255) DEFAULT NULL,
  PRIMARY KEY (`detay_id`),
  KEY `fk_musteri_id` (`musteri_id`),
  CONSTRAINT `fk_musteri_id` FOREIGN KEY (`musteri_id`) REFERENCES `musteri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musteri_detay`
--

LOCK TABLES `musteri_detay` WRITE;
/*!40000 ALTER TABLE `musteri_detay` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteri_detay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saat`
--

DROP TABLE IF EXISTS `saat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saatAdi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saat`
--

LOCK TABLES `saat` WRITE;
/*!40000 ALTER TABLE `saat` DISABLE KEYS */;
INSERT INTO `saat` VALUES (1,'9:00'),(2,'10:00'),(3,'11:00'),(4,'13:00'),(5,'14:00'),(6,'15:00'),(7,'16:00'),(8,'17:00');
/*!40000 ALTER TABLE `saat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sysrandevu'
--

--
-- Dumping routines for database 'sysrandevu'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-01 21:38:44
