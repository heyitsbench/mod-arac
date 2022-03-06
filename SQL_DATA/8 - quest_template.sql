UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = 1791
			WHERE `quest_template_addon`.allowableclasses != 0 AND AllowableRaces != 0;
