dofile_once("data/scripts/lib/utilities.lua")

function get_portal_position()
	local biome_x_min = -2550
	local biome_x_max = 2000
	local biome_y_min = 6750
	local biome_y_max = 8050
	local rim = 200
	local portal_x = ProceduralRandomi(209,13,biome_x_min + rim,biome_x_max - rim)
	local portal_y = ProceduralRandomi(211,1.9,biome_y_min + rim,biome_y_max - rim)
	--print("portal position: " .. portal_x .. ", " .. portal_y)
	return portal_x, portal_y
end