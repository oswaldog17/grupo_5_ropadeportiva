-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: grupo_5_ropadeportiva
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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

USE grupo_5_ropadeportiva;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p_categories`
--

LOCK TABLES `p_categories` WRITE;
/*!40000 ALTER TABLE `p_categories` DISABLE KEYS */;
INSERT INTO `p_categories` VALUES (1,_binary 'Hombre'),(2,_binary 'Mujer'),(3,_binary 'Infantil');
/*!40000 ALTER TABLE `p_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p_cloths`
--

LOCK TABLES `p_cloths` WRITE;
/*!40000 ALTER TABLE `p_cloths` DISABLE KEYS */;
INSERT INTO `p_cloths` VALUES (1,_binary 'Algodon'),(2,_binary 'Lycra'),(3,_binary 'Neoprene'),(4,_binary 'Jersey'),(5,_binary 'Nylon'),(6,_binary 'Poliester');
/*!40000 ALTER TABLE `p_cloths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p_colors`
--

LOCK TABLES `p_colors` WRITE;
/*!40000 ALTER TABLE `p_colors` DISABLE KEYS */;
INSERT INTO `p_colors` VALUES (1,_binary 'Negro'),(2,_binary 'Blanco'),(3,_binary 'Rojo'),(4,_binary 'Azul');
/*!40000 ALTER TABLE `p_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p_sizes`
--

LOCK TABLES `p_sizes` WRITE;
/*!40000 ALTER TABLE `p_sizes` DISABLE KEYS */;
INSERT INTO `p_sizes` VALUES (1,_binary 'S'),(2,_binary 'M'),(3,_binary 'L'),(4,_binary '37'),(5,_binary '38'),(6,_binary '39'),(7,_binary '40'),(8,_binary '41'),(9,_binary '42'),(10,_binary '43');
/*!40000 ALTER TABLE `p_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p_types`
--

LOCK TABLES `p_types` WRITE;
/*!40000 ALTER TABLE `p_types` DISABLE KEYS */;
INSERT INTO `p_types` VALUES (1,_binary 'Camiseta'),(2,_binary 'Pantalon'),(3,_binary 'Zapatillas'),(4,_binary 'Buzo');
/*!40000 ALTER TABLE `p_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,_binary 'Camiseta River',_binary 'Camiseta temporada 2021/22 del club River Plate',1,5000,1,2,_binary '40cm',_binary '60cm',_binary '70cm',_binary '180cm',4,2,_binary 'H2V1BK3V4H',_binary '1652144875317_img_.jpg',_binary '1652144875318_img_.jpg',_binary '1652144875322_img_.jpg',_binary '1652144875323_img_.jpg',1),(2,_binary 'Pantalon Boca Juniors',_binary 'Pantalon deportivo del club Boca Juniors, temporada 2021/22',2,15000,2,1,_binary '35cm','','',_binary '165cm',4,4,_binary '512B3KV1H2',_binary '1653346782474_img_.jpg',_binary '1653346782475_img_.jpg',_binary '1653346782476_img_.jpg',_binary '1653346782480_img_.jpg',1),(3,_binary 'Zapatillas Forum Low',_binary 'Zapatillas deportivas, muy comodas y resistentes para las mas pequeñas de la casa',3,10500,3,4,'','','','',5,2,_binary 'H12B3HV312',_binary '1652143977454_img_.jpg',_binary '1652143977458_img_.jpg',_binary '1652143977462_img_.jpg',_binary '1652143977464_img_.jpg',1),(4,_binary 'Camiseta Rosario Central',_binary 'Camiseta del club Rosario Central, temporada 2021/22.',1,8500,1,2,_binary '45cm',_binary '60cm',_binary '60cm',_binary '175cm',6,4,_binary 'B21KB31B12',_binary '1652144044984_img_.jpg',_binary '1652144044988_img_.jpg',_binary '1652144044993_img_.jpg',_binary '1652144044996_img_.jpg',1),(5,_binary 'Zapatillas X9000L4',_binary 'Descripcion de zapas que estan super buenas por favor compranos',2,18600,3,6,'','','','',4,1,_binary 'LN2LB31L2',_binary '1652143693910_img_.jpg',_binary '1652143693916_img_.jpg',_binary '1652143693922_img_.jpg',_binary '1652143693925_img_.jpg',1),(6,_binary 'Camiseta de Independiente',_binary 'Camiseta de los diablos de Avellaneda, titular temporada 2021/22',1,12500,1,2,_binary '60cm',_binary '70cm',_binary '75cm',_binary '190cm',6,3,_binary 'JKB1K2H3',_binary '1653145282489_img_.jpg',_binary '1653145282501_img_.jpg',_binary '1653145282504_img_.jpg',_binary '1653145282508_img_.jpg',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `u_categories`
--

LOCK TABLES `u_categories` WRITE;
/*!40000 ALTER TABLE `u_categories` DISABLE KEYS */;
INSERT INTO `u_categories` VALUES (1,_binary 'admin'),(2,_binary 'cliente');
/*!40000 ALTER TABLE `u_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `u_provincias`
--

LOCK TABLES `u_provincias` WRITE;
/*!40000 ALTER TABLE `u_provincias` DISABLE KEYS */;
INSERT INTO `u_provincias` VALUES (1,_binary 'Buenos Aires'),(2,_binary 'CABA'),(3,_binary 'Catamarca'),(4,_binary 'Chaco'),(5,_binary 'Chubut'),(6,_binary 'Cordoba'),(7,_binary 'Corrientes'),(8,_binary 'Entre Rios'),(9,_binary 'Formosa'),(10,_binary 'Jujuy'),(11,_binary 'La Pampa'),(12,_binary 'La Rioja'),(13,_binary 'Mendoza'),(14,_binary 'Misiones'),(15,_binary 'Neuquen'),(16,_binary 'Rio Negro'),(17,_binary 'Salta'),(18,_binary 'San Juan'),(19,_binary 'San Luis'),(20,_binary 'Santiago del Estero'),(21,_binary 'Santa Fe'),(22,_binary 'Santa Cruz'),(23,_binary 'Tierra del Fuego'),(24,_binary 'Tucuman');
/*!40000 ALTER TABLE `u_provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `u_sex`
--

LOCK TABLES `u_sex` WRITE;
/*!40000 ALTER TABLE `u_sex` DISABLE KEYS */;
INSERT INTO `u_sex` VALUES (1,_binary 'Hombre'),(2,_binary 'Mujer'),(3,_binary 'Otro');
/*!40000 ALTER TABLE `u_sex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary 'Admin',_binary 'Admin',_binary 'admin@gmail.com',_binary 'admin',_binary '$2a$10$KtTpo/2wLbzkhLV1E9K2cOzs/2wurOQvjvzpQTDFbXyvBfS00szG6',1,_binary '1654285398940_UserImg_.jpg','1990-01-01',1,_binary '10 1010',_binary '123456',0,_binary '1123456789',1),(2,_binary 'Cliente',_binary 'Lopez',_binary 'cliente@gmail.com',_binary 'cliente',_binary '$2a$10$MsrUGNTutuh/J9NoBNg68ePZp.xph2790eJsU1IqRtl388T/rkm/C',2,_binary '1654611807569_UserImg_.jpg','2022-05-10',1,_binary '162 1923',_binary '882913',0,_binary '121234567',1),(3,_binary 'mateoprueba',_binary 'prueba',_binary 'prueba@hotmail.com',_binary 'pruebas',_binary '$2a$10$J9d1q2MsS/mefc.0fOvsTOVOBiEZf7rqMOFz1RxcHQzLAY/KXczti',2,_binary 'imgUserDefault.jpg','2001-11-10',1,_binary '12',_binary '12314',1,_binary '1212121212',1),(4,_binary 'Sergio',_binary 'Aguero',_binary 'sergio@gmail.com',_binary 'saguero',_binary '$2a$10$mdW8QPiFOBKNFbT.0HmCKePERBcWb2O75frBjfXqT2vWc60HRYTuq',2,_binary 'imgUserDefault.jpg','1989-06-22',1,_binary 'Rivadavia 5501',_binary '2371AB',0,_binary '011-2381-1231',1);
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

-- Dump completed on 2022-07-06  9:53:28
