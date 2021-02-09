dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
local test = get_flag_name( "u_dheglmticg" )

local essence_1 = GameHasFlagRun( "essence_fire" )
local essence_2 = GameHasFlagRun( "essence_air" )
local essence_3 = GameHasFlagRun( "essence_water" )
local essence_4 = GameHasFlagRun( "essence_laser" )

local essence_5 = GameHasFlagRun( "essence_alcohol" )

local players = EntityGetWithTag( "player_unit" )
local players_ = EntityGetWithTag( test )

if essence_1 and essence_2 and essence_3 and essence_4 and ( #players_ == 0 ) then
	local do_effect = false
	
	if ( #players > 0 ) then
		for i,player_id in ipairs(players) do
			local px, py = EntityGetTransform( player_id )
			local dist = math.abs( x - px ) + math.abs( y - py )
			
			if ( dist < 48 ) then
				do_effect = true
			end
		end
	end
	
	if do_effect then
		--EntityLoad("data/entities/items/orbs/orb_13.xml", x, y)
		AddFlagPersistent( "card_unlocked_destruction" )
		local eid = CreateItemActionEntity( "DESTRUCTION", x, y )
		
		if essence_5 then
			AddFlagPersistent( "secret_moon2" )
			EntityLoad("data/entities/misc/moon_effect_drunk.xml", x, y)
			GamePrintImportant( "$log_moon_altar", "$logdesc_moon_altar_drunk" )
		else
			AddFlagPersistent( "secret_moon" )
			EntityLoad("data/entities/misc/moon_effect.xml", x, y)
			GamePrintImportant( "$log_moon_altar", "$logdesc_moon_altar" )
		end
		
		EntityKill( entity_id )
	end
end