local mType = Game.createMonsterType("Orc Warrior")
local monster = {}

monster.description = "an orc warrior"
monster.experience = 110
monster.outfit = {
	lookType = 7,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 7
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Ancient Temple in Thais, Orc Fort, below Point of No Return in Outlaw Camp and inside a \z
		mountain north of it, Orc Peninsula, Folda, Edron Orc cave, Maze of Lost Souls, Elvenbane Castle, \z
		Foreigner Quarter, Zao Orc Land.",
}

monster.health = 190
monster.maxHealth = 190
monster.race = "blood"
monster.corpse = 5979
monster.speed = 120
monster.manaCost = 360

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
	pushable = false,
	rewardBoss = false,
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
	{ text = "Alk!", yell = false },
	{ text = "Trak grrrr brik.", yell = false },
	{ text = "Grow truk grrrr.", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 90000, maxCount = 60 },
	{ name = "chain armor", chance = 1500 },
	{ name = "copper shield", chance = 1500 },
	{ name = "meat", chance = 15000 },
	{ name = "orc tooth", chance = 8000 },
	{ name = "broken helmet", chance = 5000 },
	{ name = "orc leather", chance = 5000 },
	{ name = "skull belt", chance = 5000 },
	{ id = 3299, chance = 25 }, -- poison dagger
	{ id = 23986, chance = 1000 }, -- heavy old tome
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -23, maxDamage = -90 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.36,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
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
