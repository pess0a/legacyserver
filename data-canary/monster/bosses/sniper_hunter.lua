local mType = Game.createMonsterType("Sniper Hunter")
local monster = {}

monster.description = "a sniper hunter"
monster.experience = 1800
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 3,
	lookMount = 370,
}

monster.bosstiary = {
	bossRaceId = 2643,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 18138
monster.speed = 135
monster.manaCost = 250

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
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
	{ id = 3085, chance = 1000 }, -- dragon necklace
	{ id = 3447, chance = 82000, maxCount = 70 }, -- arrow
	{ id = 3586, chance = 20300, maxCount = 2 }, -- orange
	{ id = 5875, chance = 10000, maxCount = 2 }, -- sniper gloves
	{ id = 7397, chance = 520 }, -- deer trophy
	{ id = 5910, chance = 50000, maxCount = 5 }, -- grenn piece of clooth
	{ id = 11469, chance = 3000 }, -- hunter's quiver
	{ id = 3575, chance = 1000 }, -- wood cape
	{ id = 3571, chance = 2000 }, -- ranger's cloack
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -70, maxDamage = -150 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
