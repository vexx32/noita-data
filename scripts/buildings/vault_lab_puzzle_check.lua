dofile_once("data/scripts/lib/utilities.lua")

function material_area_checker_success( pos_x, pos_y )
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform(entity_id)

	local spawn_x = x + 70
	local spawn_y = y + 10
	
	EntityLoad( "data/entities/items/pickup/chest_random.xml", spawn_x, spawn_y)
	EntityLoad("data/entities/particles/image_emitters/magical_symbol.xml", spawn_x, spawn_y)
	GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", spawn_x, spawn_y)
	
	print("puzzle done")
	
	for _,v in ipairs(EntityGetInRadiusWithTag( x, y, 30,"vault_lab_puzzle")) do
		EntityKill(v)
	end
end
