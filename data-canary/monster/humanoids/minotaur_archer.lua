local mType = Game.createMonsterType("Minotaur Archer")
local monster = {}

monster.description = "a minotaur archer"
monster.experience = 75
monster.outfit = {
	lookType = 24,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 24
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Ancient Temple, way to Mintwallin, Folda Underground Cave, Outlaw Camp, Plains of Havoc, \z
		Kazordoon Minotaur Tower, Daramian Minotaur Pyramid, Deeper Fibula Dungeon (level 50+ to open the door), \z
		Hero Cave, Foreigner Quarter and Elvenbane.",
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5982
monster.speed = 100
monster.manaCost = 390

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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
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
	{ text = "Ruan Wihmpy!", yell = false },
	{ text = "Kaplar!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 45 },
	{ name = "bolt", chance = 99000, maxCount = 5 },
	{ name = "meat", chance = 5000 },
	{ name = "minotaur leather", chance = 5000 },
	{ name = "piercing bolt", chance = 10000, maxCount = 4 },
	{ name = "broken crossbow", chance = 5000 },
	{ name = "minotaur horn", chance = 4500, maxCount = 2 },
	{ name = "chain armor", chance = 2000 },
	{ name = "piece of archer armor", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5 },
	{ name = "combat", interval = 2000, chance = 80, type = COMBAT_PHYSICALDAMAGE, minDamage = -20, maxDamage = -80, range = 7, shootEffect = CONST_ANI_BOLT, target = false },
}

monster.defenses = {
	defense = 8,
	armor = 8,
	mitigation = 0.20,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
