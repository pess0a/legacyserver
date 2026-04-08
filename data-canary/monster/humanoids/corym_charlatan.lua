local mType = Game.createMonsterType("Corym Charlatan")
local monster = {}

monster.description = "a corym charlatan"
monster.experience = 50
monster.outfit = {
	lookType = 532,
	lookHead = 0,
	lookBody = 78,
	lookLegs = 59,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 916
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Venore Corym Cave, Tiquanda Corym Cave, Corym Black Market, \z
		Carlin Corym Cave/Dwarf Mines Diggers Depths Mine, Upper Spike.",
}

monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 17445
monster.speed = 95
monster.manaCost = 490

monster.changeTarget = {
	interval = 5000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
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
	{ text = "Mehehe!", yell = false },
	{ text = "Beware! Me hexing you!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 60000, maxCount = 35 },
	{ id = 3607, chance = 10000 }, -- cheese
	{ name = "ratana", chance = 200 },
	{ id = 17809, chance = 250 }, -- bola - item de domar o boar
	{ name = "cheese cutter", chance = 5000 },
	{ name = "earflap", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -12, maxDamage = -48 },
}

monster.defenses = {
	defense = 10,
	armor = 7,
	mitigation = 0.62,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = 25 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 15 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
