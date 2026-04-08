local mType = Game.createMonsterType("Elf")
local monster = {}

monster.description = "an elf"
monster.experience = 70
monster.outfit = {
	lookType = 62,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 62
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 125,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 2,
	Occurrence = 0,
	Locations = "Yalahar Foreigner Quarter and Trade Quarter, Maze of Lost Souls, Orc Fort (unreachable), \z
		Hellgate, Shadowthorn, Ab'Dendriel elf caves, Elvenbane, north of Thais.",
}

monster.health = 160
monster.maxHealth = 160
monster.race = "blood"
monster.corpse = 6003
monster.speed = 120
monster.manaCost = 320

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
	{ text = "Death to the Defilers!", yell = false },
	{ text = "You are not welcome here.", yell = false },
	{ text = "Flee as long as you can.", yell = false },
	{ text = "Bahaha aka!", yell = false },
	{ text = "Ulathil beia Thratha!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 50 },
	{ name = "longsword", chance = 50 },
	{ name = "studded helmet", chance = 3500 },
	{ id = 3362, chance = 2000 }, -- studded legs
	{ id = 3402, chance = 100 }, -- Native Armor
	{ name = "arrow", chance = 7060, maxCount = 3 },
	{ name = "plum", chance = 20000, maxCount = 2 },
	{ name = "elvish talisman", chance = 5000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -15, maxDamage = -58 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -15, maxDamage = -35, range = 7, shootEffect = CONST_ANI_ARROW, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.30,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 5, maxDamage = 8, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
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
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
