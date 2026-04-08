local mType = Game.createMonsterType("Goblin Scavenger")
local monster = {}

monster.description = "a goblin scavenger"
monster.experience = 50
monster.outfit = {
	lookType = 297,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 464
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "Femor Hills, Edron Goblin Cave, and Fenrock.",
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 6002
monster.speed = 66
monster.manaCost = 310

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
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
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
	{ text = "Shiny, shiny!", yell = false },
	{ text = "You mean!", yell = false },
	{ text = "All mine!", yell = false },
	{ text = "Uhh!", yell = false },
	{ text = "Gimme gimme!", yell = false },
}

monster.loot = {
	{ name = "mace", chance = 1000 },
	{ name = "gold coin", chance = 50810, maxCount = 9 },
	{ id = 3115, chance = 12450 }, -- bone
	{ name = "mouldy cheese", chance = 5000 },
	{ name = "dagger", chance = 18280 },
	{ name = "short sword", chance = 8900 },
	{ name = "bone club", chance = 1000 },
	{ name = "leather helmet", chance = 3000 },
	{ name = "leather armor", chance = 8700 },
	{ name = "small axe", chance = 3790 },
	{ id = 11539, chance = 5000 }, -- goblin ear
	{ id = 3578, chance = 13640 }, -- fish
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -25 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -15, maxDamage = -30, range = 7, shootEffect = CONST_ANI_SPEAR, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.23,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 15, maxDamage = 20, effect = CONST_ME_ENERGYHIT, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
