local mType = Game.createMonsterType("CAPTURADOR DE BOT")
local monster = {}

monster.description = "o capturador de bot"
monster.experience = 3120
monster.outfit = {
	lookType = 1562,
}

monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 39344
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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
	{ text = "me bate ai carai", yell = false },
	{ text = "noob", yell = false },
	{ text = "não usem bot, porra.", yell = false },
}


monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1 },
}

monster.defenses = {
	defense = 1,
	armor = 1,
	mitigation = 1.74,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 80, maxDamage = 113 },
}

monster.reflects = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 2500 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -100 },
	{ type = COMBAT_EARTHDAMAGE, percent = -100 },
	{ type = COMBAT_FIREDAMAGE, percent = -100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -100 },
	{ type = COMBAT_HOLYDAMAGE, percent = -100 },
	{ type = COMBAT_DEATHDAMAGE, percent = -100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
