dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	local flag_status = HasFlagPersistent( "card_unlocked_mestari" )
	
	-- StatsLogPlayerKill( GetUpdatedEntityID() )
	
	local pw = check_parallel_pos( x )
	SetRandomSeed( pw, 30 )
	
	local opts = { "DUPLICATE", "RANDOM_SPELL", "RANDOM_PROJECTILE", "RANDOM_MODIFIER", "RANDOM_STATIC_PROJECTILE", "DRAW_RANDOM", "DRAW_RANDOM_X3", "DRAW_3_RANDOM" }
	local rnd = Random( 1, #opts )
	
	if flag_status then
		for i=1,4 do
			rnd = Random( 1, #opts )
			CreateItemActionEntity( opts[rnd], x - 8 * 4 + (i-1) * 16, y )
			table.remove( opts, rnd )
		end
	else
		for i=1,4 do
			rnd = Random( 1, #opts )
			CreateItemActionEntity( opts[rnd], x - 8 * 4 + (i-1) * 16, y )
			table.remove( opts, rnd )
		end
		EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  x, y )
	end
	
	EntityLoad( "data/entities/items/books/book_mestari.xml",  x - 16, y )
	EntityLoad( "data/entities/items/pickup/wandstone.xml",  x + 16, y )
	
	AddFlagPersistent( "card_unlocked_mestari" )
	AddFlagPersistent( "miniboss_wizard" )
end