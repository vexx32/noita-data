dofile_once("data/scripts/lib/utilities.lua")
dofile_once( "data/scripts/perks/perk_list.lua" )


local get_perk_flag_name = function( perk_id )
	return "PERK_" .. perk_id
end

-- returns true if perks can be picked many times
function perk_is_stackable( perk_data )
	local is_stackable = ( perk_data.stackable ~= nil ) and ( perk_data.stackable == true )
	local is_rare = ( perk_data.stackable_is_rare ~= nil ) and ( perk_data.stackable_is_rare == true ) -- stackable_is_rare indicates a perk that does stack but only appears once per every spawn order
	
	-- Perks that can only be stacked a specific number of times won't reappear eventually
	if is_stackable and ( perk_data.stackable_maximum ~= nil ) then
		local flag_name = get_perk_picked_flag_name( perk_data.id )
		local pickup_count = tonumber( GlobalsGetValue( flag_name .. "_PICKUP_COUNT", "0" ) )
		
		if ( pickup_count >= perk_data.stackable_maximum ) then
			is_stackable = false
			is_rare = false
		end
	end
	
	return is_stackable, is_rare
end


 -- this generates global perk spawn order for current world seed
function perk_get_spawn_order()
	-- this function should return the same results no matter when or where during a run it is called.
	-- this function should have no side effects.
	local MIN_DISTANCE_BETWEEN_DUPLICATE_PERKS = 4
	local PERK_SPAWN_ORDER_LENGTH = 300
	local PERK_DUPLICATE_AVOIDANCE_TRIES = 400

	SetRandomSeed( 1, 2 ) 

	-- NOTE( Petri ): 23.4.2020 - The problem with this perk list spawning code is that it all the stackable perks end up at the bottom
	-- to fix this we just shift a bunch of the perks so that the segment hat is full of stackable perks is in about the middle

	-- NOTE( Petri ): 23.4.2020 - This needs a reimplementation and redesign. The problem of distribution between stackable and 
	-- non stackable perks causes all kinds of issues.

	--[[
	local create_perk_pools = function()
		local perks_stackable = {}
		local perks_not_stackable = {}

		for i,perk_data in ipairs(perk_list) do
			if ( perk_data.not_in_default_perk_pool == nil or perk_data.not_in_default_perk_pool == false ) then
				
				if( perk_is_stackable( perk_data ) ) then
					table.insert( perks_stackable, perk_data )
				else
					table.insert( perks_not_stackable, perk_data )
				end
			end
		end

		return perks_stackable, perks_not_stackable
	end


	local perk_pool_stackable, perk_pool_non_stackable = create_perk_pools()

	perk_pool_stackable = shuffle_array( perk_pool_stackable )
	perk_pool_non_stackable = shuffle_array( perk_pool_non_stackable )

	local result = {}
	local perk_pool_stackable_i = 1
	local perk_pool_non_stackable_i = 1

	for i=1,PERK_SPAWN_ORDER_LENGTH do
		local how_many_left = PERK_SPAWN_ORDER_LENGTH - i

	end
	
	-- table.insert( result, perk_data.id )
	-- while( #perk_pool_stackable + #perk_pool_non_stackable < PERK_SPAWN_ORDER_LENGTH ) do
	-- 	local temp_array = shuffle_array( perk_pool_non_stackable )
	-- end
	]]--
	
	-- NOTE( Arvi ): 26.10.2020 - the dummied-out part was formatted wrong; I tried to look for the correct spot where the dummying was supposed to end.
	
	----
	local create_perk_pool = function()
		local result = {}

		for i,perk_data in ipairs(perk_list) do
			if ( perk_data.not_in_default_perk_pool == nil or perk_data.not_in_default_perk_pool == false ) then
				table.insert( result, perk_data )
			end
		end

		return result
	end

	----
	local perk_pool = create_perk_pool()

	local result = { }
	local nonstackables = { }

	for i=1,PERK_SPAWN_ORDER_LENGTH do
		local tries = 0
		local perk_data = nil

		while tries < PERK_DUPLICATE_AVOIDANCE_TRIES do
			local ok = true
			if #perk_pool == 0 then
				perk_pool = create_perk_pool()
			end

			local index_in_perk_pool = Random( 1, #perk_pool )
			perk_data = perk_pool[index_in_perk_pool]
			
			local can_stack,only_once_per_spawn_order = perk_is_stackable( perk_data )

			if can_stack and ( only_once_per_spawn_order == false ) then
				
				-- Perks may have a special reoccurrence value
				local min_distance = perk_data.stackable_how_often_reappears or MIN_DISTANCE_BETWEEN_DUPLICATE_PERKS
				
				for ri=#result-min_distance,#result do --  ensure stackable perks are not spawned too close to each other
					if ri >= 1 and result[ri] == perk_data.id then
						ok = false
						break
					end
				end
			else
				if ( can_stack == false ) then --  mark actual nonstackable perks so that they never appear again
					nonstackables[perk_data.id] = 1
				end
				
				table.remove( perk_pool, index_in_perk_pool ) -- remove non-stackable perks and rare stackable perks from the pool
			end

			if ok then
				--print( "Ignoring " .. perk_data.id .. " because it tried to reappear too soon" )
				break
			end

			tries = tries + 1
		end

		table.insert( result, perk_data.id )
	end
	
	-- remove non-stackable perks already collected from the list
	for i,perk_id in pairs( result ) do
		local flag_name = get_perk_picked_flag_name( perk_id )
		local pickup_count = tonumber( GlobalsGetValue( flag_name .. "_PICKUP_COUNT", "0" ) )
		
		if ( nonstackables[perk_id] ~= nil ) and ( ( pickup_count > 0 ) or GameHasFlagRun( flag_name ) ) then
			print( "Removed " .. perk_id .. " from perk pool because it had been picked up already" )
			table.remove( result, i )
		end
	end

	-- shift the results a random number forward
	local new_start_i = Random( 10, 20 )
	local real_result = {}
	for i=1,PERK_SPAWN_ORDER_LENGTH do
		real_result[i] = result[ new_start_i ]
		new_start_i = new_start_i + 1
		if( new_start_i > #result ) then
			new_start_i = 1
		end
	end

	-- debug - print duplicates
	-- for i,id in ipairs(result) do
	-- 	for i2,id2 in ipairs(result) do
	-- 		if id == id2 and i ~= i2 then
	-- 			print(id .. " " .. tostring(i) .. " and " .. tostring(i2))
	-- 		end
	-- 	end
	-- end

	return real_result
end

-- picks a perk. entity_item should be created by spawn_perk
function perk_pickup( entity_item, entity_who_picked, item_name, do_cosmetic_fx, kill_other_perks )
	-- fetch perk info ---------------------------------------------------

	local pos_x, pos_y = EntityGetTransform( entity_item )
	
	local perk_name = "PERK_NAME_NOT_DEFINED"
	local perk_desc = "PERK_DESCRIPTION_NOT_DEFINED"

	local perk_id = ""
	edit_component( entity_item, "VariableStorageComponent", function(comp,vars)
		perk_id = ComponentGetValue( comp, "value_string" )
	end)

	local perk_data = get_perk_with_id( perk_list, perk_id )
	if perk_data == nil then
		return
	end
	
	-- Get perk's flag name
	
	local flag_name = get_perk_picked_flag_name( perk_id )
	
	-- update how many times the perk has been picked up this run -----------------
	
	local pickup_count = tonumber( GlobalsGetValue( flag_name .. "_PICKUP_COUNT", "0" ) )
	pickup_count = pickup_count + 1
	GlobalsSetValue( flag_name .. "_PICKUP_COUNT", tostring( pickup_count ) )

	-- load perk for entity_who_picked -----------------------------------
	local add_progress_flags = not GameHasFlagRun( "no_progress_flags_perk" )
	
	if add_progress_flags then
		local flag_name_persistent = string.lower( flag_name )
		if ( not HasFlagPersistent( flag_name_persistent ) ) then
			GameAddFlagRun( "new_" .. flag_name_persistent )
		end
		AddFlagPersistent( flag_name_persistent )
	end
	GameAddFlagRun( flag_name )

	-- add a game effect or two
	if perk_data.game_effect ~= nil then
		local game_effect_comp = GetGameEffectLoadTo( entity_who_picked, perk_data.game_effect, true )
		if game_effect_comp ~= nil then
			ComponentSetValue( game_effect_comp, "frames", "-1" )
		end
	end
	
	if perk_data.game_effect2 ~= nil then
		local game_effect_comp = GetGameEffectLoadTo( entity_who_picked, perk_data.game_effect2, true )
		if game_effect_comp ~= nil then
			ComponentSetValue( game_effect_comp, "frames", "-1" )
		end
	end
	
	-- particle effect only applied once
	if perk_data.particle_effect ~= nil and ( pickup_count <= 1 ) then
		local particle_id = EntityLoad( "data/entities/particles/perks/" .. perk_data.particle_effect .. ".xml" )
		
		EntityAddChild( entity_who_picked, particle_id )
	end
	
	-- certain other perks may be marked as picked-up
	if perk_data.remove_other_perks ~= nil then
		for i,v in ipairs( perk_data.remove_other_perks ) do
			local f = get_perk_picked_flag_name( v )
			GameAddFlagRun( f )
		end
	end

	if perk_data.func ~= nil then
		perk_data.func( entity_item, entity_who_picked, item_name, pickup_count )
	end
	
	perk_name = GameTextGetTranslatedOrNot( perk_data.ui_name )
	perk_desc = GameTextGetTranslatedOrNot( perk_data.ui_description )

	-- add ui icon etc
	local entity_ui = EntityCreateNew( "" )
	EntityAddComponent( entity_ui, "UIIconComponent", 
	{ 
		name = perk_data.ui_name,
		description = perk_data.ui_description,
		icon_sprite_file = perk_data.ui_icon
	})
	EntityAddTag( entity_ui, "perk_entity" )
	EntityAddChild( entity_who_picked, entity_ui )

	-- cosmetic fx -------------------------------------------------------
	if do_cosmetic_fx then
		local enemies_killed = tonumber( StatsBiomeGetValue("enemies_killed") )
		
		if( enemies_killed ~= 0 ) then
			EntityLoad( "data/entities/particles/image_emitters/perk_effect.xml", pos_x, pos_y )
		else
			EntityLoad( "data/entities/particles/image_emitters/perk_effect_pacifist.xml", pos_x, pos_y )
		end
		
		GamePrintImportant( GameTextGet( "$log_pickedup_perk", GameTextGetTranslatedOrNot( perk_name ) ), perk_desc )
	end
	
	-- disable the perk rerolling machine --------------------------------
	local x,y = EntityGetTransform( entity_who_picked )
	local rerolls = EntityGetInRadiusWithTag( x, y, 200, "perk_reroll_machine" )
	local other_perks = EntityGetInRadiusWithTag( x, y, 200, "item_perk" )
	
	print( "Other perks: " .. tostring( #other_perks ) .. ", " .. tostring( kill_other_perks ) )
	
	local disable_reroll = false
	
	if ( #other_perks <= 1 ) then
		disable_reroll = true
	end
	
	-- remove all perk items (also this one!) ----------------------------
	if kill_other_perks then
		local perk_destroy_chance = tonumber( GlobalsGetValue( "TEMPLE_PERK_DESTROY_CHANCE", "100" ) )
		SetRandomSeed( pos_x, pos_y )

		if( Random( 1, 100 ) <= perk_destroy_chance ) then
			-- removes all the perks
			local all_perks = EntityGetWithTag( "perk" )
			disable_reroll = true
		
			if ( #all_perks > 0 ) then
				for i,entity_perk in ipairs(all_perks) do
					if entity_perk ~= entity_item then
						EntityKill( entity_perk )
					end
				end
			end
		end
	end
	
	if disable_reroll then
		for i,rid in ipairs( rerolls ) do
			local reroll_comp = EntityGetFirstComponent( rid, "ItemCostComponent" )
			
			if ( reroll_comp ~= nil ) then
				EntitySetComponentIsEnabled( rid, reroll_comp, false )
			end
			
			reroll_comp = EntityGetComponent( rid, "SpriteComponent", "shop_cost" )
			
			if ( reroll_comp ~= nil ) then
				for a,b in ipairs( reroll_comp ) do
					EntitySetComponentIsEnabled( rid, b, false )
				end
			end
			
			EntitySetComponentsWithTagEnabled( rid, "perk_reroll_disable", false )
		end
	end

	EntityKill( entity_item ) -- entity item should always be killed, hence we don't kill it in the above loop
end

 -- spawns one perk
function perk_spawn( x, y, perk_id, dont_remove_other_perks_ )
	local perk_data = get_perk_with_id( perk_list, perk_id )
	if ( perk_data == nil ) then
		print_error( "spawn_perk( perk_id ) called with'" .. perk_id .. "' - no perk with such id exists." )
		return
	end

	print( "spawn_perk " .. tostring( perk_id ) .. " " .. tostring( x ) .. " " .. tostring( y ) )

	---
	local entity_id = EntityLoad( "data/entities/items/pickup/perk.xml", x, y )
	if ( entity_id == nil ) then
		return
	end
	
	local dont_remove_other_perks = dont_remove_other_perks_ or false
	
	-- init perk item
	EntityAddComponent( entity_id, "SpriteComponent", 
	{ 
		image_file = perk_data.perk_icon or "data/items_gfx/perk.xml",  
		offset_x = "8", 
		offset_y = "8", 
		update_transform = "1" ,
		update_transform_rotation = "0",
	} )

	EntityAddComponent( entity_id, "UIInfoComponent", 
	{ 
		name = perk_data.ui_name,
	} )

	EntityAddComponent( entity_id, "ItemComponent", 
	{ 
		item_name = perk_data.ui_name,
		ui_description = perk_data.ui_description,
		ui_display_description_on_pick_up_hint = "1",
		play_spinning_animation = "0",
		play_hover_animation = "0",
		play_pick_sound = "0",
	} )

	EntityAddComponent( entity_id, "SpriteOffsetAnimatorComponent", 
	{ 
      sprite_id="-1" ,
      x_amount="0" ,
      x_phase="0" ,
      x_phase_offset="0" ,
      x_speed="0" ,
      y_amount="2" ,
      y_speed="3",
	} )

	EntityAddComponent( entity_id, "VariableStorageComponent", 
	{ 
		name = "perk_id",
		value_string = perk_data.id,
	} )
	
	if dont_remove_other_perks then
		EntityAddComponent( entity_id, "VariableStorageComponent", 
		{ 
			name="perk_dont_remove_others",
			value_bool="1",
		} )
	end

	return entity_id
end

-- spawns a random perk
function perk_spawn_random( x, y, dont_remove_others_ )
	local perks = perk_get_spawn_order()
	local result_id = 0
	
	local next_perk_index = tonumber( GlobalsGetValue( "TEMPLE_NEXT_PERK_INDEX", "1" ) )
	local perk_id = perks[next_perk_index]
	
	next_perk_index = next_perk_index + 1
	if next_perk_index > #perks then
		next_perk_index = 1
	end
	GlobalsSetValue( "TEMPLE_NEXT_PERK_INDEX", tostring(next_perk_index) )
	
	local dont_remove_others = dont_remove_others_ or false

	GameAddFlagRun( get_perk_flag_name(perk_id) )
	result_id = perk_spawn( x, y, perk_id, dont_remove_others )
	
	return result_id
end

-- spawns perk with text-based id
function perk_spawn_with_name( x, y, id, dont_remove_others_ )
	local result_id
	
	local dont_remove_others = dont_remove_others_ or false
	
	for i,v in ipairs( perk_list ) do
		if ( v.id == id ) then
			GameAddFlagRun( get_perk_flag_name(v.id) )
			result_id = perk_spawn( x, y, v.id, dont_remove_others )
		end
	end
	
	return result_id
end

-- this spawns perks in the temple
function perk_spawn_many( x, y, dont_remove_others_ )
	local perk_count = tonumber( GlobalsGetValue( "TEMPLE_PERK_COUNT", "3" ) )
	
	local count = perk_count
	local width = 60
	local item_width = width / count
	local dont_remove_others = dont_remove_others_ or false

	local perks = perk_get_spawn_order()

	for i=1,count do
		local next_perk_index = tonumber( GlobalsGetValue( "TEMPLE_NEXT_PERK_INDEX", "1" ) )
		local perk_id = perks[next_perk_index]
		
		next_perk_index = next_perk_index + 1
		if next_perk_index > #perks then
			next_perk_index = 1
		end
		GlobalsSetValue( "TEMPLE_NEXT_PERK_INDEX", tostring(next_perk_index) )

		GameAddFlagRun( get_perk_flag_name(perk_id) )
		perk_spawn( x + (i-0.5)*item_width, y, perk_id, dont_remove_others )
	end
end


-- first remove all the perks that are visible and count how many and where they are
function perk_reroll_perks( entity_item )

	local perk_spawn_pos = {}
	local perk_count = 0

	-- remove all perk items (also this one!) ----------------------------
	local all_perks = EntityGetWithTag( "perk" )
	local x, y
	if ( #all_perks > 0 ) then
		for i,entity_perk in ipairs(all_perks) do
			if entity_perk ~= nil then
				perk_count = perk_count + 1
				x, y = EntityGetTransform( entity_perk )
				table.insert( perk_spawn_pos, { x, y } )

				EntityKill( entity_perk )
			end
		end
	end

	local perk_reroll_count = tonumber( GlobalsGetValue( "TEMPLE_PERK_REROLL_COUNT", "0" ) )
	perk_reroll_count = perk_reroll_count + 1
	GlobalsSetValue( "TEMPLE_PERK_REROLL_COUNT", tostring( perk_reroll_count ) )

	local count = perk_count
	local width = 60
	local item_width = width / count

	local perks = perk_get_spawn_order()

	for i,v in ipairs(perk_spawn_pos) do
		x = v[1]
		y = v[2]

		local next_perk_index = tonumber( GlobalsGetValue( "TEMPLE_REROLL_PERK_INDEX", tostring(#perks) ) )
		local perk_id = perks[next_perk_index]
		
		next_perk_index = next_perk_index - 1
		if next_perk_index <= 0 then
			next_perk_index = #perks
		end
		
		local is_stackable = get_perk_stackable_status( perk_id )
		local tries = 0
		
		while ( is_stackable == false ) and ( tries < 50 ) do
			perk_id = perks[next_perk_index]
			
			next_perk_index = next_perk_index - 1
			if next_perk_index <= 0 then
				next_perk_index = #perks
			end
			
			tries = tries + 1
			
			is_stackable = get_perk_stackable_status( perk_id )
		end
		
		GlobalsSetValue( "TEMPLE_REROLL_PERK_INDEX", tostring(next_perk_index) )

		GameAddFlagRun( get_perk_flag_name(perk_id) )
		perk_spawn( x, y, perk_id )
	end
end

function get_perk_stackable_status( perk_id )
	for i,v in ipairs( perk_list ) do
		if ( v.id == perk_id ) then
			local result = perk_is_stackable( v )
			
			if ( result == false ) then
				local flag_name = get_perk_picked_flag_name( perk_id )
				
				if GameHasFlagRun( flag_name ) then
					return false
				end
			end
			
			return true
		end
	end
	
	return false
end

function DEBUG_PERKS()


	local perks = perk_get_spawn_order()
	for i,perk in ipairs(perks) do
		local is_stackable = perk_is_stackable( get_perk_with_id( perk_list, perk ) )
		print( "perk_is_stackable(" .. perk .. "): " .. tostring( is_stackable ) )
	end

	-- make sure every perk is in here
	function table_contains(table, element)
		for _, value in pairs(table) do
			if value == element then
				return true
			end
		end
		return false
	end

	for i,perk_data in ipairs(perk_list) do
		local perk_id = perk_data.id
		if( table_contains( perks, perk_id) == false ) then
			print( "perk: " .. perk_id .. " is NOT included" )
		end
	
		-- table.insert( all_perks, perk_data.id )
	end	


	local create_perk_pools = function()
		local perks_stackable = {}
		local perks_not_stackable = {}

		for i,perk_data in ipairs(perk_list) do
			if ( perk_data.not_in_default_perk_pool == nil or perk_data.not_in_default_perk_pool == false ) then
				
				if( perk_is_stackable( perk_data ) ) then
					table.insert( perks_stackable, perk_data )
				else
					table.insert( perks_not_stackable, perk_data )
				end
			end
		end

		return perks_stackable, perks_not_stackable
	end


	local perk_pool_stackable, perk_pool_non_stackable = create_perk_pools()

	-- perk_pool_stackable = shuffle_array( perk_pool_stackable )
	-- perk_pool_non_stackable = shuffle_array( perk_pool_non_stackable )

	print( "stackable_count:" .. tostring( #perk_pool_stackable ) )
	print( "non_stackable_count:" .. tostring( #perk_pool_non_stackable ) )

end

function remove_all_perks()
	local players = get_players()
	local player_id = players[1]
	
	if ( player_id ~= nil ) then
		for i,perk_data in ipairs(perk_list) do
			local perk_id = perk_data.id
			
			local flag_name = get_perk_picked_flag_name( perk_id )
			local pickup_count = tonumber( GlobalsGetValue( flag_name .. "_PICKUP_COUNT", "0" ) )
			
			if GameHasFlagRun( flag_name ) or ( pickup_count > 0 ) then
				GameRemoveFlagRun( flag_name )
				pickup_count = 0
				GlobalsSetValue( flag_name .. "_PICKUP_COUNT", tostring( pickup_count ) )
				
				if ( perk_data.game_effect ~= nil ) then
					local comp = GameGetGameEffect( player_id, perk_data.game_effect )
					
					if ( comp ~= NULL_ENTITY ) then
						ComponentSetValue2( comp, "frames", 1 )
					end
				end
				
				if ( perk_data.game_effect2 ~= nil ) then
					local comp = GameGetGameEffect( player_id, perk_data.game_effect2 )
					
					if ( comp ~= NULL_ENTITY ) then
						ComponentSetValue2( comp, "frames", 1 )
					end
				end
				
				if ( perk_data.func_remove ~= nil ) then
					perk_data.func_remove( player_id )
				end
				
				local c = EntityGetAllChildren( player_id )
				if ( c ~= nil ) then
					for a,child in ipairs( c ) do
						if EntityHasTag( child, "perk_entity" ) then
							EntityKill( child )
						end
					end
				end
				
				if ( perk_data.remove_other_perks ~= nil ) then
					for a,b in ipairs( perk_data.remove_other_perks ) do
						local f = get_perk_picked_flag_name( b )
						GameRemoveFlagRun( f )
					end
				end
			end
		end
		
		local comps = EntityGetAllComponents( player_id )
		for i,v in ipairs( comps ) do
			if ComponentHasTag( v, "perk_component" ) then
				EntityRemoveComponent( player_id, v )
			end
		end
		
		add_halo_level( player_id, 0, 0)
		
		GlobalsSetValue( "PLAYER_RATTINESS_LEVEL", "0" )
		GlobalsSetValue( "PLAYER_FUNGAL_LEVEL", "0" )
		GlobalsSetValue( "PLAYER_GHOSTNESS_LEVEL", "0" )
		GlobalsSetValue( "PLAYER_LUKKINESS_LEVEL", "0" )
		GlobalsSetValue( "PLAYER_HALO_LEVEL", "0" )
		
		EntitySetComponentsWithTagEnabled( player_id, "lukki_enable", false )
		EntitySetComponentsWithTagEnabled( player_id, "player_hat", false )
		
		local hat2 = EntityGetComponent( player_id, "SpriteComponent", "player_hat2" )
		
		if ( hat2 ~= nil ) then
			EntitySetComponentsWithTagEnabled( player_id, "player_hat2_shadow", true )
		end
	end
end

function create_all_player_perks( x, y )
	local perks_to_spawn = {}
	
	for i,perk_data in ipairs(perk_list) do
		local perk_id = perk_data.id
		
		local flag_name = get_perk_picked_flag_name( perk_id )
		local pickup_count = tonumber( GlobalsGetValue( flag_name .. "_PICKUP_COUNT", "0" ) )
		
		if GameHasFlagRun( flag_name ) or ( pickup_count > 0 ) then
			table.insert( perks_to_spawn, { perk_id, pickup_count } )
			print( "Added " .. perk_id .. ", pickup count " .. tostring( pickup_count ) )
		end
	end
	
	local full_arc = math.pi
	local count = #perks_to_spawn
	local arc_offset = full_arc * 0.04
	
	local angle = 0
	local inc = ( full_arc ) / count
	
	local initlen = 24
	local len_inc = 16
	
	for i,v in ipairs( perks_to_spawn ) do
		local pid = v[1]
		local pcount = v[2]
		
		if ( pcount > 0 ) then
			for j=1,pcount do
				local px = x + math.cos( angle ) * ( initlen + (j-1) * len_inc )
				local py = y - math.sin( angle ) * ( initlen + (j-1) * len_inc )
				perk_spawn_with_name( px, py, pid, true )
			end
		end
		
		angle = angle + inc
	end
end