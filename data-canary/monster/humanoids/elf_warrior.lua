local mType = Game.createMonsterType("Elf Warrior")  -- Barkless Devotee
local monster = {}

monster.description = "a elf warrior"
monster.experience = 150
monster.outfit = {
	lookType = 990,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1486
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 120,
	SecondUnlock = 1250,
	CharmsPoints = 75,
	Stars = 3,
	Occurrence = 0,
	Locations = "Barkless Cult Trial Zone (below Ab'Dendriel).",
}

monster.health = 220
monster.maxHealth = 220
monster.race = "blood"
monster.corpse = 6012
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Prepare yourself!", yell = false },
	{ text = "You are not loved by this world!", yell = false },
	{ text = "Pain and suffering!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 95500, maxCount = 155 },
	{ id = 3399, chance = 100 }, -- elven mail
	{ id = 3401, chance = 100 }, -- elven legs
	{ name = "arrow", chance = 10060, maxCount = 7 },
	{ name = "longsword", chance = 200 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80 },
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -50, maxDamage = -100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -15, maxDamage = -60, range = 7, shootEffect = CONST_ANI_ARROW, target = false },

}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.78,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 8, maxDamage = 15, effect = CONST_ME_MAGIC_BLUE, target = false },

}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
