local mType = Game.createMonsterType("Dwarf Miner")
local monster = {}

monster.description = "a dwarf miner"
monster.experience = 100
monster.outfit = {
	lookType = 160, -- dwarf
	lookHead = 114, -- barba/cabelo preto
	lookBody = 79, -- roupa marrom escuro
	lookLegs = 95, -- marrom escuro/cinza
	lookFeet = 114, -- botas pretas
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 69
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Kazordoon Dwarf Mines, Dwarf Bridge, deep Elvenbane, Tiquanda Dwarf Cave, Cormaya Dwarf Cave, \z
		Island of Destiny (Knights area), Beregar.",
}

monster.health = 160
monster.maxHealth = 160
monster.race = "blood"
monster.corpse = 6007
monster.speed = 85
monster.manaCost = 420

monster.changeTarget = {
	interval = 0,
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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
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
	{ text = "Work, work!", yell = false },
	{ text = "Intruders in the mines!", yell = false },
	{ text = "Mine, all mine!", yell = false },
}

monster.loot = {
	{ id = 3097, chance = 1000 }, -- dwarven ring
	{ id = 3456, chance = 10000 }, -- pick
	{ name = "iron ore", chance = 5000 },
	{ id = 9057, chance = 2000 }, -- Pedrinha amarela
	{ id = 3029, chance = 2000 }, -- Pedrinha azul
	{ id = 3030, chance = 2000 }, -- Pedrinha vermelha
	{ id = 3032, chance = 2000 }, -- Pedrinha verde
	{ id = 32770, chance = 2000 }, -- Diamond
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -60 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.51,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
