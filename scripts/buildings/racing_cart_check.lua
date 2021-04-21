dofile_once( "data/scripts/lib/utilities.lua" )

local entity_id    = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 20, "small_friend" )
if ( #targets > 0 ) then
	local t = targets[1]
	EntityKill( t )
	
	EntitySetComponentsWithTagEnabled( entity_id, "driver", true )
	EntitySetComponentsWithTagEnabled( entity_id, "driverless", false )
	
	EntityAddTag( entity_id, "final_secret_orb" )
end
