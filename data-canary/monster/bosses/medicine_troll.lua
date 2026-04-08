local mType = Game.createMonsterType("Medicine Troll")
local monster = {}

monster.description = "a medicine troll"
monster.experience = 500
monster.outfit = {
	lookType = 76,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2652,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 220
monster.maxHealth = 220
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
	{ text = "Me strong! Me ate spinach!", yell = false },
	{ text = "Groar!", yell = false },
	{ text = "Grrrr", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 85300, maxCount = 180 },
	{ name = "fishing rod", chance = 5000 },
	{ name = "leather boots", chance = 10000 },
	{ id = 3578, chance = 60000 }, -- fish
	{ id = 3741, chance = 20000 }, -- Medicine Flower
	{ id = 5901, chance = 21000 }, -- wood
	{ name = "swamp grass", chance = 35000 },
	{ name = "medicine pouch", chance = 80000, maxCount = 3 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20 },
}

monster.defenses = {
	defense = 7,
	armor = 6,
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 8, maxDamage = 12, effect = CONST_ME_MAGIC_BLUE, target = false },
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
