dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )

EntityInflictDamage( root_id, 0.08, "DAMAGE_CURSE", "$damage_hitfx_curse", "DISINTEGRATED", 0, 0, root_id )