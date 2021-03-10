dofile_once("data/scripts/lib/utilities.lua")

local DEBUG = false
local lerp_speed = 0.92
local default_gravity = 380 -- slightly stronger than default
local fly_gravity = default_gravity * 0.9
local hover_gravity = default_gravity * 0.1

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
local player_id = EntityGetRootEntity(entity_id)

component_readwrite( EntityGetFirstComponent( player_id, "CharacterPlatformingComponent" ), { pixel_gravity = 350 }, function(comp)
	if DEBUG then GameCreateSpriteForXFrames( "data/particles/radar_enemy_strong.png", x, y + comp.pixel_gravity * 0.1 ) end
	
	local gravity = default_gravity
	
	-- read controls input
	component_read(EntityGetFirstComponent(player_id, "ControlsComponent"), { mButtonDownDown = false, mButtonDownUp = false }, function(controls_comp)
		if controls_comp.mButtonDownDown then
			-- float down, ignore walls
			comp.pixel_gravity = lerp(comp.pixel_gravity, default_gravity, lerp_speed)
			return
		elseif controls_comp.mButtonDownUp then
			-- flying
			gravity = fly_gravity
		else
			-- not flying
			gravity = hover_gravity
		end
	end)
	
	-- check if limbs are attached
	for _,limb_entity in ipairs(EntityGetInRadiusWithTag(x, y, 2, "attack_foot_walker")) do
		local limb = EntityGetFirstComponent(limb_entity, "IKLimbWalkerComponent")
		if limb ~= nil then
			if ComponentGetValue2(limb, "mState") > 0 then
				-- climb
				comp.pixel_gravity = lerp(comp.pixel_gravity, gravity, lerp_speed)
				if DEBUG then GameCreateSpriteForXFrames( "data/particles/radar_wand_strong.png", x, y) end
				return
			end
		end
	end

	-- not climbing
	comp.pixel_gravity = lerp(comp.pixel_gravity, default_gravity, lerp_speed)
end)
