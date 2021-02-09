dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local comp = EntityGetFirstComponent( entity_id, "IngestionComponent" )

if ( comp ~= nil ) then
	local count = ComponentGetValue2( comp, "ingestion_size" )
	local count_max = ComponentGetValue2( comp, "ingestion_capacity" )
	local percent = math.max( 0, 1.0 - ( count / count_max ) * 2 )
	local damage = 0.36 * percent
	
	if ( damage > 0.04 ) then
		EntityInflictDamage( entity_id, damage, "DAMAGE_CURSE", "$damage_hunger", "NONE", 0, 0, entity_id )
	end
end