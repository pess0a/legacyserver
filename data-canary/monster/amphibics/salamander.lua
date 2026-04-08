local mType = Game.createMonsterType("Salamander")
local monster = {}

monster.description = "a salamander"
monster.experience = 40
monster.outfit = {
	lookType = 529,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 913
monster.Bestiary = {
	class = "Amphibic",
	race = BESTY_RACE_AMPHIBIC,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Shadowthorn in the bog god's temple, Drefia, around Lake Equivocolao when it's dirty.",
}

monster.health = 70
monster.maxHealth = 70
monster.race = "blood"
monster.corpse = 17427
monster.speed = 60
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
	illusionable = false,
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
	{ text = "Chrrch!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 75000, maxCount = 15 },
	{ name = "mace", chance = 2000 },
	{ id = 12517, chance = 3000}, -- medicine pouch
	{ id = 3003, chance = 5190 }, -- rope
	{ name = "brass helmet", chance = 2180 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -10, maxDamage = -25, effect = CONST_ME_DRAWBLOOD, condition = { type = CONDITION_POISON, totalDamage = 10, interval = 4000 } },
}

monster.defenses = {
	defense = 5,
	armor = 5,
	{ name = "combat", interval = 6000, chance = 20, type = COMBAT_HEALING, minDamage = 3, maxDamage = 7, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
