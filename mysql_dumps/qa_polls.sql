-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: qa_polls
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls_choice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int NOT NULL,
  `question_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,'Saints',0,2),(2,'Harlequins',0,2),(3,'Saracens',0,2),(4,'Wasps',0,2),(5,'False',0,3),(6,'True',0,3),(7,'Tuatara',0,4),(8,'Komodo Dragon',0,4),(9,'Gila Monster',0,4),(10,'Green Iguana',0,4),(11,'White Christmas',0,5),(12,'Frosty the Snowman',0,5),(13,'Rudolph the Red-Nosed Reindeer',0,5),(14,'Here Comes Santa Claus',0,5),(15,'Madeira',0,6),(16,'Terceira',0,6),(17,'Santa Maria',0,6),(18,'Porto Santo',0,6),(19,'Paper',0,7),(20,'Phones',0,7),(21,'Computers',0,7),(22,'Processors',0,7),(23,'U2',0,8),(24,'Radiohead',0,8),(25,'Coldplay',0,8),(26,'Bon Jovi',0,8),(27,'Parentheses, Exponents, Multiplication, Division, Addition, Subtraction',0,9),(28,'Addition, Multiplication, Division, Subtraction, Addition, Parentheses',0,9),(29,'Parentheses, Exponents, Addition, Substraction, Multiplication, Division',0,9),(30,'The order in which the operations are written.',0,9),(31,'St. Marguerite',0,10),(32,'St. Augustine',0,10),(33,'St. Mary',0,10),(34,'St. Bernadette',0,10),(35,'Theodore',0,11),(36,'Elizabeth',0,11),(37,'Margaret',0,11),(38,'Marie',0,11),(39,'Yu Narukami',0,12),(40,'Yosuke Hanamura',0,12),(41,'Chie Satonaka',0,12),(42,'Rise Kujikawa',0,12),(43,'Makoto Yuki',0,13),(44,'Yu Narukami',0,13),(45,'Minato Arisato',0,13),(46,'Souji Seta',0,13),(47,'Ren Amamiya',0,14),(48,'Yu Narukami',0,14),(49,'Akira Kurusu',0,14),(50,'Souji Seta',0,14),(51,'Tatsuya Suou',0,15),(52,'Yu Narukami',0,15),(53,'Minato Arisato',0,15),(54,'Souji Seta',0,15),(55,'Naoya Toudou',0,16),(56,'Yu Narukami',0,16),(57,'Minato Arisato',0,16),(58,'Souji Seta',0,16);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (2,'What is the nickname of Northampton town\'s rugby union club?','2023-08-06 22:56:00.000000'),(3,'The color of the pills in the Matrix were Blue and Yellow.','2023-08-06 22:56:00.000000'),(4,'Which of these animals is NOT a lizard?','2023-08-06 22:56:00.000000'),(5,'\"The Singing Cowboy\" Gene Autry is credited with the first recording for all but which classic Christmas jingle?','2023-08-06 22:56:00.000000'),(6,'Which portuguese island is soccer player Cristiano Ronaldo from?','2023-08-06 22:56:00.000000'),(7,'Which product did Nokia, the telecommunications company, originally sell?','2023-08-06 22:56:00.000000'),(8,'Which of these bands was a featuring artist in Compton rapper Kendrick Lamar\'s 2017 album, \"DAMN.\"?','2023-08-06 22:56:00.000000'),(9,'What is the correct order of operations for solving equations?','2023-08-06 22:56:00.000000'),(10,'What is the name of the school in the anime and manga \"Gosick\"?','2023-08-06 22:56:00.000000'),(11,'Which member of the Velvet Room is not a playable character in Persona 4 Arena Ultimax?','2023-08-06 22:56:00.000000'),(12,'What is the name of the main protagonist in Persona 4?','2023-08-06 22:56:00.000000'),(13,'What is the name of the main protagonist in Persona 3?','2023-08-06 22:56:00.000000'),(14,'What is the name of the main protagonist in Persona 5?','2023-08-06 22:56:00.000000'),(15,'What is the name of the main protagonist in Persona 2?','2023-08-06 22:56:00.000000'),(16,'What is the name of the main protagonist in Persona 1?','2023-08-06 22:56:00.000000');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023
