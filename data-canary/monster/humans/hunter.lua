local mType = Game.createMonsterType("Hunter")
local monster = {}

monster.description = "a hunter"
monster.experience = 180
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 11
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "North of Mount Sternum, Plains of Havoc, Outlaw Camp, Dark Cathedral, Femor Hills, \z
		Maze of Lost Souls, north of the Amazon Camp, at the entrance and in the Hero Cave, \z
		a castle tower at Elvenbane, Trade Quarter, Smuggler camp on Tyrsung, Formorgar Mines.",
}

monster.health = 180
monster.maxHealth = 180
monster.race = "blood"
monster.corpse = 18138
monster.speed = 105
monster.manaCost = 530

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Guess who we're hunting, hahaha!", yell = false },
	{ text = "Guess who we are hunting!", yell = false },
	{ text = "Bullseye!", yell = false },
	{ text = "You'll make a nice trophy!", yell = false },
}

monster.loot = {
	{ id = 2920, chance = 3300 }, -- torch
	{ name = "gold coin", chance = 90000, maxCount = 60 },
	{ id = 3030, chance = 150 }, -- small ruby
	{ id = 3085, chance = 100 }, -- dragon necklace
	{ id = 3350, chance = 5770 }, -- bow
	{ id = 3354, chance = 5050 }, -- brass helmet
	{ id = 3447, chance = 82000, maxCount = 7 }, -- arrow
	{ id = 3586, chance = 20300, maxCount = 2 }, -- orange
	{ id = 3601, chance = 11370, maxCount = 2 }, -- roll
	{ id = 5875, chance = 1000 }, -- sniper gloves
	{ id = 7394, chance = 190 }, -- wolf trophy
	{ id = 7397, chance = 520 }, -- deer trophy
	{ id = 7400, chance = 70 }, -- lion trophy
	{ id = 11469, chance = 3000 }, -- hunter's quiver
	{ id = 3575, chance = 100 }, -- wood cape
	{ id = 3571, chance = 100 }, -- ranger's cloack
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20 },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -120, range = 7, shootEffect = CONST_ANI_ARROW, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 5 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
