CREATE DATABASE  IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `inventario`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventario
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add compra',7,'add_compra'),(26,'Can change compra',7,'change_compra'),(27,'Can delete compra',7,'delete_compra'),(28,'Can view compra',7,'view_compra'),(29,'Can add marca',8,'add_marca'),(30,'Can change marca',8,'change_marca'),(31,'Can delete marca',8,'delete_marca'),(32,'Can view marca',8,'view_marca'),(33,'Can add proveedor',9,'add_proveedor'),(34,'Can change proveedor',9,'change_proveedor'),(35,'Can delete proveedor',9,'delete_proveedor'),(36,'Can view proveedor',9,'view_proveedor'),(37,'Can add tipo producto',10,'add_tipoproducto'),(38,'Can change tipo producto',10,'change_tipoproducto'),(39,'Can delete tipo producto',10,'delete_tipoproducto'),(40,'Can view tipo producto',10,'view_tipoproducto'),(41,'Can add usuario',11,'add_usuario'),(42,'Can change usuario',11,'change_usuario'),(43,'Can delete usuario',11,'delete_usuario'),(44,'Can view usuario',11,'view_usuario'),(45,'Can add producto',12,'add_producto'),(46,'Can change producto',12,'change_producto'),(47,'Can delete producto',12,'delete_producto'),(48,'Can view producto',12,'view_producto'),(49,'Can add presentacion',13,'add_presentacion'),(50,'Can change presentacion',13,'change_presentacion'),(51,'Can delete presentacion',13,'delete_presentacion'),(52,'Can view presentacion',13,'view_presentacion'),(53,'Can add producto has compra',14,'add_productohascompra'),(54,'Can change producto has compra',14,'change_productohascompra'),(55,'Can delete producto has compra',14,'delete_productohascompra'),(56,'Can view producto has compra',14,'view_productohascompra'),(57,'Can add producto has proveedor',15,'add_productohasproveedor'),(58,'Can change producto has proveedor',15,'change_productohasproveedor'),(59,'Can delete producto has proveedor',15,'delete_productohasproveedor'),(60,'Can view producto has proveedor',15,'view_productohasproveedor'),(61,'Can add ventas',16,'add_ventas'),(62,'Can change ventas',16,'change_ventas'),(63,'Can delete ventas',16,'delete_ventas'),(64,'Can view ventas',16,'view_ventas'),(65,'Can add presentacion has ventas',17,'add_presentacionhasventas'),(66,'Can change presentacion has ventas',17,'change_presentacionhasventas'),(67,'Can delete presentacion has ventas',17,'delete_presentacionhasventas'),(68,'Can view presentacion has ventas',17,'view_presentacionhasventas'),(69,'Can add hola',18,'add_hola'),(70,'Can change hola',18,'change_hola'),(71,'Can delete hola',18,'delete_hola'),(72,'Can view hola',18,'view_hola');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'inventario','compra'),(18,'inventario','hola'),(8,'inventario','marca'),(13,'inventario','presentacion'),(17,'inventario','presentacionhasventas'),(12,'inventario','producto'),(14,'inventario','productohascompra'),(15,'inventario','productohasproveedor'),(9,'inventario','proveedor'),(10,'inventario','tipoproducto'),(11,'inventario','usuario'),(16,'inventario','ventas'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-16 18:43:25.901511'),(2,'auth','0001_initial','2024-07-16 18:43:26.548803'),(3,'admin','0001_initial','2024-07-16 18:43:26.619336'),(4,'admin','0002_logentry_remove_auto_add','2024-07-16 18:43:26.625365'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-16 18:43:26.643184'),(6,'contenttypes','0002_remove_content_type_name','2024-07-16 18:43:26.683696'),(7,'auth','0002_alter_permission_name_max_length','2024-07-16 18:43:26.713986'),(8,'auth','0003_alter_user_email_max_length','2024-07-16 18:43:26.724844'),(9,'auth','0004_alter_user_username_opts','2024-07-16 18:43:26.730976'),(10,'auth','0005_alter_user_last_login_null','2024-07-16 18:43:26.763600'),(11,'auth','0006_require_contenttypes_0002','2024-07-16 18:43:26.765459'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-16 18:43:26.771467'),(13,'auth','0008_alter_user_username_max_length','2024-07-16 18:43:26.783550'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-16 18:43:26.793550'),(15,'auth','0010_alter_group_name_max_length','2024-07-16 18:43:26.803551'),(16,'auth','0011_update_proxy_permissions','2024-07-16 18:43:26.810488'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-16 18:43:26.821491'),(18,'inventario','0001_initial','2024-07-16 18:43:27.174151'),(19,'inventario','0002_hola','2024-07-16 18:43:27.256325'),(20,'sessions','0001_initial','2024-07-16 18:43:27.281408');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_compra`
--

DROP TABLE IF EXISTS `inventario_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_compra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_compra` datetime(6) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `cantidad_producto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_compra`
--

LOCK TABLES `inventario_compra` WRITE;
/*!40000 ALTER TABLE `inventario_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_hola`
--

DROP TABLE IF EXISTS `inventario_hola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_hola` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `presentacion_id` bigint(20) NOT NULL,
  `ventas_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_hola_presentacion_id_29308c64_fk_inventari` (`presentacion_id`),
  KEY `inventario_hola_ventas_id_e1b446e9_fk_inventario_ventas_id` (`ventas_id`),
  CONSTRAINT `inventario_hola_presentacion_id_29308c64_fk_inventari` FOREIGN KEY (`presentacion_id`) REFERENCES `inventario_presentacion` (`id`),
  CONSTRAINT `inventario_hola_ventas_id_e1b446e9_fk_inventario_ventas_id` FOREIGN KEY (`ventas_id`) REFERENCES `inventario_ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_hola`
--

LOCK TABLES `inventario_hola` WRITE;
/*!40000 ALTER TABLE `inventario_hola` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_hola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_marca`
--

DROP TABLE IF EXISTS `inventario_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_marca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo_Tipo` longblob NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_marca`
--

LOCK TABLES `inventario_marca` WRITE;
/*!40000 ALTER TABLE `inventario_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_presentacion`
--

DROP TABLE IF EXISTS `inventario_presentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_presentacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio_venta` double NOT NULL,
  `precio_compra` double NOT NULL,
  `cantidad_stock` int(11) NOT NULL,
  `unidades_paquete` int(11) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_presentac_producto_id_c418e37c_fk_inventari` (`producto_id`),
  CONSTRAINT `inventario_presentac_producto_id_c418e37c_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_presentacion`
--

LOCK TABLES `inventario_presentacion` WRITE;
/*!40000 ALTER TABLE `inventario_presentacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_presentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_presentacionhasventas`
--

DROP TABLE IF EXISTS `inventario_presentacionhasventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_presentacionhasventas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `presentacion_id` bigint(20) NOT NULL,
  `ventas_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_presentac_presentacion_id_dd916df5_fk_inventari` (`presentacion_id`),
  KEY `inventario_presentac_ventas_id_02fe1246_fk_inventari` (`ventas_id`),
  CONSTRAINT `inventario_presentac_presentacion_id_dd916df5_fk_inventari` FOREIGN KEY (`presentacion_id`) REFERENCES `inventario_presentacion` (`id`),
  CONSTRAINT `inventario_presentac_ventas_id_02fe1246_fk_inventari` FOREIGN KEY (`ventas_id`) REFERENCES `inventario_ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_presentacionhasventas`
--

LOCK TABLES `inventario_presentacionhasventas` WRITE;
/*!40000 ALTER TABLE `inventario_presentacionhasventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_presentacionhasventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_producto`
--

DROP TABLE IF EXISTS `inventario_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo_barras` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `marca_id` bigint(20) NOT NULL,
  `tipo_producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_producto_marca_id_8732a90a_fk_inventario_marca_id` (`marca_id`),
  KEY `inventario_producto_tipo_producto_id_99ebf3ae_fk_inventari` (`tipo_producto_id`),
  CONSTRAINT `inventario_producto_marca_id_8732a90a_fk_inventario_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `inventario_marca` (`id`),
  CONSTRAINT `inventario_producto_tipo_producto_id_99ebf3ae_fk_inventari` FOREIGN KEY (`tipo_producto_id`) REFERENCES `inventario_tipoproducto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_producto`
--

LOCK TABLES `inventario_producto` WRITE;
/*!40000 ALTER TABLE `inventario_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_productohascompra`
--

DROP TABLE IF EXISTS `inventario_productohascompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_productohascompra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `compra_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_productoh_compra_id_cb8558bb_fk_inventari` (`compra_id`),
  KEY `inventario_productoh_producto_id_c8738f77_fk_inventari` (`producto_id`),
  CONSTRAINT `inventario_productoh_compra_id_cb8558bb_fk_inventari` FOREIGN KEY (`compra_id`) REFERENCES `inventario_compra` (`id`),
  CONSTRAINT `inventario_productoh_producto_id_c8738f77_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_productohascompra`
--

LOCK TABLES `inventario_productohascompra` WRITE;
/*!40000 ALTER TABLE `inventario_productohascompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_productohascompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_productohasproveedor`
--

DROP TABLE IF EXISTS `inventario_productohasproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_productohasproveedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `producto_id` bigint(20) NOT NULL,
  `proveedor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_productoh_producto_id_7fc655a7_fk_inventari` (`producto_id`),
  KEY `inventario_productoh_proveedor_id_64fadf2a_fk_inventari` (`proveedor_id`),
  CONSTRAINT `inventario_productoh_producto_id_7fc655a7_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_producto` (`id`),
  CONSTRAINT `inventario_productoh_proveedor_id_64fadf2a_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_productohasproveedor`
--

LOCK TABLES `inventario_productohasproveedor` WRITE;
/*!40000 ALTER TABLE `inventario_productohasproveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_productohasproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_proveedor`
--

DROP TABLE IF EXISTS `inventario_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_proveedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `producto` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_proveedor`
--

LOCK TABLES `inventario_proveedor` WRITE;
/*!40000 ALTER TABLE `inventario_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_tipoproducto`
--

DROP TABLE IF EXISTS `inventario_tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_tipoproducto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_tipoproducto`
--

LOCK TABLES `inventario_tipoproducto` WRITE;
/*!40000 ALTER TABLE `inventario_tipoproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_usuario`
--

DROP TABLE IF EXISTS `inventario_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_usuario`
--

LOCK TABLES `inventario_usuario` WRITE;
/*!40000 ALTER TABLE `inventario_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_ventas`
--

DROP TABLE IF EXISTS `inventario_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_ventas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saldo_inicial` double NOT NULL,
  `saldo_actual` double NOT NULL,
  `ventas_realizadas` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `fecha_apertura` datetime(6) NOT NULL,
  `fecha_cierre` datetime(6) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventario_ventas_usuario_id_835764cf_fk_inventario_usuario_id` (`usuario_id`),
  CONSTRAINT `inventario_ventas_usuario_id_835764cf_fk_inventario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `inventario_usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_ventas`
--

LOCK TABLES `inventario_ventas` WRITE;
/*!40000 ALTER TABLE `inventario_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 13:43:54
