local mType = Game.createMonsterType("Necromancer")
local monster = {}

monster.description = "a necromancer"
monster.experience = 580
monster.outfit = {
	lookType = 9,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 9
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 5000,
	FirstUnlock = 250,
	SecondUnlock = 2500,
	CharmsPoints = 125,
	Stars = 4,
	Occurrence = 0,
	Locations = "All the Tombs, Lich Hell, Drefia, Medusa Shield Quest room, Old Fortress, Old Masonry, \z
		beneath Fenrock, Cemetery Quarter and Magician Quarter.",
}

monster.health = 800
monster.maxHealth = 800
monster.race = "blood"
monster.corpse = 18174
monster.speed = 94
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
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

monster.summon = {
	maxSummons = 3,
	summons = {
		{ name = "Ghoul", chance = 25, interval = 2000, count = 1 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Taste the sweetness of death!", yell = false },
	{ text = "Your corpse will be mine.", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95050, maxCount = 190 },
	{ name = "boots of haste", chance = 200 },
	{ name = "skull staff", chance = 100 },
	{ name = "poison arrow", chance = 15000, maxCount = 5 },
	{ name = "mystic turban", chance = 200 },
	{ name = "green mushroom", chance = 1470 },
	{ name = "book of necromantic rituals", chance = 5000 },
	{ name = "necromantic robe", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -50, condition = { type = CONDITION_POISON, totalDamage = 160, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_DEATHDAMAGE, minDamage = -55, maxDamage = -170, range = 5, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_EARTHDAMAGE, minDamage = -35, maxDamage = -95, range = 5, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 1.04,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 42, maxDamage = 68, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
