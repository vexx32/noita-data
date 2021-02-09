dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )
	local flag_status = HasFlagPersistent( "card_unlocked_rain" )
	
	SetRandomSeed( x, y * GameGetFrameNum() )
	local opts = { "WORM_RAIN", "METEOR_RAIN" }
	local rnd = Random( 1, #opts )
	
	if flag_status then
		CreateItemActionEntity( "WORM_RAIN", x - 16, y )
		CreateItemActionEntity( "METEOR_RAIN", x + 16, y )
	else
		CreateItemActionEntity( "WORM_RAIN", x - 16, y )
		CreateItemActionEntity( "METEOR_RAIN", x + 16, y )
		EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  x, y )
	end
	
	EntityLoad( "data/entities/items/wand_unshuffle_05.xml",  x - 24, y )
	EntityLoad( "data/entities/items/wand_level_06.xml",  x + 24, y )
	
	AddFlagPersistent( "card_unlocked_rain" )
	AddFlagPersistent( "miniboss_pit" )
end