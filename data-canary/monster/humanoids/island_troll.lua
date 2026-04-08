local mType = Game.createMonsterType("Island Troll")
local monster = {}

monster.description = "an island troll"
monster.experience = 70
monster.outfit = {
	lookType = 282,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 277
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Goroma.",
}

monster.health = 130
monster.maxHealth = 130
monster.race = "blood"
monster.corpse = 865
monster.speed = 80
monster.manaCost = 290

monster.changeTarget = {
	interval = 5000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
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
	{ text = "Hmmm, turtles", yell = false },
	{ text = "Hmmm, dogs", yell = false },
	{ text = "Hmmm, worms", yell = false },
	{ text = "Groar", yell = false },
	{ text = "Gruntz!", yell = false },
}

monster.loot = {
	{ id = 3003, chance = 8000 }, -- rope
	{ id = 3031, chance = 60000, maxCount = 10 }, -- gold coin
	{ id = 3054, chance = 70 }, -- silver amulet
	{ id = 3268, chance = 18000 }, -- hand axe
	{ id = 3336, chance = 5000 }, -- studded club
	{ id = 3355, chance = 10000 }, -- leather helmet
	{ id = 5096, chance = 5000 }, -- mango
	{ id = 5901, chance = 50000, maxCount = 2 }, -- wood
	{ id = 901, chance = 40 }, -- marlin
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -12, maxDamage = -46 },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_ICEDAMAGE, minDamage = -8, maxDamage = -16, effect = CONST_ME_WATERSPLASH, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
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
