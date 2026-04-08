local mType = Game.createMonsterType("Gladiator")
local monster = {}

monster.description = "a gladiator"
monster.experience = 200
monster.outfit = {
	lookType = 131,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 527
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Trade Quarter, Arena and Zoo Quarter.",
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 18126
monster.speed = 98
monster.manaCost = 470

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
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
	{ text = "You are no match for me!", yell = false },
	{ text = "Feel my prowess.", yell = false },
	{ text = "Fight!", yell = false },
	{ text = "Take this!", yell = false },
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 80 }, -- gold coin
	{ id = 3279, chance = 50 }, -- war hammer
	{ id = 2991, chance = 50 }, -- doll
	{ id = 3048, chance = 3000 }, -- might ring
	{ id = 3384, chance = 100 }, -- dark helmet
	{ id = 3383, chance = 100 }, -- dark armor
	{ name = "meat", chance = 19000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -90 },
	{ name = "combat", interval = 2000, chance = 50, type = COMBAT_PHYSICALDAMAGE, minDamage = -70, maxDamage = -135, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.78,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
