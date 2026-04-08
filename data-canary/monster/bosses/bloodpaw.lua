local mType = Game.createMonsterType("Bloodpaw")
local monster = {}

monster.description = "a bloodpaw"
monster.experience = 850
monster.outfit = {
	lookType = 720,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2645,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 22010
monster.speed = 200
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
	rewardBoss = true,
	illusionable = true,
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
	{ text = "Grrrr", yell = false },
	{ text = "Groar", yell = false },
}

monster.loot = {
	{ name = "meat", chance = 39750, maxCount = 4 },
	{ name = "ham", chance = 20000, maxCount = 3 },
	{ name = "bear paw", chance = 25000, maxCount = 3 },
	{ name = "slingshot", chance = 8000 },
	{ name = "iron token", chance = 75000, maxCount = 2 },
	{ name = "honeycomb", chance = 15000, maxCount = 3 },
	{ id = 22103, chance = 1000 }, --Bloodpaw Trophy
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -40, maxDamage = -80 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -80, maxDamage = -180, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false },
}

monster.defenses = {
	defense = 10,
	armor = 10,
	mitigation = 0.15,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = -20 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 25 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 25 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType.onSpawn = function(monster, spawnPosition)
	if monster:getType():isRewardBoss() then
		
	end
end

mType:register(monster)
