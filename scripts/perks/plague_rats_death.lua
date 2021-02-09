dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )
	
	local extra_hp = math.max( 0, pos_y * 0.0002 )
	local extra_damage = math.max( 0, pos_y * 0.0001 )
	local rats = EntityGetWithTag( "plague_rats" )
	
	if ( #rats < 30 ) then
		for i=1,2 do
			local rnd = Random( 1, 100 )
			
			if ( rnd > 50 ) then
				EntityLoad( "data/entities/misc/perks/plague_rats_rat.xml", pos_x, pos_y )
			end
		end
	end
end