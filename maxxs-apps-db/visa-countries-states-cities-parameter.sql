-- Select working database
USE visa;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- User ID = @USER_UID
-- Get User ID from table Users
SELECT 
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

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
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (UUID(), 'Afghanistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Albania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Algeria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Andorra', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Angola', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Argentina', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Armenia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Australia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Austria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Azerbaijan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bahrain', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bangladesh', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Barbados', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Belarus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Belgium', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bolivia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bosnia Herzegovina', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Brazil', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Brunei', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Bulgaria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cambodia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cameroon', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Canada', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Chile', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'China', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Colombia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Costa Rica', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Croatia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cuba', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cyprus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Czech Republic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Cyprus', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Denmark', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Dominican Republic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'East Timor', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ecuador', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Egypt', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'El Salvador', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Estonia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ethiopia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Fiji', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Finland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'France', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Georgia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Germany', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ghana', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Greece', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Guatemala', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Honduras', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Hungary', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Iceland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'India', @USER_UID, @USER_UID, NOW(), NOW());

-- Get Indonesia Country UID for ForeignID in States / Province Table.
SET @COUNTRY_UID = UUID();
INSERT INTO `countries` VALUES (@COUNTRY_UID, 'Indonesia', @USER_UID, @USER_UID, NOW(), NOW());

    -- -------------------------------
    -- Records of states in Indonesia
    -- -------------------------------
    -- Get Aceh States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Aceh', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Aceh
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Barat Daya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Besar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Singkil', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tamiang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Tenggara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Aceh Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bener Meriah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bireuen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gayo Lues', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nagan Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pidie', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pidie Jaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Simeulue', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banda Aceh', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Langsa', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Lhokseumawe', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sabang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Subulussalam', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get Bali States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Bali', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bali
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Badung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangli', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Buleleng', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gianyar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jembrana', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karangasem', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Klungkung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tabanan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Denpasar', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Banten States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Banten', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Banten
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lebak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pandeglang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Serang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tangerang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cilegon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Serang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tangerang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tangerang Selatan', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Bengkulu States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Bengkulu', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bengkulu
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Tengah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkulu Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kaur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepahiang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lebong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mukomuko', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rejang Lebong', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Seluma', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bengkulu', @USER_UID, @USER_UID, NOW(), NOW());
        

    -- Get DI Yogyakarta States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'DI Yogyakarta', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Bengkulu
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bantul', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gunungkidul', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kulon Progo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sleman', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Yogyakarta', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get DKI Jakarta States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'DKI Jakarta', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in DKI Jakarta
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Pusat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Selatan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jakarta Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kepulauan Seribu', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Gorontalo States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Gorontalo
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Boalemo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bone Bolango', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gorontalo Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pohuwato', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Gorontalo', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Jambi States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        -- ---------------------------------
        -- Records of cities in Jambi
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Batanghari', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bungo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kerinci', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Merangin', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Muaro Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sarolangun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanjung Jabung Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tanjung Jabung Timur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tebo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Jambi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sungai Penuh', @USER_UID, @USER_UID, NOW(), NOW());

    
    -- Get Jawa Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Barat
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bogor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sukabumi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cianjur', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bandung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Garut', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tasikmalaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ciamis', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kuningan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cirebon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Majalengka', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumedang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Indramayu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Subang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purwakarta', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karawang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bekasi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bandung Barat', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pangandaran', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bogor', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Sukabumi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bandung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cirebon', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Bekasi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Depok', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Cimahi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tasikmalaya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Banjar', @USER_UID, @USER_UID, NOW(), NOW());

    -- Get Jawa Tengah States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Tengah', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Tengah
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banjarnegara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banyumas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Batang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Blora', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Boyolali', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Brebes', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Cilacap', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Demak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Grobogan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jepara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Karanganyar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kebumen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kendal', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Klaten', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kudus', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Magelang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pati', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pekalongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pemalang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purbalingga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Purworejo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Rembang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Semarang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sragen', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sukoharjo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tegal', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Temanggung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wonogiri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Wonosobo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Magelang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pekalongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Salatiga', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Semarang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Surakarta', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Tegal', @USER_UID, @USER_UID, NOW(), NOW());


    -- Get Jawa Timur States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Jawa Timur', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ---------------------------------
        -- Records of cities in Jawa Timur
        -- ---------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bangkalan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Banyuwangi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Blitar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bojonegoro', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bondowoso', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Gresik', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jember', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Jombang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kediri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lamongan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Lumajang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Madiun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Magetan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Malang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mojokerto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Nganjuk', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ngawi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pacitan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pamekasan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Pasuruan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ponorogo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Probolinggo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sampang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sidoarjo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Situbondo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sumenep', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Trenggalek', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tuban', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Tulungagung', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Batu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Blitar', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Kediri', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Madiun', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Malang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Mojokerto', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pasuruan', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Probolinggo', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Surabaya', @USER_UID, @USER_UID, NOW(), NOW());
    


    -- Get Kalimantan Barat States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Barat', @USER_UID, @USER_UID, NOW(), NOW());    
        -- --------------------------------------
        -- Records of cities in Kalimantan Barat
        -- --------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Bengkayang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kapuas Hulu', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kayong Utara', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Ketapang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Kubu Raya', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Landak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Melawi', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Mempawah', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sambas', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sanggau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sekadau', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kabupaten Sintang', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Pontianak', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kota Singkawang', @USER_UID, @USER_UID, NOW(), NOW());
    

    -- Get Kalimantan Selatan States UID for ForeignID in Cities Table
    SET @STATES_UID = UUID();
    INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kalimantan Selatan', @USER_UID, @USER_UID, NOW(), NOW());    
        -- ----------------------------------------
        -- Records of cities in Kalimantan Selatan
        -- ----------------------------------------
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());
        INSERT INTO `cities` VALUES (UUID(), @STATES_UID, '', @USER_UID, @USER_UID, NOW(), NOW());

    


    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Kalimantan Tengah', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Kalimantan Timur', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Kalimantan Utara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Kepulauan Bangka Belitung', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Kepulauan Riau', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Lampung', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Maluku', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Maluku Utara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Nusa Tenggara Barat', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Nusa Tenggara Timur', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Papua', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Papua Barat', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Riau', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sulawesi Barat', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sulawesi Selatan', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sulawesi Tengah', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sulawesi Tenggara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sulawesi Utara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sumatera Barat', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sumatera Selatan', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `states` VALUES (UUID(), @COUNTRY_UID, 'Sumatera Utara', @USER_UID, @USER_UID, NOW(), NOW());


INSERT INTO `countries` VALUES (UUID(), 'Iran', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Iraq', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ireland {Republic}', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Israel', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Italy', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ivory Coast', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Jamaica', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Japan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Jordan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kazakhstan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kenya', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Korea North', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Korea South', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kosovo', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Kuwait', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Laos', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Latvia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Lebanon', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Liberia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Libya', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Liechtenstein', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Lithuania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Luxembourg', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Macedonia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Madagascar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Malaysia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Maldives', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mali', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Malta', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mauritania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mauritius', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mexico', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Micronesia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Moldova', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Monaco', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mongolia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Montenegro', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Morocco', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Mozambique', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Myanmar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Namibia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Nepal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Netherlands', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'New Zealand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Norway', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Oman', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Pakistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Panama', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Papua New Guinea', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Paraguay', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Peru', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Philippines', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Poland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Portugal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Qatar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Romania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Russian Federation', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Rwanda', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'San Marino', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Saudi Arabia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Senegal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Serbia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sierra Leone', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Singapore', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Slovakia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Slovenia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'South Africa', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Spain', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sri Lanka', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sudan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Suriname', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Sweden', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Switzerland', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Syria', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Taiwan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tajikistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tanzania', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Thailand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Trinidad & Tobago', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Tunisia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Turkey', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Turkmenistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uganda', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ukraine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United Arab Emirates', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Ukraine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United Kingdom', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'United States', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uruguay', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Uzbekistan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Vatican City', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Venezuela', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Vietnam', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Yemen', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Zambia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `countries` VALUES (UUID(), 'Zimbabwe', @USER_UID, @USER_UID, NOW(), NOW());


-- -------------------------------
-- Table structure for parameters
-- -------------------------------
DROP TABLE IF EXISTS `parameters`;
CREATE TABLE `parameters`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_by` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameters
-- ----------------------------
INSERT INTO `parameters` VALUES (UUID(), 'GENDER', 'Female', '0', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'GENDER', 'Male', '1', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Islam', 'islam', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Catholic', 'catholic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Protestant', 'protestant', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Hindu', 'hindu', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Buddhist', 'buddhist', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Confucianism', 'confucianism', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'RELIGION', 'Other', 'other', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Single', 'single', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Married', 'married', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Widow / Widower', 'widow-er', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'MARITAL', 'Divorce', 'divorce', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'AED', 'uae-dirham', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'ARS', 'argentina-peso', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'CAD', 'canada-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'CNY', 'china-yuan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'EUR', 'euro', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'GBP', 'british-pound-sterling', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'HKD', 'hong-kong-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'IDR', 'indonesia-rupiah', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'INR', 'india-rupee', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'KRW', 'korea-won', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'KWD', 'kuwait-dinar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'MYR', 'malaysia-ringgit', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'RUB', 'russia-ruble', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'SAR', 'saudi-riyal', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'SGD', 'singapore-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'THB', 'thailand-baht', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'TRY', 'turkey-lira', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'UAH', 'ukraine-hryvnia', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'USD', 'us-dollar', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'CURRENCY', 'VND', 'vietnam-donk', @USER_UID, @USER_UID, NOW(), NOW());

INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Afghan', 'afghan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Albanian', 'albanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Algerian', 'algerian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Argentine', 'argentine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Australian', 'australian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Austrian', 'austrian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bangladeshi', 'bangladeshi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Belgian', 'belgian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bolivian', 'bolivian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Brazilian', 'brazilian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Bulgarian', 'bulgarian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cambodian', 'cambodian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cameroonian', 'cameroonian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Canadian', 'canadian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Chilean', 'chilean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Chinese', 'chinese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Colombian', 'colombian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Costa Rican', 'costa-rican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Croatian', 'croatian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Cuban', 'cuban', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Czech', 'czech', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Danish', 'danish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Dominican', 'dominican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ecuadorian', 'ecuadorian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Egyptian', 'egyptian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Salvadorian', 'salvadorian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'English', 'english', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Estonian', 'estonian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ethiopian', 'ethiopian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Fijian', 'fijian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Finnish', 'finnish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'French', 'french', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'German', 'german', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ghanaian', 'ghanaian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Greek', 'greek', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Haitian', 'haitian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Honduran', 'honduran', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Hungarian', 'hungarian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Icelandic', 'icelandic', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Indian', 'indian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Indonesian', 'indonesian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Iranian', 'iranian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Iraqi', 'iraqi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Irish', 'irish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Israeli', 'israeli', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Jamaican', 'jamaican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Japanese', 'japanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Jordanian', 'jordanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Kenyan', 'kenyan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Kuwaiti', 'kuwaiti', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lao', 'lao', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Latvian', 'latvian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lebanese', 'lebanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Libyan', 'libyan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Lithuanian', 'lithuanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malagasy', 'malagasy', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malaysian', 'malaysian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Malian', 'malian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Maltese', 'maltese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mexican', 'mexican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mongolian', 'mongolian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Moroccan', 'moroccan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Mozambican', 'mozambican', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Namibian', 'namibian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nepalese', 'nepalese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Dutch', 'dutch', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'New Zealand', 'new-zealand', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nicaraguan', 'nicaraguan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Nigerian', 'nigerian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Norwegian', 'norwegian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Pakistani', 'pakistani', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Panamanian', 'panamanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Paraguayan', 'paraguayan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Peruvian', 'peruvian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Philippine', 'philippine', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Polish', 'polish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Portuguese', 'portuguese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Romanian', 'romanian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Russian', 'russian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Saudi', 'saudi', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Scottish', 'scottish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Senegalese', 'senegalese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Serbian', 'serbian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Singaporean', 'singaporean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Slovak', 'slovak', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'South African', 'south-african', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Korean', 'korean', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Spanish', 'spanish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Sri Lankan', 'sri-lankan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Sudanese', 'sudanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Swedish', 'swedish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Swiss', 'swiss', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Syrian', 'syrian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Taiwanese', 'taiwanese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tajikistani', 'tajikistani', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Thai', 'thai', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tongan', 'tongan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Tunisian', 'tunisian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Turkish', 'turkish', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Ukrainian', 'ukrainian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Emirati', 'emirati', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'British', 'british', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'American', 'american', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Uruguayan', 'uruguayan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Venezuelan', 'venezuelan', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Vietnamese', 'vietnamese', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Welsh', 'welsh', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Zambian', 'zambian', @USER_UID, @USER_UID, NOW(), NOW());
INSERT INTO `parameters` VALUES (UUID(), 'NATIONALITY', 'Zimbabwean', 'zimbabwean', @USER_UID, @USER_UID, NOW(), NOW());

SET FOREIGN_KEY_CHECKS = 1;