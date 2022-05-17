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

 Date: 19/04/2022 11:09:23
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
INSERT INTO `app_settings` VALUES ('21a6bee5-2df3-47ec-9553-42d62613effd', 'App.Favico', 'assets/img/app-settings/App_Favico_base_app-removebg-preview.png', 'image', 0, NULL, NULL, NULL, '2022-04-12 09:59:25');
INSERT INTO `app_settings` VALUES ('44dawc5d-113c-4cdc-871c-6c5bd7a24af8', 'App.Login.Cover', 'assets/img/app-settings/App_Login_Cover_base_app-removebg-preview.png', 'image', 0, NULL, NULL, NULL, '2022-04-12 09:59:25');
INSERT INTO `app_settings` VALUES ('5778eeda-5044-4f93-85ba-f242e0857898', 'App.Logo.Login', 'assets/img/app-settings/App_Logo_Login_base_app-removebg-preview.png', 'image', 0, NULL, NULL, NULL, '2022-04-12 09:59:25');
INSERT INTO `app_settings` VALUES ('5878d7f5-d473-4f43-b676-2ab542feecec', 'App.Logo', 'assets/img/app-settings/App_Logo_base_app-removebg-preview.png', 'image', 0, NULL, NULL, NULL, '2022-04-12 10:01:51');
INSERT INTO `app_settings` VALUES ('5fb7e9ea-73a4-4b20-abed-19e06c18966d', 'App.Name', 'Base App', 'text', 0, NULL, NULL, NULL, '2022-04-12 10:01:51');
INSERT INTO `app_settings` VALUES ('7aecf028-cf68-41d0-a486-6bd67e4082eb', 'App.Description', 'Description Base App', 'textarea', 0, NULL, NULL, NULL, '2022-04-12 10:01:51');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (30, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (31, '2022_04_17_152548_create_cities_table', 1);

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
INSERT INTO `permissions` VALUES ('09c14694-89ee-4029-a7cf-76b0581be6de', 'App Settings Update', 'app-settings-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('19a085e0-7dc6-4b0e-8f6d-902dbd6f2382', 'Permissions Update', 'permissions-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('2ab7755c-c49c-4b03-897b-9f603bd3e628', 'Permissions Create', 'permissions-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('41d9d910-060f-45c6-96e0-85a3cb395583', 'Roles View', 'role-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('4bbcb4ab-c7d2-460a-bad9-051dce67b8ec', 'Role Config', 'role-config', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('5745df0a-d004-40c0-9ed4-22ed6d182ec2', 'Roles Create', 'role-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('5f5c77e4-068b-4130-918e-e5a0abc2d26a', 'Roles Update', 'role-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('685a7f4e-2375-41c9-8555-d3dec90e25ea', 'Roles Edit', 'role-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('6861eddc-1851-42bb-8af0-224fbb8b1eab', 'App Settings View', 'app-settings-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'Url Create', 'url-create', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'Url Edit', 'url-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'Url Update', 'url-update', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'Url View', 'url-view', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'Permissions Generate', 'permissions-generate', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('c97f7b86-2101-4d14-8090-3ff395271564', 'Permissions Edit', 'permissions-edit', '1', NULL, '2021-11-08 03:09:10', NULL);
INSERT INTO `permissions` VALUES ('ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'Permissions View', 'permissions-view', '1', NULL, '2021-11-08 03:09:10', NULL);

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
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
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
-- Records of provinces
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
INSERT INTO `role_permissions` VALUES ('124242ba-4a52-4be8-8c0e-455791898399', '87b8a2c3-bcf0-457c-98bd-2f3b6a315e03', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('237d9a95-d56b-44bf-8d45-dd347014a249', '19a085e0-7dc6-4b0e-8f6d-902dbd6f2382', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('27c99b88-cce3-4ec6-bd70-504385ea6044', '9c4f366a-dd8a-4850-bc63-aad3594e42d9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('2b1ec636-0a86-4f90-bbab-85517e082969', 'ceb86827-c3d9-4cf0-b637-3b18abd2a239', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('36814d79-1fc9-453e-9eb5-752e5c04e401', 'c3ed0e19-adce-4a51-af73-d8b50dd4f115', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('4f5b15d7-b7bc-4f07-9805-254478092c3e', '41d9d910-060f-45c6-96e0-85a3cb395583', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('54145ece-fdc6-4cc0-9017-806bc8deb482', 'b384dab1-4f82-4cae-a96a-4ccb6dcf4979', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('6c96a127-bfdb-43d4-b6c4-81407e17fc00', '5f5c77e4-068b-4130-918e-e5a0abc2d26a', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('76a0cc09-6c06-49c3-81bd-c452ddc97f1a', '4bbcb4ab-c7d2-460a-bad9-051dce67b8ec', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('8106c600-64b3-4ede-bc06-f8af0c930a9f', '09c14694-89ee-4029-a7cf-76b0581be6de', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('962d355d-aa0b-4ad9-aa90-89de0020ebd2', 'a6e81fe4-e1b9-40a3-8bb5-8c9e4703d6c9', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('b8c31923-b8f7-4e8e-943c-83e042bb3e39', '2ab7755c-c49c-4b03-897b-9f603bd3e628', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('d4d9e9a5-4617-47e8-afc0-79b433f5222b', '685a7f4e-2375-41c9-8555-d3dec90e25ea', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('d751040a-ede4-4221-8054-756c05c48e44', '6861eddc-1851-42bb-8af0-224fbb8b1eab', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('ef035635-7ded-42ab-ac0e-87d7e26899e8', 'c97f7b86-2101-4d14-8090-3ff395271564', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');
INSERT INTO `role_permissions` VALUES ('f64cbc91-c7e2-45e5-b708-f905102e075b', '5745df0a-d004-40c0-9ed4-22ed6d182ec2', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-17 15:08:16', '2022-04-17 15:08:16');

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
INSERT INTO `url` VALUES ('a0c529a6-532f-4c84-98a5-9b789f658038', NULL, 'Url', 'url', 'link', 2, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:14:03', '2022-04-15 08:14:03');
INSERT INTO `url` VALUES ('a5827aa5-4e2d-488d-95c6-e31452f5da3c', NULL, 'Roles', 'role', 'users', 4, 'settings', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:15:02', '2022-04-15 08:15:02');

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
INSERT INTO `url_access` VALUES ('0e76834c-3e56-4d17-a55e-4d8d213dcdee', 'a5827aa5-4e2d-488d-95c6-e31452f5da3c', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:34:05', '2022-04-15 08:34:05');
INSERT INTO `url_access` VALUES ('101c5804-7184-4daa-a880-28120d60719c', '0ed16ef3-1045-4385-a277-2da1b87ba763', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:34:05', '2022-04-15 08:34:05');
INSERT INTO `url_access` VALUES ('6902b08e-66ae-4f3b-8ec5-95186e08cd60', 'a0c529a6-532f-4c84-98a5-9b789f658038', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:34:05', '2022-04-15 08:34:05');
INSERT INTO `url_access` VALUES ('6ae67040-405c-468e-a28f-554b3c3a4611', '36211f55-49de-4f3a-975e-61068a7ad551', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '572003cd-0230-4534-b84d-eb2d9eab58a7', NULL, '2022-04-15 08:34:05', '2022-04-15 08:34:05');

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
INSERT INTO `users` VALUES ('05dc1eb4-783f-4492-90da-04f43f73a19d', 'Administrator', 'admin@gmail.com', NULL, NULL, '$2y$10$/6l51sy5gCh6ckb9H3cfm.dFxyGT3PraWOP0KSEEpNGmQhy8YZboa', NULL, NULL, NULL, '2022-04-15 06:20:05', '2022-04-15 06:20:05');
INSERT INTO `users` VALUES ('572003cd-0230-4534-b84d-eb2d9eab58a7', 'Tengku Firmansyah', 'tengkufirmansyah2@gmail.com', '2022-04-15 06:47:17', 'ab1658ed-af25-4864-b13d-d821e74d2a9c', '$2y$10$WJOrUtf5XqVxoUpSLZ.fweHJJpndCxasNo.Ahx4Ow2gozcKfqrezm', 'NI6rg4XC6SpPfzsxY4FmNGpOzfAwN9XbVeHttY4IwtoDMWgEbSEc58zXpThR', NULL, NULL, '2022-04-15 06:41:34', '2022-04-19 04:08:46');

SET FOREIGN_KEY_CHECKS = 1;
