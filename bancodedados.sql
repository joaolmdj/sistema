/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.25 : Database - pedidos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pedidos` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `pedidos`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add pedidos',7,'add_pedidos'),
(26,'Can change pedidos',7,'change_pedidos'),
(27,'Can delete pedidos',7,'delete_pedidos'),
(28,'Can view pedidos',7,'view_pedidos'),
(29,'Can add auth group',8,'add_authgroup'),
(30,'Can change auth group',8,'change_authgroup'),
(31,'Can delete auth group',8,'delete_authgroup'),
(32,'Can view auth group',8,'view_authgroup'),
(33,'Can add auth group permissions',9,'add_authgrouppermissions'),
(34,'Can change auth group permissions',9,'change_authgrouppermissions'),
(35,'Can delete auth group permissions',9,'delete_authgrouppermissions'),
(36,'Can view auth group permissions',9,'view_authgrouppermissions'),
(37,'Can add auth permission',10,'add_authpermission'),
(38,'Can change auth permission',10,'change_authpermission'),
(39,'Can delete auth permission',10,'delete_authpermission'),
(40,'Can view auth permission',10,'view_authpermission'),
(41,'Can add auth user',11,'add_authuser'),
(42,'Can change auth user',11,'change_authuser'),
(43,'Can delete auth user',11,'delete_authuser'),
(44,'Can view auth user',11,'view_authuser'),
(45,'Can add auth user groups',12,'add_authusergroups'),
(46,'Can change auth user groups',12,'change_authusergroups'),
(47,'Can delete auth user groups',12,'delete_authusergroups'),
(48,'Can view auth user groups',12,'view_authusergroups'),
(49,'Can add auth user user permissions',13,'add_authuseruserpermissions'),
(50,'Can change auth user user permissions',13,'change_authuseruserpermissions'),
(51,'Can delete auth user user permissions',13,'delete_authuseruserpermissions'),
(52,'Can view auth user user permissions',13,'view_authuseruserpermissions'),
(53,'Can add clientes',14,'add_clientes'),
(54,'Can change clientes',14,'change_clientes'),
(55,'Can delete clientes',14,'delete_clientes'),
(56,'Can view clientes',14,'view_clientes'),
(57,'Can add django admin log',15,'add_djangoadminlog'),
(58,'Can change django admin log',15,'change_djangoadminlog'),
(59,'Can delete django admin log',15,'delete_djangoadminlog'),
(60,'Can view django admin log',15,'view_djangoadminlog'),
(61,'Can add django content type',16,'add_djangocontenttype'),
(62,'Can change django content type',16,'change_djangocontenttype'),
(63,'Can delete django content type',16,'delete_djangocontenttype'),
(64,'Can view django content type',16,'view_djangocontenttype'),
(65,'Can add django migrations',17,'add_djangomigrations'),
(66,'Can change django migrations',17,'change_djangomigrations'),
(67,'Can delete django migrations',17,'delete_djangomigrations'),
(68,'Can view django migrations',17,'view_djangomigrations'),
(69,'Can add django session',18,'add_djangosession'),
(70,'Can change django session',18,'change_djangosession'),
(71,'Can delete django session',18,'delete_djangosession'),
(72,'Can view django session',18,'view_djangosession'),
(73,'Can add produtos',19,'add_produtos'),
(74,'Can change produtos',19,'change_produtos'),
(75,'Can delete produtos',19,'delete_produtos'),
(76,'Can view produtos',19,'view_produtos');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cpf` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rg` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `celular` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

/*Data for the table `clientes` */

insert  into `clientes`(`id_cliente`,`nome_cliente`,`cpf`,`rg`,`email`,`telefone`,`celular`,`endereco`,`complemento`,`cidade`,`estado`,`cep`) values 
(7,'João Lucas Medeiros De Jesus','137.723.789','21432134','joaolmdj@gmail.com','47996614371',NULL,NULL,'subida do morro','Joinville','SC','89237-010'),
(8,'Renato Russo','540.077.330-31','11.284.351-7','renatorusso@gmail.com.br','(27) 35620-0843','(27) 35620-0843','Rua Protásio Alves, 620','Mariana','Porto Velho','RO','76813-560'),
(9,'João Lucas Medeiros De Jesus','2131231',NULL,'joaolmdj@gmail.com',NULL,NULL,NULL,NULL,'Joinville','SC','89237-010'),
(10,'KDOAS','312312312',NULL,'joaolmdj@gmail.com',NULL,NULL,NULL,NULL,'Joinville','SC','89237-010'),
(14,'WQERQWER','EWRQWE','REWQREWQ','RQWEREQW',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(8,'app','authgroup'),
(9,'app','authgrouppermissions'),
(10,'app','authpermission'),
(11,'app','authuser'),
(12,'app','authusergroups'),
(13,'app','authuseruserpermissions'),
(14,'app','clientes'),
(15,'app','djangoadminlog'),
(16,'app','djangocontenttype'),
(17,'app','djangomigrations'),
(18,'app','djangosession'),
(7,'app','pedidos'),
(19,'app','produtos'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2021-07-23 21:56:02.215970'),
(2,'auth','0001_initial','2021-07-23 21:56:23.758194'),
(3,'admin','0001_initial','2021-07-23 21:56:33.583161'),
(4,'admin','0002_logentry_remove_auto_add','2021-07-23 21:56:33.949230'),
(5,'admin','0003_logentry_add_action_flag_choices','2021-07-23 21:56:34.502698'),
(6,'contenttypes','0002_remove_content_type_name','2021-07-23 21:56:39.898243'),
(7,'auth','0002_alter_permission_name_max_length','2021-07-23 21:56:42.795533'),
(8,'auth','0003_alter_user_email_max_length','2021-07-23 21:56:46.443215'),
(9,'auth','0004_alter_user_username_opts','2021-07-23 21:56:46.683066'),
(10,'auth','0005_alter_user_last_login_null','2021-07-23 21:56:49.959901'),
(11,'auth','0006_require_contenttypes_0002','2021-07-23 21:56:50.199918'),
(12,'auth','0007_alter_validators_add_error_messages','2021-07-23 21:56:50.358948'),
(13,'auth','0008_alter_user_username_max_length','2021-07-23 21:56:57.818196'),
(14,'auth','0009_alter_user_last_name_max_length','2021-07-23 21:57:04.173049'),
(15,'auth','0010_alter_group_name_max_length','2021-07-23 21:57:09.867501'),
(16,'auth','0011_update_proxy_permissions','2021-07-23 21:57:09.972675'),
(17,'auth','0012_alter_user_first_name_max_length','2021-07-23 21:57:15.439009'),
(18,'sessions','0001_initial','2021-07-23 21:57:23.046439'),
(19,'app','0001_initial','2021-08-04 00:42:46.793722');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `django_session` */

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `id_cli` int NOT NULL,
  `nome_cli` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_produto` int NOT NULL,
  `nome_produto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `valor_produto` decimal(10,2) NOT NULL,
  `quantidade_produto` smallint DEFAULT '1',
  PRIMARY KEY (`id_cli`,`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `pedidos` */

insert  into `pedidos`(`id_cli`,`nome_cli`,`id_produto`,`nome_produto`,`valor_produto`,`quantidade_produto`) values 
(1,'Vinicius de Moraes',2,'Baixo',2600.00,1),
(1,'Vinicius de Moraes',3,'Violão',5000.00,1),
(1,'Vinicius de Moraes',6,'Microfone',1300.00,1),
(2,'Chico Buarque',1,'Guitarra',10000.00,1),
(2,'Chico Buarque',4,'Bateria',2500.00,1),
(2,'Chico Buarque',5,'Baqueta',300.00,1),
(2,'Chico Buarque',7,'Palhetas',10.00,5),
(3,'Renato Russo',6,'Microfone',1300.00,1),
(4,'Marisa Monte',1,'Guitarra',10000.00,1),
(4,'Marisa Monte',3,'Violão',5000.00,1),
(4,'Marisa Monte',7,'Palhetas',10.00,5),
(5,'Alceu Valença',1,'Guitarra',10000.00,1),
(5,'Alceu Valença',4,'Bateria',2500.00,1),
(5,'Alceu Valença',5,'Baqueta',300.00,2);

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preco_item` decimal(10,2) NOT NULL,
  `quantidade_item` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Data for the table `produtos` */

insert  into `produtos`(`id_item`,`nome_item`,`preco_item`,`quantidade_item`) values 
(1,'Guitarra',10000.00,1),
(2,'Baixo',2599.99,1),
(3,'Violão',5000.00,1),
(4,'Bateria',2500.00,1),
(5,'Baqueta',300.00,2),
(6,'Microfone',1300.00,1),
(7,'Palhetas',10.00,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
