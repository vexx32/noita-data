dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

edit_component( entity_id, "VelocityComponent", function(vcomp,vars)
	local vel_x,vel_y = ComponentGetValueVector2( vcomp, "mVelocity")
	
	local dist = math.abs( vel_y ) + math.abs( vel_x )
	
	if ( dist > 450 ) then
		vel_x = vel_x * 0.86
		vel_y = vel_y * 0.86
		
		ComponentSetValueVector2( vcomp, "mVelocity", vel_x, vel_y )
	end
end)