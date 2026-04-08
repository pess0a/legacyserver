local mType = Game.createMonsterType("Munster")
local monster = {}

monster.description = "a munster"
monster.experience = 200
monster.outfit = {
	lookType = 56,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2651,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 5964
monster.speed = 75
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
	pushable = true,
	rewardBoss = true,
	illusionable = true,
	canPushItems = false,
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
	level = 2,
	color = 35,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Meeeeep!", yell = false },
	{ text = "Meep!", yell = false },
}

monster.loot = {
	{ id = 3031, chance = 85000, maxCount = 200 }, -- gold coin
	{ id = 3598, chance = 30000 }, -- cookie
	{ id = 3607, chance = 50000 }, -- cheese
	{ id = 3361, chance = 5000 }, -- leather armor
	{ id = 3426, chance = 10000 }, -- studded shield
	{ id = 3355, chance = 60000 }, -- leather helmet
	{ id = 3492, chance = 50000, maxCount = 25 }, -- worm
	{ id = 22720, chance = 30000 }, -- Iron Token
	{ id = 34269, chance = 500 }, -- Baby munster
	{ id = 5797, chance = 500 }, -- die
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -10, maxDamage = -25 },
}

monster.defenses = {
	defense = 3,
	armor = 3,
}

monster.summon = {
	maxSummons = 4,
	summons = {
		{ name = "poisoned rat", chance = 100, interval = 2000, count = 1 },
	},
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
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
