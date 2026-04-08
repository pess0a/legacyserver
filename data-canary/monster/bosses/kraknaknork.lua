local mType = Game.createMonsterType("Kraknaknork")
local monster = {}

monster.description = "Kraknaknork"
monster.experience = 1500
monster.outfit = {
	lookType = 6,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2649,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 4750
monster.maxHealth = 4750
monster.race = "blood"
monster.corpse = 5978
monster.speed = 90
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
	targetDistance = 5,
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
		{ name = "Orc Warrior", chance = 35, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "KRAK ORC DEMON", yell = false },
	{ text = "???!!!", yell = false },
	{ text = "Grak brrretz gulu.", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 95000, maxCount = 15 },
	{ name = "orc leather", chance = 40000, maxCount = 3 },
	{ name = "iron token", chance = 75000, maxCount = 2 },
    { name = "silver token", chance = 60000 },
	{ name = "gold token", chance = 20000 },
	{ name = "broken shamanic staff", chance = 10000 },
	{ id = 3059, chance = 4990 }, -- spellbook
	{ id = 22172, chance = 500 }, -- ogre choppa
	{ name = "shamanic hood", chance = 6860 },
	{ name = "giant sapphire", chance = 7000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -25, maxDamage = -58, condition = { type = CONDITION_POISON, totalDamage = 150, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -130, maxDamage = -260, range = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "condition", type = CONDITION_FIRE, interval = 3000, chance = 30, minDamage = -130, maxDamage = -200, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -85, maxDamage = -170, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 30, minDamage = -120, maxDamage = -200, radius = 5, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false },
}

monster.defenses = {
	defense = 8,
	armor = 8,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_GREEN, target = false },

}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
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
