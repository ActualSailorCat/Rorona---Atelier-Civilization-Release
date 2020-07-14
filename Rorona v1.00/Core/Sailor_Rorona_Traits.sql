--=============================================
-- Rorona / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types 
		(Type,										Kind)
VALUES	('TRAIT_LEADER_SAILOR_RORONA_UA',			'KIND_TRAIT'),
		('RESOURCE_SAILOR_PIES',					'KIND_RESOURCE');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_SAILOR_RORONA_UA',			'LOC_TRAIT_LEADER_SAILOR_RORONA_UA_NAME',			'LOC_TRAIT_LEADER_SAILOR_RORONA_UA_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SAILOR_RORONA',			'TRAIT_LEADER_SAILOR_RORONA_UA');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,									Permanent)
VALUES	('SAILOR_RORONA_PIE_SHOP',			'MODIFIER_SINGLE_CITY_GRANT_RESOURCE_IN_CITY',	1);

INSERT INTO ModifierArguments
		(ModifierId,						Name,				Value)
VALUES	('SAILOR_RORONA_PIE_SHOP',			'ResourceType',		'RESOURCE_SAILOR_PIES'),
		('SAILOR_RORONA_PIE_SHOP',			'Amount',			1);

-----------------------------------------------
-- Resource
-----------------------------------------------
INSERT INTO Resources
		(ResourceType,				Name,								ResourceClassType,		Happiness,	Frequency)
VALUES	('RESOURCE_SAILOR_PIES',	'LOC_RESOURCE_SAILOR_PIES_NAME',	'RESOURCECLASS_LUXURY', 6,			1);