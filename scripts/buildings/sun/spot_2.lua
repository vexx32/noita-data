dofile_once("data/scripts/lib/utilities.lua")
dofile( "data/scripts/gun/gun_actions.lua" )

--[[

Fix later

function material_area_checker_success( pos_x, pos_y )
	local entity_id    = GetUpdatedEntityID()
	local x,y = EntityGetTransform( entity_id )
	
	local explosions = EntityGetInRadiusWithTag( x, y, 120, "big_explosion" )
	
	if ( #explosions > 10 ) then
		EntityLoad("data/entities/items/pickup/sun/sunegg.xml", x, y)
		EntityLoad("data/entities/projectiles/explosion.xml", x, y)
		EntityKill(entity_id)
		
		GameTriggerMusicFadeOutAndDequeueAll( 3.0 )
		GameTriggerMusicEvent( "music/oneshot/dark_01", true, x, y )
		
		GamePrintImportant( "$log_new_step", "$logdesc_new_step" )
	end
end
]]--

local entity_id    = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )

local explosions = EntityGetInRadiusWithTag( x, y, 120, "big_explosion" )

if ( #explosions > 5 ) then
	EntityLoad("data/entities/items/pickup/sun/sunegg.xml", x, y)
	EntityLoad("data/entities/projectiles/deck/explosion_giga.xml", x, y)
	EntityKill(entity_id)
	
	GameTriggerMusicFadeOutAndDequeueAll( 3.0 )
	GameTriggerMusicEvent( "music/oneshot/dark_01", true, x, y )
	
	GamePrintImportant( "$log_new_step", "$logdesc_new_step" )
end