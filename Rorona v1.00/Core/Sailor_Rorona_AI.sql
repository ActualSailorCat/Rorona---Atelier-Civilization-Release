--=============================================
-- Rorona / AI
--=============================================
-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('SAILOR_RORONA_Civics'),
		('SAILOR_RORONA_Techs'),
		('SAILOR_RORONA_Buildings'),
		('SAILOR_RORONA_Districts'),
		('SAILOR_RORONA_Improvements'),
		('SAILOR_RORONA_PseudoYields'),
		('SAILOR_RORONA_Yields'),
		('SAILOR_RORONA_Units'),
		('SAILOR_RORONA_Settle'),
		('SAILOR_RORONA_Alliances'),
		('SAILOR_RORONA_Diploaction'),
		('SAILOR_RORONA_Discussions'),
		('SAILOR_RORONA_Resolutions');

-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists	
		(ListType,							AgendaType,							System)
VALUES	('SAILOR_RORONA_Civics',			'TRAIT_AGENDA_SAILOR_RORONA',		'Civics'),
		('SAILOR_RORONA_Techs',				'TRAIT_AGENDA_SAILOR_RORONA',		'Technologies'),
		('SAILOR_RORONA_Buildings',			'TRAIT_AGENDA_SAILOR_RORONA',		'Buildings'),
		('SAILOR_RORONA_Districts',			'TRAIT_AGENDA_SAILOR_RORONA',		'Districts'),
		('SAILOR_RORONA_Improvements',		'TRAIT_AGENDA_SAILOR_RORONA',		'Improvements'),
		('SAILOR_RORONA_PseudoYields',		'TRAIT_AGENDA_SAILOR_RORONA',		'PseudoYields'),
		('SAILOR_RORONA_Yields',			'TRAIT_AGENDA_SAILOR_RORONA',		'Yields'),
		('SAILOR_RORONA_Units',				'TRAIT_AGENDA_SAILOR_RORONA',		'Units'),
		('SAILOR_RORONA_Settle',			'TRAIT_AGENDA_SAILOR_RORONA',		'Settle'),
		('SAILOR_RORONA_Alliances',			'TRAIT_AGENDA_SAILOR_RORONA',		'Alliances'),
		('SAILOR_RORONA_Diploaction',		'TRAIT_AGENDA_SAILOR_RORONA',		'DiplomaticActions'),
		('SAILOR_RORONA_Discussions',		'TRAIT_AGENDA_SAILOR_RORONA',		'Discussions'),
		('SAILOR_RORONA_Resolutions',		'TRAIT_AGENDA_SAILOR_RORONA',		'Resolutions');

-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item,								Value)
VALUES	
-- YIELDS
		('SAILOR_RORONA_Yields',			1,			'YIELD_GOLD',						0),		
-- PSEUDOYIELDS
		('SAILOR_RORONA_PseudoYields',		1,			'PSEUDOYIELD_GPP_MERCHANT',			50),
		('SAILOR_RORONA_PseudoYields',		1,			'PSEUDOYIELD_GPP_ENGINEER',			50),
		('SAILOR_RORONA_PseudoYields',		1,			'PSEUDOYIELD_SPACE_RACE',			0),
		('SAILOR_RORONA_PseudoYields',		1,			'PSEUDOYIELD_TECHNOLOGY',			0),
-- UNITS
		('SAILOR_RORONA_Units',				1,			'UNIT_SAILOR_ATLEER_UU',			30),
		('SAILOR_RORONA_Units',				1,			'UNIT_TRADER',						0),
-- BUILDINGS & DISTRICTS			
		('SAILOR_RORONA_Districts',			1,			'DISTRICT_COMMERCIAL_HUB',			50),	
-- IMPROVEMENTS
		('SAILOR_RORONA_Improvements',		1,			'IMPROVEMENT_SAILOR_ATLEER_UI',		50),
-- WONDERS
		('SAILOR_RORONA_Buildings',			1,			'BUILDING_BIG_BEN',					0),
		('SAILOR_RORONA_Buildings',			1,			'BUILDING_GREAT_ZIMBABWE',			0),
-- CIVICS & TECHS
		('SAILOR_RORONA_Civics',			1,			'CIVIC_CRAFTSMANSHIP',				0), 
		('SAILOR_RORONA_Civics',			1,			'CIVIC_MEDIEVAL_FAIRES',			0), 
		('SAILOR_RORONA_Civics',			1,			'CIVIC_GUILDS',						0), 
		('SAILOR_RORONA_Civics',			1,			'CIVIC_MERCANTILISM',				0), 
		('SAILOR_RORONA_Civics',			1,			'CIVIC_EXPLORATION',				0), 
		('SAILOR_RORONA_Techs',				1,			'TECH_CURRENCY',					25), 
		('SAILOR_RORONA_Techs',				1,			'TECH_ECONOMICS',					0),
		('SAILOR_RORONA_Techs',				1,			'TECH_CHEMISTRY',					0),
		('SAILOR_RORONA_Techs',				1,			'TECH_BANKING',						0),
-- ALLIANCES
		('SAILOR_RORONA_Alliances',			1,			'ALLIANCE_ECONOMIC',				0),
-- DIPLOACTION
		('SAILOR_RORONA_Diploaction',		1,			'DIPLOACTION_ALLIANCE_ECONOMIC',	0),
		('SAILOR_RORONA_Diploaction',		1,			'DIPLOACTION_RESIDENT_EMBASSY',		-50),
		('SAILOR_RORONA_Diploaction',		1,			'DIPLOACTION_PROPOSE_TRADE',		50),
		('SAILOR_RORONA_Diploaction',		1,			'DIPLOACTION_VIEW_TRADE',			50),
-- DISCUSSIONS
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_MILITARY',			0),
		('SAILOR_RORONA_Discussions',		1,			'WC_EMERGENCY_CITY_STATE',			0),
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',	0),
		('SAILOR_RORONA_Discussions',		1,			'WC_EMERGENCY_CLIMATE_ACCORDS',		0),
		('SAILOR_RORONA_Discussions',		1,			'WC_EMERGENCY_WORLD_FAIR',			0),
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_SPACE_STATION',		0),
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_RELIGIOUS',			0),
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_BACKSTAB',			0),
		('SAILOR_RORONA_Discussions',		1,			'WC_EMERGENCY_REQUEST_AID',			0),
		('SAILOR_RORONA_Discussions',		0,			'WC_EMERGENCY_NUCLEAR',				0),
		('SAILOR_RORONA_Discussions',		1,			'WC_EMERGENCY_WORLD_GAMES',			0),
-- RESOLUTIONS
		('SAILOR_RORONA_Resolutions',		1,			'WC_RES_LUXURY',					0);
-- SETTLE
INSERT INTO AiFavoredItems
		(ListType,					Item,				Favored,		StringVal,					Value)
VALUES  ('SAILOR_RORONA_Settle',	'Resource Class',	1,				'RESOURCECLASS_BONUS',		50),
		('SAILOR_RORONA_Settle',	'Resource Class',	1,				'RESOURCECLASS_STRATEGIC',	50),
		('SAILOR_RORONA_Settle',	'Resource Class',	1,				'RESOURCECLASS_LUXURY',		50);
-- BUILDINGS
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item,				Value)
SELECT	'SAILOR_RORONA_Buildings',		1,			BuildingType,		50
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';