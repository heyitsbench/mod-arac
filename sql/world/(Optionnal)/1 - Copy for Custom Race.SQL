/*

This query allows you to copy information from a specific breed to add new information.
In this example, the code copies the information from RACE 1 (Human) to add it to race 12 (Fel'Orc).

*/

-- PlayerCreateInfo
REPLACE INTO `playercreateinfo`
	SELECT race+11, class, map, zone, position_x, position_y, position_z, orientation FROM `playercreateinfo` WHERE race = 1;

-- PlayerLevelStats
REPLACE INTO `player_levelstats`
	SELECT race+11, class, `level`, str, agi, sta, inte, spi FROM `player_levelstats` WHERE race = 1;

-- PlayerCreateInfo_Action
REPLACE INTO `playercreateinfo_action`
	SELECT race+11, class, button, `action`, `type` FROM `playercreateinfo_action` WHERE race = 1;

-- PlayerCreateInfo_Item
REPLACE INTO `playercreateinfo_item`
	SELECT race+11, class, itemid, amount FROM `playercreateinfo_item` WHERE race = 1;

-- PlayerCreateInfo_Spell
REPLACE INTO `playercreateinfo_spell`
	SELECT racemask+2047, classmask, Spell, Note FROM `playercreateinfo_spell` WHERE racemask = 1;

-- PlayerCreateInfo_Spell
REPLACE INTO `playercreateinfo_spell_custom`
	SELECT racemask+2047, classmask, Spell, Note FROM `playercreateinfo_spell_custom` WHERE racemask = 1;
