/*

It's assumed you haven't changed the race, racemask or class
"Template for Custom Race.sql" so this will aim to delete:

Race = 12
RaceMask = 2048
Class = 12

*/

SELECT `race` + 11 INTO @race FROM `playercreateinfo` WHERE `race` = 1 LIMIT 1; -- @race

SELECT `racemask` + 2047 INTO @raceMask FROM `playercreateinfo_spell_custom` WHERE `racemask` = 1 LIMIT 1; -- @raceMask

SELECT `class` + 11 INTO @class FROM `player_class_stats` WHERE `Class` = 1 LIMIT 1; -- @class

DELETE FROM `playercreateinfo` WHERE `race` = @race;
DELETE FROM `player_race_stats` WHERE `Race` = @race;
DELETE FROM `player_class_stats` WHERE `Class` = @class;
DELETE FROM `playercreateinfo_action` WHERE `race` = @race;
DELETE FROM `playercreateinfo_item` WHERE `race` = @race;
DELETE FROM `playercreateinfo_spell_custom` WHERE `racemask` = @raceMask;
