local mType = Game.createMonsterType("Orc Berserker")
local monster = {}

monster.description = "an orc berserker"
monster.experience = 350
monster.outfit = {
	lookType = 8,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 8
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 5000,
	FirstUnlock = 250,
	SecondUnlock = 2500,
	CharmsPoints = 125,
	Stars = 4,
	Occurrence = 0,
	Locations = "Orc Fort.",
}

monster.health = 320
monster.maxHealth = 320
monster.race = "blood"
monster.corpse = 5980
monster.speed = 150
monster.manaCost = 590

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 60,
	health = 40,
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
	{ text = "KRAK ORRRRRRK!", yell = true },
}

monster.loot = {
	{ id = 2914, chance = 830 }, -- lamp
	{ name = "gold coin", chance = 90000, maxCount = 100 },
	{ name = "double axe", chance = 100 },
	{ name = "chain armor", chance = 10000 },
	{ name = "ham", chance = 10400 },
	{ name = "orc tooth", chance = 10000 },
	{ name = "orcish gear", chance = 9400 },
	{ name = "orc leather", chance = 8000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -200 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.30,
	{ name = "speed", interval = 2000, chance = 15, speedChange = 290, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
