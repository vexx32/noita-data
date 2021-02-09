dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/items/chest_random.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	SetRandomSeed( 0, 10 )
	
	make_random_card(pos_x, pos_y)

	-- set flag with name of monster. 
	GameAddFlagRun(EntityGetName(entity_id) .. "_killed")

	-- if all 4 monsters killed, add persistent flag for treetop pillar
	if GameHasFlagRun("$animal_gate_monster_a_killed")
	and GameHasFlagRun("$animal_gate_monster_b_killed")
	and GameHasFlagRun("$animal_gate_monster_c_killed")
	and GameHasFlagRun("$animal_gate_monster_d_killed") then
		AddFlagPersistent( "miniboss_gate_monsters" )
	end
end