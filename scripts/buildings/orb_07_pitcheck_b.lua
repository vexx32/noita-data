dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )

	local pid = EntityLoad( "data/entities/animals/boss_pit/boss_pit.xml", x - 160, y + 256 )
	PhysicsApplyForce( pid, 0, -80 )
end