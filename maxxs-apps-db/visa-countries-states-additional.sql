-- User ID = @USER_UID
-- Get User ID from table Users
SELECT 
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

-- ----------------------------------------------------------------------------------------------
-- Records of states in United States of America
SET @COUNTRY_UID = '0b5c4eab-cc77-11ec-a127-00163e08598c';
-- Reference : https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
-- ----------------------------------------------------------------------------------------------

--  States Alabama
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Alabama', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Montgomery', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Huntsville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Birmingham', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mobile', @USER_UID, @USER_UID, NOW(), NOW());

--  States Alaska
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Alaska', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Juneau', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Anchorage', @USER_UID, @USER_UID, NOW(), NOW());

--  States Arizona
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Arizona', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Phoenix', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tucson', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mesa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chandler', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gilbert', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Glendale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Scottsdale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Peoria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tempe', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Surprise', @USER_UID, @USER_UID, NOW(), NOW());

--  States Arkansas
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Arkansas', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Little Rock', @USER_UID, @USER_UID, NOW(), NOW());

--  States California
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'California', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Los Angeles', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Diego', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Jose', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Francisco', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fresno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sacramento', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Long Beach', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oakland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bakersfield', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Anaheim', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Stockton', @USER_UID, @USER_UID, NOW(), NOW());