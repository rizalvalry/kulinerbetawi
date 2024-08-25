/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - spa_ecommerce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spa_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `spa_ecommerce`;

/*Table structure for table `attribute_options` */

DROP TABLE IF EXISTS `attribute_options`;

CREATE TABLE `attribute_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` char(100) NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attribute_options` */

insert  into `attribute_options`(`id`,`value`,`attribute_id`) values 
(1,'molestiae',1),
(2,'repellendus',1),
(3,'voluptas',1),
(4,'maiores',2),
(5,'et',2),
(6,'tempora',2);

/*Table structure for table `attributes` */

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attributes` */

insert  into `attributes`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Size','2024-08-24 17:39:10','2024-08-24 17:39:10'),
(2,'Color','2024-08-24 17:39:10','2024-08-24 17:39:10');

/*Table structure for table `billing_details` */

DROP TABLE IF EXISTS `billing_details`;

CREATE TABLE `billing_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `phone` char(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` char(100) NOT NULL,
  `state` char(100) NOT NULL,
  `zip_code` char(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billing_details_user_id_foreign` (`user_id`),
  CONSTRAINT `billing_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `billing_details` */

insert  into `billing_details`(`id`,`user_id`,`phone`,`address`,`address_2`,`city`,`state`,`zip_code`,`created_at`,`updated_at`) values 
(1,1,'01834513106','9097 Kelly Estates\nEdmundborough, KY 88083-4307','319 Beverly Route\nNorth Neoma, WA 90827-5160','Cummerataland','Rhode Island','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(2,2,'01834513106','5329 Dewayne Shore Apt. 605\nJohnsonton, KS 26284','7686 Wuckert Falls Suite 544\nKurtborough, CT 19700','Jacobsstad','Delaware','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(3,3,'01834513106','88631 Volkman Avenue Suite 728\nOliverbury, AR 67260-6533','683 Marquardt Mountain\nSouth Samanthaberg, KS 91454','Burniceville','Oregon','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(4,4,'01834513106','80351 Samantha Islands\nFrancescamouth, WI 54522-1764','23461 Kertzmann Alley Apt. 127\nProhaskashire, NH 77493','Manuelville','Alaska','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(5,5,'01834513106','97538 Johns Tunnel\nPort Eddiefort, TN 26717','12370 VonRueden Mountains Suite 541\nSouth Carmelastad, WI 92894-5571','South Nicholaustown','Alabama','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(6,6,'01834513106','91055 Eliane Tunnel\nParkertown, TN 27137','42022 Julio Estate Apt. 833\nGutkowskiburgh, GA 66867-4852','Klockotown','Kansas','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(7,7,'85781571742','Jl Cikoko Barat IV No 18A','Jl Pengadegan 2 no 45','Jakarta','Jakarta','1234','2024-08-24 17:39:12','2024-08-25 10:47:24'),
(8,8,'01834513106','43396 Mariana Locks Suite 425\nGloriaview, MA 25836','308 Dare Coves\nJasperton, TN 48864','South Elseville','Louisiana','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(9,9,'01834513106','37914 McCullough Terrace Apt. 082\nMuellershire, ME 63459','35699 Rolando Lodge Apt. 455\nNew Maxie, VA 66175-6319','Riceville','Colorado','1234','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(10,10,'01834513106','2314 Annie Radial\nNew Brenna, CO 66783','407 Sarah Square\nNew Odessastad, NC 97018','Gottliebborough','South Carolina','1234','2024-08-24 17:39:12','2024-08-24 17:39:12');

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `offer_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`),
  KEY `brands_offer_id_foreign` (`offer_id`),
  CONSTRAINT `brands_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `brands` */

insert  into `brands`(`id`,`name`,`image`,`slug`,`status`,`offer_id`,`created_at`,`updated_at`) values 
(1,'Mpok Mumun','17245974961.png','mpok-mumun',1,NULL,'2024-08-24 17:39:09','2024-08-25 20:51:36');

/*Table structure for table `cart_items` */

DROP TABLE IF EXISTS `cart_items`;

CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cart_items_cart_id_foreign` (`cart_id`),
  KEY `cart_items_product_id_foreign` (`product_id`),
  CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cart_items` */

insert  into `cart_items`(`id`,`cart_id`,`product_id`,`qty`) values 
(1,1,32,1);

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `carts` */

insert  into `carts`(`id`,`user_id`,`created_at`,`updated_at`) values 
(1,7,'2024-08-25 10:32:56','2024-08-25 10:32:56');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `section_id` bigint(20) unsigned NOT NULL,
  `offer_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_section_id_foreign` (`section_id`),
  KEY `categories_offer_id_foreign` (`offer_id`),
  CONSTRAINT `categories_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`image`,`slug`,`status`,`section_id`,`offer_id`,`created_at`,`updated_at`) values 
(1,'Makanan','17245585891.png','makanan',1,1,NULL,'2024-08-24 17:39:09','2024-08-25 10:03:09'),
(7,'Minuman','17245586251.jpg','minuman',1,1,NULL,'2024-08-25 10:03:45','2024-08-25 10:04:04');

/*Table structure for table `comment_replies` */

DROP TABLE IF EXISTS `comment_replies`;

CREATE TABLE `comment_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL,
  `reply` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_replies_comment_id_foreign` (`comment_id`),
  CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comment_replies` */

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_product_id_foreign` (`product_id`),
  CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments` */

/*Table structure for table `contact_us` */

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `reply_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_us_reply_by_foreign` (`reply_by`),
  CONSTRAINT `contact_us_reply_by_foreign` FOREIGN KEY (`reply_by`) REFERENCES `editors` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contact_us` */

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `code` char(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `coupons` */

insert  into `coupons`(`id`,`name`,`discount`,`code`,`status`,`start_date`,`expire_date`,`created_at`,`updated_at`) values 
(3,'lazy monday',50.00,'128803833',1,'2024-08-24 17:39:10','2025-08-24 17:39:10','2024-08-24 17:39:10','2024-08-25 20:58:08');

/*Table structure for table `editors` */

DROP TABLE IF EXISTS `editors`;

CREATE TABLE `editors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` char(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `editors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `editors` */

insert  into `editors`(`id`,`name`,`email`,`phone`,`address`,`city`,`state`,`role`,`status`,`password`,`email_verified_at`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin','admin@mail.com','01834513106','81748 Chanel Summit\nPowlowskimouth, DC 56344','Angeloberg','South Carlo',1,1,'$2y$10$W.bTIJqS2NgtpwGC.B1yd.6mtrXyAKx24PmZ1FuHZ1EwKdTzKPFTK',NULL,NULL,'2024-08-24 17:39:10','2024-08-24 17:39:10');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `general_settings` */

DROP TABLE IF EXISTS `general_settings`;

CREATE TABLE `general_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `phone_2` char(11) DEFAULT NULL,
  `zip_code` char(6) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `general_settings` */

insert  into `general_settings`(`id`,`name`,`logo`,`banner`,`slogan`,`email`,`address`,`phone`,`phone_2`,`zip_code`,`facebook`,`youtube`,`twitter`,`instagram`,`created_at`,`updated_at`) values 
(1,'Kuliner Betawi','17245710781.png','17245710781.png','Dari pada menunggu yang ga pasti enak, mending yang enak-enak aja','cawangbsi@gmail.com','Jl. Cikoko Barat IV','01834513106','01521731612','12770','fb.com','youtube.com','twitter.com','instagram.com','2024-08-24 17:39:10','2024-08-25 20:57:37');

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2014_10_12_100000_create_password_resets_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2023_06_23_145406_create_editors_table',1),
(7,'2023_06_23_145508_create_attributes_table',1),
(8,'2023_06_23_145519_create_attribute_options_table',1),
(9,'2023_06_23_151553_create_sections_table',1),
(10,'2023_06_23_151626_create_offers_table',1),
(11,'2023_06_23_151627_create_categories_table',1),
(12,'2023_06_23_151633_create_sub_categories_table',1),
(13,'2023_06_23_151634_create_brands_table',1),
(14,'2023_06_23_151826_create_products_table',1),
(15,'2023_06_23_151905_create_carts_table',1),
(16,'2023_06_23_151918_create_cart_items_table',1),
(17,'2023_06_23_151945_create_coupons_table',1),
(18,'2023_06_23_151946_create_shipping_methods_table',1),
(19,'2023_06_23_151947_create_orders_table',1),
(20,'2023_06_23_151959_create_order_items_table',1),
(21,'2023_06_23_152048_create_payment_types_table',1),
(22,'2023_06_23_163127_create_reviews_table',1),
(23,'2023_07_14_154304_create_contact_us_table',1),
(24,'2023_07_14_154401_create_general_settings_table',1),
(25,'2023_07_14_155030_create_searched_keywords_table',1),
(26,'2023_07_14_155151_create_tags_table',1),
(27,'2023_07_14_173835_create_product_views_table',1),
(28,'2023_07_14_173957_create_product_attributes_table',1),
(29,'2023_07_14_174116_create_comments_table',1),
(30,'2023_07_14_174548_create_billing_details_table',1),
(31,'2023_07_20_072217_create_revenue_from_purchase_and_sale_of_products_table',1),
(32,'2023_09_03_233721_create_comment_replies_table',1),
(33,'2023_09_05_180252_create_jobs_table',1),
(34,'2023_09_20_155504_create_user_payments_table',1);

/*Table structure for table `offers` */

DROP TABLE IF EXISTS `offers`;

CREATE TABLE `offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('Percentage','Decimal') NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `offers` */

insert  into `offers`(`id`,`name`,`slug`,`image`,`title`,`type`,`discount`,`status`,`start_date`,`expire_date`,`created_at`,`updated_at`) values 
(2,'Yang Paling Enak Minggu ini','yang-paling-enak-minggu-ini','17245979621.png','Cobain aja sampe penasaran nya ilang','Percentage',24.00,1,'2024-08-24 17:39:10','2030-08-24 17:39:10','2024-08-24 17:39:10','2024-08-25 20:59:22');

/*Table structure for table `order_items` */

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_items` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_status` enum('Approved','Delivered','Shipped','Pending','Canceled','Returned') NOT NULL DEFAULT 'Pending',
  `discount` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `session_id` varchar(255) DEFAULT NULL,
  `shipping_method_id` bigint(20) unsigned DEFAULT NULL,
  `coupon_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_shipping_method_id_foreign` (`shipping_method_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_methods` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`user_id`,`order_status`,`discount`,`subtotal`,`total`,`payment_status`,`session_id`,`shipping_method_id`,`coupon_id`,`created_at`,`updated_at`) values 
(3,2,'Canceled',83.00,467.00,148.00,0,NULL,3,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(4,2,'Pending',39.00,212.00,226.00,0,NULL,3,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(5,3,'Pending',41.00,275.00,420.00,0,NULL,3,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(6,3,'Pending',12.00,186.00,412.00,0,NULL,1,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(7,4,'Canceled',73.00,293.00,394.00,0,NULL,1,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(8,4,'Returned',46.00,451.00,496.00,0,NULL,1,3,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(10,5,'Pending',94.00,272.00,344.00,0,NULL,2,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(11,6,'Approved',68.00,453.00,156.00,0,NULL,2,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(12,6,'Canceled',49.00,420.00,292.00,0,NULL,1,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(13,7,'Canceled',27.00,381.00,466.00,0,NULL,2,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(15,8,'Pending',71.00,304.00,265.00,0,NULL,1,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(16,8,'Approved',29.00,110.00,447.00,0,NULL,3,3,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(17,9,'Canceled',60.00,262.00,277.00,0,NULL,2,3,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(18,9,'Canceled',63.00,271.00,340.00,0,NULL,2,NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(20,10,'Pending',42.00,367.00,194.00,0,NULL,2,3,'2024-08-24 17:39:12','2024-08-24 17:39:12');

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payment_types` */

DROP TABLE IF EXISTS `payment_types`;

CREATE TABLE `payment_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payment_types` */

insert  into `payment_types`(`id`,`type`,`created_at`,`updated_at`) values 
(1,'Online Payment','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(2,'Cash On Payment','2024-08-24 17:39:12','2024-08-24 17:39:12');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`expires_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',7,'auth_token','2ff1de44bab737ccd4a3206138cf7cf1c43619d05c537b86530039fc15a20e53','[\"*\"]','2024-08-25 10:47:47',NULL,'2024-08-25 10:32:38','2024-08-25 10:47:47');

/*Table structure for table `product_attributes` */

DROP TABLE IF EXISTS `product_attributes`;

CREATE TABLE `product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `values` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attributes_product_id_foreign` (`product_id`),
  KEY `product_attributes_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_attributes` */

/*Table structure for table `product_views` */

DROP TABLE IF EXISTS `product_views`;

CREATE TABLE `product_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `view_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_views_product_id_foreign` (`product_id`),
  CONSTRAINT `product_views_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_views` */

insert  into `product_views`(`id`,`product_id`,`view_count`) values 
(31,32,5),
(32,31,1),
(33,33,46);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `stock_status` tinyint(1) NOT NULL DEFAULT 1,
  `qty_in_stock` int(11) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `original_price` decimal(8,2) NOT NULL,
  `offer_id` bigint(20) unsigned DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `gallery` text NOT NULL,
  `specification` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `sub_category_id` bigint(20) unsigned DEFAULT NULL,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `products_sku_unique` (`sku`),
  KEY `products_offer_id_foreign` (`offer_id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_sub_category_id_foreign` (`sub_category_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`slug`,`sku`,`description`,`stock_status`,`qty_in_stock`,`sale_price`,`original_price`,`offer_id`,`image`,`gallery`,`specification`,`tags`,`category_id`,`sub_category_id`,`brand_id`,`status`,`created_at`,`updated_at`) values 
(31,'Asinan Bangkok','asinan-bangkok','asinan','ini adalah asinan',1,100,20000.00,20000.00,NULL,'17245040431.png','17245040432.png','<p>ini adalah asinan mix</p>',NULL,1,1,1,1,'2024-08-24 18:54:03','2024-08-24 18:54:03'),
(32,'Nasi Uduk Mpo Mumun','nasi-uduk-mpo-mumun','15000','Nasi Uduk',1,100,15000.00,15000.00,NULL,'17245591861.jpg','17245591875.jpg','<p>Nasi Uduk Komplit</p>',NULL,1,1,1,1,'2024-08-25 10:13:07','2024-08-25 10:13:07'),
(33,'rang ginang','rang-ginang','rangginang','rengginang makanan',1,50,5000.00,5000.00,NULL,'17245623471.jpg','17245623474.jpg','<p>ini adalah rengginang</p>',NULL,1,1,1,1,'2024-08-25 11:05:47','2024-08-25 11:05:47');

/*Table structure for table `revenue_from_purchase_and_sale_of_products` */

DROP TABLE IF EXISTS `revenue_from_purchase_and_sale_of_products`;

CREATE TABLE `revenue_from_purchase_and_sale_of_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `revenue` decimal(8,2) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `sold_qty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `revenue_from_purchase_and_sale_of_products_product_id_foreign` (`product_id`),
  CONSTRAINT `revenue_from_purchase_and_sale_of_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `revenue_from_purchase_and_sale_of_products` */

insert  into `revenue_from_purchase_and_sale_of_products`(`id`,`product_id`,`revenue`,`cost`,`sold_qty`) values 
(1,NULL,5376.00,3959.00,199),
(2,NULL,4173.00,2135.00,168),
(3,NULL,2917.00,3640.00,66),
(4,NULL,4199.00,2087.00,74),
(5,NULL,4926.00,3883.00,137),
(6,NULL,4669.00,2855.00,178),
(7,NULL,5291.00,2763.00,75),
(8,NULL,3261.00,1096.00,78),
(9,NULL,2837.00,2457.00,153),
(10,NULL,1235.00,3146.00,45),
(11,NULL,1050.00,2658.00,23),
(12,NULL,4484.00,2732.00,100),
(13,NULL,5050.00,1802.00,152),
(14,NULL,4959.00,2779.00,16),
(15,NULL,3271.00,1158.00,43),
(16,NULL,3736.00,1189.00,106),
(17,NULL,1251.00,2941.00,53),
(18,NULL,1032.00,1273.00,198),
(19,NULL,4511.00,3992.00,112),
(20,NULL,2892.00,2621.00,21),
(21,NULL,3782.00,2568.00,124),
(22,NULL,1898.00,2609.00,176),
(23,NULL,4134.00,2238.00,187),
(24,NULL,5397.00,2793.00,35),
(25,NULL,1944.00,3346.00,126),
(26,NULL,1346.00,3468.00,12),
(27,NULL,2160.00,1053.00,119),
(28,NULL,1984.00,3841.00,164),
(29,NULL,2983.00,3629.00,66),
(30,NULL,3486.00,2079.00,78);

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `rating_value` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reviews` */

/*Table structure for table `searched_keywords` */

DROP TABLE IF EXISTS `searched_keywords`;

CREATE TABLE `searched_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `searched_keywords_keyword_unique` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `searched_keywords` */

/*Table structure for table `sections` */

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sections` */

insert  into `sections`(`id`,`name`,`image`,`slug`,`status`,`created_at`,`updated_at`) values 
(1,'Kuliner Betawi','17245510771.png','kuliner-betawi',1,'2024-08-24 17:39:09','2024-08-25 10:01:44');

/*Table structure for table `shipping_methods` */

DROP TABLE IF EXISTS `shipping_methods`;

CREATE TABLE `shipping_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `shipping_methods` */

insert  into `shipping_methods`(`id`,`name`,`cost`,`created_at`,`updated_at`) values 
(1,'Gojek',34.00,'2024-08-24 17:39:10','2024-08-25 20:59:39'),
(2,'Grab',23.00,'2024-08-24 17:39:10','2024-08-25 20:59:52'),
(3,'Maxim',33.00,'2024-08-24 17:39:10','2024-08-25 21:00:06');

/*Table structure for table `sub_categories` */

DROP TABLE IF EXISTS `sub_categories`;

CREATE TABLE `sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) unsigned NOT NULL,
  `offer_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  KEY `sub_categories_category_id_foreign` (`category_id`),
  KEY `sub_categories_offer_id_foreign` (`offer_id`),
  CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sub_categories_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sub_categories` */

insert  into `sub_categories`(`id`,`name`,`slug`,`status`,`category_id`,`offer_id`,`created_at`,`updated_at`) values 
(1,'Makanan Komplit','makanan-komplit',1,1,NULL,'2024-08-24 17:39:09','2024-08-25 10:10:45'),
(2,'Minuman Komplit','minuman-komplit',1,7,NULL,'2024-08-24 17:39:09','2024-08-25 10:11:04');

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_keyword_unique` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`keyword`,`created_at`,`updated_at`) values 
(1,'quo','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(2,'praesentium','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(3,'voluptatem','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(4,'quia','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(5,'laboriosam','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(6,'ratione','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(7,'temporibus','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(8,'vitae','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(9,'laborum','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(10,'quam','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(11,'nemo','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(12,'quos','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(13,'est','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(14,'vel','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(15,'quasi','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(16,'magni','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(17,'dolorem','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(18,'ut','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(19,'rerum','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(20,'sed','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(21,'autem','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(22,'aspernatur','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(23,'tempore','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(24,'facere','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(25,'in','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(26,'architecto','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(27,'optio','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(28,'consequatur','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(29,'corporis','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(30,'quod','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(31,'fugit','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(32,'quaerat','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(33,'consectetur','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(34,'quisquam','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(35,'mollitia','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(36,'impedit','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(37,'minus','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(38,'sint','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(39,'sit','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(40,'expedita','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(41,'id','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(42,'fuga','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(43,'exercitationem','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(44,'dolore','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(45,'suscipit','2024-08-24 17:39:12','2024-08-24 17:39:12'),
(46,'tenetur','2024-08-24 17:39:13','2024-08-24 17:39:13'),
(47,'illo','2024-08-24 17:39:13','2024-08-24 17:39:13'),
(48,'dolores','2024-08-24 17:39:13','2024-08-24 17:39:13'),
(49,'repudiandae','2024-08-24 17:39:13','2024-08-24 17:39:13'),
(50,'eius','2024-08-24 17:39:13','2024-08-24 17:39:13');

/*Table structure for table `user_payments` */

DROP TABLE IF EXISTS `user_payments`;

CREATE TABLE `user_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_type_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `payment_intent` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_payments_payment_type_id_foreign` (`payment_type_id`),
  KEY `user_payments_order_id_foreign` (`order_id`),
  CONSTRAINT `user_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `user_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_payments` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Ashton Price','admin@example.com',NULL,'$2y$12$rtQ4KZ8ETboX3w9WeimnvOtuBVpW/tAZ8dAR4vWTlh/x2AuD.YEPa',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(2,'Mr. Porter McDermott V','nayeli.koepp@hotmail.com',NULL,'$2y$10$YNLMI281z3X/P2au8bqJSeYRdCK/CoctLpjECJXg3xmyWFRC.ZXpW',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(3,'Magnus Kub MD','amaya94@ferry.com',NULL,'$2y$10$hQTDyJ6TiRCMsv5IdkkNJeo0qfm5zw0sCPDeI6VHx6ZRd7.VKw68C',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(4,'Shaniya Emmerich','pearlie.ankunding@doyle.com',NULL,'$2y$10$USCUURWiOeaZiA.uAggERezQliTqGyLZnDmHjE/khZ0BFA2S9YsVO',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(5,'Estelle Ledner','idietrich@lynch.net',NULL,'$2y$10$C6Yc.m2uDwgqaFCmteRwW.rBsCD3hifEIgo4Xc2qciG56oFj9ecO6',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(6,'Delbert Dach','kavon77@bayer.info',NULL,'$2y$10$jd/BWDjeUXDE2JazM/qZkO0OfC7iG/5yNEPSlhUEiPiLiX4PqCVyO',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(7,'Mrs. Viviane Hermann Sr.','bmueller@rogahn.net',NULL,'$2y$10$WkXJiB2ylpU6Q1fdhZIKFueftjfdM1eE3ngFCeSLAc1hy7EC7ZRam',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(8,'Chaim Waelchi','emory10@powlowski.com',NULL,'$2y$10$fPwrNt32fIJfRPXqJDS38.i901PIidw1TTmOBjdZCOdwPxRBlHRkO',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(9,'Cicero Mertz','boyle.adela@gmail.com',NULL,'$2y$10$eU7CZl1dKt0AFRLaOfzImeu/a.ZO4oEvZOTfeU5I/QFNZ3yNSu4Ta',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12'),
(10,'Jeff Bashirian','cruickshank.deshawn@gmail.com',NULL,'$2y$10$v/dEc0HT5bDajy63CwFovOPB9vblADwN522bDxDrGhqvlVksRBIBS',NULL,'2024-08-24 17:39:12','2024-08-24 17:39:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
