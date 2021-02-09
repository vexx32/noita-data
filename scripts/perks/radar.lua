dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )
pos_y = pos_y - 4 -- offset to middle of character

local range = 400
local indicator_distance = 20

-- ping nearby enemies
for _,enemy_id in pairs(EntityGetInRadiusWithTag( pos_x, pos_y, range, "enemy")) do
	local enemy_x, enemy_y = EntityGetTransform(enemy_id)

	local dir_x = enemy_x - pos_x
	local dir_y = enemy_y - pos_y
	local distance = get_magnitude(dir_x, dir_y)

	-- sprite positions around character
	dir_x,dir_y = vec_normalize(dir_x,dir_y)
	local indicator_x = pos_x + dir_x * indicator_distance
	local indicator_y = pos_y + dir_y * indicator_distance

	-- display sprite based on proximity
	if distance > range * 0.5 then
		GameCreateSpriteForXFrames( "data/particles/radar_enemy_faint.png", indicator_x, indicator_y )
	elseif distance > range * 0.25 then
		GameCreateSpriteForXFrames( "data/particles/radar_enemy_medium.png", indicator_x, indicator_y )
	else
		GameCreateSpriteForXFrames( "data/particles/radar_enemy_strong.png", indicator_x, indicator_y )
	end
end
