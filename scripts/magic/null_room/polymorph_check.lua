
function polymorphing_to( entity_id, polymorph_target )
	-- print( "polymorphing to" )

	-- local entity_id = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local range = 300

	local table_of_entities = EntityGetInRadiusWithTag(pos_x, pos_y, range, "no_polymorphing_allowed")
	-- check if empty table
	if( next(table_of_entities) ~= nil )then

		SetRandomSeed( entity_id, GameGetFrameNum() )

		-- print( "god are angry!" )
		local entity_polyban = table_of_entities[1]
		local px, py = EntityGetTransform( entity_polyban )
		if( Random( 1, 100 ) <= 50 ) then
			px = pos_x
			py = pos_y - 30
		end
		px = px + Random( -40, 40 )
		py = py + Random( -40, 40 )


		-- load extra angry steve
		local steve = nil
		EntityLoad("data/entities/particles/necromancer_twirl_only.xml", px, py )

		local poly_violations = tonumber(GlobalsGetValue("POLYMORPH_VIOLATIONS", 0))
		if poly_violations < 3 then
			steve = EntityLoad("data/entities/animals/necromancer_shop.xml", px, py)
		else
			steve = EntityLoad("data/entities/animals/necromancer_super.xml", px, py)
		end

		poly_violations = poly_violations + 1
		GlobalsSetValue( "POLYMORPH_VIOLATIONS", tostring( poly_violations ) )

	
		local game_effect_comp = GetGameEffectLoadTo( steve, "BERSERK", true )
		if game_effect_comp ~= nil then
			ComponentSetValue( game_effect_comp, "frames", "-1" )
		end

		-- print message
		GamePrintImportant( "$logdesc_gods_are_angry", "" )

	end
end