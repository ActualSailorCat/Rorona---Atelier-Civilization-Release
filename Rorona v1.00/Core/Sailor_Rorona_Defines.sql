--=============================================
-- Rorona / Defines
--=============================================
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_SAILOR_RORONA',	'KIND_LEADER');

-----------------------------------------------	
-- Leaders
-----------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								Sex,		InheritFrom,		SceneLayers)
VALUES	('LEADER_SAILOR_RORONA',	'LOC_LEADER_SAILOR_RORONA_NAME',	'Female',	'LEADER_DEFAULT',	4);	

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,				LeaderType,					CapitalName)
VALUES	('CIVILIZATION_SAILOR_ATLEER',	'LEADER_SAILOR_RORONA',		'LOC_CITY_NAME_SAILOR_ARLAND');

-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_SAILOR_RORONA',	'LOC_PEDIA_LEADERS_PAGE_LEADER_SAILOR_RORONA_QUOTE');	

-----------------------------------------------	
-- LoadingInfo
-----------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage, 					ForegroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_SAILOR_RORONA',	'LEADER_SAILOR_RORONA_BACKGROUND',	'LEADER_SAILOR_RORONA_NEUTRAL',		0);	
