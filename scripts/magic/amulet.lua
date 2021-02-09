dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()

if HasFlagPersistent( "secret_amulet" ) then
	EntitySetComponentsWithTagEnabled( entity_id, "player_amulet", true )
end