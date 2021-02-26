dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 56, "projectile" )

local vel_x,vel_y = 0,0

for i,v in ipairs( targets ) do
	if ( i == 1 ) and ( EntityHasTag( v, "projectile_lightning" ) == false ) then
		edit_component( v, "VelocityComponent", function(comp,vars)
			vel_x,vel_y = ComponentGetValueVector2( comp, "mVelocity")
		end)
		
		if ( vel_x ~= 0 ) or ( vel_y ~= 0 ) then
			PhysicsApplyForce( entity_id, vel_x * 1.2, vel_y * 1.2 )
		end
	end
	
	EntityKill( v )
end