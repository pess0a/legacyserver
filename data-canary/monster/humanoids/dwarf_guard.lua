local mType = Game.createMonsterType("Dwarf Guard")
local monster = {}

monster.description = "a dwarf guard"
monster.experience = 300
monster.outfit = {
	lookType = 70,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 70
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Kazordoon Dwarf Mines, Dwacatra, Ferngrims Gate, Cyclopolis, Mount Sternum Undead Cave, \z
		Stonehome Rotworm cave (near Edron), Maze of Lost Souls, Tiquanda Dwarf Cave, Beregar, Cormaya Dwarf Cave.",
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 6013
monster.speed = 103
monster.manaCost = 650

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 20,
	random = 10,
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
	{ text = "Hail Durin!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 70 },
	{ id = 3092, chance = 500 }, -- axe ring
	{ name = "double axe", chance = 50 },
	{ id = 3279, chance = 50 }, -- war hammer
	{ name = "steel helmet", chance = 100 },
	{ name = "plate armor", chance = 100 },
	{ id = 3415, chance = 100 }, -- guardian shield
	{ name = "leather boots", chance = 40000 },
	{ name = "white mushroom", chance = 55000, maxCount = 2 },
	{ name = "iron ore", chance = 10000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -100 },
	{ name = "combat", interval = 2000, chance = 55, type = COMBAT_PHYSICALDAMAGE, minDamage = -60, maxDamage = -125, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 1.02,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
