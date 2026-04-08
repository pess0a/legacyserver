local mType = Game.createMonsterType("Dwarf Geomancer")
local monster = {}

monster.description = "a dwarf geomancer"
monster.experience = 650
monster.outfit = {
	lookType = 66,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 66
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 5000,
	FirstUnlock = 250,
	SecondUnlock = 2500,
	CharmsPoints = 125,
	Stars = 4,
	Occurrence = 0,
	Locations = "Mount Sternum Undead Cave, Dwarf Mines, Circle Room in Kazordoon, Triangle Tower, \z
		Tiquanda Dwarf Cave, Cormaya Dwarven Cave, Beregar Mines.",
}

monster.health = 650
monster.maxHealth = 650
monster.race = "blood"
monster.corpse = 6015
monster.speed = 100
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Hail Durin!", yell = false },
	{ text = "Earth is the strongest element.", yell = false },
	{ text = "Dust to dust.", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 120 },
	{ id = 3046, chance = 14000 }, -- magic light wand
	{ id = 3097, chance = 530 }, -- dwarven ring
	{ name = "blank rune", chance = 33000 },
	{ name = "pear", chance = 25000 },
	{ name = "white mushroom", chance = 60000, maxCount = 2 },
	{ name = "iron ore", chance = 20000 },
	{ name = "double axe", chance = 50 },
	{ name = "battle hammer", chance = 50 },
	{ name = "terra boots", chance = 100 },
	{ name = "geomancer's robe", chance = 5000 },
	{ name = "geomancer's staff", chance = 5000 },
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_EARTHDAMAGE, minDamage = -50, maxDamage = -110, range = 7, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -60, maxDamage = -140, range = 7, radius = 4, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES, target = true },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.91,
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 50, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = 60 },
	{ type = COMBAT_FIREDAMAGE, percent = 60 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
