local mType = Game.createMonsterType("Minotaur")
local monster = {}

monster.description = "a minotaur"
monster.experience = 85
monster.outfit = {
	lookType = 25,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 25
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Mino Hell (Rookgaard), Two outside Bear Room Quest, (Rookgaard) and also 2x on the premium side, \z
		Mintwallin, Folda, Minotaur Pyramid, Outlaw Camp, Kazordoon minotaur cave, Plains of Havoc, Elven Bane, \z
		Deeper Fibula Dungeon (level 50+ to open the door), Ancient Temple, Maze of Lost Souls, \z
		Thais Minotaur Camp, Foreigner Quarter.",
}

monster.health = 140
monster.maxHealth = 140
monster.race = "blood"
monster.corpse = 5969
monster.speed = 100
monster.manaCost = 330

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
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
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Kaplar!", yell = false },
	{ text = "Hurr", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 35 },
	{ name = "bronze amulet", chance = 110 },
	{ id = 3264, chance = 2000 }, -- sword
	{ name = "axe", chance = 4000 },
	{ name = "mace", chance = 1000 },
	{ name = "brass helmet", chance = 3000 },
	{ name = "chain armor", chance = 1000 },
	{ name = "plate shield", chance = 2000 },
	{ id = 3457, chance = 310 }, -- shovel
	{ name = "meat", chance = 5000 },
	{ name = "minotaur leather", chance = 5000 },
	{ name = "minotaur horn", chance = 4000, maxCount = 2 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -58 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.28,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
