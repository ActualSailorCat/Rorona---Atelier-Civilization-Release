-----------------------------------------------
-- Colors
-----------------------------------------------
INSERT INTO Colors
        (Type,								 Color)
VALUES  ('COLOR_SAILOR_RORONA_PRIMARY',		'239,229,231,255'),
        ('COLOR_SAILOR_RORONA_SECONDARY',	'214,105,140,255'),
		('COLOR_SAILOR_RORONA_PRIMARY2',	'79,101,177,255'),
        ('COLOR_SAILOR_RORONA_SECONDARY2',	'138,173,215,255'),
		('COLOR_SAILOR_RORONA_PRIMARY3',	'99,107,132,255'),
        ('COLOR_SAILOR_RORONA_SECONDARY3',	'126,178,186,255');

-----------------------------------------------
-- PlayerColors
-----------------------------------------------
INSERT INTO PlayerColors (
		Type,
		Usage, 
		PrimaryColor, 
		SecondaryColor, 
		Alt1PrimaryColor, 
		Alt1SecondaryColor, 
		Alt2PrimaryColor, 
		Alt2SecondaryColor, 
		Alt3PrimaryColor, 
		Alt3SecondaryColor)
VALUES	('LEADER_SAILOR_RORONA',
		'Unique',
		'COLOR_SAILOR_RORONA_PRIMARY',
		'COLOR_SAILOR_RORONA_SECONDARY',
		'COLOR_SAILOR_RORONA_SECONDARY',
		'COLOR_SAILOR_RORONA_PRIMARY',
		'COLOR_SAILOR_ATLEER_B_PRIMARY',
		'COLOR_SAILOR_ATLEER_B_SECONDARY',
		'COLOR_SAILOR_ATLEER_C_PRIMARY',
		'COLOR_SAILOR_ATLEER_C_SECONDARY');