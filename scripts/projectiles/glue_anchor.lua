dofile_once("data/scripts/lib/utilities.lua")

local force = 0.08
local fall_speed = 3

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)
local t = ComponentGetValue2(GetUpdatedComponentID(), "mTimesExecuted")

-- add tag for hitting this entity with projectiles and for other anchors to attach to
if t == 0 then EntityAddTag( entity_id, "hittable") end

-- identify if this targets terrain or entity
local target = -1
component_readwrite(EntityGetFirstComponent( entity_id, "VariableStorageComponent" ), { value_int = 0 }, function(comp)
	if not EntityGetIsAlive(comp.value_int) then comp.value_int = -1 end
	target = comp.value_int
end)


if target < 0 then
	-- no target entity. add physics to tie to a surface
	local physics_comp = EntityGetFirstComponent(entity_id, "PhysicsBody2Component")
	if physics_comp == nil then
		EntityAddComponent2( entity_id, "PhysicsBody2Component",
		{
			angular_damping = 0.2,
			destroy_body_if_entity_destroyed = true,
		})
		EntityAddComponent2( entity_id, "PhysicsImageShapeComponent",
		{
			image_file = "data/projectiles_gfx/glue_anchor.png",
			material = CellFactory_GetType("glue"),
			body_id = 1,
			is_root = true,
			centered = true,
			is_circle = false,
		})

		-- attach to surface if found
		local dist = 20
		local found_normal,nx,ny = GetSurfaceNormal( pos_x, pos_y, dist, 9 )
		if found_normal then
			EntityAddComponent2( entity_id, "PhysicsJoint2Component",
			{
				type = "WELD_JOINT_ATTACH_TO_NEARBY_SURFACE",
				offset_x = 0,
				offset_y = 0,
				body1_id = 1,
				break_force = 80,
				break_distance = dist * 1.5,
				ray_x = nx * dist * 1.2,
				ray_y = ny * dist * 1.2,
			})
		end
	end
end


local target_x, target_y = EntityGetTransform(target)
if target_x ~= nil and target_x ~= 0 and target_y ~= 0 then
	-- snap anchor to target
	EntitySetTransform(entity_id, target_x, target_y - 2)
	
	-- pull target closer to anchor
	local center_x, center_y = EntityGetTransform(EntityGetParent(entity_id))
	
	local vx = center_x - target_x
	local vy = center_y - target_y

	-- prevent pulling into a wall by checking if glue center (parent) is inside platform
	local dist = get_magnitude(vx, vy)
	if dist < 8 or RaytracePlatforms(center_x, center_y, center_x + 1, center_y) then
		--print("abort pull")
		return
	end

	-- calculate force
	local age_factor = map(t, 0, 300, 1, 0.25) -- glue pull gets weaker over time
	vx, vy = vec_mult(vx, vy, force * age_factor)

	-- use physics force if applicable
	local comp = EntityGetFirstComponent(target, "PhysicsBodyComponent") or EntityGetFirstComponent(target, "PhysicsBody2Component")
	if comp ~= nil and comp ~= 0 then
		PhysicsApplyForce(target, target_x - vx, target_y - vy)
	else
		EntityApplyTransform(target, target_x + vx, target_y + vy)
		--[[
		-- apply to velocity comp
		local velocitycomp = EntityGetFirstComponent(target, "VelocityComponent")
		if velocitycomp ~= nil and velocitycomp ~= 0 then
			vx,vy = vec_add(vx, vy, ComponentGetValue2( velocitycomp, "mVelocity"))
			ComponentSetValue2( velocitycomp, "mVelocity", vx, vy)
		else
			print("no velocity component found")
		end
		--]]
	end
end
