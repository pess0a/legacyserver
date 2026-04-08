local mType = Game.createMonsterType("Angry Chicken")
local monster = {}

monster.description = "an angry chicken"
monster.experience = 100
monster.outfit = {
	lookType = 111,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 200
monster.maxHealth = 200
monster.race = "blood"
monster.corpse = 6042
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	illusionable = false,
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
	isPreyable = false,
	isPreyExclusive = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 100,
	{ text = "BWAAAAAKKKKKKKKKKKKKK!", yell = true },
	{ text = "Cluck Cluck CLUCK! Cluck CLUCK!", yell = true },
}

monster.loot = {
    { name = "gold coin", chance = 100000, maxCount = 30 },
	{ name = "chicken feather", chance = 100000, maxCount = 10 },
	{ id = 3606, chance = 100000, maxCount = 10 }, -- egg
}

monster.attacks = {
	{ name = "combat", interval = 500, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -3, maxDamage = -6, effect = CONST_ME_HITBYFIRE, target = false },
}

monster.defenses = {
	defense = 1,
	armor = 1,
	mitigation = 0.05,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
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
