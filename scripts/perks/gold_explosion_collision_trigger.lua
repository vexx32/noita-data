dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id = GetUpdatedEntityID()
	
	local eid = EntityLoad( "data/entities/misc/perks/gold_explosion.xml" )
	EntityAddChild( entity_id, eid )
	
	local value = 10
	
	local comps = EntityGetComponent( entity_id, "VariableStorageComponent" )
	
	if ( comps ~= nil ) then
		for j,comp in ipairs( comps ) do
			local name = ComponentGetValue2( comp, "name" )
			
			if ( name == "gold_value" ) then
				value = ComponentGetValue2( comp, "value_int" )
				break
			end
		end
	end
	
	local players = EntityGetWithTag( "player_unit" )
	local herd_id = -1
	local player
	if ( #players > 0 ) then
		player = players[1]
		
		edit_component( player, "GenomeDataComponent", function(comp,vars)
			herd_id = ComponentGetValue2( comp, "herd_id" )
		end)
	end
	
	local exp_radius = ( value / ( 10 + value * 0.01 ) ) + 16
	local exp_shake = 0 --( value / ( 10 + value * 0.01 ) ) + 16
	local exp_damage = ( ( value / ( 10 + value * 0.01 ) ) + 1.5 ) * 0.4
	
	local exp_sparks_min = math.max( 5, math.floor( exp_radius * 0.75 ) )
	local exp_sparks_max = math.max( 10, math.floor( exp_radius * 1.25 ) )
	
	edit_component( eid, "ProjectileComponent", function(comp,vars)
		ComponentObjectSetValue( comp, "config_explosion", "explosion_radius", exp_radius )
		--ComponentObjectSetValue( comp, "config_explosion", "camera_shake", exp_shake )
		ComponentObjectSetValue( comp, "config_explosion", "damage", exp_damage )
		
		ComponentObjectSetValue( comp, "config_explosion", "sparks_count_min", exp_sparks_min )
		ComponentObjectSetValue( comp, "config_explosion", "sparks_count_max", exp_sparks_max )
		
		if ( player ~= nil ) then
			ComponentSetValue2( comp, "mWhoShot", player )
			ComponentSetValue2( comp, "mShooterHerdId", herd_id )
			
			ComponentObjectSetValue( comp, "config_explosion", "dont_damage_this", player )
		end
	end)
end