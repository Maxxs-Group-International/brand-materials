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

 Date: 26/04/2022 14:58:59
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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (30, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (31, '2022_04_17_152548_create_cities_table', 1);
INSERT INTO `migrations` VALUES (32, '2022_04_23_052647_create_branches_table', 2);
INSERT INTO `migrations` VALUES (34, '2022_04_24_085720_create_parameters_table', 3);
INSERT INTO `migrations` VALUES (35, '2022_04_26_022535_create_customers_table', 4);

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
INSERT INTO `permissions` VALUES ('39e7f2c2-fdd5-4078-8e7c-c834243e7863', 'Parameters Create', 'parameters-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('3ac05e2f-2ea1-41f1-a6d8-740b88929e55', 'States Create', 'states-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 03:15:13', '2022-04-22 03:15:13');
INSERT INTO `permissions` VALUES ('41d9d910-060f-45c6-96e0-85a3cb395583', 'Roles View', 'role-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('426d31c3-2fcb-4703-9a41-e2d1d5642650', 'Parameters Edit', 'parameters-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
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
INSERT INTO `permissions` VALUES ('87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'Url Create', 'url-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('9780299c-8209-46aa-9f10-4156bd741c8a', 'Branches Update', 'branches-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 05:41:19', '2022-04-23 05:41:19');
INSERT INTO `permissions` VALUES ('9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'Url Edit', 'url-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'Url Update', 'url-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('aaff2a5e-e0a6-4091-8570-4de47b56710d', 'Users Update', 'users-update', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('b331212a-dbf7-492f-b8a9-5b2146c77701', 'Parameters Delete', 'parameters-delete', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
INSERT INTO `permissions` VALUES ('b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'Url View', 'url-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c0e77f2a-bac6-483f-9bdb-73b416e528cc', 'Users Edit', 'users-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'Permissions Generate', 'permissions-generate', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c97f7b86-2101-4d14-8090-3ff395271564', 'Permissions Edit', 'permissions-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('ca4b4734-af4f-4ed6-8631-8e2aa92da519', 'Users View', 'users-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:52:19', '2022-04-19 14:52:19');
INSERT INTO `permissions` VALUES ('cdff1cb5-3d1c-4cea-b412-89afe1161d0b', 'Company Profile Edit', 'company-profile-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'Permissions View', 'permissions-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('d41a1d98-9889-455d-ad1b-17c1562e49b2', 'Company Profile Create', 'company-profile-create', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('deb05ca6-0d7e-4e48-8232-059682b21698', 'Company Profile View', 'company-profile-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:15', '2022-04-23 07:33:15');
INSERT INTO `permissions` VALUES ('eb345ca1-02cc-4343-a04b-0449c5438bdb', 'Cities Edit', 'cities-edit', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-22 06:11:21', '2022-04-22 06:11:21');
INSERT INTO `permissions` VALUES ('ef63ea2b-5e9c-43c6-916d-155d43dd6977', 'Modules View', 'modules-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:08:30', '2022-04-25 01:08:30');
INSERT INTO `permissions` VALUES ('f5d27024-4367-4165-82be-19302f4c4406', 'Parameters View', 'parameters-view', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:49', '2022-04-24 09:35:49');
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
INSERT INTO `role` VALUES ('27af53a8-15d9-46fb-aee4-f287dbb711c5', 'Member', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-26 01:22:38', '2022-04-26 01:22:38');
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
INSERT INTO `role_permissions` VALUES ('03333cd6-950f-45e5-8e2e-26368809db79', 'ef63ea2b-5e9c-43c6-916d-155d43dd6977', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('037864db-113e-4d91-824f-8c92423f3f42', '2ab7755c-c49c-4b03-897b-9f603bd3e628', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('085d67e7-f479-44ab-95ab-c0b02691338e', 'b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('10a53bab-acf7-484c-93d1-9d2f9085d516', 'c97f7b86-2101-4d14-8090-3ff395271564', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('13206f75-ce32-4f34-8292-63eef9a79d80', '13376f2a-d77a-49ba-930c-ab0e4d318dc8', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('179367d1-6c5e-4db9-bb7b-18d78ec92c20', '0b8ad518-bdea-46a0-a05f-abf475c26e9e', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('202e0696-adb1-481b-82d8-c9a80b5dcb0f', '685a7f4e-2375-41c9-8555-d3dec90e25ea', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('22ed5ac7-4002-42ac-b101-058b61244604', 'deb05ca6-0d7e-4e48-8232-059682b21698', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('2534dd2c-5a9d-4506-967c-0e8386105d77', '21ed25f5-fad1-4c30-bdd8-6a79247fcc72', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('26354daf-4496-46df-a0e0-7c318238146c', '3ac05e2f-2ea1-41f1-a6d8-740b88929e55', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('2768bd0e-5487-4593-80d7-99f474e2c312', '1c7ce46e-87be-4943-9a67-00943936639c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('27a2b630-1b8b-4abf-ae3b-d64fa3c7fd41', 'aaff2a5e-e0a6-4091-8570-4de47b56710d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('2802612f-d364-4cd4-912e-28413f2ee9de', '39e7f2c2-fdd5-4078-8e7c-c834243e7863', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('2e38c149-4ba2-4c99-bc26-968d96b6dac6', '4bbcb4ab-c7d2-460a-bad9-051dce67b8ec', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('3168026e-a1c8-49a8-a477-1e5244549715', '6ee065e7-6754-4a1a-a53a-d0adbc5ff40b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('33d3d335-712c-47f6-a03f-78c230666689', '38d21b9b-4e50-445e-82e9-0627fdb47ab9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('39e04186-f0bc-4ece-ad0c-7fbe99d299fa', '19a085e0-7dc6-4b0e-8f6d-902dbd6f2382', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('3b1fda35-35e2-4311-a7cd-81b102b4ab0b', '32eb84a2-0a64-46a0-9f0a-c840421fd718', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('3deee437-9570-48cc-b438-42ebc8c649ae', '0f254a81-85a0-4660-af12-8733a8f5abee', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('4a6cb1fa-8bc3-40fc-b8c9-028b95a76e12', '5f5c77e4-068b-4130-918e-e5a0abc2d26a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('4c8cd93f-0296-486a-87cc-6563ca9ce661', '2da6c82c-f14e-4d5c-9f68-592c5d908e36', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('4fb5b4dd-fe93-4c8e-9efe-da2553a5d40b', 'b331212a-dbf7-492f-b8a9-5b2146c77701', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('54da9e4c-5702-4d90-bd81-7ecba0307a6d', '325194c5-0bf7-4202-9504-ea940391b848', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('57463f47-9a91-4f0b-a925-157864dc9011', 'd41a1d98-9889-455d-ad1b-17c1562e49b2', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('5ae2dacf-d7cd-42b6-a05a-4024f29d2db4', 'cdff1cb5-3d1c-4cea-b412-89afe1161d0b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('5c043d19-35f5-4f09-adbe-b808682105b2', 'fbfc9b79-0dfe-4f7d-8bc0-ebd0c63ec759', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('608bbffa-f32d-49a5-8dd9-4b232affaeaf', 'f5d27024-4367-4165-82be-19302f4c4406', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('665e147d-1a69-47bb-b5a6-7c30931bcbd3', '4e6a22bd-ead3-4c40-bbe8-0a8e9c399426', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('6ae19272-c48d-437b-8802-459cc6e2faf8', '014f167d-5360-4cc4-8cbe-274da2ad7752', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('711745f5-bdd6-4c48-8df6-010a1be5f675', '004571c0-0785-4b29-8778-d8031acb1436', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('7362f53d-250e-4d12-8837-0d17d08c71dc', '2b5265cf-e7b8-4621-8e28-5c6d2937f096', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('8428840f-eb78-4410-bc49-a6efa62623f5', 'a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('8b254354-3e66-4ccf-ad3f-505e7f0370b3', '09c14694-89ee-4029-a7cf-76b0581be6de', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('95f82a96-f746-4f05-b4e4-52a27a3381c1', '1138e995-1fe3-4eb2-b961-8a61e872de10', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('9a14804c-a9f3-4fc6-af01-bfca8011fe7c', '87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('a1b6f7b8-c15c-43ae-a8a9-1f08cba4fd79', '67f01052-8b35-4129-a873-808ab07b03e3', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('a5f7b5c2-26f5-44a9-b8ee-b59002ecf28f', '9780299c-8209-46aa-9f10-4156bd741c8a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('a9fed84f-08a7-4cf5-aa1e-87ed3f119bab', '56dff6c8-21ef-4c78-aaa3-c8deafa7262f', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('b0f6d333-1128-4737-9696-ef0af13dfcbb', 'ca4b4734-af4f-4ed6-8631-8e2aa92da519', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('b3c15f08-a6f0-45dc-94f0-a72a5e91e4c2', '5745df0a-d004-40c0-9ed4-22ed6d182ec2', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('bbe22d43-02af-49e9-b18c-1bc1c6f10176', '5604683d-a341-43a7-94fa-784bbf0fd1bf', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('c68b6373-9ac6-49a1-a1d3-bd6af0004b0f', '10baa8c6-f0bd-4d54-b940-b0bfb176152d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('c91f4d2c-4b21-456c-ad7f-9738e6641161', '9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('c92903e0-2b15-4a5f-a703-5b72e376904a', '2e8ee771-0180-4f4b-bda9-eeb324bd9938', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('cdad1ffb-ccfe-4b32-9fde-520d9616bf38', 'eb345ca1-02cc-4343-a04b-0449c5438bdb', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('cde0e7c9-25e4-4d33-9619-c53620db2b8e', '6861eddc-1851-42bb-8af0-224fbb8b1eab', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('d5b2539a-973f-4cae-8165-d4e69c13b506', '7537487f-3f1c-4961-9663-7fe49318a2c0', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('d65954ee-1af2-456e-ab57-194e8c587b45', 'ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('ddb3758a-2e08-44ea-8fe5-41c7748f2053', 'c0e77f2a-bac6-483f-9bdb-73b416e528cc', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('e4619c0d-5784-4419-bf06-8aa3bb5c2488', '38f68ff0-0283-4586-8096-5b596b70c4bd', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('e8dfb8a6-2559-45e0-9794-09ddd97d16fc', '2187e06d-afac-4ed9-bf9e-8a66d1ae8f8a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('ecde2e8a-b4ae-4f20-a2cd-5efbc62ac65c', 'c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('f59a957a-b4c9-487e-8025-cf7fdb68023d', '13d69074-a66f-4e57-9095-5a4001289b1d', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('f65f7a18-a4ea-48d2-b538-a6ca0e2df263', '0eb1754b-7846-4185-a140-eaee352e7f1a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('fb228c25-7689-4d67-be98-8c1839377797', '426d31c3-2fcb-4703-9a41-e2d1d5642650', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');
INSERT INTO `role_permissions` VALUES ('fdee5848-2a8d-4691-bffb-2b301f1bb4a7', '41d9d910-060f-45c6-96e0-85a3cb395583', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:02', '2022-04-25 01:09:02');

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
INSERT INTO `url` VALUES ('b1a4a6af-11f6-408e-8af2-656bd7eba645', NULL, 'Users', 'users', 'users', 5, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-19 14:51:55', '2022-04-19 14:51:55');
INSERT INTO `url` VALUES ('c8202a21-fd6a-4853-89d3-788e19df0466', NULL, 'Company Profile', 'company-profile', 'trello', 5, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-23 07:33:07', '2022-04-23 07:33:07');
INSERT INTO `url` VALUES ('c9f409df-ae83-4c12-98d8-7ea707db9c3b', NULL, 'Parameters', 'parameters', 'list', 6, 'master', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-24 09:35:41', '2022-04-24 09:35:41');
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
INSERT INTO `url_access` VALUES ('01a30452-029c-4c42-a5df-1e22c7dab624', 'efb1dbde-ae54-41b2-93d8-3723703799a4', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('0f35b658-00f4-4a88-b94e-786cd7fd8136', 'e12796b3-1b5a-4c8d-9e45-a535fe5a4081', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('2d2a012e-2765-475d-b768-a0870b5308b3', 'f6d0e243-d964-4aa5-ba4b-a3eb47105dc0', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('598c4ba1-adda-4791-93cc-acf00ec78864', 'a0c529a6-532f-4c84-98a5-9b789f658038', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('671c2ac2-a729-496f-b37c-800b6719f5ed', 'a5827aa5-4e2d-488d-95c6-e31452f5da3c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('712c866d-8896-4e39-b401-675913cd018a', '3d286e96-3a31-4c38-bf60-84e98c79922e', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('7d26b085-328a-46ad-bef7-8d47ada3467d', 'c8202a21-fd6a-4853-89d3-788e19df0466', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('c8de5027-899d-4f9c-b0d9-e21c70cc7641', 'eb393149-840f-467c-a066-307a38509398', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('d38987c8-3850-4d91-8b8c-e12fe49333a3', '0ed16ef3-1045-4385-a277-2da1b87ba763', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('de5e7253-5fc3-498b-8783-00f74c67212f', 'b1a4a6af-11f6-408e-8af2-656bd7eba645', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('f04d77c1-22a4-4443-a403-f2fc56539898', '36211f55-49de-4f3a-975e-61068a7ad551', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');
INSERT INTO `url_access` VALUES ('f9f10a3f-8ba2-498f-8687-74cf164fa96b', 'c9f409df-ae83-4c12-98d8-7ea707db9c3b', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-25 01:09:22', '2022-04-25 01:09:22');

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
INSERT INTO `users` VALUES ('05dc1eb4-783f-4492-90da-04f43f73a19d', 'Administrator', 'administrator@gmail.com', '2022-04-25 09:02:25', '27af53a8-15d9-46fb-aee4-f287dbb711c5', '$2y$10$8E48ioVVMfTmsJOvBDJABu62opvF2TMcLB0Z8FT7CnXybQdIEN44u', NULL, NULL, NULL, '2022-04-15 06:20:05', '2022-04-26 04:00:46');
INSERT INTO `users` VALUES ('572003cd-0230-4534-b84d-eb2d9eab58a7', 'Tengku Firmansyah', 'tengkufirmansyah2@gmail.com', '2022-04-25 09:02:25', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '$2y$10$7bO9qFCNx8fXnwgM1whduuB9eyYQDFRQJXxwB8RtsYq2NE40ZpMTK', 'xT5Crg8ayCaQEaCJqkjeERWV5Joj4bExLkibhMLxKQsFpptb94uWSrPZ0D0d', NULL, '572003cd-0230-4534-b84d-eb2d9eab58a7', '2022-04-15 06:41:34', '2022-04-26 07:07:24');

SET FOREIGN_KEY_CHECKS = 1;
