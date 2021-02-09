dofile_once("data/scripts/lib/utilities.lua")

local range = 240
local projectile_velocity = 600
local scatter = 0.2

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity(entity_id)
local pos_x, pos_y = EntityGetTransform( entity_id )

SetRandomSeed(pos_x + GameGetFrameNum(), pos_y)
projectile_velocity = Random( 550, 750 )

-- locate nearest enemy
local enemy, enemy_x, enemy_y
local min_dist = 9999
for _,id in pairs(EntityGetInRadiusWithTag(pos_x, pos_y, range, "mortal")) do
	-- is target a valid enemy
	if (EntityGetComponent(id, "GenomeDataComponent") ~= nil) and (EntityGetHerdRelation(root_id, id) < 90) and (not IsPlayer( id )) then
		local x, y = EntityGetFirstHitboxCenter( id )
		local dist = get_distance(pos_x, pos_y, x, y)
		if dist < min_dist then
			min_dist = dist
			enemy = id
			enemy_x = x
			enemy_y = y
		end
	end
end

if not enemy then return end

-- check los
if RaytraceSurfacesAndLiquiform(pos_x, pos_y, enemy_x, enemy_y) then return end

-- direction
local vel_x, vel_y = vec_sub(enemy_x, enemy_y, pos_x, pos_y)
vel_x,vel_y = vec_normalize(vel_x, vel_y)

-- scatter
vel_x,vel_y = vec_rotate(vel_x,vel_y, rand(-scatter, scatter))

local storages = EntityGetComponent( entity_id, "VariableStorageComponent" )
local projectile = "data/entities/projectiles/deck/light_bullet.xml"

if ( storages ~= nil ) then
	for i,comp in ipairs( storages ) do
		local name = ComponentGetValue2( comp, "name" )
		if ( name == "projectile_memory" ) then
			projectile = ComponentGetValue2( comp, "value_string" )
			break
		end
	end
end

if ( #projectile == 0 ) then
	projectile = "data/entities/projectiles/deck/light_bullet.xml"
end

if ( #projectile > 0 ) then
	-- apply velocity & shoot
	vel_x,vel_y = vec_mult(vel_x,vel_y, projectile_velocity)
	shoot_projectile( root_id, projectile, pos_x, pos_y, vel_x, vel_y)

	-- delay randomly so that multiple ghosts shoot at different times
	local comp_id = GetUpdatedComponentID()
	if (comp_id ~= 0) then
		ComponentSetValue(comp_id, "execute_every_n_frame", 45 + Random(20))
	end
end

