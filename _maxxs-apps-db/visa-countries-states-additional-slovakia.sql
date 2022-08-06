-- User ID = @USER_UID
-- Get User ID from table Users
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

-- ----------------------------------------------------------------------------------------------
-- Records of states in Slovakia
SET @COUNTRY_UID = '0b068a74-cc77-11ec-a127-00163e08598c';
-- Reference : https://en.wikipedia.org/wiki/Regions_of_Slovakia
-- ----------------------------------------------------------------------------------------------

--  States Bratislava
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Bratislava', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bratislava', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States Trnava
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Trnava', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Trnava', @USER_UID, @USER_UID, NOW(), NOW());

--  States Trenčín
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Trenčín', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Trenčín', @USER_UID, @USER_UID, NOW(), NOW());

--  States Nitra
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Nitra', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nitra', @USER_UID, @USER_UID, NOW(), NOW());

--  States Žilina
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Žilina', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Žilina', @USER_UID, @USER_UID, NOW(), NOW());

--  States Banská Bystrica
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Banská Bystrica', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Banská Bystrica', @USER_UID, @USER_UID, NOW(), NOW());

--  States Prešov
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Prešov', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Prešov', @USER_UID, @USER_UID, NOW(), NOW());

--  States Košice
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Košice', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Košice', @USER_UID, @USER_UID, NOW(), NOW());
