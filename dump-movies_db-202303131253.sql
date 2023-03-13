-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: movies_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor_episode`
--

DROP TABLE IF EXISTS `actor_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_episode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) unsigned NOT NULL,
  `episode_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor_episode_actor_id_foreign` (`actor_id`),
  KEY `actor_episode_episode_id_foreign` (`episode_id`),
  CONSTRAINT `actor_episode_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  CONSTRAINT `actor_episode_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_episode`
--

LOCK TABLES `actor_episode` WRITE;
/*!40000 ALTER TABLE `actor_episode` DISABLE KEYS */;
INSERT INTO `actor_episode` VALUES (1,32,1),(2,32,2),(3,32,3),(4,32,4),(5,32,5),(6,33,1),(7,33,2),(8,33,3),(9,33,4),(10,33,5),(11,33,6),(12,34,1),(13,34,2),(14,34,4),(15,34,5),(16,34,6),(17,35,7),(18,35,8),(19,35,9),(20,35,10),(21,35,11),(22,35,12),(23,35,13),(24,35,15),(25,35,16),(26,35,17),(27,36,7),(28,36,8),(29,36,9),(30,36,10),(31,36,13),(32,36,14),(33,36,15),(34,36,16),(35,36,17),(36,37,7),(37,37,8),(38,37,9),(39,37,10),(40,37,11),(41,37,12),(42,37,13),(43,37,14),(44,37,15),(45,37,17),(46,38,18),(47,38,19),(48,38,20),(49,38,22),(50,38,23),(51,39,18),(52,39,19),(53,39,20),(54,39,21),(55,39,22),(56,39,23),(57,40,19),(58,40,20),(59,40,21),(60,40,22),(61,40,23),(62,41,24),(63,41,25),(64,41,26),(65,41,27),(66,41,28),(67,42,24),(68,42,25),(69,42,26),(70,42,27),(71,42,28),(72,43,24),(73,43,26),(74,43,27),(75,43,28),(76,44,29),(77,44,30),(78,44,31),(79,44,32),(80,44,33),(81,44,34),(82,44,35),(83,44,36),(84,44,37),(85,45,29),(86,45,31),(87,45,32),(88,45,33),(89,45,34),(90,45,35),(91,45,36),(92,45,37),(93,46,29),(94,46,30),(95,46,33),(96,46,35),(97,46,36),(98,46,37),(99,47,38),(100,47,39),(101,47,40),(102,47,41),(103,47,42),(104,47,45),(105,47,46),(106,47,47),(107,47,48),(108,47,49),(109,47,50),(110,47,51),(111,47,52),(112,47,53),(113,47,54),(114,47,55),(115,47,56),(116,48,40),(117,48,41),(118,48,42),(119,48,43),(120,48,44),(121,48,45),(122,48,47),(123,48,48),(124,48,49),(125,48,50),(126,48,51),(127,48,52),(128,48,54),(129,48,55),(130,48,56),(131,48,57),(132,49,38),(133,49,39),(134,49,40),(135,49,41),(136,49,42),(137,49,43),(138,49,44),(139,49,46),(140,49,47),(141,49,48),(142,49,49),(143,49,50),(144,49,51),(145,49,52),(146,49,54),(147,49,55),(148,49,57);
/*!40000 ALTER TABLE `actor_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_movie`
--

DROP TABLE IF EXISTS `actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) unsigned NOT NULL,
  `movie_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor_movie_actor_id_foreign` (`actor_id`),
  KEY `actor_movie_movie_id_foreign` (`movie_id`),
  CONSTRAINT `actor_movie_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  CONSTRAINT `actor_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_movie`
--

LOCK TABLES `actor_movie` WRITE;
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
INSERT INTO `actor_movie` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,3),(8,7,4),(9,8,3),(10,8,4),(11,9,3),(12,9,4),(13,10,5),(14,11,5),(15,12,5),(16,13,6),(17,13,8),(18,13,9),(19,14,6),(20,14,8),(21,14,9),(22,15,6),(23,15,8),(24,15,9),(25,16,7),(26,17,7),(27,18,7),(28,19,10),(29,20,10),(30,21,11),(31,22,11),(32,22,9),(33,23,11),(34,24,12),(35,25,12),(36,26,12),(37,27,13),(38,27,14),(39,27,19),(40,28,13),(41,28,14),(42,29,20),(43,30,21);
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `favorite_movie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actors_favorite_movie_id_foreign` (`favorite_movie_id`),
  CONSTRAINT `actors_favorite_movie_id_foreign` FOREIGN KEY (`favorite_movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Sam','Worthington',7.5,1),(2,'Zoe','Saldana',5.5,2),(3,'Sigourney','Weaver',9.7,NULL),(4,'Leonardo','Di Caprio',3.5,4),(5,'Kate','Winslet',1.5,5),(6,'Billy','Zane',7.5,6),(7,'Mark','Hamill',6.5,7),(8,'Harrison','Ford',7.5,8),(9,'Carrie','Fisher',7.5,9),(10,'Sam','Neill',2.5,10),(11,'Laura','Dern',7.5,11),(12,'Jeff','Goldblum',4.5,NULL),(13,'Daniel','Radcliffe',7.5,13),(14,'Emma','Watson',2.5,14),(15,'Rupert','Grint',6.2,15),(16,'Shia','LaBeouf',9.5,16),(17,'Rosie','Huntington-Whiteley',1.5,17),(18,'Matthew','Broderick',6.1,18),(19,'James','Earl Jones',7.5,19),(20,'Jeremy','Irons',7.2,20),(21,'Johnny','Depp',1.5,21),(22,'Helena','Bonham Carter',7.5,1),(23,'Mia','Wasikowska',7.5,2),(24,'Albert','Brooks',2.5,3),(25,'Ellen','DeGeneres',2.6,4),(26,'Alexander','Gould',7.5,5),(27,'Tom','Hanks',4.4,6),(28,'Tim','Allen',7.5,7),(29,'Sean','Penn',9.2,8),(30,'Adam','Sandler',3.1,9),(31,'Renee','Zellweger',9.5,10),(32,'Emilia','Clarke',8.2,11),(33,'Peter','Dinklage',2.3,12),(34,'Kit','Harington',2.4,NULL),(35,'Jared','Padalecki',2.8,14),(36,'Jensen','Ackles',5.5,15),(37,'Jim','Beaver',2.6,16),(38,'Andrew','Lincoln',3.3,17),(39,'Jon','Bernthal',2.9,NULL),(40,'Sarah','Callies',2.4,19),(41,'Jim','Caviezel',1.9,20),(42,'Taraji','Henson',5.9,21),(43,'Kevin','Chapman',2.9,1),(44,'Johnny','Galecki',2.3,2),(45,'Jim','Parsons',6.9,3),(46,'Kaley','Cuoco',2.3,4),(47,'Bryan','Cranston',7.9,NULL),(48,'Aaron','Paul',5.9,6),(49,'Anna','Gunn',3.1,7);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `release_date` datetime NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `season_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episodes_season_id_foreign` (`season_id`),
  CONSTRAINT `episodes_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
INSERT INTO `episodes` VALUES (1,'Winter Is Coming',1,'2011-01-01 00:00:00',7.3,1),(2,'The North Remembers',1,'2012-01-01 00:00:00',8.3,2),(3,'Valar Dohaeris',1,'2013-01-01 00:00:00',6.3,3),(4,'Two Swords',1,'2014-01-01 00:00:00',7.5,4),(5,'The Wars to Come',1,'2015-01-01 00:00:00',9.3,5),(6,'The Red Woman',1,'2016-01-01 00:00:00',7.7,6),(7,'Pilot',1,'2005-01-01 00:00:00',7.3,8),(8,'In My Time of Dying',1,'2006-01-01 00:00:00',8.3,9),(9,'The Magnificent Seven',1,'2007-01-01 00:00:00',6.3,10),(10,'Lazarus Rising',1,'2008-01-01 00:00:00',7.5,11),(11,'Sympathy for the Devil',1,'2009-01-01 00:00:00',9.3,12),(12,'Exile on Main St.',1,'2010-01-01 00:00:00',7.7,13),(13,'Meet the New Boss',1,'2011-01-01 00:00:00',7.3,14),(14,'We Need to Talk About Kevin',1,'2012-01-01 00:00:00',8.3,15),(15,'I Think Im Gonna Like It Here',1,'2013-01-01 00:00:00',6.3,16),(16,'A Very Special Supernatural Special',1,'2014-01-01 00:00:00',7.5,17),(17,'Out of the Darkness, Into the Fire',1,'2015-01-01 00:00:00',9.3,18),(18,'Days Gone Bye',1,'2010-01-01 00:00:00',7.3,20),(19,'What Lies Ahead',1,'2011-01-01 00:00:00',8.3,21),(20,'Seed',1,'2012-01-01 00:00:00',6.3,22),(21,'30 Days Without an Accident',1,'2013-01-01 00:00:00',7.5,23),(22,'No Sanctuary',1,'2014-01-01 00:00:00',9.3,24),(23,'First Time Again',1,'2015-01-01 00:00:00',7.7,25),(24,'Pilot',1,'2011-01-01 00:00:00',7.3,27),(25,'The Contingency',1,'2012-01-01 00:00:00',8.3,28),(26,'Liberty',1,'2013-01-01 00:00:00',6.3,29),(27,'Panopticon',1,'2015-01-01 00:00:00',7.5,30),(28,'B.S.O.D.',1,'2016-01-01 00:00:00',9.3,31),(29,'Pilot',1,'2005-01-01 00:00:00',7.3,32),(30,'The Bad Fish Paradigm',1,'2006-01-01 00:00:00',8.3,33),(31,'The Electric Can Opener Fluctuation',1,'2007-01-01 00:00:00',6.3,34),(32,'The Robotic Manipulation',1,'2008-01-01 00:00:00',7.5,35),(33,'The Skank Reflex Analysis',1,'2009-01-01 00:00:00',9.3,36),(34,'The Date Night Variable',1,'2010-01-01 00:00:00',7.7,37),(35,'The Hofstadter Insufficiency',1,'2011-01-01 00:00:00',7.3,38),(36,'The Locomotion Interruption',1,'2012-01-01 00:00:00',8.3,39),(37,'The Matrimonial Momentum',1,'2013-01-01 00:00:00',6.3,40),(38,'Pilot',1,'2009-01-01 00:00:00',7.3,42),(39,'Seven Thirty-Seven',1,'2010-01-01 00:00:00',8.3,43),(40,'No Más',1,'2011-01-01 00:00:00',6.3,44),(41,'Box Cutter',1,'2012-01-01 00:00:00',7.5,45),(42,'Live Free or Die',1,'2013-01-01 00:00:00',9.3,46),(43,'Madrigal',2,'2013-02-01 00:00:00',9.3,46),(44,'Hazard Pay',3,'2013-03-01 00:00:00',9.3,46),(45,'Fifty-One',4,'2013-04-01 00:00:00',9.3,46),(46,'Dead Freight',5,'2013-05-01 00:00:00',9.3,46),(47,'Buyout',6,'2013-06-01 00:00:00',9.3,46),(48,'Say My Name',7,'2013-06-01 00:00:00',9.3,46),(49,'Gliding Over All',8,'2013-07-01 00:00:00',9.3,46),(50,'Blood Money',9,'2013-07-01 00:00:00',9.3,46),(51,'Buried',10,'2013-07-01 00:00:00',9.3,46),(52,'Confessions',11,'2013-08-01 00:00:00',9.3,46),(53,'Rabid Dog',12,'2013-09-01 00:00:00',9.3,46),(54,'To hajiilee',13,'2013-10-01 00:00:00',9.3,46),(55,'Ozymandias',14,'2013-11-01 00:00:00',9.3,46),(56,'Granite State',15,'2013-12-01 00:00:00',9.3,46),(57,'Felina',16,'2013-12-01 00:00:00',9.3,46);
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ranking` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genres_ranking_unique` (`ranking`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Comedia',1,1),(2,'Terror',2,1),(3,'Drama',3,1),(4,'Accion',4,1),(5,'Ciencia Ficcion',5,1),(6,'Suspenso',6,1),(7,'Animacion',7,1),(8,'Aventuras',8,1),(9,'Documental',9,1),(10,'Infantiles',10,1),(11,'Fantasia',11,1),(12,'Musical',12,1);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_10_17_130820_create_genres_table',1),(4,'2016_10_17_130829_create_movies_table',1),(5,'2016_10_17_130842_create_series_table',1),(6,'2016_10_17_130849_create_seasons_table',1),(7,'2016_10_17_130903_create_episodes_table',1),(8,'2016_10_17_130913_create_actors_table',1),(9,'2016_10_17_130925_create_actor_movie_table',1),(10,'2016_10_17_130938_create_actor_episode_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `rating` decimal(3,1) unsigned NOT NULL,
  `awards` int(10) unsigned NOT NULL DEFAULT 0,
  `release_date` datetime NOT NULL,
  `length` int(10) unsigned DEFAULT NULL,
  `genre_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movies_genre_id_foreign` (`genre_id`),
  CONSTRAINT `movies_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Avatar',7.9,3,'2010-10-04 00:00:00',120,6),(2,'Titanic',7.7,11,'1997-09-04 00:00:00',320,3),(3,'La Guerra de las galaxias: Episodio VI',9.1,7,'2004-07-04 00:00:00',NULL,5),(4,'La Guerra de las galaxias: Episodio VII',9.0,5,'2003-11-04 00:00:00',180,5),(5,'Parque Jurasico',8.3,5,'1999-01-04 00:00:00',270,5),(6,'Harry Potter y las Reliquias de la Muerte - Parte 2',9.0,2,'2008-07-04 00:00:00',190,6),(7,'Transformers: el lado oscuro de la luna',0.9,1,'2005-07-04 00:00:00',NULL,5),(8,'Harry Potter y la piedra filosofal',10.0,1,'2008-04-04 00:00:00',120,8),(9,'Harry Potter y la cámara de los secretos',3.5,2,'2009-08-04 00:00:00',200,8),(10,'El rey león',9.1,3,'2000-02-04 00:00:00',NULL,10),(11,'Alicia en el país de las maravillas',5.7,2,'2008-07-04 00:00:00',120,NULL),(12,'Buscando a Nemo',8.3,2,'2000-07-04 00:00:00',110,7),(13,'Toy Story',6.1,0,'2008-03-04 00:00:00',150,7),(14,'Toy Story 2',3.2,2,'2003-04-04 00:00:00',120,7),(15,'La vida es bella',8.3,5,'1994-10-04 00:00:00',NULL,3),(16,'Mi pobre angelito',3.2,1,'1989-01-04 00:00:00',120,1),(17,'Intensamente',9.0,2,'2008-07-04 00:00:00',120,7),(18,'Carrozas de fuego',9.9,7,'1980-07-04 00:00:00',180,NULL),(19,'Big',7.3,2,'1988-02-04 00:00:00',130,8),(20,'I am Sam',9.0,4,'1999-03-04 00:00:00',130,3),(21,'Hotel Transylvania',7.1,1,'2012-05-04 00:00:00',90,10);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `release_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `serie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seasons_serie_id_foreign` (`serie_id`),
  CONSTRAINT `seasons_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'Primer Temporada',1,'2011-01-01 00:00:00','2011-01-01 00:00:00',1),(2,'Segunda Temporada',2,'2012-01-01 00:00:00','2012-01-01 00:00:00',1),(3,'Tercer Temporada',3,'2013-01-01 00:00:00','2013-01-01 00:00:00',1),(4,'Cuarta Temporada',4,'2014-01-01 00:00:00','2014-01-01 00:00:00',1),(5,'Quinta Temporada',5,'2015-01-01 00:00:00','2015-01-01 00:00:00',1),(6,'Sexta Temporada',6,'2016-01-01 00:00:00','2016-01-01 00:00:00',1),(7,'Septima Temporada',7,'2017-01-01 00:00:00','2017-01-01 00:00:00',1),(8,'Primer Temporada',1,'2005-01-01 00:00:00','2006-01-01 00:00:00',2),(9,'Segunda Temporada',2,'2006-01-01 00:00:00','2007-01-01 00:00:00',2),(10,'Tercer Temporada',3,'2007-01-01 00:00:00','2008-01-01 00:00:00',2),(11,'Cuarta Temporada',4,'2008-01-01 00:00:00','2009-01-01 00:00:00',2),(12,'Quinta Temporada',5,'2009-01-01 00:00:00','2010-01-01 00:00:00',2),(13,'Sexta Temporada',6,'2010-01-01 00:00:00','2011-01-01 00:00:00',2),(14,'Septima Temporada',7,'2011-01-01 00:00:00','2012-01-01 00:00:00',2),(15,'Octava Temporada',8,'2012-01-01 00:00:00','2013-01-01 00:00:00',2),(16,'Novena Temporada',9,'2013-01-01 00:00:00','2014-01-01 00:00:00',2),(17,'Decima Temporada',10,'2014-01-01 00:00:00','2015-01-01 00:00:00',2),(18,'Undecima Temporada',11,'2015-01-01 00:00:00','2016-01-01 00:00:00',2),(19,'Duodecima Temporada',12,'2016-01-01 00:00:00','2017-01-01 00:00:00',2),(20,'Primer Temporada',1,'2010-01-01 00:00:00','2010-01-01 00:00:00',3),(21,'Segunda Temporada',2,'2011-01-01 00:00:00','2012-01-01 00:00:00',3),(22,'Tercer Temporada',3,'2012-01-01 00:00:00','2013-01-01 00:00:00',3),(23,'Cuarta Temporada',4,'2013-01-01 00:00:00','2014-01-01 00:00:00',3),(24,'Quinta Temporada',5,'2014-01-01 00:00:00','2015-01-01 00:00:00',3),(25,'Sexta Temporada',6,'2015-01-01 00:00:00','2016-01-01 00:00:00',3),(26,'Septima Temporada',7,'2016-01-01 00:00:00','2017-01-01 00:00:00',3),(27,'Primer Temporada',1,'2011-01-01 00:00:00','2012-01-01 00:00:00',4),(28,'Segunda Temporada',2,'2012-01-01 00:00:00','2013-01-01 00:00:00',4),(29,'Tercer Temporada',3,'2013-01-01 00:00:00','2014-01-01 00:00:00',4),(30,'Cuarta Temporada',4,'2014-01-01 00:00:00','2015-01-01 00:00:00',4),(31,'Quinta Temporada',5,'2015-01-01 00:00:00','2016-01-01 00:00:00',4),(32,'Primer Temporada',1,'2006-01-01 00:00:00','2008-01-01 00:00:00',5),(33,'Segunda Temporada',2,'2008-01-01 00:00:00','2009-01-01 00:00:00',5),(34,'Tercer Temporada',3,'2009-01-01 00:00:00','2010-01-01 00:00:00',5),(35,'Cuarta Temporada',4,'2010-01-01 00:00:00','2011-01-01 00:00:00',5),(36,'Quinta Temporada',5,'2011-01-01 00:00:00','2012-01-01 00:00:00',5),(37,'Sexta Temporada',6,'2012-01-01 00:00:00','2013-01-01 00:00:00',5),(38,'Septima Temporada',7,'2013-01-01 00:00:00','2014-01-01 00:00:00',5),(39,'Octava Temporada',8,'2014-01-01 00:00:00','2015-01-01 00:00:00',5),(40,'Novena Temporada',9,'2015-01-01 00:00:00','2016-01-01 00:00:00',5),(41,'Decima Temporada',10,'2016-01-01 00:00:00','2017-01-01 00:00:00',5),(42,'Primer Temporada',1,'2008-01-01 00:00:00','2008-01-01 00:00:00',6),(43,'Segunda Temporada',2,'2009-01-01 00:00:00','2009-01-01 00:00:00',6),(44,'Tercer Temporada',3,'2010-01-01 00:00:00','2010-01-01 00:00:00',6),(45,'Cuarta Temporada',4,'2011-01-01 00:00:00','2011-01-01 00:00:00',6),(46,'Quinta Temporada',5,'2012-01-01 00:00:00','2012-01-01 00:00:00',6);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `release_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `genre_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `series_genre_id_foreign` (`genre_id`),
  CONSTRAINT `series_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Game of Thrones','2011-01-01 00:00:00','2016-03-04 00:00:00',11),(2,'Supernatural','2005-01-01 00:00:00','2016-01-04 00:00:00',6),(3,'The Walking Dead','2010-01-01 00:00:00','2016-01-04 00:00:00',2),(4,'Person of Interest','2011-01-01 00:00:00','2015-01-04 00:00:00',4),(5,'The Big Bang Theory','2007-01-01 00:00:00','2016-01-04 00:00:00',1),(6,'Breaking Bad','2008-01-01 00:00:00','2013-01-04 00:00:00',3);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `rol` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'movies_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-13 12:53:35
