/*

This query allows you to copy information from a specific breed to add new information.
In this example, the code copies the information from RACE 1 (Human) to add it to race 12 (Fel'Orc).

*/

SELECT `race` + 11 INTO @race FROM `playercreateinfo` WHERE `race` = 1 LIMIT 1; -- @race

SELECT `racemask` + 2047 INTO @raceMask FROM `playercreateinfo_spell_custom` WHERE `racemask` = 1 LIMIT 1; -- @raceMask

SELECT `class` + 11 INTO @class FROM `player_class_stats` WHERE `Class` = 1 LIMIT 1; -- @class

-- PlayerCreateInfo
REPLACE INTO `playercreateinfo`
	SELECT @race, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 1;

-- Player_Race_Stats
REPLACE INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
	SELECT @race, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit` FROM `player_race_stats` WHERE `race` = 1;

-- Player_Class_Stats
REPLACE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
	SELECT @class, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit` FROM `player_class_stats` WHERE `Class` = 1;

-- PlayerCreateInfo_Action
REPLACE INTO `playercreateinfo_action`
	SELECT @race, `class`, `button`, `action`, `type` FROM `playercreateinfo_action` WHERE `race` = 1;

-- PlayerCreateInfo_Item
REPLACE INTO `playercreateinfo_item`
	SELECT @race, `class`, `itemid`, `amount`, `note` FROM `playercreateinfo_item` WHERE `race` = 1;

-- PlayerCreateInfo_Spell
REPLACE INTO `playercreateinfo_spell_custom`
	SELECT @raceMask, `classmask`, `Spell`, `Note` FROM `playercreateinfo_spell_custom` WHERE `racemask` = 1;
