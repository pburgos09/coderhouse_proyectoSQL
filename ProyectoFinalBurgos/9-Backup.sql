-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: E_COMMERCE
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `CARRITO_COMPRAS`
--

DROP TABLE IF EXISTS `CARRITO_COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARRITO_COMPRAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CANTIDAD` varchar(20) DEFAULT NULL,
  `PRECIO_TOTAL` varchar(50) DEFAULT NULL,
  `ID_USUARIO` int DEFAULT NULL,
  `ID_PRODUCTO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CARRITO_COMPRAS_USUARIO` (`ID_USUARIO`),
  KEY `FK_CARRITO_COMPRAS_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `FK_CARRITO_COMPRAS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `PRODUCTOS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_CARRITO_COMPRAS_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARRITO_COMPRAS`
--

LOCK TABLES `CARRITO_COMPRAS` WRITE;
/*!40000 ALTER TABLE `CARRITO_COMPRAS` DISABLE KEYS */;
INSERT INTO `CARRITO_COMPRAS` VALUES (4,'3','2550',2,11),(5,'1','750',2,17),(6,'5','3750',3,18),(7,'7','5250',3,20),(8,'1','900',4,22),(9,'6','5400',4,23),(10,'3','2700',5,25),(11,'6','7200',5,8);
/*!40000 ALTER TABLE `CARRITO_COMPRAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATEGORIAS`
--

DROP TABLE IF EXISTS `CATEGORIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATEGORIAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORIAS`
--

LOCK TABLES `CATEGORIAS` WRITE;
/*!40000 ALTER TABLE `CATEGORIAS` DISABLE KEYS */;
INSERT INTO `CATEGORIAS` VALUES (1,'Comic'),(2,'Manga');
/*!40000 ALTER TABLE `CATEGORIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAVORITOS`
--

DROP TABLE IF EXISTS `FAVORITOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FAVORITOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int DEFAULT NULL,
  `ID_PRODUCTO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FAVORITOS_USUARIO` (`ID_USUARIO`),
  KEY `FK_FAVORITOS_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `FK_FAVORITOS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `PRODUCTOS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_FAVORITOS_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIOS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAVORITOS`
--

LOCK TABLES `FAVORITOS` WRITE;
/*!40000 ALTER TABLE `FAVORITOS` DISABLE KEYS */;
INSERT INTO `FAVORITOS` VALUES (8,2,1),(9,2,3),(10,2,6),(11,2,8),(12,2,9),(13,2,11),(14,2,14),(15,2,16),(16,2,18),(17,2,21),(18,3,1),(19,3,4),(20,3,5),(21,3,7),(22,3,10),(23,3,12),(24,3,15),(25,3,17),(26,3,19),(27,3,22),(28,3,25),(29,4,1),(30,4,2),(31,4,4),(32,4,8),(33,4,11),(34,4,12),(35,4,14),(36,4,18),(37,4,19),(38,4,20),(39,4,24),(40,4,25),(41,5,2),(42,5,7),(43,5,8),(44,5,9),(45,5,18),(46,5,20),(47,5,22),(48,5,23),(49,5,25),(50,6,2),(51,6,5),(52,6,8),(53,6,11),(54,6,13),(55,6,16),(56,6,19),(57,6,23),(58,7,1),(59,7,2),(60,7,6),(61,7,8),(62,7,10),(63,7,11),(64,7,15),(65,7,17),(66,7,19),(67,7,20),(68,7,22),(69,8,1),(70,8,2),(71,8,3),(72,8,4),(73,8,5),(74,8,6),(75,8,7),(76,8,8),(77,8,9),(78,8,10),(79,9,3),(80,9,8),(81,9,11),(82,9,16),(83,9,19),(84,9,25),(85,10,2),(86,10,4),(87,10,6),(88,10,8),(89,10,10),(90,10,12),(91,10,14),(92,10,16),(93,10,18),(94,10,20),(95,10,22),(96,10,24);
/*!40000 ALTER TABLE `FAVORITOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_AUDITORIA`
--

DROP TABLE IF EXISTS `LOG_AUDITORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_AUDITORIA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL,
  `DNI` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(250) DEFAULT NULL,
  `STOCK` varchar(10) DEFAULT NULL,
  `PRECIO` int DEFAULT NULL,
  `CAMPOANTERIOR_CAMPONUEVO` varchar(500) DEFAULT NULL,
  `NOMBRE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_UPD_INS_DEL` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_AUDITORIA`
--

LOCK TABLES `LOG_AUDITORIA` WRITE;
/*!40000 ALTER TABLE `LOG_AUDITORIA` DISABLE KEYS */;
INSERT INTO `LOG_AUDITORIA` VALUES (1,NULL,NULL,NULL,'Avengers #48 (Variant) BIS','10',8000,NULL,'INSERT','PRODUCTOS','root@localhost','2022-12-04 23:30:05'),(2,NULL,NULL,NULL,'Avengers #48 (Variant) BISBIS','5',830,'CAMPOS ANTERIORES:Avengers #48 (Variant) BIS 10 8000-CAMPOS NUEVOS:Avengers #48 (Variant) BISBIS 5 830','UPDATE','PRODUCTOS','root@localhost','2022-12-04 23:30:05'),(3,'pablito@mail.com','password123','10000000',NULL,NULL,NULL,NULL,'INSERT','USUARIOS','root@localhost','2022-12-04 23:30:05'),(4,'pablito_pablin@gmail.com','lapass1234','1010101',NULL,NULL,NULL,'CAMPOS ANTERIORES:pablito@mail.com password123 10000000-CAMPOS NUEVOS:pablito_pablin@gmail.com lapass1234 1010101','UPDATE','USUARIOS','root@localhost','2022-12-04 23:30:05');
/*!40000 ALTER TABLE `LOG_AUDITORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MARCAS`
--

DROP TABLE IF EXISTS `MARCAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MARCAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `IMAGEN` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MARCAS`
--

LOCK TABLES `MARCAS` WRITE;
/*!40000 ALTER TABLE `MARCAS` DISABLE KEYS */;
INSERT INTO `MARCAS` VALUES (1,'Marvel','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYu4tnOfIrGm1L0WD6bqOTjH5AsdEzNpzBPg&usqp=CAU'),(2,'Kodansha','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIcSQq1oHTN8o9ZnkdtZzVF9jMvXPO2IEXWQ&usqp=CAU'),(3,'Ivrea','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpS9AcGpUOStu31MxZiQ2vrfkWJ1yYlEirFQ&usqp=CAU');
/*!40000 ALTER TABLE `MARCAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDEN_COMPRA`
--

DROP TABLE IF EXISTS `ORDEN_COMPRA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDEN_COMPRA` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DETALLES_COMPRA` varchar(1150) DEFAULT NULL,
  `ID_ORDEN_PAGO` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORDEN_COMPRA_ORDEN_PAGO` (`ID_ORDEN_PAGO`),
  CONSTRAINT `FK_ORDEN_COMPRA_ORDEN_PAGO` FOREIGN KEY (`ID_ORDEN_PAGO`) REFERENCES `CARRITO_COMPRAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDEN_COMPRA`
--

LOCK TABLES `ORDEN_COMPRA` WRITE;
/*!40000 ALTER TABLE `ORDEN_COMPRA` DISABLE KEYS */;
INSERT INTO `ORDEN_COMPRA` VALUES (4,'Compra de 3 comics',4),(5,'Compra de 1 comic',5),(6,'Compra de 5 comics',6),(7,'Compra de 7 comics',7),(8,'Compra de 1 comic',8),(9,'Compra de 6 comics',9);
/*!40000 ALTER TABLE `ORDEN_COMPRA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDEN_PAGO`
--

DROP TABLE IF EXISTS `ORDEN_PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDEN_PAGO` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `METODO_PAGO` varchar(20) DEFAULT NULL,
  `FECHA_COMPRA` date DEFAULT NULL,
  `ESTADO_COMPRA` varchar(20) DEFAULT NULL,
  `ID_CARRITO_COMPRA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ORDEN_PAGO_CARRITO_COMPRA` (`ID_CARRITO_COMPRA`),
  CONSTRAINT `FK_ORDEN_PAGO_CARRITO_COMPRA` FOREIGN KEY (`ID_CARRITO_COMPRA`) REFERENCES `CARRITO_COMPRAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDEN_PAGO`
--

LOCK TABLES `ORDEN_PAGO` WRITE;
/*!40000 ALTER TABLE `ORDEN_PAGO` DISABLE KEYS */;
INSERT INTO `ORDEN_PAGO` VALUES (4,'Efectivo','2022-06-14','Procesado',4),(5,'Tarjeta de debito','2022-08-31','Procesado',5),(6,'Efectivo','2022-06-14','Procesado',6),(7,'Efectivo','2022-08-27','Procesado',7),(8,'Tarjeta de credito','2022-03-24','Procesado',8),(9,'Tarjeta de credito','2022-07-14','Procesado',9),(10,'Tarjeta de debito','2022-10-02','En proceso',10),(11,'Tarjeta de debito','2022-10-23','En proceso',11);
/*!40000 ALTER TABLE `ORDEN_PAGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTOS`
--

DROP TABLE IF EXISTS `PRODUCTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(250) DEFAULT NULL,
  `DESCRIPCION` varchar(2150) DEFAULT NULL,
  `STOCK` varchar(10) DEFAULT NULL,
  `IMAGEN` varchar(150) DEFAULT NULL,
  `PRECIO` int DEFAULT NULL,
  `ID_MARCA` int DEFAULT NULL,
  `ID_CATEGORIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCTOS_MARCA` (`ID_MARCA`),
  KEY `FK_PRODUCTOS_CATEGORIA` (`ID_CATEGORIA`),
  CONSTRAINT `FK_PRODUCTOS_CATEGORIA` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `CATEGORIAS` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_PRODUCTOS_MARCA` FOREIGN KEY (`ID_MARCA`) REFERENCES `MARCAS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTOS`
--

LOCK TABLES `PRODUCTOS` WRITE;
/*!40000 ALTER TABLE `PRODUCTOS` DISABLE KEYS */;
INSERT INTO `PRODUCTOS` VALUES (1,'Avengers #48 (Variant)','`WORLD WAR SHE-HULK` Continues! After being taken prisoner by the Russian Winter Guard and sent to the notorious assassin-training academy known as the Red Room, She-Hulk has been transformed into something terrifying. And now the Winter Hulk has been unleashed upon the world. And the only one who can stop her…is Gorilla-Man?','15','https://i.annihil.us/u/prod/marvel/i/mg/c/10/612d39fef0ac2/clean.jpg',800,1,1),(2,'Avengers #47 (Variant)','WORLD WAR SHE-HULK Rages On! The Red Room is the secret furnace where some of the world´s greatest assassins and super-killers have been forged. And now She-Hulk is its newest recruit. As the Avengers race to rescue Jen Walters from the Russian Winter Guard, is it too late to save She-Hulk…from going red?','8','https://i.annihil.us/u/prod/marvel/i/mg/f/40/61042030a1e84/clean.jpg',800,1,1),(3,'Avengers #46','WORLD WAR SHE-HULK! After the shocking events of “Enter the Phoenix,” the Earth has become more fractured and volatile than ever, especially for the Avengers. Once She-Hulk is declared a global menace, Russia’s mightiest heroes, the Winter Guard, are tasked with bringing Jen to justice, to face a fate no Hulk could hope to endure.','7','https://i.annihil.us/u/prod/marvel/i/mg/9/90/60d5e768d1f1c/clean.jpg',800,1,1),(4,'Avengers #45 (Variant)','THE AVENGERS JOIN THE BATTLE AGAINST THE KING IN BLACK! The year´s most epic event explodes in the pages of AVENGERS. The vampire hunter Blade has been at the forefront of the fight against the dark symbiote god, but now he must pay a dark price that will change his world forever.','7','https://i.annihil.us/u/prod/marvel/i/mg/3/03/60771a60d4590/clean.jpg',800,1,1),(5,'Avengers #44 (Variant)','ENTER THE PHOENIX: THE FIERY FINALE! As the greatest heroes and villains of the Marvel Universe are trapped within the battle to decide the all-new Phoenix - a bloody battle that has narrowed to a handful of desperate combatants. Thor leads the rest of the Avengers in the fight to contain the Phoenix Force on Earth, in a quest complicated by the Thunder God´s own mysterious connection to the cosmic firebird.','9','https://i.annihil.us/u/prod/marvel/i/mg/6/70/606612cd19c8e/clean.jpg',800,1,1),(6,'X-Men #2 (Variant)','ALWAYS BET ON X! As threats hurtle toward the Earth from all sides, the fearless X-Men fight a seemingly unstoppable wave of annihilation…but even more dangerous threats lurk in the darkness, ready to strike in secret.','5','https://i.annihil.us/u/prod/marvel/i/mg/2/b0/610420b37cb57/clean.jpg',850,1,1),(7,'X-Men #2','ALWAYS BET ON X! As threats hurtle toward the Earth from all sides, the fearless X-Men fight a seemingly unstoppable wave of annihilation…but even more dangerous threats lurk in the darkness, ready to strike in secret.','8','https://i.annihil.us/u/prod/marvel/i/mg/8/c0/610411c49ebdc/clean.jpg',850,1,1),(8,'X-Men #1 (Variant)','THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!','10','https://i.annihil.us/u/prod/marvel/i/mg/8/f0/60e5c40aa36f6/clean.jpg',1200,1,1),(9,'X-Men #1 (Variant 2)','THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!','4','https://i.annihil.us/u/prod/marvel/i/mg/9/30/60e5c4194ea6a/clean.jpg',1200,1,1),(10,'X-Men #1 (Variant 3)','THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!','7','https://i.annihil.us/u/prod/marvel/i/mg/8/d0/60e5c421ac71f/clean.jpg',1200,1,1),(11,'Daredevil #34','`LOCKDOWN` CONTINUES AS BULLSEYE REIGNS OVER NYC! The penultimate chapter of “Lockdown” brings twists, turns, bodies and unexpected allies.You’re not going to want to miss THE NEXT INSTALLMENT OF THIS EISNER-NOMINATED EPIC!','5','https://i.annihil.us/u/prod/marvel/i/mg/c/10/612e8dbb1fc53/clean.jpg',850,1,1),(12,'Daredevil #33','LOCKDOWN CONTINUES! Elektra faces her greatest challenge as DAREDEVIL yet, as a serial killer is on the loose in Manhattan and killing innocent people. But even the deadliest assassin in the Marvel Universe is at somewhat of a loss, because this killer can be in more than one place at one time. A team? A mutant? Or something else entirely? Whoever or whatever they are, they have a thirst for blood, and Elektra will put herself directly in their sights! PLUS: Matt Murdock faces challenges of his own in prison after being exposed to a dangerous and experimental compound called RE-CID that makes those subjected to it more aggressive and violent. Whatever happens, one thing is certain — Daredevil isn´t getting time off for good behavior…','7','https://i.annihil.us/u/prod/marvel/i/mg/3/30/610411a669e6d/clean.jpg',850,1,1),(13,'Daredevil #32','?LOCKDOWN? STARTS HERE! The Angel of Death has come to Hell?s Kitchen and New York City. A series of grisly murders tests Elektra?s mettle and commitment to her role as the new DAREDEVIL, as the city spirals in a state of near panic. Meanwhile, Matt Murdock faces tests and challenges of his own, as the inmates he?s serving time alongside aren?t the ones in the prison targeting him?','6','https://i.annihil.us/u/prod/marvel/i/mg/6/70/60fad327e5636/clean.jpg',850,1,1),(14,'Daredevil #31 (Variant)','THE DAREDEVIL ISSUE YOU CANNOT MISS! Chip Zdarsky, Marco Checchetto and all their collaborators have redefined the life of the Man Without Fear. IN THIS ISSUE, they do it all over again and, what´s more, they go a step further and UP THE ANTE! WILSON FISK´s gambit from the past few months risks upending his life and tenure as mayor! Meanwhile, MATT MURDOCK has to fend off a prison full of inmates who all want DAREDEVIL dead?and the inmates aren´t the only ones! This, as Elektra fends for herself as a DAREDEVIL all her own, fighting to protect Hell´s Kitchen?and leaving herself vulnerable in the process!','5','https://i.annihil.us/u/prod/marvel/i/mg/9/40/60dc7616eaa65/clean.jpg',850,1,1),(15,'Daredevil #30','\"DOING TIME\" CONTINUES! As Elektra gets her bearings in Hell´s Kitchen, Matt Murdock finds an unlikely ally in prison. Meanwhile, Wilson Fisk gets the phone call you´ve been waiting for.','4','https://i.annihil.us/u/prod/marvel/i/mg/9/00/60afe347009cc/clean.jpg',850,1,1),(16,'Shingeki no Kyojin (Attack on titan) #1','¡LA DESESPERADA BATALLA COMIENZA! La raza humana, en antagno dueña del mundo, se enfrenta a la extinción a manos de los titanes, gigantescos monstruos de inteligencia limitada que cazan y devoran personas por diversión. Los supervivientes se hacinan e intentan sobrevivir en una pequeña ciudad… pero algunos ya están hartos: ¡van a atacar!','13','https://http2.mlstatic.com/D_NQ_NP_2X_805318-MLA45788282956_052021-F.webp',750,2,2),(17,'Shingeki no Kyojin (Attack on titan) #2','NACIMIENTO DE UN MONSTRUO. Un misterioso titán aparece de la nada y ataca a sus congéneres, en apariencia protegiendo a los seres humanos. ¡¿Qué está pasando?! Nadie sabe a ciencia cierta cuál es el origen de esas misteriosas criaturas, pero… ¿cabría la posibilidad de tener a alguno del lado de la humanidad?','12','https://http2.mlstatic.com/D_NQ_NP_2X_788294-MLA45113998720_032021-F.webp',750,2,2),(18,'Shingeki no Kyojin (Attack on titan) #3','TRAIDOR. Ya no es un secreto que Eren puede convertirse en titán, pero Armin convence a sus superiores de que no le maten, sino que le utilicen para volver a sellar el muro. Pero el control de Eren sobre su álter ego no es completo y tiende a descontrolarse...','10','https://http2.mlstatic.com/D_NQ_NP_2X_608033-MLA44894445493_022021-F.webp',750,2,2),(19,'Shingeki no Kyojin (Attack on titan) #4','¡LA HUMANIDAD SE POSPONE! Se desarrolla una táctica arriesgada - llevar a Eren en su forma de titán para intentar reparar la Muralla Rose, recuperando así el territorio humano de los monstruos, por primera vez en un siglo. Pero el autocontrol de Eren está lejos de ser perfecto, y cuando él se descontrola, ni siquiera Armin puede detenerlo! Con la supervivencia de la humanidad en sus enormes hombros, ¿será Eren capaz de volver a sus sentidos, o va a perderse para siempre?','11','https://http2.mlstatic.com/D_NQ_NP_2X_757614-MLA44894447413_022021-F.webp',750,2,2),(20,'Shingeki no Kyojin (Attack on titan) #5','¿PUEDES IR A CASA OTRA VEZ? Tras desvelarse que Eren puede convertirse en titán, un consejo decide qué hacer con él, si ejecutarlo para salvar sus almas y a los habitantes de la ciudad, o destinarlo a algún cuerpo del ejército para que ayude a la humanidad.','11','https://http2.mlstatic.com/D_NQ_NP_2X_620301-MLA41663860513_052020-F.webp',750,2,2),(21,'Slam Dunk #1','Sakuragi Hanamachi, a teenager who is unpopular with girls. His latest crush is in love with a basketball player named Amano, and due to that, he starts hating the sport. Upon his latest refusal, his friends make fun of him and celebrate his 50th rejection. Sakuragi gets angry at them and headbutts his friends. After graduating from middle school, he enrolls in Shohuko High. The word basketball is off-limits, and whoever says it gets a headbutt on the forehead. After the conclusion of his class, a sad and depressed Sakuragi walks in one of the hallways of his school and notices the beautiful weather of spring outside, but due to his latest 50th rejection tells himself it is still winter inside his heart. Seeing his tall demeanor, a beautiful girl named Haruko approaches him and asks if he likes the sport of basketball. Hearing that word Sakuragi gets furious again but calms down after seeing the attractive and beautiful Haruko. He suddenly falls in love with her and declares he is an athlete and loves the sport of basketball.','6','https://http2.mlstatic.com/D_NQ_NP_2X_875731-MLA46094586369_052021-F.webp',900,3,2),(22,'Slam Dunk #2','Sakuragi, in his classroom, is daydreaming about his yesterday´s encounter at the schools basketball court. During that time, Haruko arrives and asks Hanamachi about his wellbeing. Yohei Mito, Sakuragi´s closest friend, informs Akagi not to worry cause Hanamachi´s forehead is like a solid rock. The basketball hoop is the one that should be careful. Haruko then hands out Sakuragi the basketball team registration forms and leaves. Fujii, Haruko´s best friend, informs that Hanamachi and his friends were infamous for getting in trouble in their middle school. Haruko tells Fuji, Sakuragi is a nice guy, and there is no need for her to worry.','6','https://http2.mlstatic.com/D_NQ_NP_2X_907665-MLA46375824809_062021-F.webp',900,3,2),(23,'Slam Dunk #3','At the schools rooftop, a furious Rukawa easily beats up Norio Hotta and his gang. Meanwhile, in class, Mito informs Sakuragi, seniors or no seniors, it doesn´t matter; we will give them a significant beating. Chuichirou, Nozomi, and Yuji also join them. Upon entering the schools rooftop, they notice a beaten-up Norit Hotta and his gang lying on the ground. Mito questions the first-year student if he´s the one who is responsible for this recent incident. Rukawa then introduces himself to Sakuragi and his colleagues. Hanamichi, upon hearing his name, gets furious and remembers that he is the one Haruko was mentioning. Sakuragi angrily stares at him and tries to measure his height against himself. Mito is amazed that this first-year student easily beat up the infamous Noria Hotta and his gang. While walking in one of the school hallways, Haruko glances across the window and sees an angry Sakuragi and Rukawa about to get into a fight at the schools rooftop. Agaki rushes towards them and yells at Hanamichi to stop fighting. She notices Rukawa´s injuries and informs Sakuragi that all of her friends at school were right about him, and she misjudged him for being a nice person.','7','https://http2.mlstatic.com/D_NQ_NP_2X_864808-MLA46838272129_072021-F.webp',900,3,2),(24,'Slam Dunk #4','After witnessing the terrible brawl between Sakuragi and Rukawa, Haruko informs her friends that she might have gone too far with Hanamichi. While discussing, Akagi also informs her colleagues that later after the incident, Mito, one of Hanamichi´s closest friends, met her and told her that she misjudged yesterday´s incident. Upon closing her conversation tells her friends that after school, she would later meet Hanamichi and apologize. Meanwhile, a depressed and low-spirited Sakuragi, after his class, changes his shoes and heads out. Mito and others sneakingly follow him. While heading out, a basketball out of nowhere hits Hanamichi in the face. One of the schools basketball team members approaches and apologizes to Sakuragi. Hanamichi becomes furious and yells at the first-year student and informs that he genuinely hates the sport of basketball. As soon as Hanamichi is about to hit the freshman, Mito and others stop him. Sakuragi then takes out his frustration on them by headbutting his friends. Takenori Akagi, the basketball teams captain, makes his appearance, and he furiously grabs Hanamichi from behind with the collar and throws him to the ground. Upon witnessing, Mito and his friends are amazed and frightened at Takenori Agaki´s intimidating tall appearance. Agaki then yells at his teammate to stop daydreaming and goofing around during the basketball practice session.','6','https://http2.mlstatic.com/D_NQ_NP_2X_782480-MLA47194643383_082021-F.webp',900,3,2),(25,'Slam Dunk #5','Haruko, alongside her friends, arrives at the schools court and sees that the first-year student that everyone was talking about is Sakuragi Hanamichi. Mito sees Haruko and invites her to see the anticipated match. Akagi informs that the person Hanamichi is competing against is her brother Takenori Akagi. Mito and his colleagues, upon hearing, go in panic mode. Takenori easily scores his 8th basket, and the lead widens even further. Upon seeing the skill difference between the two of them, Rukawa comments that Sakuragi can´t win. On making his recent basket, Takenori stares at Sakuragi angrily and informs him that this is his beloved sport of basketball that he just insulted. Upon witnessing, Haruko tells Mito and his colleagues that her brother is a nice person and is a bit stubborn when it comes to basketball; he is a basketball enthusiast, and he has been playing this sport since first grade.','6','https://http2.mlstatic.com/D_NQ_NP_2X_894498-MLA41780258977_052020-F.webp',900,3,2),(26,'Avengers #48 (Variant) BISBIS','`WORLD WAR SHE-HULK` Continues! After being taken prisoner by the Russian Winter Guard and sent to the notorious assassin-training academy known as the Red Room, She-Hulk has been transformed into something terrifying. And now the Winter Hulk has been unleashed upon the world. And the only one who can stop her…is Gorilla-Man?','5','https://i.annihil.us/u/prod/marvel/i/mg/c/10/612d39fef0ac2/clean.jpg',830,1,1);
/*!40000 ALTER TABLE `PRODUCTOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_PRODUCTOS_I` AFTER INSERT ON `PRODUCTOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
							PRECIO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
		NEW.STOCK,
        NEW.PRECIO,
        'INSERT',
        'PRODUCTOS',
        CURRENT_USER(),
        NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_PRODUCTOS_U` BEFORE UPDATE ON `PRODUCTOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (NOMBRE,
							STOCK,
                            PRECIO,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.NOMBRE,
NEW.STOCK,
NEW.PRECIO,
CONCAT('CAMPOS ANTERIORES:',
		OLD.NOMBRE,
        ' ',
        OLD.STOCK,
        ' ',
        OLD.PRECIO,
        '-',
        'CAMPOS NUEVOS:',
        NEW.NOMBRE,
        ' ',
        NEW.STOCK,
        ' ',
        NEW.PRECIO),
'UPDATE',
'PRODUCTOS',
CURRENT_USER(),
NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `USUARIOS`
--

DROP TABLE IF EXISTS `USUARIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USUARIOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(25) DEFAULT NULL,
  `NOMBRE` varchar(25) DEFAULT NULL,
  `APELLIDO` varchar(25) DEFAULT NULL,
  `DOMICILIO` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL,
  `ALIAS` varchar(25) DEFAULT NULL,
  `CELULAR` varchar(20) DEFAULT NULL,
  `DNI` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIOS`
--

LOCK TABLES `USUARIOS` WRITE;
/*!40000 ALTER TABLE `USUARIOS` DISABLE KEYS */;
INSERT INTO `USUARIOS` VALUES (2,'martin@mail.com','Martin','Aguilera','Calle falsa 456','password456','maguilera','1510203040','20000000'),(3,'veronica@mail.com','Veronica','Veca','Calle falsa 789','password789','vveca','1511223344','30000000'),(4,'alexis@gmail.com','Alexis','Urquiza','Avenida Siempreviva 123','paspas123','aurquiza','1555667788','4000000'),(5,'marisol@gmail.com','Marisol','Yelamo','Avenida Siempreviva 456','paspas456','myelamo','1598765432','5000000'),(6,'lucia@gmail.com','Lucia','Veca','Avenida Siempreviva 789','paspas789','lveca','1564784523','6000000'),(7,'marisa@gmail.com','Marisa','Aguilera','Avenida Lope de Vega 123','roly123','maguilera','1515624580','6000000'),(8,'mercedes@gmail.com','Mercedes','Gonzalez','Avenida Segurola 4356','mcedes123','mgonzalez','1531459860','7000000'),(9,'oscar@gmail.com','Oscar','Burgos','Hipolito Yrigoyen 4506','salta123','oburgos','1531058045','8000000'),(10,'melisa@gmail.com','Melisa','Burgos','Boedo 953','cami123','mburgos','1545127099','9000000'),(11,'bernardo@gmail.com','Bernardo','Veca','Esquel 197','dani456','bveca','1567238045','10000000'),(12,'pablito_pablin@gmail.com','Pablito','Burgos','Calle falsa 123','lapass1234','pburgos','1501020304','1010101');
/*!40000 ALTER TABLE `USUARIOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_USUARIOS_I` AFTER INSERT ON `USUARIOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
							DNI,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,FECHA_UPD_INS_DEL)
VALUES(NEW.EMAIL,
		NEW.PASSWORD,
        NEW.DNI,
        'INSERT',
        'USUARIOS',
        CURRENT_USER(),
        NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_LOG_USUARIOS_U` BEFORE UPDATE ON `USUARIOS` FOR EACH ROW BEGIN
INSERT INTO LOG_AUDITORIA (EMAIL,
							PASSWORD,
                            DNI,
                            CAMPOANTERIOR_CAMPONUEVO,
                            NOMBRE_ACCION,
                            NOMBRE_TABLA,
                            USUARIO,
                            FECHA_UPD_INS_DEL)
VALUES(NEW.EMAIL,
NEW.PASSWORD,
NEW.DNI,
CONCAT('CAMPOS ANTERIORES:',
		OLD.EMAIL,
        ' ',
        OLD.PASSWORD,
        ' ',
        OLD.DNI,
        '-',
        'CAMPOS NUEVOS:',
        NEW.EMAIL,
        ' ',
        NEW.PASSWORD,
        ' ',
        NEW.DNI),
'UPDATE',
'USUARIOS',
CURRENT_USER(),
NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!50001 DROP VIEW IF EXISTS `comics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comics` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `STOCK`,
 1 AS `DESCRIPCION`,
 1 AS `PRECIO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compras_procesadas`
--

DROP TABLE IF EXISTS `compras_procesadas`;
/*!50001 DROP VIEW IF EXISTS `compras_procesadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compras_procesadas` AS SELECT 
 1 AS `ID`,
 1 AS `METODO_PAGO`,
 1 AS `FECHA_COMPRA`,
 1 AS `ESTADO_COMPRA`,
 1 AS `ID_CARRITO_COMPRA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!50001 DROP VIEW IF EXISTS `favoritos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `favoritos` AS SELECT 
 1 AS `USUARIO_NOMBRE`,
 1 AS `PRODUCTO_NOMBRE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `manga`
--

DROP TABLE IF EXISTS `manga`;
/*!50001 DROP VIEW IF EXISTS `manga`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `manga` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `STOCK`,
 1 AS `DESCRIPCION`,
 1 AS `PRECIO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_800up`
--

DROP TABLE IF EXISTS `productos_800up`;
/*!50001 DROP VIEW IF EXISTS `productos_800up`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_800up` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `STOCK`,
 1 AS `PRECIO`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `comics`
--

/*!50001 DROP VIEW IF EXISTS `comics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comics` AS select `PRODUCTOS`.`NOMBRE` AS `NOMBRE`,`PRODUCTOS`.`STOCK` AS `STOCK`,`PRODUCTOS`.`DESCRIPCION` AS `DESCRIPCION`,`PRODUCTOS`.`PRECIO` AS `PRECIO` from `PRODUCTOS` where (`PRODUCTOS`.`ID_CATEGORIA` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compras_procesadas`
--

/*!50001 DROP VIEW IF EXISTS `compras_procesadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compras_procesadas` AS select `ORDEN_PAGO`.`ID` AS `ID`,`ORDEN_PAGO`.`METODO_PAGO` AS `METODO_PAGO`,`ORDEN_PAGO`.`FECHA_COMPRA` AS `FECHA_COMPRA`,`ORDEN_PAGO`.`ESTADO_COMPRA` AS `ESTADO_COMPRA`,`ORDEN_PAGO`.`ID_CARRITO_COMPRA` AS `ID_CARRITO_COMPRA` from `ORDEN_PAGO` where (`ORDEN_PAGO`.`ESTADO_COMPRA` = 'PROCESADO') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `favoritos`
--

/*!50001 DROP VIEW IF EXISTS `favoritos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `favoritos` AS select `U`.`NOMBRE` AS `USUARIO_NOMBRE`,`P`.`NOMBRE` AS `PRODUCTO_NOMBRE` from ((`FAVORITOS` `F` join `USUARIOS` `U` on((`F`.`ID_USUARIO` = `U`.`ID`))) join `PRODUCTOS` `P` on((`P`.`ID` = `F`.`ID_PRODUCTO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `manga`
--

/*!50001 DROP VIEW IF EXISTS `manga`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `manga` AS select `PRODUCTOS`.`NOMBRE` AS `NOMBRE`,`PRODUCTOS`.`STOCK` AS `STOCK`,`PRODUCTOS`.`DESCRIPCION` AS `DESCRIPCION`,`PRODUCTOS`.`PRECIO` AS `PRECIO` from `PRODUCTOS` where (`PRODUCTOS`.`ID_CATEGORIA` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_800up`
--

/*!50001 DROP VIEW IF EXISTS `productos_800up`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_800up` AS select `PRODUCTOS`.`NOMBRE` AS `NOMBRE`,`PRODUCTOS`.`STOCK` AS `STOCK`,`PRODUCTOS`.`PRECIO` AS `PRECIO` from `PRODUCTOS` where (`PRODUCTOS`.`PRECIO` > 800) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 11:26:21
