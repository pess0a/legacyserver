local mType = Game.createMonsterType("Assassin")
local monster = {}

monster.description = "an assassin"
monster.experience = 250
monster.outfit = {
	lookType = 152,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 224
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Dark Cathedral, Trade Quarter, Factory Quarter, Foreigner Quarter.",
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 18046
monster.speed = 180
monster.manaCost = 450

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 20,
	damage = 10,
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
	canPushCreatures = true,
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
	{ text = "Die!", yell = false },
	{ text = "Feel the hand of death!", yell = false },
	{ text = "You are on my deathlist!", yell = false },
}

monster.loot = {
	{ id = 2920, chance = 29980, maxCount = 2 }, -- torch
	{ id = 3031, chance = 100000, maxCount = 80 }, -- gold coin
	{ id = 3291, chance = 9500 }, -- knife
	{ id = 3048, chance = 4000 }, -- might ring
	{ id = 31737, chance = 25 }, --- item do addon do assassin
	{ id = 7386, chance = 50 }, -- mercenary sword
	{ id = 3292, chance = 4000 }, -- combat knife
	{ id = 3404, chance = 100 }, -- leopard armor
	{ id = 3405, chance = 100 }, -- horseman helmet
	{ id = 7366, chance = 4200, maxCount = 7 }, -- viper star
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -125 },
	{ name = "combat", interval = 2000, chance = 70, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -125, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
