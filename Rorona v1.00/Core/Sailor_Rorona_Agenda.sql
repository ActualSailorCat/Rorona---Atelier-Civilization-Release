--=============================================
-- Rorona / Agenda
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,							Kind)
VALUES	('TRAIT_AGENDA_SAILOR_RORONA',	'KIND_TRAIT');

-----------------------------------------------	
-- Agendas
-----------------------------------------------	
INSERT INTO Agendas
		(AgendaType,				Name,								Description)
VALUES	('AGENDA_SAILOR_RORONA',	'LOC_AGENDA_SAILOR_RORONA_NAME',	'LOC_AGENDA_SAILOR_RORONA_DESCRIPTION');

-----------------------------------------------	
-- Traits
-----------------------------------------------	
INSERT INTO Traits
		(TraitType,						Name,					Description)
VALUES	('TRAIT_AGENDA_SAILOR_RORONA',	'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');

-----------------------------------------------	
-- AgendaTraits
-----------------------------------------------	
INSERT INTO AgendaTraits
		(AgendaType,						TraitType)
VALUES	('AGENDA_SAILOR_RORONA',			'TRAIT_AGENDA_SAILOR_RORONA');

-----------------------------------------------	
-- TraitModifiers
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_AGENDA_SAILOR_RORONA',		'AGENDA_SAILOR_RORONA_HIGH'),
		('TRAIT_AGENDA_SAILOR_RORONA',		'AGENDA_SAILOR_RORONA_LOW'),
		('TRAIT_AGENDA_SAILOR_RORONA',		'AGENDA_SAILOR_RORONA_PIE');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,									SubjectRequirementSetId)
VALUES	('AGENDA_SAILOR_RORONA_HIGH',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_RORONA_AGENDA_REQUIRES_HIGH'),
		('AGENDA_SAILOR_RORONA_LOW',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_RORONA_AGENDA_REQUIRES_LOW'),
		('AGENDA_SAILOR_RORONA_PIE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_RORONA_AGENDA_REQUIRES_PIE');
-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,						Name,							Value)
VALUES	('AGENDA_SAILOR_RORONA_HIGH',		'InitialValue',					10),
		('AGENDA_SAILOR_RORONA_HIGH',		'StatementKey',					'LOC_DIPLO_KUDA_LEADER_SAILOR_RORONA_REASON_HIGH'),
		('AGENDA_SAILOR_RORONA_HIGH',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SAILOR_RORONA_HIGH'),
		('AGENDA_SAILOR_RORONA_LOW',		'InitialValue',					-12),
		('AGENDA_SAILOR_RORONA_LOW',		'StatementKey',					'LOC_DIPLO_KUDA_LEADER_SAILOR_RORONA_REASON_LOW'),
		('AGENDA_SAILOR_RORONA_LOW',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SAILOR_RORONA_LOW'),
		('AGENDA_SAILOR_RORONA_PIE',		'InitialValue',					7),
		('AGENDA_SAILOR_RORONA_PIE',		'StatementKey',					'LOC_DIPLO_KUDA_LEADER_SAILOR_RORONA_REASON_PIE'),
		('AGENDA_SAILOR_RORONA_PIE',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SAILOR_RORONA_PIE');

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('SAILOR_RORONA_AGENDA_REQUIRES_HIGH',		'REQUIREMENTSET_TEST_ALL'),
		('SAILOR_RORONA_AGENDA_REQUIRES_LOW',		'REQUIREMENTSET_TEST_ALL'),
		('SAILOR_RORONA_AGENDA_REQUIRES_PIE',		'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('SAILOR_RORONA_AGENDA_REQUIRES_HIGH',		'REQUIRES_MET_10_TURNS_AGO'),
		('SAILOR_RORONA_AGENDA_REQUIRES_HIGH',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SAILOR_RORONA_AGENDA_REQUIRES_HIGH',		'REQUIRES_HAS_HIGH_INCOME'),
		('SAILOR_RORONA_AGENDA_REQUIRES_LOW',		'REQUIRES_MET_10_TURNS_AGO'),
		('SAILOR_RORONA_AGENDA_REQUIRES_LOW',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SAILOR_RORONA_AGENDA_REQUIRES_LOW',		'REQUIRES_HAS_LOW_INCOME'),
		('SAILOR_RORONA_AGENDA_REQUIRES_PIE',		'SAILOR_RORONA_REQUIRES_PIE');

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('SAILOR_RORONA_REQUIRES_PIE',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED');
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments 
		(RequirementId,								Name,					Value) 
VALUES	('SAILOR_RORONA_REQUIRES_PIE',				'ResourceType',			'RESOURCE_SAILOR_PIES');

-----------------------------------------------	
-- HistoricalAgendas
-----------------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_SAILOR_RORONA',	'AGENDA_SAILOR_RORONA');

-----------------------------------------------	
-- ExclusiveAgendas
-----------------------------------------------	
INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_SAILOR_RORONA',	'AGENDA_MONEY_GRUBBER');

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,						Context,		Text)
VALUES	('AGENDA_SAILOR_RORONA_HIGH',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SAILOR_RORONA_LOW',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SAILOR_RORONA_PIE',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
