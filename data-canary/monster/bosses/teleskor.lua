local mType = Game.createMonsterType("Teleskor")
local monster = {}

monster.description = "Teleskor"
monster.experience = 2500
monster.outfit = {
	lookType = 298,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2642,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 6000
monster.maxHealth = 6000
monster.race = "undead"
monster.corpse = 5972
monster.speed = 135
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	rewardBoss = true,
	illusionable = false,
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

monster.summon = {
	maxSummons = 3,
	summons = {
		{ name = "Accursed Nightmare", chance = 50, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Who Disturbs my slumber?", yell = false },
	{ text = "Mourn the dead, do not hunt them!", yell = false },
}

monster.loot = {
	{ id = 11481, chance = 100000 }, -- pelvis bone
	{ id = 3031, chance = 90000, maxCount = 25 }, -- platinum coin
	{ name = "iron token", chance = 80000, maxCount = 2 },
	{ name = "silver token", chance = 40000 },
	{ name = "gold token", chance = 10000 },
	{ name = "black shield", chance = 10000 },
	{ name = "bone shield", chance = 1000 },
	{ id = 7407, chance = 500 }, -- haunted blade
	{ name = "skull helmet", chance = 1000 },
	{ id = 3286, chance = 40000 }, -- mace
	{ id = 3367, chance = 70000 }, -- viking helmet
	{ id = 3276, chance = 45000 }, -- hatchet
	{ id = 3264, chance = 45000 }, -- sword
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -100 },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 40, minDamage = -200, maxDamage = -300, target = true, range = 7, radius = 1, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_MORTAREA },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -720, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -120, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{ name = "combat", interval = 4000, chance = 25, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
