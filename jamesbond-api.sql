-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `bonds`
--

DROP TABLE IF EXISTS `bonds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonds`
--

LOCK TABLES `bonds` WRITE;
/*!40000 ALTER TABLE `bonds` DISABLE KEYS */;
INSERT INTO `bonds` VALUES (1,'Daniel Craig','1968-03-02','2019-08-29 09:56:33','2019-08-29 09:56:33'),(2,'Pierce Brosnan','1953-05-16','2019-08-29 11:08:24','2019-08-29 11:08:24'),(3,'Timothy Dalton','1946-03-21','2019-08-29 11:09:28','2019-08-29 11:09:28'),(4,'Roger Moore','1927-10-14','2019-08-29 11:10:08','2019-08-29 11:10:08'),(5,'George Lazenby','1939-09-05','2019-08-29 11:11:09','2019-08-29 11:11:09'),(6,'Sean Connery','1930-08-25','2019-08-29 11:11:57','2019-08-29 11:11:57');
/*!40000 ALTER TABLE `bonds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_film`
--

DROP TABLE IF EXISTS `car_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_film` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `car_id` int(10) unsigned NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `car_film_car_id_foreign` (`car_id`),
  KEY `car_film_film_id_foreign` (`film_id`),
  CONSTRAINT `car_film_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `car_film_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_film`
--

LOCK TABLES `car_film` WRITE;
/*!40000 ALTER TABLE `car_film` DISABLE KEYS */;
INSERT INTO `car_film` VALUES (1,1,16),(5,4,25),(6,5,24),(10,7,21),(12,8,22),(13,8,23),(14,9,20),(15,10,20),(16,11,19),(17,12,17);
/*!40000 ALTER TABLE `car_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `make` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colour` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Lotus','Esprit','white','2019-08-29 13:30:15','2019-08-29 13:30:15'),(4,'Sunbeam Alpine','Series II (1962)','lake blue','2019-08-29 15:36:21','2019-08-29 15:46:46'),(5,'Bentley Mark IV','Drophead 3.5 Litre (1935)','green','2019-08-29 15:37:10','2019-08-29 15:48:25'),(7,'Toyota','2000 GT (1967)','white','2019-08-29 15:43:19','2019-08-29 15:44:58'),(8,'Aston Martin','DB5 (1963','silver','2019-08-29 15:49:59','2019-08-29 15:50:22'),(9,'Aston Martin','DBS (1968)','olive','2019-08-29 15:52:29','2019-08-29 15:52:42'),(10,'Mercury','Cougar XR-7 (1969)','red','2019-08-29 15:53:22','2019-08-29 15:53:22'),(11,'Ford','Mustang Mach 1 (1971)','red','2019-08-29 15:53:53','2019-08-29 15:53:53'),(12,'AMC','Hornet X Hatchback (1974)','red','2019-08-29 15:54:32','2019-08-29 15:54:32');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bond_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `films_bond_id_foreign` (`bond_id`),
  CONSTRAINT `films_bond_id_foreign` FOREIGN KEY (`bond_id`) REFERENCES `bonds` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Spectre','2015-10-26','Sam Mendes','2019-08-29 10:07:49','2019-08-29 10:07:49',1),(2,'Skyfall','2012-10-26','Sam Mendes','2019-08-29 10:12:43','2019-08-29 10:12:43',1),(3,'Quantum of Solace','2012-10-31','Marc Forster','2019-08-29 10:13:55','2019-08-29 10:13:55',1),(4,'Casino Royale','2006-11-16','Martin Campbell','2019-08-29 10:14:01','2019-08-29 10:14:01',1),(5,'Die Another Day','2002-11-20','Lee Tamahori','2019-08-29 11:13:30','2019-08-29 11:13:30',2),(6,'The World Is Not Enough','1999-11-26','Michael Apted','2019-08-29 11:14:19','2019-08-29 11:14:19',2),(7,'Tomorrow Never Dies','1997-12-09','Roger Spottiswoode','2019-08-29 11:15:16','2019-08-29 11:31:01',2),(8,'GoldenEye','1995-11-21','Martin Campbell','2019-08-29 11:15:53','2019-08-29 11:15:53',2),(9,'License To Kill','1989-06-13','John Glen','2019-08-29 11:16:51','2019-08-29 11:16:51',3),(10,'The Living Daylights','1987-06-27','John Glen','2019-08-29 11:17:25','2019-08-29 11:17:25',3),(11,'A View To A Kill','1985-06-13','John Glen','2019-08-29 11:18:07','2019-08-29 11:18:07',4),(12,'Never Say Never Again','1983-12-15','Irvin Kershner','2019-08-29 11:19:32','2019-08-29 11:19:32',6),(13,'Octopussy','1983-06-06','John Glen','2019-08-29 11:20:27','2019-08-29 11:20:27',4),(14,'For Your Eyes Only','1981-06-26','John Glen','2019-08-29 11:20:53','2019-08-29 11:20:53',4),(15,'Moonraker','1979-06-26','Lewis Gilbert','2019-08-29 11:21:48','2019-08-29 11:21:48',4),(16,'The Spy Who Loved Me','1977-07-20','Lewis Gilbert','2019-08-29 11:22:20','2019-08-29 11:22:20',4),(17,'The Man With The Golden Gun','1974-12-19','Guy Hamilton','2019-08-29 11:24:14','2019-08-29 11:24:14',6),(18,'Live and Let Die','1973-01-01','Guy Hamilton','2019-08-29 11:24:45','2019-08-29 11:24:45',6),(19,'Diamonds Are Forever','1971-12-30','Guy Hamilton','2019-08-29 11:25:16','2019-08-29 11:25:16',6),(20,'On Her Majesty\'s Secret Service','1969-12-18','Peter R. Hunt','2019-08-29 11:26:21','2019-08-29 11:26:21',5),(21,'You Only Live Twice','1967-06-13','Lewis Gilbert','2019-08-29 11:27:09','2019-08-29 11:27:09',6),(22,'Thunderball','1965-12-29','Terence Young','2019-08-29 11:27:56','2019-08-29 11:27:56',6),(23,'Goldfinger','1964-09-17','Guy Hamilton','2019-08-29 11:28:36','2019-08-29 11:32:29',6),(24,'From Russia With Love','1963-10-10','Terence Young','2019-08-29 11:29:16','2019-08-29 11:29:16',6),(25,'Dr. No','1962-10-06','Terence Young','2019-08-29 11:29:42','2019-08-29 11:29:42',6);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_28_142232_create_bonds_table',1),(4,'2019_08_28_154423_create_cars_table',1),(5,'2019_08_28_161126_create_films_table',1),(6,'2019_08_29_091608_add_bond_to_films',1),(7,'2019_08_29_114036_create_car_film_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 16:27:34
