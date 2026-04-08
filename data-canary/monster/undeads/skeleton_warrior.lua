local mType = Game.createMonsterType("Skeleton Warrior")
local monster = {}

monster.description = "a skeleton warrior"
monster.experience = 175
monster.outfit = {
	lookType = 298,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 446
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Island of Destiny, Drefia, Ghostland and beneath Fenrock.",
}

monster.health = 200
monster.maxHealth = 200
monster.race = "undead"
monster.corpse = 5972
monster.speed = 120
monster.manaCost = 350

monster.changeTarget = {
	interval = 4000,
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
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 45 },
	{ id = 3115, chance = 50000 }, -- bone
	{ id = 3264, chance = 4500 }, -- sword
	{ name = "mace", chance = 4000 },
	{ name = "white mushroom", chance = 24000, maxCount = 3 },
	{ id = 3081, chance = 1000 }, -- ssa
	{ id = 3324, chance = 75 }, -- skull staff
	{ name = "brown mushroom", chance = 7000 },
	{ name = "pelvis bone", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -14, maxDamage = -70 },
	{ name = "combat", interval = 1500, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -30, maxDamage = -80, range = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -15, maxDamage = -30, range = 1, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.25,
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
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
