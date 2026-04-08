local mType = Game.createMonsterType("Apprentice Sheng")
local monster = {}

monster.description = "Apprentice Sheng"
monster.experience = 1700
monster.outfit = {
	lookType = 23,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2648,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 5981
monster.speed = 110
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "Fire Elemental", chance = 40, interval = 5000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I will protect the secrets of my master!", yell = false },
	{ text = "This isle will become ours alone", yell = false },
	{ text = "Kaplar!", yell = false },
	{ text = "You already know too much.", yell = false },
}

monster.loot = {
	{ name = "minotaur leather", chance = 100000 },
	{ id = 3046, chance = 76000 }, -- magic light wand
	{ name = "platinum coin", chance = 70000, maxCount = 5 },
	{ id = 3341, chance = 500 }, -- arcane staff
	{ name = "golden axe", chance = 1000 },
	{ id = 3557, chance = 1000 }, -- plate legs
	{ name = "knife", chance = 7690 },
	{ name = "iron token", chance = 65000, maxCount = 2 },
	{ name = "silver token", chance = 50000 },
	{ name = "gold token", chance = 10000 },
	{ name = "ankh", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -25, maxDamage = -58 },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -120, maxDamage = -200, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 1000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -90, maxDamage = -180, range = 7, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -95, maxDamage = -190, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{ name = "combat", interval = 4000, chance = 35, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
