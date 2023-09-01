if cache.game == 'fivem' then
	return {
		anim = {
			['eating'] = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		},
		prop = {
			['burger'] = { model = `prop_cs_burger_01`, pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		}
	}
else
	return {
		anim = {
			['drinking'] = { dict = 'amb_rest_drunk@world_human_drinking@male_a@idle_a', clip = 'idle_a' },
			['eating'] = { dict = 'mech_inventory@eating@multi_bite@sphere_d8-2_sandwich', clip = 'quick_right_hand' },
		},
		prop = {
			['bread'] = { model = 'P_BREAD05X', bone = "SKEL_R_HAND", pos = vec3(0.1, -0.01, -0.07), rot = vec3(-90.0, 100.0, 0.0) },
			['bottle'] = { model = 'P_BOTTLE008X', bone = "SKEL_R_HAND", pos = vec3(0.05, -0.07, -0.05), rot = vec3(-75.0, 60.0, 0.0) },
		},
	}
end