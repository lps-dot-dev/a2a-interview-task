-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: a2a_theaters
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(24,'2024_11_25_012950_create_theaters_table',2),(25,'2024_11_25_013834_create_movies_table',2),(26,'2024_11_25_021125_create_theater_movies_table',2),(27,'2024_11_25_023148_create_theater_movie_transactions_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plot` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` date NOT NULL,
  `runtime` int DEFAULT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Venom: The Last Dance',NULL,'Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie\'s last dance.','en',NULL,NULL,'2024-10-22',NULL,NULL,NULL,NULL),(2,'Smile 2',NULL,'About to embark on a new world tour, global pop sensation Skye Riley begins experiencing increasingly terrifying and inexplicable events. Overwhelmed by the escalating horrors and the pressures of fame, Skye is forced to face her dark past to regain control of her life before it spirals out of control.','en',NULL,NULL,'2024-10-16',NULL,NULL,NULL,NULL),(3,'The Wild Robot',NULL,'After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island\'s animals and cares for an orphaned baby goose.','en',NULL,NULL,'2024-09-12',NULL,NULL,NULL,NULL),(4,'Gladiator II',NULL,'Years after witnessing the death of the revered hero Maximus at the hands of his uncle, Lucius is forced to enter the Colosseum after his home is conquered by the tyrannical Emperors who now lead Rome with an iron fist. With rage in his heart and the future of the Empire at stake, Lucius must look to his past to find strength and honor to return the glory of Rome to its people.','en',NULL,NULL,'2024-11-13',NULL,NULL,NULL,NULL),(5,'Terrifier 3',NULL,'Five years after surviving Art the Clown\'s Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they\'re safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.','en',NULL,NULL,'2024-10-09',NULL,NULL,NULL,NULL),(6,'Wicked',NULL,'Elphaba, a young woman misunderstood because of her green skin, and Glinda, a popular aristocrat gilded by privilege, become unlikely friends in the fantastical Land of Oz. As the two women struggle with their opposing personalities, their friendship is tested as both begin to fulfill their destinies as Glinda the Good and the Wicked Witch of the West.','en',NULL,NULL,'2024-11-20',NULL,NULL,NULL,NULL),(7,'Levels',NULL,'After witnessing his girlfriend\'s murder, a man risks everything - including reality itself - to discover the truth.','en',NULL,NULL,'2024-11-01',NULL,NULL,NULL,NULL),(8,'The Substance',NULL,'A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.','en',NULL,NULL,'2024-09-07',NULL,NULL,NULL,NULL),(9,'Moana 2',NULL,'After receiving an unexpected call from her wayfinding ancestors, Moana journeys alongside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she\'s ever faced.','en',NULL,NULL,'2024-11-27',NULL,NULL,NULL,NULL),(10,'Transformers One',NULL,'The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.','en',NULL,NULL,'2024-09-11',NULL,NULL,NULL,NULL),(11,'Classified',NULL,'Operating alone in the field for more than 20 years, a CIA hitman uses the \"Help Wanted\" section of the newspapers to get his orders from the Agency. His long-lost daughter, now a UK MI6 analyst, tracks him down to deliver shocking news: his CIA boss has been dead for years and the division long since shut down. Together, they set out to discover whose orders he\'s been executing.','en',NULL,NULL,'2024-09-19',NULL,NULL,NULL,NULL),(12,'Knox Goes Away',NULL,'A contract killer, after being diagnosed with a fast-moving form of dementia, is presented with the opportunity to redeem himself by saving the life of his estranged adult son. But to do so, he must race against the police closing in on him as well as the ticking clock of his own rapidly deteriorating mind.','en',NULL,NULL,'2024-03-15',NULL,NULL,NULL,NULL),(13,'Red One',NULL,'After Santa Claus (codename: Red One) is kidnapped, the North Pole\'s Head of Security must team up with the world\'s most infamous bounty hunter in a globe-trotting, action-packed mission to save Christmas.','en',NULL,NULL,'2024-10-31',NULL,NULL,NULL,NULL),(14,'劇場版「オーバーロード」聖王国編',NULL,'After twelve years of playing his favorite MMORPG game, Momonga logs in for the last time only to find himself transported into its world playing it indefinitely. Throughout his adventures, his avatar ascends to the title of Sorcerer King Ains Ooal Gown. Once prosperous but now on the brink of ruin, The Sacred Kingdom enjoyed years of peace after construction of an enormous wall protecting them from neighboring invasions. But, one day this comes to an end when the Demon Emperor Jaldabaoth arrives with an army of villainous demi-humans. Fearing invasion of their own lands, the neighboring territory of the Slane Theocracy is forced to beg their enemies at the Sorcerer Kingdom for help. Heeding the call, Momonga, now known as the Sorcerer King Ains Ooal Gown, rallies the Sorcerer Kingdom and its undead army to join the fight alongside the Sacred Kingdom and the Slane Theocracy in hopes to defeat the Demon Emperor.','ja',NULL,NULL,'2024-09-20',NULL,NULL,NULL,NULL),(15,'Cash Out',NULL,'Criminal mastermind Mason is about to execute the score of a lifetime when his lover and key member of his crew, Decker, takes the team down and reveals she’s an undercover Interpol agent. Heartbroken, Mason escapes and retires from the life of crime until his younger brother Shawn is out of his league taking on a big bank heist all on his own. Mason has no choice left but to come to the rescue, while Interpol brings Decker in hoping to unnerve him. Before the SWAT teams storm the bank, Mason must use every tool in his arsenal to not only escape with the prize, but also the love of his life.','en',NULL,NULL,'2024-04-26',NULL,NULL,NULL,NULL),(16,'Le Comte de Monte-Cristo',NULL,'Edmond Dantes becomes the target of a sinister plot and is arrested on his wedding day for a crime he did not commit. After 14 years in the island prison of Château d’If, he manages a daring escape. Now rich beyond his dreams, he assumes the identity of the Count of Monte-Cristo and exacts his revenge on the three men who betrayed him.','fr',NULL,NULL,'2024-06-28',NULL,NULL,NULL,NULL),(17,'మట్కా',NULL,'Set between the years 1958 and 1982, Matka tells the story of Vasu, who rises from poverty to create a powerful gambling empire in India, ultimately leading the nation into a battle with the government. Based on real events, the tale explores themes of love, moral choices, and the consequences of ambition.','te',NULL,NULL,'2024-11-14',NULL,NULL,NULL,NULL),(18,'Survivre',NULL,'A couple celebrates their son’s birthday in the middle of the ocean on their boat. A violent storm hits and it brings up hungry creatures from the depths and they fight for their survival.','fr',NULL,NULL,'2024-06-19',NULL,NULL,NULL,NULL),(19,'Sing: Thriller',NULL,'Buster Moon dreams up a star-studded spectacle set to Michael Jackson\'s \"Thriller\" in this animated short featuring characters from the hit \"Sing\" films.','en',NULL,NULL,'2024-10-16',NULL,NULL,NULL,NULL),(20,'Azrael',NULL,'In a world where no one speaks, a devout female hunts down a young woman who has escaped her imprisonment. Recaptured by its ruthless leaders, Azrael is due to be sacrificed to pacify an ancient evil deep within the surrounding wilderness.','en',NULL,NULL,'2024-09-27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('9y148j7UbRGuzhpep2wTEYQ4y4PniRmITGcr5dzx',NULL,'172.19.0.1','PostmanRuntime/7.42.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWNnTzRhYlpVTXZwVlR3eUY5QUJUS0ZzNWlhM0V2T01oU2ZDZjlIViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1732517881),('ni89mQbLQNHf1eQVfJ9EkdOHP4xsRNl4Jiq790yi',NULL,'172.19.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWtudG8yRVZBaWxXeUtVeHhwQTlTZnM1YnQwTXlQYXlJMUZ6N3ZQSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1732497862);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,'AMC Marina Pacifica 12','6346 E Pacific Coast Hwy, Long Beach, CA 90803',NULL,NULL),(2,'Cinemark Howard Hughes Los Angeles and XD','6081 Center Dr Suite 201, Los Angeles, CA 90045',NULL,NULL);
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_movies`
--

DROP TABLE IF EXISTS `theater_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater_movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `theater_id` bigint unsigned NOT NULL,
  `movie_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theater_movies_theater_id_foreign` (`theater_id`),
  KEY `theater_movies_movie_id_foreign` (`movie_id`),
  CONSTRAINT `theater_movies_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `theater_movies_theater_id_foreign` FOREIGN KEY (`theater_id`) REFERENCES `theaters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_movies`
--

LOCK TABLES `theater_movies` WRITE;
/*!40000 ALTER TABLE `theater_movies` DISABLE KEYS */;
INSERT INTO `theater_movies` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,14),(15,2,15),(16,1,16),(17,1,17),(18,1,18),(19,2,19),(20,1,20);
/*!40000 ALTER TABLE `theater_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_movie_transactions`
--

DROP TABLE IF EXISTS `theater_movie_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater_movie_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `theater_movie_id` bigint unsigned NOT NULL,
  `sub_total` float NOT NULL,
  `sales_tax` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `theater_movie_transactions_theater_movie_id_foreign` (`theater_movie_id`),
  CONSTRAINT `theater_movie_transactions_theater_movie_id_foreign` FOREIGN KEY (`theater_movie_id`) REFERENCES `theater_movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_movie_transactions`
--

LOCK TABLES `theater_movie_transactions` WRITE;
/*!40000 ALTER TABLE `theater_movie_transactions` DISABLE KEYS */;
INSERT INTO `theater_movie_transactions` VALUES (1,1,93,9.5,101.84,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(2,1,65,9.5,71.18,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(3,1,73,9.5,79.94,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(4,1,90,9.5,98.55,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(5,1,92,9.5,100.74,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(6,1,84,9.5,91.98,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(7,1,53,9.5,58.04,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(8,2,46,9.5,50.37,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(9,2,71,9.5,77.75,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(10,2,20,9.5,21.9,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(11,2,25,9.5,27.38,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(12,2,86,9.5,94.17,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(13,2,43,9.5,47.09,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(14,2,74,9.5,81.03,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(15,2,20,9.5,21.9,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(16,2,77,9.5,84.32,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(17,3,57,9.5,62.42,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(18,3,16,9.5,17.52,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(19,3,27,9.5,29.57,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(20,3,87,9.5,95.27,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(21,3,33,9.5,36.14,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(22,3,44,9.5,48.18,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(23,3,25,9.5,27.38,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(24,3,34,9.5,37.23,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(25,3,11,9.5,12.05,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(26,4,75,9.5,82.13,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(27,4,82,9.5,89.79,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(28,4,93,9.5,101.84,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(29,4,100,9.5,109.5,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(30,4,45,9.5,49.28,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(31,4,34,9.5,37.23,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(32,4,12,9.5,13.14,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(33,4,89,9.5,97.46,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(34,5,17,9.5,18.62,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(35,5,96,9.5,105.12,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(36,5,25,9.5,27.38,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(37,5,88,9.5,96.36,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(38,5,49,9.5,53.66,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(39,5,74,9.5,81.03,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(40,6,76,9.5,83.22,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(41,6,88,9.5,96.36,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(42,6,82,9.5,89.79,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(43,6,22,9.5,24.09,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(44,6,30,9.5,32.85,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(45,7,39,9.5,42.71,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(46,7,19,9.5,20.81,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(47,7,97,9.5,106.22,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(48,7,46,9.5,50.37,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(49,7,57,9.5,62.42,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(50,7,29,9.5,31.76,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(51,7,45,9.5,49.28,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(52,7,32,9.5,35.04,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(53,7,100,9.5,109.5,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(54,7,10,9.5,10.95,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(55,7,88,9.5,96.36,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(56,7,28,9.5,30.66,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(57,8,71,9.5,77.75,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(58,8,89,9.5,97.46,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(59,8,100,9.5,109.5,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(60,8,23,9.5,25.19,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(61,8,40,9.5,43.8,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(62,8,70,9.5,76.65,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(63,8,82,9.5,89.79,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(64,8,67,9.5,73.37,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(65,8,65,9.5,71.18,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(66,8,19,9.5,20.81,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(67,9,78,9.5,85.41,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(68,9,100,9.5,109.5,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(69,9,65,9.5,71.18,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(70,9,100,9.5,109.5,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(71,9,37,9.5,40.52,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(72,10,22,9.5,24.09,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(73,10,49,9.5,53.66,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(74,10,96,9.5,105.12,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(75,10,90,9.5,98.55,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(76,10,88,9.5,96.36,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(77,10,31,9.5,33.95,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(78,10,23,9.5,25.19,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(79,10,48,9.5,52.56,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(80,10,92,9.5,100.74,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(81,11,88,9.5,96.36,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(82,11,60,9.5,65.7,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(83,11,15,9.5,16.43,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(84,11,93,9.5,101.84,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(85,11,47,9.5,51.47,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(86,11,50,9.5,54.75,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(87,12,97,9.5,106.22,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(88,12,85,9.5,93.08,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(89,12,14,9.5,15.33,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(90,12,27,9.5,29.57,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(91,12,43,9.5,47.09,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(92,12,45,9.5,49.28,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(93,12,20,9.5,21.9,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(94,12,83,9.5,90.89,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(95,12,81,9.5,88.7,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(96,12,76,9.5,83.22,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(97,13,73,9.5,79.94,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(98,13,37,9.5,40.52,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(99,13,100,9.5,109.5,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(100,13,80,9.5,87.6,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(101,13,99,9.5,108.41,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(102,13,61,9.5,66.8,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(103,13,64,9.5,70.08,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(104,13,43,9.5,47.09,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(105,14,45,9.5,49.28,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(106,14,46,9.5,50.37,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(107,14,90,9.5,98.55,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(108,14,62,9.5,67.89,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(109,14,78,9.5,85.41,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(110,14,41,9.5,44.9,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(111,14,100,9.5,109.5,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(112,15,25,9.5,27.38,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(113,15,62,9.5,67.89,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(114,15,95,9.5,104.03,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(115,15,11,9.5,12.05,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(116,15,30,9.5,32.85,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(117,15,68,9.5,74.46,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(118,16,15,9.5,16.43,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(119,16,24,9.5,26.28,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(120,16,63,9.5,68.99,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(121,16,59,9.5,64.61,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(122,16,73,9.5,79.94,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(123,16,100,9.5,109.5,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(124,16,25,9.5,27.38,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(125,16,80,9.5,87.6,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(126,17,32,9.5,35.04,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(127,17,86,9.5,94.17,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(128,17,90,9.5,98.55,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(129,17,28,9.5,30.66,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(130,17,11,9.5,12.05,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(131,17,23,9.5,25.19,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(132,17,68,9.5,74.46,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(133,17,41,9.5,44.9,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(134,17,20,9.5,21.9,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(135,17,70,9.5,76.65,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(136,18,32,9.5,35.04,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(137,18,19,9.5,20.81,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(138,18,83,9.5,90.89,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(139,18,31,9.5,33.95,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(140,18,72,9.5,78.84,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(141,18,73,9.5,79.94,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(142,18,62,9.5,67.89,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(143,19,84,9.5,91.98,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(144,19,34,9.5,37.23,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(145,19,51,9.5,55.85,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(146,19,39,9.5,42.71,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(147,19,88,9.5,96.36,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(148,19,59,9.5,64.61,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(149,19,84,9.5,91.98,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(150,19,100,9.5,109.5,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(151,20,55,9.5,60.23,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(152,20,38,9.5,41.61,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(153,20,94,9.5,102.93,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(154,20,86,9.5,94.17,'2024-11-22 07:25:37','2024-11-25 07:25:37'),(155,20,76,9.5,83.22,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(156,20,41,9.5,44.9,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(157,20,89,9.5,97.46,'2024-11-24 07:25:37','2024-11-25 07:25:37'),(158,20,31,9.5,33.95,'2024-11-23 07:25:37','2024-11-25 07:25:37'),(159,20,10,9.5,10.95,'2024-11-25 07:25:37','2024-11-25 07:25:37'),(160,20,81,9.5,88.7,'2024-11-23 07:25:37','2024-11-25 07:25:37');
/*!40000 ALTER TABLE `theater_movie_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

--
-- Dumping routines for database 'a2a_theaters'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 16:54:06
