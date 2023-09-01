return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["poodle"] = {
		label = "Poodle",
		weight = 500,
		stack = false,
		close = true,
		description = "Poodle",
		client = {
			image = "animal_dog_poodle.png",
		}
	},

	["ammo_pistol"] = {
		label = "Pistol (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Pistol Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["boatticket"] = {
		label = "Boat Ticket",
		weight = 0,
		stack = true,
		close = true,
		description = "used for boat travel",
		client = {
			image = "boatticket.png",
		}
	},

	["ammo_shotgun"] = {
		label = "Shotgun (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Shotgun Ammo",
		client = {
			image = "ammo_shotgun.png",
		}
	},

	["collie"] = {
		label = "Collie",
		weight = 500,
		stack = false,
		close = true,
		description = "Collie",
		client = {
			image = "animal_dog_collie.png",
		}
	},

	["ammo_arrow"] = {
		label = "Arrow (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Arrow",
		client = {
			image = "ammo_arrow.png",
		}
	},

	["horsebrush"] = {
		label = "Horse Brush",
		weight = 10,
		stack = true,
		close = true,
		description = "brush used to clean your horse",
		client = {
			image = "horsebrush.png",
		}
	},

	["ammo_rifle"] = {
		label = "Rifle (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Rifle Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["indiancigar"] = {
		label = "Indian Cigar",
		weight = 50,
		stack = true,
		close = true,
		description = "indian cigar",
		client = {
			image = "indiancigar.png",
		}
	},

	["indtobacco"] = {
		label = "Indian Tobacco",
		weight = 10,
		stack = true,
		close = true,
		description = "indian tobacco",
		client = {
			image = "indtobacco.png",
		}
	},

	["firstaid"] = {
		label = "Firstaid",
		weight = 0,
		stack = true,
		close = true,
		description = "used for firstaid",
		client = {
			image = "firstaid.png",
		}
	},

	["sheperd"] = {
		label = "Shepherd",
		weight = 500,
		stack = false,
		close = true,
		description = "Australian Sheperd",
		client = {
			image = "animal_dog_australianshepherd.png",
		}
	},

	["lab"] = {
		label = "Lab",
		weight = 500,
		stack = false,
		close = true,
		description = "Lab",
		client = {
			image = "animal_dog_lab.png",
		}
	},

	["goldpanner"] = {
		label = "Gold Panner",
		weight = 500,
		stack = false,
		close = true,
		description = "Gold Panner",
		client = {
			image = "goldpanner.png",
		}
	},

	["bayretriever"] = {
		label = "Retriever",
		weight = 500,
		stack = false,
		close = true,
		description = "Ches Bay Retriever",
		client = {
			image = "animal_dog_chesbayretriever.png",
		}
	},

	["foxhound"] = {
		label = "Fox Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "American Foxhound",
		client = {
			image = "animal_dog_americanfoxhound.png",
		}
	},

	["husky"] = {
		label = "Husky",
		weight = 500,
		stack = false,
		close = true,
		description = "Husky",
		client = {
			image = "animal_dog_husky.png",
		}
	},

	["ammo_revolver"] = {
		label = "Revolver (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Revolver Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["fertilizer"] = {
		label = "Fertilizer",
		weight = 100,
		stack = true,
		close = true,
		description = "feed for growing plants",
		client = {
			image = "fertilizer.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "sugar.png",
		}
	},

	["coonhound"] = {
		label = "Coon Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "Bluetick Coonhound",
		client = {
			image = "animal_dog_bluetickcoonhound.png",
		}
	},

	["street"] = {
		label = "Street",
		weight = 500,
		stack = false,
		close = true,
		description = "Street",
		client = {
			image = "animal_dog_street.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "used for painkillers",
		client = {
			image = "painkillers.png",
		}
	},

	["carrot"] = {
		label = "Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "carrot.png",
		}
	},

	["gold_ore"] = {
		label = "Gold Ore",
		weight = 500,
		stack = false,
		close = true,
		description = "Gold ore",
		client = {
			image = "gold_ore.png",
		}
	},

	["bread"] = {
		label = "Bread Roll",
		weight = 125,
		stack = true,
		close = true,
		description = "Bread Roll",
		client = {
			image = "bread.png",
		}
	},

	["catahoulacur"] = {
		label = "Catahoula Cur",
		weight = 500,
		stack = false,
		close = true,
		description = "Catahoula Cur",
		client = {
			image = "animal_dog_catahoularcur.png",
		}
	},

	["indtobaccoseed"] = {
		label = "Indian Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "indian tobacco seed",
		client = {
			image = "indtobaccoseed.png",
		}
	},

	["ammo_repeater"] = {
		label = "Repeater (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["ifaks"] = {
		label = "Ifaks",
		weight = 100,
		stack = true,
		close = true,
		description = "product  for Ifaks",
		client = {
			image = "ifaks.png",
		}
	},

	["hound"] = {
		label = "Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "Hound",
		client = {
			image = "animal_dog_hound.png",
		}
	},
}