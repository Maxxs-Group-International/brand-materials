-- User ID = @USER_UID
-- Get User ID from table Users
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

-- ----------------------------------------------------------------------------------------------
-- Records of states in Japan
SET @COUNTRY_UID = '09dd74eb-cc77-11ec-a127-00163e08598c';
-- Reference : https://en.wikipedia.org/wiki/Provinces_of_Italy
-- ----------------------------------------------------------------------------------------------

--  States Chūbu
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Chūbu', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Aichi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fukui', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gifu', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ishikawa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nagano', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Niigata', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Shizuoka', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Toyama', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Yamanashi', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States Chūgoku
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Chūgoku', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hiroshima', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Okayama', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Shimane', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tottori', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Yamaguchi', @USER_UID, @USER_UID, NOW(), NOW());

--  States Hokkaidō
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Hokkaidō', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hokkaidō', @USER_UID, @USER_UID, NOW(), NOW());

--  States Kansai
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kansai', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hyōgo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kyōto', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mie', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ōsaka', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Shiga', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Wakayama', @USER_UID, @USER_UID, NOW(), NOW());

--  States Kantō
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kantō', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chiba', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gunma', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ibaraki', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kanagawa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Saitama', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tochigi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tōkyō', @USER_UID, @USER_UID, NOW(), NOW());

--  States Kyūshū
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kyūshū', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fukuoka', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kagoshima', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kumamoto', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Miyazaki', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nagasaki', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ōita', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Okinawa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Saga', @USER_UID, @USER_UID, NOW(), NOW());

--  States Shikoku
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Shikoku', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ehime', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kagawa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kōchi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tokushima', @USER_UID, @USER_UID, NOW(), NOW());

--  States Tōhoku
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Tōhoku', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Akita', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Aomori', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fukushima', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Iwate', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Miyagi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Yamagata', @USER_UID, @USER_UID, NOW(), NOW());
