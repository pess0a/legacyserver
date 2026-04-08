local mType = Game.createMonsterType("Captain Iglue")
local monster = {}

monster.description = "a Captain Iglue"
monster.experience = 1500
monster.outfit = {
	lookType = 98,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2650,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 4800
monster.maxHealth = 4800
monster.race = "blood"
monster.corpse = 18194
monster.speed = 180
monster.manaCost = 775

monster.changeTarget = {
	interval = 4000,
	chance = 25,
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
	canPushItems = false,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Hiyaa!", yell = false },
	{ text = "Give up!", yell = false },
	{ text = "Plundeeeeer!", yell = false },
}

monster.loot = {
	{ name = "piggy bank", chance = 20000 },
	{ id = 6101, chance = 1000 }, -- ron the ripper's sabre
	{ name = "pirate bag", chance = 15000 },
	{ name = "platinum coin", chance = 65000, maxCount = 8 },
	{ name = "pirate knee breeches", chance = 1000 },
	{ name = "pirate boots", chance = 1000 },
	{ name = "Pirate Shirt", chance = 4000 },
	{ name = "rum flask", chance = 2000 },
	{ id = 513, chance = 1300 }, -- skull candle
	{ name = "pirate backpack", chance = 1000 },
	{ name = "pirate hat", chance = 1000 },
	{ name = "hook", chance = 25000 },
	{ name = "eye patch", chance = 500 },
	{ name = "peg leg", chance = 600 },
	{ name = "compass", chance = 11050 },
	{ name = "compass", chance = 11020 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -120 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -750, length = 7, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -260, radius = 6, effect = CONST_ME_MORTAREA, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 1.46,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
