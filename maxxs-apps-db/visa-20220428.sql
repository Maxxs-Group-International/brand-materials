/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : visa

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 28/04/2022 19:29:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_settings
-- ----------------------------
DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE `app_settings`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyField` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valueField` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `app_settings_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `app_settings_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_settings
-- ----------------------------
INSERT INTO `app_settings` VALUES ('21a6bee5-2df3-47ec-9553-42d62613effd', 'App.Favico', 'assets/img/app-settings/App_Favico_maxx-logo-only-80x80.png', 'image', 0, NULL, NULL, NULL, '2022-04-23 05:53:31');
INSERT INTO `app_settings` VALUES ('44dawc5d-113c-4cdc-871c-6c5bd7a24af8', 'App.Login.Cover', 'assets/img/app-settings/App_Login_Cover_base_app-removebg-preview.png', 'image', 0, NULL, NULL, NULL, '2022-04-12 09:59:25');
INSERT INTO `app_settings` VALUES ('5778eeda-5044-4f93-85ba-f242e0857898', 'App.Logo.Login', 'assets/img/app-settings/App_Logo_Login_maxxs-v-logo-colour-text-black.png', 'image', 0, NULL, NULL, NULL, '2022-04-23 05:53:31');
INSERT INTO `app_settings` VALUES ('5878d7f5-d473-4f43-b676-2ab542feecec', 'App.Logo', 'assets/img/app-settings/App_Logo_maxxs-h-logo-colour-text-white-rev.png', 'image', 0, NULL, NULL, NULL, '2022-04-23 05:53:31');
INSERT INTO `app_settings` VALUES ('5fb7e9ea-73a4-4b20-abed-19e06c18966d', 'App.Name', 'Base App', 'text', 0, NULL, NULL, NULL, '2022-04-23 05:54:33');
INSERT INTO `app_settings` VALUES ('7aecf028-cf68-41d0-a486-6bd67e4082eb', 'App.Description', 'Description Base App', 'textarea', 0, NULL, NULL, NULL, '2022-04-23 05:54:33');

-- ----------------------------
-- Table structure for branches
-- ----------------------------
DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branches
-- ----------------------------
INSERT INTO `branches` VALUES ('7ff51282-b76a-407b-921f-edf584386763', 'Contoh 1', 'Contoh', 'Alamat', 'ddbd263f-1d83-4af7-b06e-f1206bb29a45', '03ae429a-a24c-4592-83d5-1759288ccc78', 'ae30aa60-2323-487b-846f-3743f4a09d7b', '123', 'email@gmail.com', '021-1233-2231', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-23 07:16:00', '2022-04-23 07:17:20');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('ae30aa60-2323-487b-846f-3743f4a09d7b', '03ae429a-a24c-4592-83d5-1759288ccc78', 'Kota Bogor', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-22 06:56:49', '2022-04-22 06:59:42');

-- ----------------------------
-- Table structure for company_profile
-- ----------------------------
DROP TABLE IF EXISTS `company_profile`;
CREATE TABLE `company_profile`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company_profile
-- ----------------------------
INSERT INTO `company_profile` VALUES ('7895ed98-a2fd-45ac-be50-98628a3e6c19', 'Company Profile 1', 'Contoh Address', 'Address Street', 'ddbd263f-1d83-4af7-b06e-f1206bb29a45', '03ae429a-a24c-4592-83d5-1759288ccc78', 'ae30aa60-2323-487b-846f-3743f4a09d7b', '12345', 'email@gmail.com', '021-1233-2231', '182-3231-3213-1232', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-23 07:38:23', '2022-04-23 07:40:37');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('ddbd263f-1d83-4af7-b06e-f1206bb29a45', 'Indonesia', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-22 00:42:32', '2022-04-22 02:29:40');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `gender_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('291a473e-11af-4c77-a39c-65a8c3c234ed', '572003cd-0230-4534-b84d-eb2d9eab58a7', 'Tengku', 'Firmansyah', 'Bogor', '1998-08-02', 'c526438d-e187-486c-8c08-8092d0895ccb', '1a34e0fb-5207-46ae-936b-498fd0a63a1c', '26ee9656-2842-4989-ae8b-c36a79afdc98', '825d06c7-65d3-4d99-b6e0-c0703127b695', 'tengkufirmansyah2@gmail.com', '082370406655', 'O', 'Kp. Bakom, Kel. Bojongkerta, Kota Bogor Selatan', 'ddbd263f-1d83-4af7-b06e-f1206bb29a45', '03ae429a-a24c-4592-83d5-1759288ccc78', 'ae30aa60-2323-487b-846f-3743f4a09d7b', '16139', 'IMG_2010_1650959485.PNG', 'PNG', 'visa.local/storage/customers', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-26 07:14:53', '2022-04-26 07:51:26');

-- ----------------------------
-- Table structure for form_visa
-- ----------------------------
DROP TABLE IF EXISTS `form_visa`;
CREATE TABLE `form_visa`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NULL DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_visa
-- ----------------------------
INSERT INTO `form_visa` VALUES ('1a08187d-1a9a-471b-ad04-7c6705141f21', '127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Age', 'age', 'text', 1, '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 12:11:26', '2022-04-28 12:11:26');
INSERT INTO `form_visa` VALUES ('3efeb7af-12ac-4c5f-879a-7baf50deabfa', '127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Savings', 'savings', 'file', 1, '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 12:11:26', '2022-04-28 12:11:26');
INSERT INTO `form_visa` VALUES ('9410b2aa-d1f8-4762-87cd-416527dd67db', '127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Sim', 'sim', 'file', 0, '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 12:11:26', '2022-04-28 12:11:26');
INSERT INTO `form_visa` VALUES ('b14809b1-c024-4582-bebe-f8347ba108c8', '127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Photo', 'photo', 'file', 1, '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 12:11:26', '2022-04-28 12:11:26');
INSERT INTO `form_visa` VALUES ('bdf04a9c-5453-4cf8-a543-d763095ca075', '127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Vaccine', 'vaccine', 'file', 1, '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 12:11:26', '2022-04-28 12:11:26');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (30, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (31, '2022_04_17_152548_create_cities_table', 1);
INSERT INTO `migrations` VALUES (32, '2022_04_23_052647_create_branches_table', 2);
INSERT INTO `migrations` VALUES (34, '2022_04_24_085720_create_parameters_table', 3);
INSERT INTO `migrations` VALUES (35, '2022_04_26_022535_create_customers_table', 4);
INSERT INTO `migrations` VALUES (36, '2022_04_27_043429_create_visa_table', 5);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES ('8795ec75-545a-40b4-aff4-917b2fb6ff0d', '0001', 'Modules', 'maxx-logo-only-80x80_1650853722.png', 'png', 'visa.local/storage/modules', 1, '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-25 02:28:42', '2022-04-25 02:40:47');

-- ----------------------------
-- Table structure for parameters
-- ----------------------------
DROP TABLE IF EXISTS `parameters`;
CREATE TABLE `parameters`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameters
-- ----------------------------
INSERT INTO `parameters` VALUES ('1a34e0fb-5207-46ae-936b-498fd0a63a1c', 'NATIONALITY', 'Indonesian', 'indonesian', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:39:55', '2022-04-26 03:39:55');
INSERT INTO `parameters` VALUES ('26ee9656-2842-4989-ae8b-c36a79afdc98', 'RELIGION', 'Islam', '1', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:35:59', '2022-04-26 03:35:59');
INSERT INTO `parameters` VALUES ('52014cf9-ca0d-4e61-b0db-3272d38178d3', 'GENDER', 'Female', '0', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:36:48', '2022-04-26 03:36:48');
INSERT INTO `parameters` VALUES ('71807372-f48c-42de-8f3a-949fbac911a5', 'RELIGION', 'Chatolic', '2', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:36:16', '2022-04-26 03:36:16');
INSERT INTO `parameters` VALUES ('825d06c7-65d3-4d99-b6e0-c0703127b695', 'MARITAL', 'Single', 'single', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:41:09', '2022-04-26 03:41:09');
INSERT INTO `parameters` VALUES ('af0b195c-66fc-4f41-b9ed-15ece168464a', 'MARITAL', 'Widow / Widower', 'widow', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:41:25', '2022-04-26 03:41:25');
INSERT INTO `parameters` VALUES ('b997307f-0614-4bda-a4cc-b707e0df6d47', 'NATIONALITY', 'Indian', 'indian', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:40:10', '2022-04-26 03:40:10');
INSERT INTO `parameters` VALUES ('c526438d-e187-486c-8c08-8092d0895ccb', 'GENDER', 'Male', '1', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:36:59', '2022-04-26 03:36:59');
INSERT INTO `parameters` VALUES ('f00f7264-2935-4187-a40c-3015635e98a2', 'RELIGION', 'Budha', '3', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 03:36:33', '2022-04-26 03:36:33');

-- ----------------------------
-- Table structure for passports
-- ----------------------------
DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_date` date NOT NULL,
  `issued_office` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of passports
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `permissions_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('004571c0-0785-4b29-8778-d8031acb1436', 'Modules Update', 'modules-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('014f167d-5360-4cc4-8cbe-274da2ad7752', 'Cities Create', 'cities-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('09c14694-89ee-4029-a7cf-76b0581be6de', 'App Settings Update', 'app-settings-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('0b8ad518-bdea-46a0-a05f-abf475c26e9e', 'States View', 'states-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('0eb1754b-7846-4185-a140-eaee352e7f1a', 'Users Delete', 'users-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('0f254a81-85a0-4660-af12-8733a8f5abee', 'Cities View', 'cities-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('10baa8c6-f0bd-4d54-b940-b0bfb176152d', 'Modules Create', 'modules-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('1138e995-1fe3-4eb2-b961-8a61e872de10', 'Countries Edit', 'countries-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:46', '2022-04-22 00:29:46');
INSERT INTO `permissions` VALUES ('13376f2a-d77a-49ba-930c-ab0e4d318dc8', 'States Edit', 'states-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('13d69074-a66f-4e57-9095-5a4001289b1d', 'Branches Edit', 'branches-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');
INSERT INTO `permissions` VALUES ('19a085e0-7dc6-4b0e-8f6d-902dbd6f2382', 'Permissions Update', 'permissions-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('1c7ce46e-87be-4943-9a67-00943936639c', 'Countries Create', 'countries-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:46', '2022-04-22 00:29:46');
INSERT INTO `permissions` VALUES ('2187e06d-afac-4ed9-bf9e-8a66d1ae8f8a', 'Branches Create', 'branches-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');
INSERT INTO `permissions` VALUES ('21ed25f5-fad1-4c30-bdd8-6a79247fcc72', 'Modules Edit', 'modules-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('2ab7755c-c49c-4b03-897b-9f603bd3e628', 'Permissions Create', 'permissions-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('2b5265cf-e7b8-4621-8e28-5c6d2937f096', 'Countries View', 'countries-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:46', '2022-04-22 00:29:46');
INSERT INTO `permissions` VALUES ('2da6c82c-f14e-4d5c-9f68-592c5d908e36', 'States Update', 'states-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('2e8ee771-0180-4f4b-bda9-eeb324bd9938', 'Cities Delete', 'cities-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('325194c5-0bf7-4202-9504-ea940391b848', 'Branches View', 'branches-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');
INSERT INTO `permissions` VALUES ('32eb84a2-0a64-46a0-9f0a-c840421fd718', 'Users Create', 'users-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('38d21b9b-4e50-445e-82e9-0627fdb47ab9', 'States Delete', 'states-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('38f68ff0-0283-4586-8096-5b596b70c4bd', 'Countries Delete', 'countries-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:46', '2022-04-22 00:29:46');
INSERT INTO `permissions` VALUES ('39d3c44a-4dcf-4882-b83b-a1a42959be0e', 'Customers Edit', 'customers-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:39:04', '2022-04-27 02:39:04');
INSERT INTO `permissions` VALUES ('39e7f2c2-fdd5-4078-8e7c-c834243e7863', 'Parameters Create', 'parameters-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('3ac05e2f-2ea1-41f1-a6d8-740b88929e55', 'States Create', 'states-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('3c9f4869-645a-4e4e-b44f-1d61ce622596', 'Customers Create', 'customers-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:39:04', '2022-04-27 02:39:04');
INSERT INTO `permissions` VALUES ('41d9d910-060f-45c6-96e0-85a3cb395583', 'Roles View', 'role-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('426d31c3-2fcb-4703-9a41-e2d1d5642650', 'Parameters Edit', 'parameters-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('465c2a33-9420-4075-9d05-54777b7decd9', 'Form Visa Create', 'form-visa-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:33:56', '2022-04-28 11:33:56');
INSERT INTO `permissions` VALUES ('4bbcb4ab-c7d2-460a-bad9-051dce67b8ec', 'Role Config', 'role-config', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('4e6a22bd-ead3-4c40-bbe8-0a8e9c399426', 'Cities Update', 'cities-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('5604683d-a341-43a7-94fa-784bbf0fd1bf', 'Parameters Update', 'parameters-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('56dff6c8-21ef-4c78-aaa3-c8deafa7262f', 'Company Profile Update', 'company-profile-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('5745df0a-d004-40c0-9ed4-22ed6d182ec2', 'Roles Create', 'role-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('5f5c77e4-068b-4130-918e-e5a0abc2d26a', 'Roles Update', 'role-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('67f01052-8b35-4129-a873-808ab07b03e3', 'Company Profile Delete', 'company-profile-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('685a7f4e-2375-41c9-8555-d3dec90e25ea', 'Roles Edit', 'role-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('6861eddc-1851-42bb-8af0-224fbb8b1eab', 'App Settings View', 'app-settings-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('6ee065e7-6754-4a1a-a53a-d0adbc5ff40b', 'Countries Update', 'countries-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:46', '2022-04-22 00:29:46');
INSERT INTO `permissions` VALUES ('7537487f-3f1c-4961-9663-7fe49318a2c0', 'Modules Delete', 'modules-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('7c66fbf2-14ec-47bd-a2d1-4d763925d817', 'Customers View', 'customers-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:39:04', '2022-04-27 02:39:04');
INSERT INTO `permissions` VALUES ('7f3d224c-87f6-4413-8514-13bfc903cb9c', 'Visa Delete', 'visa-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:21', '2022-04-27 04:44:21');
INSERT INTO `permissions` VALUES ('87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'Url Create', 'url-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('93ac0932-3885-4114-8ee8-a4a81ebb6038', 'Visa Edit', 'visa-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:21', '2022-04-27 04:44:21');
INSERT INTO `permissions` VALUES ('9780299c-8209-46aa-9f10-4156bd741c8a', 'Branches Update', 'branches-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');
INSERT INTO `permissions` VALUES ('9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'Url Edit', 'url-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'Url Update', 'url-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('aaff2a5e-e0a6-4091-8570-4de47b56710d', 'Users Update', 'users-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('b331212a-dbf7-492f-b8a9-5b2146c77701', 'Parameters Delete', 'parameters-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'Url View', 'url-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c01d186f-2318-47ad-864f-b79180bed96c', 'Form Visa Update', 'form-visa-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:34:46', '2022-04-28 11:34:46');
INSERT INTO `permissions` VALUES ('c0e77f2a-bac6-483f-9bdb-73b416e528cc', 'Users Edit', 'users-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('c3608a9e-aef1-4be6-9420-53451dc2e360', 'Visa View', 'visa-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:21', '2022-04-27 04:44:21');
INSERT INTO `permissions` VALUES ('c3871d0d-2391-49cb-bc08-14c6a86665f4', 'Form Visa Delete', 'form-visa-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:34:19', '2022-04-28 11:34:19');
INSERT INTO `permissions` VALUES ('c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'Permissions Generate', 'permissions-generate', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c97f7b86-2101-4d14-8090-3ff395271564', 'Permissions Edit', 'permissions-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('ca4b4734-af4f-4ed6-8631-8e2aa92da519', 'Users View', 'users-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('cb1e2f7d-ce96-47cf-b9e5-d64c9ad2ff91', 'Visa Create', 'visa-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:21', '2022-04-27 04:44:21');
INSERT INTO `permissions` VALUES ('cdff1cb5-3d1c-4cea-b412-89afe1161d0b', 'Company Profile Edit', 'company-profile-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'Permissions View', 'permissions-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('d41a1d98-9889-455d-ad1b-17c1562e49b2', 'Company Profile Create', 'company-profile-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('d4403f72-598b-44c7-bf86-c4d65f6156ea', 'Visa Update', 'visa-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:21', '2022-04-27 04:44:21');
INSERT INTO `permissions` VALUES ('deb05ca6-0d7e-4e48-8232-059682b21698', 'Company Profile View', 'company-profile-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('e31f63e9-3f2a-4c19-aa91-32c84819ba93', 'Customers Delete', 'customers-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:39:04', '2022-04-27 02:39:04');
INSERT INTO `permissions` VALUES ('eb345ca1-02cc-4343-a04b-0449c5438bdb', 'Cities Edit', 'cities-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('ef63ea2b-5e9c-43c6-916d-155d43dd6977', 'Modules View', 'modules-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('f5d27024-4367-4165-82be-19302f4c4406', 'Parameters View', 'parameters-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('f875e310-9e91-41a7-8995-518ea8cf624f', 'Customers Update', 'customers-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:39:04', '2022-04-27 02:39:04');
INSERT INTO `permissions` VALUES ('fbfc9b79-0dfe-4f7d-8bc0-ebd0c63ec759', 'Branches Delete', 'branches-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `role_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('27af53a8-15d9-46fb-aee4-f287dbb711c5', 'Customer', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 01:22:38', '2022-04-26 01:22:38');
INSERT INTO `role` VALUES ('ab1658ed-af25-4864-b13d-d821e74d2a9c', 'Administrator', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:06:43', '2022-04-15 08:06:43');

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_permissions_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `role_permissions_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES ('016e5a8b-9625-4f1b-9afc-247bdd99aa66', '004571c0-0785-4b29-8778-d8031acb1436', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('01847d8d-8844-4263-801f-634b587d4e5d', 'aaff2a5e-e0a6-4091-8570-4de47b56710d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('01c97cfa-c65a-4ac3-a0ce-c9c762c1ea7f', '21ed25f5-fad1-4c30-bdd8-6a79247fcc72', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('03293b6a-d4c6-426b-914d-5656b4eb0431', 'e31f63e9-3f2a-4c19-aa91-32c84819ba93', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('052f7b4c-2683-48ea-9850-5bc3ec8f2491', '2187e06d-afac-4ed9-bf9e-8a66d1ae8f8a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('07c5cbdc-196c-46f5-8b80-be9d9948465a', '7537487f-3f1c-4961-9663-7fe49318a2c0', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('07fbbfa6-09d1-4748-9970-610f5d6e7fb0', 'c97f7b86-2101-4d14-8090-3ff395271564', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('09d6a900-0521-44c9-ad3f-fdb78e81f310', '5745df0a-d004-40c0-9ed4-22ed6d182ec2', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('163e173c-6938-43c1-91fb-c6228bf58e29', '014f167d-5360-4cc4-8cbe-274da2ad7752', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('16d169ea-a70d-4804-a2a2-7878aec37175', 'c3608a9e-aef1-4be6-9420-53451dc2e360', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('1bbe872a-da26-4c31-bc8e-abd75b7a7259', '5f5c77e4-068b-4130-918e-e5a0abc2d26a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('218e6fad-168f-4836-9006-14261cd026a8', 'd41a1d98-9889-455d-ad1b-17c1562e49b2', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('22e18e2a-0ce8-48a3-b01a-d449d057952f', 'c01d186f-2318-47ad-864f-b79180bed96c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('23854284-9c7f-4100-862c-4fffd629fef7', 'f875e310-9e91-41a7-8995-518ea8cf624f', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('264c6f58-3916-427c-9895-b45d9bc59f63', '426d31c3-2fcb-4703-9a41-e2d1d5642650', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('2b4f2aa2-b705-4f26-aaed-d31b30ca92fa', '6ee065e7-6754-4a1a-a53a-d0adbc5ff40b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('34c5aba2-b26d-49fb-a3d5-283844d33539', '0f254a81-85a0-4660-af12-8733a8f5abee', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('39bf9841-4e5d-48e5-a7d1-e92385e71eae', '2ab7755c-c49c-4b03-897b-9f603bd3e628', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('39c95e3a-a2fc-4ec4-a350-510132de5d45', 'cdff1cb5-3d1c-4cea-b412-89afe1161d0b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('3b95e891-ec74-4c40-8402-70c179dcd615', 'deb05ca6-0d7e-4e48-8232-059682b21698', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('40e883c8-c6a0-475c-9e29-4119cb92ef9f', '32eb84a2-0a64-46a0-9f0a-c840421fd718', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('4a668e51-79fc-41e0-9ffa-11fa9672810b', 'b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('57b1a52f-3af1-4f40-8baa-7629660ad4e5', '325194c5-0bf7-4202-9504-ea940391b848', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('5aa97357-d6a4-4249-b332-02fc543e58dd', '2b5265cf-e7b8-4621-8e28-5c6d2937f096', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('5e5a26d7-f16f-4f7e-bc52-8d7723b35386', '9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('601ee447-d82e-403c-95c2-074bee27406b', '10baa8c6-f0bd-4d54-b940-b0bfb176152d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('6599f4f4-02a3-42f2-b709-362ec145c939', 'a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('6b9bf87c-eb2d-4dba-a6b3-15435db3001e', '3ac05e2f-2ea1-41f1-a6d8-740b88929e55', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('723eb595-9a4c-4717-b1c6-6c7d4673fc3d', '685a7f4e-2375-41c9-8555-d3dec90e25ea', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('745a4857-9df7-42f2-ae01-faa64221e368', 'f5d27024-4367-4165-82be-19302f4c4406', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('7534dcc4-0980-4049-9f54-a35d9e47d4b3', 'cb1e2f7d-ce96-47cf-b9e5-d64c9ad2ff91', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('7a3ab0c3-fe15-46c1-bcc0-63fe1673cccb', '38f68ff0-0283-4586-8096-5b596b70c4bd', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('7bc013fa-7108-48e0-a4c7-bd3a0e7b22ba', 'ca4b4734-af4f-4ed6-8631-8e2aa92da519', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('7e7392cb-ce6f-4773-b12c-4b4e6d39e37a', '9780299c-8209-46aa-9f10-4156bd741c8a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('805dee0d-9b54-4515-843e-a14ccdb72659', '1c7ce46e-87be-4943-9a67-00943936639c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('80fbac45-0c84-40a1-922d-54e2e6da0f5b', '5604683d-a341-43a7-94fa-784bbf0fd1bf', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('81e88388-4f94-4524-be18-2868ec558181', '465c2a33-9420-4075-9d05-54777b7decd9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('82884f41-4359-45db-a96a-539cf2aa5b7c', 'eb345ca1-02cc-4343-a04b-0449c5438bdb', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('83019a84-2078-4c08-8819-c9204c0118a6', '4e6a22bd-ead3-4c40-bbe8-0a8e9c399426', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('83b8d40d-caf6-4c91-8fdc-e900083600fa', '19a085e0-7dc6-4b0e-8f6d-902dbd6f2382', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('84205d53-7681-478b-bf6e-99858272a2cc', 'b331212a-dbf7-492f-b8a9-5b2146c77701', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('84a30fe1-085b-460f-b959-c7a22eeb3d4c', 'c0e77f2a-bac6-483f-9bdb-73b416e528cc', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('8526bfc0-6101-4e42-aba5-fbaff5e58b1e', '56dff6c8-21ef-4c78-aaa3-c8deafa7262f', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('87a54994-2e0b-4f29-a6ef-e8b45d2452fa', '87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('8b1827cc-6e31-4300-b3d9-2bac689dfa52', '39e7f2c2-fdd5-4078-8e7c-c834243e7863', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('9223665f-8149-4979-87ba-225f0237ca3d', '38d21b9b-4e50-445e-82e9-0627fdb47ab9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('98adedb1-db01-425b-905c-3c81cb32898d', '2e8ee771-0180-4f4b-bda9-eeb324bd9938', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('9d928d5c-d39b-40d9-a4c9-ff6c0af29308', 'ef63ea2b-5e9c-43c6-916d-155d43dd6977', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('a07f4126-2716-444a-8a92-de0c24721564', '1138e995-1fe3-4eb2-b961-8a61e872de10', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('a5eec46c-bfab-4ae0-82a3-f8bb2ad2625c', '67f01052-8b35-4129-a873-808ab07b03e3', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('adf8d36d-69a4-47b2-b1c2-3aa55b645628', 'ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('ae875ecb-38ca-4650-b555-5a17bd854b8b', 'c3871d0d-2391-49cb-bc08-14c6a86665f4', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('b1d85a89-c302-41b5-96c6-74c1522c66f2', '6861eddc-1851-42bb-8af0-224fbb8b1eab', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('b4ccd60c-08ed-47b3-8e6a-85f94d99c49c', '13d69074-a66f-4e57-9095-5a4001289b1d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('b548d210-0ebe-4984-b77f-8bc1c863dcee', '0eb1754b-7846-4185-a140-eaee352e7f1a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('ba51288f-94d7-4889-b30f-9aae2e5f8710', '7f3d224c-87f6-4413-8514-13bfc903cb9c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('bef41a2a-93f4-4257-97dd-61e9ad6955c2', '3c9f4869-645a-4e4e-b44f-1d61ce622596', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('c1d527e8-4eef-4d45-bf39-5a3e4ba13551', '41d9d910-060f-45c6-96e0-85a3cb395583', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('c2ac340d-e397-486d-ba41-f86e606a9ced', '2da6c82c-f14e-4d5c-9f68-592c5d908e36', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('d5f77249-cdd0-40fc-97ad-5214568b0bff', '7c66fbf2-14ec-47bd-a2d1-4d763925d817', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('da686bb5-14e0-4d87-9f6d-344584895a6d', '0b8ad518-bdea-46a0-a05f-abf475c26e9e', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('e2263644-334a-4852-aab9-015126ef3492', '13376f2a-d77a-49ba-930c-ab0e4d318dc8', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('f02d78cd-868b-4f37-895f-25e13edaebad', '4bbcb4ab-c7d2-460a-bad9-051dce67b8ec', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('f3cf06ef-73dc-4d74-bf39-e6e53c62dbed', '39d3c44a-4dcf-4882-b83b-a1a42959be0e', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('f569cf24-18f5-4366-b7ea-88fc3ae989b9', '93ac0932-3885-4114-8ee8-a4a81ebb6038', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('f5e31439-26a9-428e-af2d-7ba51dc37012', '09c14694-89ee-4029-a7cf-76b0581be6de', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('f7b2daa7-a81e-48c4-bad3-313ad91faafd', 'c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('fa2a11fb-9af7-4376-8224-3d81e1368d49', 'fbfc9b79-0dfe-4f7d-8bc0-ebd0c63ec759', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');
INSERT INTO `role_permissions` VALUES ('fb884dff-af53-4253-bc14-2a6207984611', 'd4403f72-598b-44c7-bf86-c4d65f6156ea', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-28 11:40:24', '2022-04-28 11:40:24');

-- ----------------------------
-- Table structure for states
-- ----------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of states
-- ----------------------------
INSERT INTO `states` VALUES ('03ae429a-a24c-4592-83d5-1759288ccc78', 'ddbd263f-1d83-4af7-b06e-f1206bb29a45', 'Jawa Barat', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:32:11', '2022-04-22 03:32:11');

-- ----------------------------
-- Table structure for url
-- ----------------------------
DROP TABLE IF EXISTS `url`;
CREATE TABLE `url`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL,
  `position` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `url_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `url_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of url
-- ----------------------------
INSERT INTO `url` VALUES ('0ed16ef3-1045-4385-a277-2da1b87ba763', NULL, 'App Setting', 'app-settings', 'settings', 1, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:12:50', '2022-04-15 08:12:50');
INSERT INTO `url` VALUES ('36211f55-49de-4f3a-975e-61068a7ad551', NULL, 'Permissions', 'permissions', 'lock', 3, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:14:40', '2022-04-15 08:14:40');
INSERT INTO `url` VALUES ('3d286e96-3a31-4c38-bf60-84e98c79922e', NULL, 'Branches', 'branches', 'git-branch', 4, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:13', '2022-04-23 05:41:13');
INSERT INTO `url` VALUES ('a0c529a6-532f-4c84-98a5-9b789f658038', NULL, 'Url', 'url', 'link', 2, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:14:03', '2022-04-15 08:14:03');
INSERT INTO `url` VALUES ('a5827aa5-4e2d-488d-95c6-e31452f5da3c', NULL, 'Roles', 'role', 'users', 4, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:15:02', '2022-04-15 08:15:02');
INSERT INTO `url` VALUES ('aa63f5c1-4d2d-4da5-912e-06511ec0d251', NULL, 'Customers', 'customers', 'users', 8, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 02:38:57', '2022-04-27 02:38:57');
INSERT INTO `url` VALUES ('b1a4a6af-11f6-408e-8af2-656bd7eba645', NULL, 'Users', 'users', 'users', 5, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:51:55', '2022-04-19 14:51:55');
INSERT INTO `url` VALUES ('c8202a21-fd6a-4853-89d3-788e19df0466', NULL, 'Company Profile', 'company-profile', 'trello', 5, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:07', '2022-04-23 07:33:07');
INSERT INTO `url` VALUES ('c9f409df-ae83-4c12-98d8-7ea707db9c3b', NULL, 'Parameters', 'parameters', 'list', 6, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:41', '2022-04-24 09:35:41');
INSERT INTO `url` VALUES ('cf2497d2-2d6d-4900-8e66-d9a4d5e06f97', NULL, 'Visa', 'visa', 'list', 9, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-27 04:44:14', '2022-04-27 04:46:05');
INSERT INTO `url` VALUES ('e12796b3-1b5a-4c8d-9e45-a535fe5a4081', NULL, 'Cities', 'cities', 'map-pin', 3, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:12', '2022-04-22 06:11:12');
INSERT INTO `url` VALUES ('eb393149-840f-467c-a066-307a38509398', NULL, 'States', 'states', 'map', 2, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:04', '2022-04-22 03:15:04');
INSERT INTO `url` VALUES ('efb1dbde-ae54-41b2-93d8-3723703799a4', NULL, 'Countries', 'countries', 'flag', 1, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 00:29:37', '2022-04-22 00:29:37');
INSERT INTO `url` VALUES ('f6d0e243-d964-4aa5-ba4b-a3eb47105dc0', NULL, 'Modules', 'modules', 'grid', 7, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:15', '2022-04-25 01:08:15');

-- ----------------------------
-- Table structure for url_access
-- ----------------------------
DROP TABLE IF EXISTS `url_access`;
CREATE TABLE `url_access`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `url_access_created_by_foreign`(`created_by`) USING BTREE,
  INDEX `url_access_updated_by_foreign`(`updated_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of url_access
-- ----------------------------
INSERT INTO `url_access` VALUES ('0e6591dd-0c3a-4a2a-9d7a-9648ca319b13', '36211f55-49de-4f3a-975e-61068a7ad551', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('225ea7c1-c156-4b1a-89e4-aa31ba617a99', '3d286e96-3a31-4c38-bf60-84e98c79922e', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('431d935d-bfef-4e70-bfa1-b8c6473fdb94', 'e12796b3-1b5a-4c8d-9e45-a535fe5a4081', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('466fc825-f930-4497-b781-60ccb69823ff', 'aa63f5c1-4d2d-4da5-912e-06511ec0d251', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('474da1ea-0438-4044-9d83-ef8632762001', 'efb1dbde-ae54-41b2-93d8-3723703799a4', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('5470b4df-4566-459c-84cf-ea44c5433aaf', 'eb393149-840f-467c-a066-307a38509398', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('5667a14e-72ec-4df2-9458-bdbffc9901ad', '0ed16ef3-1045-4385-a277-2da1b87ba763', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('73137e36-1dde-46e0-90a0-27b0fdfaad9f', 'a0c529a6-532f-4c84-98a5-9b789f658038', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('953c5f58-e9e7-4012-95aa-554f7ff31217', 'c8202a21-fd6a-4853-89d3-788e19df0466', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('9bb4d705-95be-4f3c-b0a7-bb09216d4951', 'f6d0e243-d964-4aa5-ba4b-a3eb47105dc0', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('9f63ca93-83f5-4f25-b581-e94ae37122a8', 'b1a4a6af-11f6-408e-8af2-656bd7eba645', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('aa147351-3e8a-44c2-bf4b-1f17e79fd034', 'cf2497d2-2d6d-4900-8e66-d9a4d5e06f97', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('b551dd41-616e-43ec-9625-50437c5075ee', 'c9f409df-ae83-4c12-98d8-7ea707db9c3b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');
INSERT INTO `url_access` VALUES ('de18a286-2c35-4f2e-97af-5f517b5e36d8', 'a5827aa5-4e2d-488d-95c6-e31452f5da3c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:44:42', '2022-04-27 04:44:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('05dc1eb4-783f-4492-90da-04f43f73a19d', 'Administrator', 'webdev@maxxsgroup.com', '2022-04-25 09:02:25', '27af53a8-15d9-46fb-aee4-f287dbb711c5', '$2y$10$c9gdZTOh/UIk6mjUZABEUOwRDlD7ShpEC/p.xSkVxqmcREzLUWrMi', NULL, NULL, NULL, '2022-04-15 06:20:05', '2022-04-26 04:00:46');

-- ----------------------------
-- Table structure for visa
-- ----------------------------
DROP TABLE IF EXISTS `visa`;
CREATE TABLE `visa`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visa
-- ----------------------------
INSERT INTO `visa` VALUES ('127b27fb-57c4-4495-ae4b-f4c09f307fc5', 'Visa Social', 'social', 'Description Visa Social', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-27 04:52:07', '2022-04-27 04:52:07');

SET FOREIGN_KEY_CHECKS = 1;
