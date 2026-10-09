-- Alliance default totems is the Dwarf ones.
SET @Human_Fire_Totem := 30754;
SET @Human_Earth_Totem := 30753;
SET @Human_Water_Totem := 30755;
SET @Human_Air_Totem := 30736;

SET @NightElf_Fire_Totem := 30754;
SET @NightElf_Earth_Totem := 30753;
SET @NightElf_Water_Totem := 30755;
SET @NightElf_Air_Totem := 30736;

SET @Gnome_Fire_Totem := 30754;
SET @Gnome_Earth_Totem := 30753;
SET @Gnome_Water_Totem := 30755;
SET @Gnome_Air_Totem := 30736;

-- Horde default totems is the Orc ones.
SET @Undead_Fire_Totem := 30758;
SET @Undead_Earth_Totem := 30757;
SET @Undead_Water_Totem := 30759;
SET @Undead_Air_Totem := 30756;

SET @BloodElf_Fire_Totem := 30758;
SET @BloodElf_Earth_Totem := 30757;
SET @BloodElf_Water_Totem := 30759;
SET @BloodElf_Air_Totem := 30756;

-- Human, Night Elf, Undead, Gnome and Blood Elf.
DELETE FROM `player_totem_model` WHERE `RaceID` IN (1, 4, 5, 7, 10);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, 1, @Human_Fire_Totem),
(2, 1, @Human_Earth_Totem),
(3, 1, @Human_Water_Totem),
(4, 1, @Human_Air_Totem),

(1, 4, @NightElf_Fire_Totem),
(2, 4, @NightElf_Earth_Totem),
(3, 4, @NightElf_Water_Totem),
(4, 4, @NightElf_Air_Totem),

(1, 5, @Undead_Fire_Totem),
(2, 5, @Undead_Earth_Totem),
(3, 5, @Undead_Water_Totem),
(4, 5, @Undead_Air_Totem),

(1, 7, @Gnome_Fire_Totem),
(2, 7, @Gnome_Earth_Totem),
(3, 7, @Gnome_Water_Totem),
(4, 7, @Gnome_Air_Totem),

(1, 10, @BloodElf_Fire_Totem),
(2, 10, @BloodElf_Earth_Totem),
(3, 10, @BloodElf_Water_Totem),
(4, 10, @BloodElf_Air_Totem);
