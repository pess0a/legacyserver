local mType = Game.createMonsterType("Murder Hornet")
local monster = {}

monster.description = "a Murder Hornet"
monster.experience = 650
monster.outfit = {
	lookType = 462,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2638,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 2200
monster.maxHealth = 2200
monster.race = "venom"
monster.corpse = 13983
monster.speed = 155
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 5,
	summons = {
		{ name = "wasp", chance = 30, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Peeex!", yell = false },
	{ text = "Bzzzzzzzrrrrzzzzzzrrrrr!", yell = false },
}

monster.loot = {
	{ name = "emerald bangle", chance = 2040 },
	{ name = "gold coin", chance = 80000, maxCount = 300 },
	{ name = "iron token", chance = 50000 },
	{ id = 3091, chance = 15000 }, -- sword ring
	{ id = 3052, chance = 20000 }, -- life ring
	{ id = 3092, chance = 15000 }, -- axe ring
	{ id = 3093, chance = 15000 }, -- club ring
	{ name = "yellow gem", chance = 1040 },
	{ id = 5902, chance = 100000, maxCount = 7 }, -- honeycomb
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100, condition = { type = CONDITION_POISON, totalDamage = 200, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -43, maxDamage = -130, radius = 3, effect = CONST_ME_POISONAREA, target = true },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -30, maxDamage = -75, range = 7, shootEffect = CONST_ANI_POISON, target = false },
}

monster.defenses = {
	defense = 7,
	armor = 7,
	mitigation = 1.54,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -7 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
