dofile( "data/scripts/game_helpers.lua" )
dofile_once("data/scripts/lib/utilities.lua")
dofile( "data/scripts/perks/perk.lua" )

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform(entity_id)

local w = 10
local perks = {}
perks[1] = perk_spawn_random(x - w, y - 10)
perks[2] = perk_spawn_random(x + w, y - 10)

for _,v in ipairs(perks) do
	EntityAddComponent(v, "VariableStorageComponent", 
	{ 
		name = "perk_dont_remove_others",
		value_bool = "1",
	} )
end

EntityKill(entity_id)
