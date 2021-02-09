dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local items = EntityGetWithTag( "gold_nugget" )

if ( #items > 0 ) then
	for i,item_id in ipairs(items) do	
		local px, py = EntityGetTransform( item_id )
		
		local distance = math.abs( x - px ) + math.abs( y - py )
		local distance_full = 72
		
		if ( distance < distance_full * 1.25 ) then
			distance = math.sqrt( ( x - px ) ^ 2 + ( y - py ) ^ 2 )
			direction = 0 - math.atan2( ( y - py ), ( x - px ) )
	
			if ( distance < distance_full ) then
				local physicscomponents = EntityGetComponent( item_id, "PhysicsBodyComponent" )
				
				if ( physicscomponents ~= nil ) then
					local vel_x = math.cos( direction ) * 9
					local vel_y = 0 - math.sin( direction ) * 9
					
					PhysicsApplyForce( item_id, vel_x, vel_y )
				end
			end
		end
	end
end