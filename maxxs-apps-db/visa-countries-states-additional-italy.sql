-- User ID = @USER_UID
-- Get User ID from table Users
SET @USER_UID = '05dc1eb4-783f-4492-90da-04f43f73a19d';

-- ----------------------------------------------------------------------------------------------
-- Records of states in Italy
SET @COUNTRY_UID = '09cfb8c7-cc77-11ec-a127-00163e08598c';
-- Reference : https://en.wikipedia.org/wiki/Provinces_of_Italy
-- ----------------------------------------------------------------------------------------------

--  States Abruzzo
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Abruzzo', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Chieti', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, "L'Aquila", @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pescara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Teramo', @USER_UID, @USER_UID, NOW(), NOW());
    
--  States Aosta Valley
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Aosta Valley', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Aosta', @USER_UID, @USER_UID, NOW(), NOW());

--  States Apulia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Apulia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bari', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Barletta-Andria-Trani', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Brindisi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Foggia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lecce', @USER_UID, @USER_UID, NOW(), NOW());    
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Taranto', @USER_UID, @USER_UID, NOW(), NOW());

--  States Basilicata
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Basilicata', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Matera', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Potenza', @USER_UID, @USER_UID, NOW(), NOW());

--  States Calabria
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Calabria', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Catanzaro', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cosenza', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Crotone', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Reggio Calabria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vibo Valentia', @USER_UID, @USER_UID, NOW(), NOW());

--  States Campania
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Campania', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Avellino', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Benevento', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Caserta', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Naples', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Salerno', @USER_UID, @USER_UID, NOW(), NOW());

--  States Emilia-Romagna
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Emilia-Romagna', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bologna', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ferrara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Forlì-Cesena', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Modena', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Parma', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Piacenza', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ravenna', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Reggio Emilia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rimini', @USER_UID, @USER_UID, NOW(), NOW());

--  States Friuli-Venezia Giulia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Friuli-Venezia Giulia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Gorizia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pordenone', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Trieste', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Udine', @USER_UID, @USER_UID, NOW(), NOW());

--  States Lazio
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Lazio', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Frosinone', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Latina', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rieti', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rome', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Viterbo', @USER_UID, @USER_UID, NOW(), NOW());

--  States Liguria
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Liguria', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Genoa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Imperia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'La Spezia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Savona', @USER_UID, @USER_UID, NOW(), NOW());

--  States Lombardy
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Lombardy', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Bergamo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Brescia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Como', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cremona', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lecco', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lodi', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Mantua', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Milan', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Monza and Brianza', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pavia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sondrio', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Varese', @USER_UID, @USER_UID, NOW(), NOW());

--  States Marche
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Marche', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ancona', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ascoli Piceno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Fermo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Macerata', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pesaro and Urbino', @USER_UID, @USER_UID, NOW(), NOW());

--  States Molise
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Molise', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Campobasso', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Isernia', @USER_UID, @USER_UID, NOW(), NOW());

--  States Piedmont
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Piedmont', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Alessandria', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Asti', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Biella', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cuneo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Novara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Turin', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Verbano-Cusio-Ossola', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vercelli', @USER_UID, @USER_UID, NOW(), NOW());

--  States Sardinia
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sardinia', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Cagliari', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'DavNuoroenport', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Oristano', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Sassari', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'South Sardinia', @USER_UID, @USER_UID, NOW(), NOW());

--  States Sicily
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Sicily', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Agrigento', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Caltanissetta', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Catania', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Enna', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Messina', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Palermo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Ragusa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Syracuse', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Trapani', @USER_UID, @USER_UID, NOW(), NOW());

--  States Trentino-South Tyrol
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Trentino-South Tyrol', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'South Tyrol', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Trento', @USER_UID, @USER_UID, NOW(), NOW());

--  States Tuscany
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Tuscany', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Arezzo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Florence', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Grosseto', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Livorno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Lucca', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Massa and Carrara', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pisa', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Pistoia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Prato', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Siena', @USER_UID, @USER_UID, NOW(), NOW());

--  States Umbria
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Umbria', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Perugia', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Terni', @USER_UID, @USER_UID, NOW(), NOW());

--  States Veneto
SET @STATES_UID = UUID();
INSERT INTO `states` VALUES (@STATES_UID, @COUNTRY_UID, 'Veneto', @USER_UID, @USER_UID, NOW(), NOW());
--  -- Cities
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Belluno', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Padua', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Rovigo', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Treviso', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Venice', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Verona', @USER_UID, @USER_UID, NOW(), NOW());
    INSERT INTO `cities` VALUES (UUID(), @STATES_UID, 'Vicenza', @USER_UID, @USER_UID, NOW(), NOW());
