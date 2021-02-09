dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )

local damage = 0.08
local comp = EntityGetFirstComponent( entity_id, "VariableStorageComponent", "effect_curse_damage" )
if ( comp ~= nil ) then
	damage = ComponentGetValue2( comp, "value_float" )
end

EntityInflictDamage( root_id, damage, "DAMAGE_CURSE", "$damage_hitfx_curse", "DISINTEGRATED", 0, 0, entity_id )