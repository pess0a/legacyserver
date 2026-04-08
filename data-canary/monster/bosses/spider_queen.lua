local mType = Game.createMonsterType("Spider Queen")
local monster = {}

monster.description = "a spider queen"
monster.experience = 500
monster.outfit = {
	lookType = 219,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2640,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "venom"
monster.corpse = 6060
monster.speed = 140
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 50,
	health = 10,
	damage = 30,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
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

monster.summon = {
	maxSummons = 6,
	summons = {
		{ name = "Spider", chance = 25, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 22720, chance = 30000 }, -- Iron Token
	{ id = 3053, chance = 7000 }, -- time ring
	{ name = "gold coin", chance = 99990, maxCount = 500 },
	{ name = "spider silk", chance = 25000 },
	{ id = 8031, chance = 10000 }, -- spider fangs
	{ name = "chain legs", chance = 2000 },
	{ name = "chain armor", chance = 3000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -10, maxDamage = -30, condition = { type = CONDITION_POISON, totalDamage = 120, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -30, maxDamage = -60, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, target = true },
	{ name = "combat", interval = 3000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -30, maxDamage = -30, radius = 7, effect = CONST_ME_POISONAREA, target = false },
}

monster.defenses = {
	defense = 5,
	armor = 2,
	{ name = "speed", interval = 1000, chance = 10, speedChange = 480, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

monster.events = {
	"spider_queen_health_phase",
}

mType:register(monster)
