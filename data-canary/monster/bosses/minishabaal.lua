local mType = Game.createMonsterType("Minishabaal")
local monster = {}

monster.description = "Minishabaal"
monster.experience = 4000
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 6000
monster.maxHealth = 6000
monster.race = "blood"
monster.corpse = 6363
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 3,
	summons = {
		{ name = "fire elemental", chance = 40, interval = 2000, count = 3 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "You are not as strong as the Sunrise.", yell = false },
	{ text = "Naaa-Nana-Naaa-Naaa!", yell = false },
	{ text = "The legendary De'Bove gave me a real fight.", yell = false },
	{ text = "He He He", yell = false },
	{ text = "If the Golden Knight Tarik were here, you might have a chance.", yell = false },
	{ text = "My dragon is not that old, it's just second hand.", yell = false },
	{ text = "My other dragon is a red one.", yell = false },
	{ text = "When I am big I want to become the ruthless eighth.", yell = false },
	{ text = "Muahaha!", yell = false },
}

monster.loot = {
	{ id = 3035, chance = 100000, maxCount = 20 }, -- platinum coin
	{ id = 3043, chance = 100000, maxCount = 1 }, -- crysal coin
	{ id = 8077, chance = 666 }, -- rainbow shield
	{ id = 8078, chance = 666 }, -- fiery rainbow shield
	{ id = 8079, chance = 666 }, -- icy rainbow shield
	{ id = 8080, chance = 666 }, -- sparkyng rainbow shield
	{ id = 8081, chance = 666 }, -- terran rainbow shield
	{ id = 9302, chance = 666 }, -- sacret tree amulet
	{ id = 9303, chance = 666 }, -- leviatan's tree amulet
	{ id = 9301, chance = 666 }, -- bonfire amulet
	{ id = 9304, chance = 666 }, -- shockwave amulet
	{ id = 5944, chance = 909 }, -- soul orb
	{ id = 21383, chance = 666 }, -- stone of insigth
	{ name = "demon horn", chance = 14920, maxCount = 2 },
	{ id = 6499, chance = 10000, maxCount = 2 }, -- demonic essence
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -250, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -210, maxDamage = -300, range = 1, shootEffect = CONST_ANI_ENERGY, target = true },
	{ name = "combat", interval = 1000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -220, length = 8, spread = 0, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -99, maxDamage = -205, range = 7, radius = 2, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = true },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 1.60,
	{ name = "combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 80, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE, target = false },
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
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
