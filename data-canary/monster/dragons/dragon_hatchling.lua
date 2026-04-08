local mType = Game.createMonsterType("Dragon Hatchling")
local monster = {}

monster.description = "a dragon hatchling"
monster.experience = 500
monster.outfit = {
	lookType = 271,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 385
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 5000,
	FirstUnlock = 250,
	SecondUnlock = 2500,
	CharmsPoints = 125,
	Stars = 4,
	Occurrence = 0,
	Locations = "Thais Dragon Lair, beneath Fenrock, Darashia Dragon Lair, Venore Dragon Lair, \z
	Edron Dragon Lair, Dragonblaze Peaks, Krailos Steppe. Also summoned by Lizard Dragon Priests.",
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 269
monster.speed = 73
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
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
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Fchu?", yell = false },
	{ text = "Rooawwrr", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 50 },
	{ name = "dragon ham", chance = 83040 },
	{ name = "dragon's tail", chance = 5000 },
	{ name = "green dragon scale", chance = 5000 },
	{ name = "dragon necklace", chance = 250 },
	{ name = "green dragon leather", chance = 5000 },
	{ id = 29286, chance = 50 }, -- golden axe
	{ id = 3449, chance = 5060, maxCount = 10 }, -- burst arrow

}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -58 },
	{ name = "combat", interval = 2000, chance = 70, type = COMBAT_FIREDAMAGE, minDamage = -90, maxDamage = -180, length = 5, spread = 2, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -90, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 8,
	armor = 10,
	mitigation = 0.78,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 8, maxDamage = 10, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 80 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
