dofile( "data/scripts/game_helpers.lua" )
dofile_once("data/scripts/lib/utilities.lua")

function death( )
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform( entity_id )
	local p = EntityGetWithTag( "player_unit" )
	
	local doit = false
	
	for i,v in ipairs( p ) do
		local c = EntityGetAllChildren( v )
		
		if ( c ~= nil ) then
			for a,b in ipairs( c ) do
				if EntityHasTag( b, "essence_effect" ) then
					EntityRemoveFromParent( b )
					EntityKill( b )
					doit = true
				end
			end
		end
	end
	
	if GameHasFlagRun( "essence_laser" ) then
		EntityLoad( "data/entities/items/pickup/stonestone.xml", x, y )
	end
	
	if GameHasFlagRun( "essence_fire" ) then
		EntityLoad( "data/entities/items/pickup/brimstone.xml", x, y - 12 )
	end
	
	if GameHasFlagRun( "essence_water" ) then
		EntityLoad( "data/entities/items/pickup/waterstone.xml", x, y - 24 )
	end
	
	if GameHasFlagRun( "essence_air" ) then
		EntityLoad( "data/entities/items/pickup/thunderstone.xml", x, y - 36 )
	end
	
	if GameHasFlagRun( "essence_alcohol" ) then
		EntityLoad( "data/entities/items/pickup/poopstone.xml", x, y - 48 )
	end
	
	GameRemoveFlagRun( "essence_laser" )
	GameRemoveFlagRun( "essence_fire" )
	GameRemoveFlagRun( "essence_water" )
	GameRemoveFlagRun( "essence_air" )
	GameRemoveFlagRun( "essence_alcohol" )
	
	if doit then
		EntityLoad( "data/entities/particles/image_emitters/perk_effect.xml", x, y )
		GamePrintImportant( "$log_curse_secret", "$logdesc_curse_fade" )
		GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
	end
end