-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: visa
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
INSERT INTO `app_settings` VALUES ('21a6bee5-2df3-47ec-9553-42d62613effd','App.Favico','assets/img/app-settings/App_Favico_maxx-logo-only-80x80.png','image',0,NULL,NULL,NULL,'2022-04-22 22:53:31'),('44dawc5d-113c-4cdc-871c-6c5bd7a24af8','App.Login.Cover','assets/img/app-settings/App_Login_Cover_base_app-removebg-preview.png','image',0,NULL,NULL,NULL,'2022-04-12 02:59:25'),('5778eeda-5044-4f93-85ba-f242e0857898','App.Logo.Login','assets/img/app-settings/App_Logo_Login_maxxs-v-logo-colour-text-black.png','image',0,NULL,NULL,NULL,'2022-04-22 22:53:31'),('5878d7f5-d473-4f43-b676-2ab542feecec','App.Logo','assets/img/app-settings/App_Logo_maxxs-h-logo-colour-text-white-rev.png','image',0,NULL,NULL,NULL,'2022-04-22 22:53:31'),('5fb7e9ea-73a4-4b20-abed-19e06c18966d','App.Name','Base App','text',0,NULL,NULL,NULL,'2022-04-22 22:54:33'),('7aecf028-cf68-41d0-a486-6bd67e4082eb','App.Description','Description Base App','textarea',0,NULL,NULL,NULL,'2022-04-22 22:54:33');
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES ('7ff51282-b76a-407b-921f-edf584386763','Contoh 1','Contoh','Alamat','ddbd263f-1d83-4af7-b06e-f1206bb29a45','03ae429a-a24c-4592-83d5-1759288ccc78','ae30aa60-2323-487b-846f-3743f4a09d7b','123','email@gmail.com','021-1233-2231','572003cd-0230-4534-b84d-eb2d9eab58a7','572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-23 00:16:00','2022-04-23 00:17:20');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('ae30aa60-2323-487b-846f-3743f4a09d7b','03ae429a-a24c-4592-83d5-1759288ccc78','Kota Bogor','572003cd-0230-4534-b84d-eb2d9eab58a7','572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-21 23:56:49','2022-04-21 23:59:42');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `company_profile`
--

LOCK TABLES `company_profile` WRITE;
/*!40000 ALTER TABLE `company_profile` DISABLE KEYS */;
INSERT INTO `company_profile` VALUES ('7895ed98-a2fd-45ac-be50-98628a3e6c19','Company Profile 1','Contoh Address','Address Street','ddbd263f-1d83-4af7-b06e-f1206bb29a45','03ae429a-a24c-4592-83d5-1759288ccc78','ae30aa60-2323-487b-846f-3743f4a09d7b','12345','email@gmail.com','021-1233-2231','182-3231-3213-1232','572003cd-0230-4534-b84d-eb2d9eab58a7','572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-23 00:38:23','2022-04-23 00:40:37');
/*!40000 ALTER TABLE `company_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('4a71e971-a528-4cbf-8a26-548690ba1498','Australia','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-24 22:45:24','2022-04-24 22:45:24'),('ddbd263f-1d83-4af7-b06e-f1206bb29a45','Indonesia','572003cd-0230-4534-b84d-eb2d9eab58a7','572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-21 17:42:32','2022-04-21 19:29:40');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (30,'2019_12_14_000001_create_personal_access_tokens_table',1),(31,'2022_04_17_152548_create_cities_table',1),(32,'2022_04_23_052647_create_branches_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('014f167d-5360-4cc4-8cbe-274da2ad7752','Cities Create','cities-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:21','2022-04-21 23:11:21'),('09c14694-89ee-4029-a7cf-76b0581be6de','App Settings Update','app-settings-update','1',NULL,'2021-11-07 20:09:10',NULL),('0b8ad518-bdea-46a0-a05f-abf475c26e9e','States View','states-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:13','2022-04-21 20:15:13'),('0eb1754b-7846-4185-a140-eaee352e7f1a','Users Delete','users-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:52:19','2022-04-19 07:52:19'),('0f254a81-85a0-4660-af12-8733a8f5abee','Cities View','cities-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:21','2022-04-21 23:11:21'),('1138e995-1fe3-4eb2-b961-8a61e872de10','Countries Edit','countries-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:46','2022-04-21 17:29:46'),('13376f2a-d77a-49ba-930c-ab0e4d318dc8','States Edit','states-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:13','2022-04-21 20:15:13'),('13d69074-a66f-4e57-9095-5a4001289b1d','Branches Edit','branches-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:19','2022-04-22 22:41:19'),('19a085e0-7dc6-4b0e-8f6d-902dbd6f2382','Permissions Update','permissions-update','1',NULL,'2021-11-07 20:09:10',NULL),('1c7ce46e-87be-4943-9a67-00943936639c','Countries Create','countries-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:46','2022-04-21 17:29:46'),('2187e06d-afac-4ed9-bf9e-8a66d1ae8f8a','Branches Create','branches-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:19','2022-04-22 22:41:19'),('2ab7755c-c49c-4b03-897b-9f603bd3e628','Permissions Create','permissions-create','1',NULL,'2021-11-07 20:09:10',NULL),('2b5265cf-e7b8-4621-8e28-5c6d2937f096','Countries View','countries-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:46','2022-04-21 17:29:46'),('2da6c82c-f14e-4d5c-9f68-592c5d908e36','States Update','states-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:13','2022-04-21 20:15:13'),('2e8ee771-0180-4f4b-bda9-eeb324bd9938','Cities Delete','cities-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:21','2022-04-21 23:11:21'),('325194c5-0bf7-4202-9504-ea940391b848','Branches View','branches-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:19','2022-04-22 22:41:19'),('32eb84a2-0a64-46a0-9f0a-c840421fd718','Users Create','users-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:52:19','2022-04-19 07:52:19'),('38d21b9b-4e50-445e-82e9-0627fdb47ab9','States Delete','states-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:13','2022-04-21 20:15:13'),('38f68ff0-0283-4586-8096-5b596b70c4bd','Countries Delete','countries-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:46','2022-04-21 17:29:46'),('3ac05e2f-2ea1-41f1-a6d8-740b88929e55','States Create','states-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:13','2022-04-21 20:15:13'),('41d9d910-060f-45c6-96e0-85a3cb395583','Roles View','role-view','1',NULL,'2021-11-07 20:09:10',NULL),('4bbcb4ab-c7d2-460a-bad9-051dce67b8ec','Role Config','role-config','1',NULL,'2021-11-07 20:09:10',NULL),('4e6a22bd-ead3-4c40-bbe8-0a8e9c399426','Cities Update','cities-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:21','2022-04-21 23:11:21'),('56dff6c8-21ef-4c78-aaa3-c8deafa7262f','Company Profile Update','company-profile-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:15','2022-04-23 00:33:15'),('5745df0a-d004-40c0-9ed4-22ed6d182ec2','Roles Create','role-create','1',NULL,'2021-11-07 20:09:10',NULL),('5f5c77e4-068b-4130-918e-e5a0abc2d26a','Roles Update','role-update','1',NULL,'2021-11-07 20:09:10',NULL),('67f01052-8b35-4129-a873-808ab07b03e3','Company Profile Delete','company-profile-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:15','2022-04-23 00:33:15'),('685a7f4e-2375-41c9-8555-d3dec90e25ea','Roles Edit','role-edit','1',NULL,'2021-11-07 20:09:10',NULL),('6861eddc-1851-42bb-8af0-224fbb8b1eab','App Settings View','app-settings-view','1',NULL,'2021-11-07 20:09:10',NULL),('6ee065e7-6754-4a1a-a53a-d0adbc5ff40b','Countries Update','countries-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:46','2022-04-21 17:29:46'),('87b8a2c3-bcf0-457c-98bd-2f3b6a315e03','Url Create','url-create','1',NULL,'2021-11-07 20:09:10',NULL),('9780299c-8209-46aa-9f10-4156bd741c8a','Branches Update','branches-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:19','2022-04-22 22:41:19'),('9c4f366a-dd8a-4850-bc63-aad3594e42d9','Url Edit','url-edit','1',NULL,'2021-11-07 20:09:10',NULL),('a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9','Url Update','url-update','1',NULL,'2021-11-07 20:09:10',NULL),('aaff2a5e-e0a6-4091-8570-4de47b56710d','Users Update','users-update','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:52:19','2022-04-19 07:52:19'),('b384dab1-4f82-4cae-a96a-4ccb6dcf4979','Url View','url-view','1',NULL,'2021-11-07 20:09:10',NULL),('c0e77f2a-bac6-483f-9bdb-73b416e528cc','Users Edit','users-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:52:19','2022-04-19 07:52:19'),('c3ed0e19-adce-4a51-af73-d8b50dd4f115','Permissions Generate','permissions-generate','1',NULL,'2021-11-07 20:09:10',NULL),('c97f7b86-2101-4d14-8090-3ff395271564','Permissions Edit','permissions-edit','1',NULL,'2021-11-07 20:09:10',NULL),('ca4b4734-af4f-4ed6-8631-8e2aa92da519','Users View','users-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:52:19','2022-04-19 07:52:19'),('cdff1cb5-3d1c-4cea-b412-89afe1161d0b','Company Profile Edit','company-profile-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:15','2022-04-23 00:33:15'),('ceb86827-c3d9-4cf0-b637-3b18abd2a239','Permissions View','permissions-view','1',NULL,'2021-11-07 20:09:10',NULL),('d41a1d98-9889-455d-ad1b-17c1562e49b2','Company Profile Create','company-profile-create','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:15','2022-04-23 00:33:15'),('deb05ca6-0d7e-4e48-8232-059682b21698','Company Profile View','company-profile-view','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:15','2022-04-23 00:33:15'),('eb345ca1-02cc-4343-a04b-0449c5438bdb','Cities Edit','cities-edit','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:21','2022-04-21 23:11:21'),('fbfc9b79-0dfe-4f7d-8bc0-ebd0c63ec759','Branches Delete','branches-delete','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:19','2022-04-22 22:41:19');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('ab1658ed-af25-4864-b13d-d821e74d2a9c','Administrator','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-15 01:06:43','2022-04-15 01:06:43');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES ('00d097c5-1f7c-4bf4-a2f9-ed936859136a','deb05ca6-0d7e-4e48-8232-059682b21698','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('01400650-628d-411b-a9a5-084cb4b12996','014f167d-5360-4cc4-8cbe-274da2ad7752','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('0343ab92-4e7a-403b-b0ac-2318a6fc5261','56dff6c8-21ef-4c78-aaa3-c8deafa7262f','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('070b6e77-659e-41ef-8c8c-ce51c7dfa2f9','4e6a22bd-ead3-4c40-bbe8-0a8e9c399426','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('0ba6e3f3-c0e9-47d9-af79-c714ca6e365a','aaff2a5e-e0a6-4091-8570-4de47b56710d','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('134206f6-bb5e-4416-94cc-35b1ea512608','09c14694-89ee-4029-a7cf-76b0581be6de','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('18e6c560-24c8-4cc6-8021-37d55a8b5b0f','ca4b4734-af4f-4ed6-8631-8e2aa92da519','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('1b367007-4c0e-4167-9f72-1613a3c05f4f','0b8ad518-bdea-46a0-a05f-abf475c26e9e','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('2737c0e3-f446-4e55-9c12-201068c88a8e','eb345ca1-02cc-4343-a04b-0449c5438bdb','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('2d00bf0b-7df9-4bbc-925b-21006b145366','c97f7b86-2101-4d14-8090-3ff395271564','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('3997aaea-7fb4-4a99-a6ff-d61b183c1558','1c7ce46e-87be-4943-9a67-00943936639c','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('3f5e3be6-e281-40bf-971c-06a96df5ba27','38f68ff0-0283-4586-8096-5b596b70c4bd','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('48f78c34-8b58-4a98-8e6d-ff694f019145','3ac05e2f-2ea1-41f1-a6d8-740b88929e55','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('4b7d7e79-7f40-4310-8e5b-b5c2a9be4ab7','b384dab1-4f82-4cae-a96a-4ccb6dcf4979','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('50740e5d-3889-4752-9b87-84e86c43c2d5','67f01052-8b35-4129-a873-808ab07b03e3','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('507b12f6-7a5e-4442-b7ff-8d07edf21e57','fbfc9b79-0dfe-4f7d-8bc0-ebd0c63ec759','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('5633edc9-c1b0-41af-931c-e8eb2c6832a7','32eb84a2-0a64-46a0-9f0a-c840421fd718','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('572b3fa9-a74b-48c9-bb04-12f548744b51','0f254a81-85a0-4660-af12-8733a8f5abee','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('5da85b11-05f6-4707-ac41-81ee8a3ec902','c0e77f2a-bac6-483f-9bdb-73b416e528cc','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('612745c4-cc34-4126-91d8-dc10d4f8e29e','2187e06d-afac-4ed9-bf9e-8a66d1ae8f8a','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('614d4a7e-e629-4e97-af7c-7c8dc9735da8','2e8ee771-0180-4f4b-bda9-eeb324bd9938','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('6a54bdc5-fd9d-4014-bfb0-c6f3e5ef97a5','9c4f366a-dd8a-4850-bc63-aad3594e42d9','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('75918c30-70c0-40a5-a5aa-03275027fd7a','9780299c-8209-46aa-9f10-4156bd741c8a','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('777195fb-d3c1-4850-b066-c13000ee0650','0eb1754b-7846-4185-a140-eaee352e7f1a','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('7b1509b7-17e9-44e6-8dcb-297fb2db671b','6861eddc-1851-42bb-8af0-224fbb8b1eab','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('8307ed33-a1e0-4f76-9373-eb7c16550323','41d9d910-060f-45c6-96e0-85a3cb395583','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('86990493-f9a0-4015-93d0-071a84126670','38d21b9b-4e50-445e-82e9-0627fdb47ab9','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('8a04e6a9-a26c-4450-9c1c-a3f35439a7a6','87b8a2c3-bcf0-457c-98bd-2f3b6a315e03','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('92b28efc-da2b-4eca-a2d3-f42beb4a3ae3','5745df0a-d004-40c0-9ed4-22ed6d182ec2','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('96bd6969-9101-4a0e-a9ac-217894f8bf41','c3ed0e19-adce-4a51-af73-d8b50dd4f115','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('9baebed7-f62f-4425-a649-24cb80e5302a','685a7f4e-2375-41c9-8555-d3dec90e25ea','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('a715f5f3-4dd0-403c-b86a-38612be1d908','2ab7755c-c49c-4b03-897b-9f603bd3e628','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('a7f76a33-19d4-491b-b035-1cc3d04aed27','5f5c77e4-068b-4130-918e-e5a0abc2d26a','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('ac4b793f-962c-4721-92f8-5a26b14f8fba','13d69074-a66f-4e57-9095-5a4001289b1d','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('ad48821d-7940-4ee0-bf89-4df26023eb6d','2da6c82c-f14e-4d5c-9f68-592c5d908e36','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('b0592160-9685-492e-8bc1-8fd92cc92259','a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('b61dd04d-7998-40f1-8f33-9197063050c7','2b5265cf-e7b8-4621-8e28-5c6d2937f096','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('c30fec81-f316-411b-9997-75b345f3f5ff','325194c5-0bf7-4202-9504-ea940391b848','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('c92ebecd-93c9-45c9-bf12-c2e4539ff7b5','d41a1d98-9889-455d-ad1b-17c1562e49b2','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('cc07c001-9b2a-4dfe-837a-fb2458281bcc','1138e995-1fe3-4eb2-b961-8a61e872de10','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('cc34a79d-29d0-48ca-a2b2-629cbe8b0a8b','6ee065e7-6754-4a1a-a53a-d0adbc5ff40b','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('d71e6e87-a43d-4b95-83e0-a83ce70e9cd5','cdff1cb5-3d1c-4cea-b412-89afe1161d0b','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('d7638157-b30a-4b36-8993-9b6ed4f1c8e1','ceb86827-c3d9-4cf0-b637-3b18abd2a239','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('f0153205-9522-4b7f-afc2-c2aacd72d113','19a085e0-7dc6-4b0e-8f6d-902dbd6f2382','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('f116c4aa-ca8a-4b1b-82f3-b7d83e8cdadd','13376f2a-d77a-49ba-930c-ab0e4d318dc8','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29'),('fe1a2768-54fd-4997-81a0-0a6a22bd9e2c','4bbcb4ab-c7d2-460a-bad9-051dce67b8ec','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:29','2022-04-23 00:33:29');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('03ae429a-a24c-4592-83d5-1759288ccc78','ddbd263f-1d83-4af7-b06e-f1206bb29a45','Jawa Barat','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:32:11','2022-04-21 20:32:11');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `url`
--

LOCK TABLES `url` WRITE;
/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` VALUES ('0ed16ef3-1045-4385-a277-2da1b87ba763',NULL,'App Setting','app-settings','settings',1,'settings','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-15 01:12:50','2022-04-15 01:12:50'),('36211f55-49de-4f3a-975e-61068a7ad551',NULL,'Permissions','permissions','lock',3,'settings','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-15 01:14:40','2022-04-15 01:14:40'),('3d286e96-3a31-4c38-bf60-84e98c79922e',NULL,'Branches','branches','git-branch',4,'master','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-22 22:41:13','2022-04-22 22:41:13'),('a0c529a6-532f-4c84-98a5-9b789f658038',NULL,'Url','url','link',2,'settings','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-15 01:14:03','2022-04-15 01:14:03'),('a5827aa5-4e2d-488d-95c6-e31452f5da3c',NULL,'Roles','role','users',4,'settings','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-15 01:15:02','2022-04-15 01:15:02'),('b1a4a6af-11f6-408e-8af2-656bd7eba645',NULL,'Users','users','users',5,'settings','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-19 07:51:55','2022-04-19 07:51:55'),('c8202a21-fd6a-4853-89d3-788e19df0466',NULL,'Company Profile','company-profile','trello',5,'master','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:07','2022-04-23 00:33:07'),('e12796b3-1b5a-4c8d-9e45-a535fe5a4081',NULL,'Cities','cities','map-pin',3,'master','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 23:11:12','2022-04-21 23:11:12'),('eb393149-840f-467c-a066-307a38509398',NULL,'States','states','map',2,'master','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 20:15:04','2022-04-21 20:15:04'),('efb1dbde-ae54-41b2-93d8-3723703799a4',NULL,'Countries','countries','flag',1,'master','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-21 17:29:37','2022-04-21 17:29:37');
/*!40000 ALTER TABLE `url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `url_access`
--

LOCK TABLES `url_access` WRITE;
/*!40000 ALTER TABLE `url_access` DISABLE KEYS */;
INSERT INTO `url_access` VALUES ('10472581-0d2e-4e03-8e01-fe4a2c2ce0c1','b1a4a6af-11f6-408e-8af2-656bd7eba645','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('34513c02-4fdb-4792-a180-84d261004588','36211f55-49de-4f3a-975e-61068a7ad551','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('49f0961a-e742-4583-9e70-8ef9b35b776d','c8202a21-fd6a-4853-89d3-788e19df0466','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('4d351976-7aa3-442a-9304-0a020998b9ec','eb393149-840f-467c-a066-307a38509398','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('7c1fb709-20f6-4e84-b100-e1aa5c17477c','0ed16ef3-1045-4385-a277-2da1b87ba763','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('812b3ae7-2f80-4f8b-a8b8-7097a1564f26','a5827aa5-4e2d-488d-95c6-e31452f5da3c','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('96a6b661-1b88-4db1-aa76-bfc15cbce9ab','3d286e96-3a31-4c38-bf60-84e98c79922e','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('9a9fcad4-306c-47bb-a1f4-b2551e1d8df5','efb1dbde-ae54-41b2-93d8-3723703799a4','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('a007c78b-80c0-4227-a428-87fcee1fde11','e12796b3-1b5a-4c8d-9e45-a535fe5a4081','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40'),('d6174762-52b6-4039-9fa7-e594f74cbd0e','a0c529a6-532f-4c84-98a5-9b789f658038','ab1658ed-af25-4864-b13d-d821e74d2a9c','572003cd-0230-4534-b84d-eb2d9eab58a7',NULL,'2022-04-23 00:33:40','2022-04-23 00:33:40');
/*!40000 ALTER TABLE `url_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('05dc1eb4-783f-4492-90da-04f43f73a19d','Administrator','webadmin@maxxsgroup.com',NULL,'ab1658ed-af25-4864-b13d-d821e74d2a9c','$2y$10$ZvNqpgLy0OTrdChJ17Do5.EzoLEVelpYHyFSSTOXW2iDtNRalvYmW',NULL,NULL,'572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-14 23:20:05','2022-04-24 22:46:05'),('572003cd-0230-4534-b84d-eb2d9eab58a7','Tengku Firmansyah','tengkufirmansyah2@gmail.com','2022-04-14 23:47:17','ab1658ed-af25-4864-b13d-d821e74d2a9c','$2y$10$7bO9qFCNx8fXnwgM1whduuB9eyYQDFRQJXxwB8RtsYq2NE40ZpMTK','6TIHayFlPv3x05P3YdeeapFfxpP99ynmI2xRSo1vCUGuYuyp4kIbq0Iwsvp0',NULL,'572003cd-0230-4534-b84d-eb2d9eab58a7','2022-04-14 23:41:34','2022-04-19 08:32:39');
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

-- Dump completed on 2022-04-27  9:04:31
