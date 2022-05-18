-- User ID = @USER_UID
-- Get User ID from table Users
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

-- ----------------------------------------------------------------------------------------------
-- Records of states in United States of America
SET @COUNTRY_UID = '0b5c4eab-cc77-11ec-a127-00163e08598c';
-- Reference : https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
-- Reference : https://en.wikipedia.org/wiki/List_of_United_States_cities_by_population
-- ----------------------------------------------------------------------------------------------

--  States Alabama
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Alabama', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Birmingham', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Huntsville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mobile', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Montgomery', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States Alaska
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Alaska', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Anchorage', @USER_UID, @USER_UID, NOW(), NOW());

--  States Arizona
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Arizona', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chandler', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gilbert', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Glendale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mesa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Peoria', @USER_UID, @USER_UID, NOW(), NOW());    
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Phoenix', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Scottsdale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Surprise', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tempe', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tucson', @USER_UID, @USER_UID, NOW(), NOW());

--  States Arkansas
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Arkansas', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Little Rock', @USER_UID, @USER_UID, NOW(), NOW());

--  States California
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'California', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Anaheim', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Antioch', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bakersfield', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Berkeley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Burbank', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Carlsbad', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chico', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chula Vista', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Clovis', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Concord', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Corona', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Costa Mesa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Daly City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Downey', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'El Cajon', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'El Monte', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Elk Grove', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Escondido', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fairfield', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fontana', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fremont', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fresno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fullerton', @USER_UID, @USER_UID, NOW(), NOW()); 
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Garden Grove', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Glendale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hayward', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Huntington Beach', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Inglewood', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Irvine', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Jurupa Valley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lancaster', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Long Beach', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Los Angeles', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Menifee', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Modesto', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Moreno Valley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Murrieta', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Norwalk', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oakland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oceanside', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Orange', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oxnard', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Palmdale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pasadena', @USER_UID, @USER_UID, NOW(), NOW()); 
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pomona', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rancho Cucamonga', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rialto', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Richmond', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Riverside', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Roseville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sacramento', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Salinas', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Bernardino', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Diego', @USER_UID, @USER_UID, NOW(), NOW()); 
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Francisco', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Jose', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Mateo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Santa Ana', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Santa Clara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Santa Clarita', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Santa Maria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Santa Rosa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Simi Valley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Stockton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sunnyvale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Temecula', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Thousand Oaks', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Torrance', @USER_UID, @USER_UID, NOW(), NOW());  
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vacaville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vallejo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ventura', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Victorville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Visalia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'West Covina', @USER_UID, @USER_UID, NOW(), NOW());

--  States Colorado
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Colorado', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Arvada', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Aurora', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Boulder', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Centennial', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Colorado Springs', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Denver', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fort Collins', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Greeley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lakewood', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pueblo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Thornton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Westminster', @USER_UID, @USER_UID, NOW(), NOW());

--  States Connecticut
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Connecticut', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bridgeport', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hartford', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'New Haven', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Stamford', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Waterbury', @USER_UID, @USER_UID, NOW(), NOW());

--  States District of Columbia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'District of Columbia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Washington', @USER_UID, @USER_UID, NOW(), NOW());

--  States Florida
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Florida', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cape Coral', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Clearwater', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Coral Springs', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Davie', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fort Lauderdale', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gainesville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hialeah', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hollywood', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Jacksonville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lakeland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Miami', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Miami Gardens', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Miramar', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Orlando', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Palm Bay', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pembroke Pines', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pompano Beach', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Port St. Lucie', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'St. Petersburg', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tallahassee', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tampa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'West Palm Beach', @USER_UID, @USER_UID, NOW(), NOW());

--  States Georgia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Georgia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Athens', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Atlanta', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Augusta', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Columbus', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Macon', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sandy Springs', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Savannah', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'South Fulton', @USER_UID, @USER_UID, NOW(), NOW());

--  States Hawaii
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Hawaii', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Honolulu', @USER_UID, @USER_UID, NOW(), NOW());

--  States Idaho
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Idaho', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Boise', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Meridian', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nampa', @USER_UID, @USER_UID, NOW(), NOW());

--  States Illinois
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Illinois', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Aurora', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chicago', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Elgin', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Joliet', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Naperville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Peoria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rockford', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Springfield', @USER_UID, @USER_UID, NOW(), NOW());

--  States Indiana
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Indiana', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Evansville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fort Wayne', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Indianapolis', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'South Bend', @USER_UID, @USER_UID, NOW(), NOW());

--  States Iowa
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Iowa', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cedar Rapids', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Davenport', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Des Moines', @USER_UID, @USER_UID, NOW(), NOW());

--  States Kansas
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kansas', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kansas City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Olathe', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Overland Park', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Topeka', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Wichita', @USER_UID, @USER_UID, NOW(), NOW());

--  States Kentucky
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Kentucky', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lexington', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Louisville', @USER_UID, @USER_UID, NOW(), NOW());

--  States Louisiana
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Louisiana', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Baton Rouge', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lafayette', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'New Orleans', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Shreveport', @USER_UID, @USER_UID, NOW(), NOW());

--  States Maryland
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Maryland', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Baltimore', @USER_UID, @USER_UID, NOW(), NOW());

--  States Massachusetts
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Massachusetts', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Boston', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Brockton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cambridge', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lowell', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lynn', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'New Bedford', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Quincy', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Springfield', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Worcester', @USER_UID, @USER_UID, NOW(), NOW());

--  States Michigan
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Michigan', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ann Arbor', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Clinton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Dearborn', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Detroit', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Grand Rapids', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lansing', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sterling Heights', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Warren', @USER_UID, @USER_UID, NOW(), NOW());

--  States Minnesota
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Minnesota', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Minneapolis', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rochester', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Saint Paul', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States Mississippi
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Mississippi', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Jackson', @USER_UID, @USER_UID, NOW(), NOW());

--  States Missouri
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Missouri', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Columbia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Independence', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kansas City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, "Lee's Summit", @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Springfield', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'St. Louis', @USER_UID, @USER_UID, NOW(), NOW());

--  States Montana
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Montana', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Billings', @USER_UID, @USER_UID, NOW(), NOW());

--  States Nebraska
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Nebraska', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lincoln', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Omaha', @USER_UID, @USER_UID, NOW(), NOW());

--  States Nevada
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Nevada', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Henderson', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Las Vegas', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'North Las Vegas', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Reno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sparks', @USER_UID, @USER_UID, NOW(), NOW());

--  States New Hampshire
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'New Hampshire', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Manchester', @USER_UID, @USER_UID, NOW(), NOW());

--  States New Jersey
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'New Jersey', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Edison', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Elizabeth', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Jersey City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lakewood', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Newark', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Paterson', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Woodbridge', @USER_UID, @USER_UID, NOW(), NOW());

--  States New Mexico
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'New Mexico', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Albuquerque', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Las Cruces', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rio Rancho', @USER_UID, @USER_UID, NOW(), NOW());

--  States New York
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'New York', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Buffalo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'New York', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rochester', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Syracuse', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Yonkers', @USER_UID, @USER_UID, NOW(), NOW());

--  States North Carolina
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'North Carolina', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cary', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Charlotte', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Concord', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Durham', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fayetteville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Greensboro', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'High Point', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Raleigh', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Wilmington', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Winston–Salem', @USER_UID, @USER_UID, NOW(), NOW());

--  States North Dakota
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'North Dakota', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fargo', @USER_UID, @USER_UID, NOW(), NOW());

--  States Ohio
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Ohio', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Akron', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cincinnati', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cleveland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Columbus', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Dayton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Toledo', @USER_UID, @USER_UID, NOW(), NOW());

--  States Oklahoma
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Oklahoma', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Broken Arrow', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Norman', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oklahoma City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tulsa', @USER_UID, @USER_UID, NOW(), NOW());

--  States Oregon
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Oregon', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Eugene', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gresham', @USER_UID, @USER_UID, NOW(), NOW()); 
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hillsboro', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Portland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Salem', @USER_UID, @USER_UID, NOW(), NOW());

--  States Pennsylvania
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Pennsylvania', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Allentown', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Philadelphia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pittsburgh', @USER_UID, @USER_UID, NOW(), NOW());

--  States Rhode Island
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Rhode Island', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Providence', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States South Carolina
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'South Carolina', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Charleston', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Columbia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'North Charleston', @USER_UID, @USER_UID, NOW(), NOW());

--  States South Dakota
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'South Dakota', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sioux Falls', @USER_UID, @USER_UID, NOW(), NOW());

--  States Tennessee
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Tennessee', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chattanooga', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Clarksville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Knoxville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Memphis', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Murfreesboro', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Nashville', @USER_UID, @USER_UID, NOW(), NOW());

--  States Texas
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Texas', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Abilene', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Allen', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Amarillo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Arlington', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Austin', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Beaumont', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Brownsville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Carrollton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'College Station', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Corpus Christi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Dallas', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Denton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Edinburg', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'El Paso', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fort Worth', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Frisco', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Garland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Grand Prairie', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Houston', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Irving', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Killeen', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Laredo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'League City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lewisville', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lubbock', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'McAllen', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'McKinney', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mesquite', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Midland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Odessa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pasadena', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pearland', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Plano', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Richardson', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Round Rock', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'San Antonio', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sugar Land', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tyler', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Waco', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Wichita Falls', @USER_UID, @USER_UID, NOW(), NOW());

--  States Utah
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Utah', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Provo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Salt Lake City', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'West Jordan', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'West Valley City', @USER_UID, @USER_UID, NOW(), NOW());

--  States Virginia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Virginia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Alexandria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chesapeake', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Hampton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Newport News', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Norfolk', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Richmond', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Roanoke', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Virginia Beach', @USER_UID, @USER_UID, NOW(), NOW());

--  States Washington
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Washington', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bellevue', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Everett', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Federal Way', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Kent', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Renton', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Seattle', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Spokane', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Spokane Valley', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Tacoma', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vancouver', @USER_UID, @USER_UID, NOW(), NOW());

--  States Wisconsin
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Wisconsin', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Green Bay', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Madison', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Milwaukee', @USER_UID, @USER_UID, NOW(), NOW());
