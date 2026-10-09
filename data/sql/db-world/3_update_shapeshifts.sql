-- Alliance default shapeshifts is the Night Elf ones.
SET @Human_Cat_Form := 892;
SET @Human_Bear_Form := 2281;
SET @Human_DireBear_Form := 2281;
SET @Human_EpicFlight_Form := 21243;
SET @Human_Flight_Form := 20857;

SET @Dwarf_Cat_Form := 892;
SET @Dwarf_Bear_Form := 2281;
SET @Dwarf_DireBear_Form := 2281;
SET @Dwarf_EpicFlight_Form := 21243;
SET @Dwarf_Flight_Form := 20857;

SET @Gnome_Cat_Form := 892;
SET @Gnome_Bear_Form := 2281;
SET @Gnome_DireBear_Form := 2281;
SET @Gnome_EpicFlight_Form := 21243;
SET @Gnome_Flight_Form := 20857;

SET @Draenei_Cat_Form := 892;
SET @Draenei_Bear_Form := 2281;
SET @Draenei_DireBear_Form := 2281;
SET @Draenei_EpicFlight_Form := 21243;
SET @Draenei_Flight_Form := 20857;

-- Horde default shapeshifts is the Tauren ones.
SET @Orc_Cat_Form := 8571;
SET @Orc_Bear_Form := 2289;
SET @Orc_DireBear_Form := 2289;
SET @Orc_EpicFlight_Form := 21244;
SET @Orc_Flight_Form := 20872;

SET @Undead_Cat_Form := 8571;
SET @Undead_Bear_Form := 2289;
SET @Undead_DireBear_Form := 2289;
SET @Undead_EpicFlight_Form := 21244;
SET @Undead_Flight_Form := 20872;

SET @Troll_Cat_Form := 8571;
SET @Troll_Bear_Form := 2289;
SET @Troll_DireBear_Form := 2289;
SET @Troll_EpicFlight_Form := 21244;
SET @Troll_Flight_Form := 20872;

SET @BloodElf_Cat_Form := 8571;
SET @BloodElf_Bear_Form := 2289;
SET @BloodElf_DireBear_Form := 2289;
SET @BloodElf_EpicFlight_Form := 21244;
SET @BloodElf_Flight_Form := 20872;

-- Human, Orc, Dwarf, Undead, Gnome, Troll, Blood Elf and Draenei.
DELETE FROM `player_shapeshift_model` WHERE `RaceID` IN (1, 2, 3, 5, 7, 8, 10, 11);
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`) VALUES
(1, 1, 255, 2, @Human_Cat_Form),
(5, 1, 255, 2, @Human_Bear_Form),
(8, 1, 255, 2, @Human_DireBear_Form),
(27, 1, 255, 2, @Human_EpicFlight_Form),
(29, 1, 255, 2, @Human_Flight_Form),

(1, 2, 255, 2, @Orc_Cat_Form),
(5, 2, 255, 2, @Orc_Bear_Form),
(8, 2, 255, 2, @Orc_DireBear_Form),
(27, 2, 255, 2, @Orc_EpicFlight_Form),
(29, 2, 255, 2, @Orc_Flight_Form),

(1, 3, 255, 2, @Dwarf_Cat_Form),
(5, 3, 255, 2, @Dwarf_Bear_Form),
(8, 3, 255, 2, @Dwarf_DireBear_Form),
(27, 3, 255, 2, @Dwarf_EpicFlight_Form),
(29, 3, 255, 2, @Dwarf_Flight_Form),

(1, 5, 255, 2, @Undead_Cat_Form),
(5, 5, 255, 2, @Undead_Bear_Form),
(8, 5, 255, 2, @Undead_DireBear_Form),
(27, 5, 255, 2, @Undead_EpicFlight_Form),
(29, 5, 255, 2, @Undead_Flight_Form),

(1, 7, 255, 2, @Gnome_Cat_Form),
(5, 7, 255, 2, @Gnome_Bear_Form),
(8, 7, 255, 2, @Gnome_DireBear_Form),
(27, 7, 255, 2, @Gnome_EpicFlight_Form),
(29, 7, 255, 2, @Gnome_Flight_Form),

(1, 8, 255, 2, @Troll_Cat_Form),
(5, 8, 255, 2, @Troll_Bear_Form),
(8, 8, 255, 2, @Troll_DireBear_Form),
(27, 8, 255, 2, @Troll_EpicFlight_Form),
(29, 8, 255, 2, @Troll_Flight_Form),

(1, 10, 255, 2, @BloodElf_Cat_Form),
(5, 10, 255, 2, @BloodElf_Bear_Form),
(8, 10, 255, 2, @BloodElf_DireBear_Form),
(27, 10, 255, 2, @BloodElf_EpicFlight_Form),
(29, 10, 255, 2, @BloodElf_Flight_Form),

(1, 11, 255, 2, @Draenei_Cat_Form),
(5, 11, 255, 2, @Draenei_Bear_Form),
(8, 11, 255, 2, @Draenei_DireBear_Form),
(27, 11, 255, 2, @Draenei_EpicFlight_Form),
(29, 11, 255, 2, @Draenei_Flight_Form);
