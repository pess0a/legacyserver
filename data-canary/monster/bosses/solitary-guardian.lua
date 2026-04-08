local mType = Game.createMonsterType("Solitary Guardian")
local monster = {}

monster.description = "a solitary guardian"
monster.experience = 1500
monster.outfit = {
	lookType = 607,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2641,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 20996
monster.speed = 130
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 3,
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
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 195 }, -- gold coin
	{ id = 3035, chance = 99160, maxCount = 2 }, -- platinum coin
	{ id = 21200, chance = 25000, maxCount = 2 }, -- moohtant horn
	{ id = 3577, chance = 6520 }, -- meat
	{ id = 5878, chance = 25000, maxCount = 5 }, -- minotaur leather
	{ id = 3098, chance = 2410 }, -- ring of healing
	{ name = "iron token", chance = 75000, maxCount = 3 },
	{ name = "silver token", chance = 45000, maxCount = 2 },
	{ name = "gold token", chance = 30000 },
	{ id = 21173, chance = 1000 }, -- moohtant cudgel
	{ id = 3359, chance = 3000 }, -- brass armor
	{ id = 3372, chance = 3000 }, -- brass legs
	{ id = 7401, chance = 1000 }, -- minotaur trophy
	{ id = 10327, chance = 1000 }, -- minotaur backpack
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -90 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -260, length = 3, spread = 0, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -250, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 8,
	armor = 8,
	{ name = "combat", interval = 2000, chance = 9, type = COMBAT_HEALING, minDamage = 8, maxDamage = 15, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
