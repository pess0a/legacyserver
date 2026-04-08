local mType = Game.createMonsterType("Trundle")
local monster = {}

monster.description = "a trundle"
monster.experience = 500
monster.outfit = {
	lookType = 281,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2647,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 1800
monster.maxHealth = 1800
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
	pushable = false,
	rewardBoss = true,
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
	{ text = "Meee maity!", yell = false },
	{ text = "Grrrr", yell = false },
	{ text = "Whaaaz up!?", yell = false },
	{ text = "Gruntz!", yell = false },
	{ text = "Groar", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 85300, maxCount = 180 },
	{ name = "leather boots", chance = 100000 },
	{ name = "bunch of troll hair", chance = 50000, maxCount = 5 },
	{ id = 17846, chance = 5000}, -- Leather harness
	{ id = 7432, chance = 1000 }, -- furry club
	{ id = 5901, chance = 21000 }, -- wood
	{ name = "medicine pouch", chance = 80000, maxCount = 3 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 3, maxDamage = 7, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
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
