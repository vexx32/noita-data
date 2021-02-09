dofile_once("data/scripts/lib/utilities.lua")

function shot( eid )
	if ( eid ~= nil ) and ( eid ~= NULL_ENTITY ) then
		local c = EntityGetFirstComponent( eid, "ProjectileComponent" )
		local vbc = tonumber( GlobalsGetValue( "visited_biomes_count" ) ) or 0
		
		if ( c ~= nil ) and ( vbc > 0 ) and ( EntityHasTag( eid, "projectile_heal" ) == false ) then
			local extra_damage = vbc
			local damage = ComponentGetValue2( c, "damage" ) + extra_damage * 0.1
			ComponentSetValue2( c, "damage", damage )
		end
	end
end

