# mysqldump [-uroot -p123456] -t laravelshop admin_menu admin_permissions admin_role_menu admin_role_permissions admin_role_users admin_roles admin_user_permissions admin_users > database/admin.sql
# php artisan migrate:fresh --seed
# php artisan migrate:refresh --seed
# mysql [-uroot -p123456] laravelshop < database/admin.sql

-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: laravelshop
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index(首页)','fa-bar-chart','/',NULL,NULL,'2019-06-05 02:38:16'),(2,0,6,'Admin(系统管理)','fa-tasks','/admin',NULL,NULL,'2019-06-14 05:42:55'),(3,2,7,'Users(管理员)','fa-users','auth/users',NULL,NULL,'2019-06-14 05:42:55'),(4,2,8,'Roles(角色)','fa-user','auth/roles',NULL,NULL,'2019-06-14 05:42:55'),(5,2,9,'Permission(权限)','fa-ban','auth/permissions',NULL,NULL,'2019-06-14 05:42:55'),(6,2,10,'Menu(菜单)','fa-bars','auth/menu',NULL,NULL,'2019-06-14 05:42:55'),(7,2,11,'Operation log(操作日志)','fa-history','auth/logs',NULL,NULL,'2019-06-14 05:42:55'),(8,0,2,'用户管理','fa-users','users',NULL,'2019-06-05 03:29:01','2019-06-05 03:44:21'),(9,0,3,'商品管理','fa-cubes','products',NULL,'2019-06-05 07:06:04','2019-06-05 07:06:12'),(10,0,4,'Orders(订单管理)','fa-rmb','/orders',NULL,'2019-06-12 07:56:35','2019-06-12 07:57:12'),(11,0,5,'Coupons(优惠券管理)','fa-tags','/coupon_codes',NULL,'2019-06-14 05:42:32','2019-06-14 05:42:55');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-06-05 03:53:42','2019-06-05 03:53:52'),(7,'商品管理','products','','/products*','2019-06-05 07:07:54','2019-06-05 07:07:54'),(8,'订单管理','orders','','/admin/orders*','2019-06-12 07:59:53','2019-06-12 07:59:53'),(9,'优惠券管理','coupons','','/coupon_codes*','2019-06-14 05:43:42','2019-06-14 05:43:57');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-06-04 10:05:33','2019-06-04 10:05:33'),(2,'运营','operation','2019-06-05 03:56:39','2019-06-05 03:56:39');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$uzpBV1VZAOIhZ3iEtLOeYeO4YIrCgBSqQ2XuiIyXGXli6DqboQXmm','Administrator',NULL,'BSPNKJCM9kL40b4w8Wzvuso0r5UAhVncPadbsPJ360LuUcppvlj96PHsM0ST','2019-06-04 10:05:33','2019-06-04 10:05:33'),(2,'operator','$2y$10$5ipoOq/Hmi/Jfx8ttzQ7JOEvx2U.zMhFrJONEdU0xtE1JT9AaLL7K','运营','images/Ubuntu.jpg','4wm0kz8TWSzSfkFY3h6O3sm5dy3GZOiAlAMPACrS8KRra8ukD4BheRStsOvP','2019-06-05 05:44:05','2019-06-05 05:44:05');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14  8:07:57
