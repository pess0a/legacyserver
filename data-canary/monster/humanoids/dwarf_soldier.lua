local mType = Game.createMonsterType("Dwarf Soldier")
local monster = {}

monster.description = "a dwarf soldier"
monster.experience = 180
monster.outfit = {
	lookType = 71,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 71
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Kazordoon Dwarf Mines, Cyclopolis, Dwacatra, Ferngrims Gate, Dwarf Bridge, \z
		Mount Sternum Undead Cave, Beregar, Tiquanda Dwarf Cave, Cormaya Dwarf Cave.",
}

monster.health = 220
monster.maxHealth = 220
monster.race = "blood"
monster.corpse = 6014
monster.speed = 110
monster.manaCost = 360

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	{ text = "Hail Durin!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 65 },
	{ id = 3092, chance = 120 }, -- axe ring
	{ name = "battle axe", chance = 75 }, -- 0.075
	{ name = "broken crossbow", chance = 5000 },
	{ name = "chain armor", chance = 1000 },
	{ name = "soldier helmet", chance = 100 },  -- 0.1
	{ name = "dwarven shield", chance = 100 }, -- 0.1
	{ name = "bolt", chance = 40000, maxCount = 7 },
	{ name = "white mushroom", chance = 40000, maxCount = 3 },
	{ name = "iron ore", chance = 7500 },
	{ name = "piercing bolt", chance = 4000, maxCount = 3 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -70 },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_PHYSICALDAMAGE, minDamage = -20, maxDamage = -60, range = 7, shootEffect = CONST_ANI_BOLT, target = false },
}

monster.defenses = {
	defense = 12,
	armor = 12,
	mitigation = 0.51,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
