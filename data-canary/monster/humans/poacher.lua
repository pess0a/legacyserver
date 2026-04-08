local mType = Game.createMonsterType("Poacher")
local monster = {}

monster.description = "a poacher"
monster.experience = 150
monster.outfit = {
	lookType = 129,
	lookHead = 60,
	lookBody = 118,
	lookLegs = 118,
	lookFeet = 116,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 376
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "South of Elvenbane and Ab'Dendriel, Ferngrims Gate, Northeast of Carlin, \z
		Edron Hunter Camps, Yalahar - Trade Quarter and Foreigner Quarter.",
}

monster.health = 200
monster.maxHealth = 200
monster.race = "blood"
monster.corpse = 18206
monster.speed = 99
monster.manaCost = 530

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
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
	{ text = "You will not live to tell anyone!", yell = false },
	{ text = "You are my game today!", yell = false },
	{ text = "Look what has stepped into my trap!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 90000, maxCount = 60 },
	{ id = 2920, chance = 4180 }, -- torch
	{ id = 3571, chance = 100 }, -- ranger's cloack
	{ name = "arrow", chance = 50500, maxCount = 5 },
	{ name = "poison arrow", chance = 2930, maxCount = 3 },
	{ id = 3552, chance = 5000 }, -- leather boots
	{ id = 3362, chance = 2000 }, -- studded legs
	{ name = "roll", chance = 11110, maxCount = 2 },
	{ id = 5910, chance = 5000 }, -- green piece of cloth
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -20, maxDamage = -35, range = 7, shootEffect = CONST_ANI_ARROW, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.33,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
