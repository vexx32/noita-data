HOW TO READ:

FILE CHANGED => +++ b/biome/rainforest_dark.xml
@@ -7,7 +7,7 @@
background_edge_right="data/weather_gfx/edges/background_rainforest_dark_right.png"
background_edge_top="data/weather_gfx/edges/background_rainforest_dark_top.png"
background_edge_bottom="data/weather_gfx/edges/background_rainforest_dark_bottom.png"
REMOVED CODE => - background_edge_priority="10"  
NEW OR CHANGED CODE => + background_edge_priority="9"  
 limit_background_image="0"

                         wang_template_file="data/wang_tiles/rainforest_dark.png"

---

Actual changes below:

    diff --git a/biome/_pixel_scenes.xml b/biome/_pixel_scenes.xml
    index 41fba28..49fc44a 100644
    --- a/biome/_pixel_scenes.xml
    +++ b/biome/_pixel_scenes.xml
    @@ -123,6 +123,12 @@
    		<PixelScene DEBUG_RELOAD_ME="0" background_filename="" clean_area_before="0" colors_filename="data/biome_impl/overworld/snowy_ruins_eye_pillar_visual.png" material_filename="data/biome_impl/overworld/snowy_ruins_eye_pillar.png" pos_x="-2446" pos_y="-223" skip_biome_checks="1" skip_edge_textures="1" >
    		</PixelScene>

    +		<PixelScene DEBUG_RELOAD_ME="0" background_filename="" clean_area_before="0" colors_filename="" material_filename="data/biome_impl/rainbow_cloud.png" pos_x="-14059" pos_y="-2851" skip_biome_checks="1" skip_edge_textures="0" >
    +		</PixelScene>
    +
    +		<PixelScene DEBUG_RELOAD_ME="0" background_filename="" clean_area_before="0" colors_filename="data/biome_impl/overworld/cliff_visual.png" material_filename="data/biome_impl/overworld/cliff.png" pos_x="-12400" pos_y="-400" skip_biome_checks="1" skip_edge_textures="0" >
    +		</PixelScene>
    +
    		<!-- just load an entity -->

    		<!-- music machines have copies on both directly adjacent parallel worlds -->
    @@ -150,7 +156,6 @@
    		<PixelScene pos_x="-1695" pos_y="-1205" just_load_an_entity="data/entities/props/physics_fungus_small.xml" />

    		<PixelScene pos_x="3608" pos_y="934" just_load_an_entity="data/entities/props/physics/bridge_spawner.xml" />
    -
    		<PixelScene pos_x="-9980" pos_y="-30" just_load_an_entity="data/entities/props/physics/bridge_spawner.xml" />

    		<PixelScene pos_x="-6884" pos_y="-165" just_load_an_entity="data/entities/props/physics_protective_armour.xml" />
    @@ -160,28 +165,33 @@
    		<PixelScene pos_x="-12441" pos_y="190" just_load_an_entity="data/entities/buildings/hut_check.xml" />

    		<PixelScene pos_x="9990" pos_y="-1320" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-1576" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-1832" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-2088" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-2344" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-2600" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-2856" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-3112" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-3368" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-3624" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-3880" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    -
    		<PixelScene pos_x="9990" pos_y="-4136" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +
    +		<PixelScene pos_x="-12180" pos_y="-540" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-796" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-1052" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-1308" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-1564" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-1820" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-2076" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-2332" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-2588" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-2844" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-3100" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-3356" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-3612" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-3868" just_load_an_entity="data/entities/misc/platform_wide.xml" />
    +		<PixelScene pos_x="-12180" pos_y="-4124" just_load_an_entity="data/entities/misc/platform_wide.xml" />

    	</mBufferedPixelScenes>
    </PixelScenes>
    diff --git a/biome/winter_caves.xml b/biome/winter_caves.xml
    index 98e3d3a..599ca42 100644
    --- a/biome/winter_caves.xml
    +++ b/biome/winter_caves.xml
    @@ -1,6 +1,6 @@
    <Biome>
    <Topology
    -    name="$biome_coalmine"
    +    name="$biome_winter_caves"
    	type="BIOME_WANG_TILE"
    	background_image="data/weather_gfx/background_cave_04_alt.png"
    	background_edge_left="data/weather_gfx/edges/background_cave_04_alt_left.png"
    diff --git a/biome_impl/coalmine/wandtrap_h_02.png b/biome_impl/coalmine/wandtrap_h_02.png
    index e684f7f..362fb37 100644
    Binary files a/biome_impl/coalmine/wandtrap_h_02.png and b/biome_impl/coalmine/wandtrap_h_02.png differ
    diff --git a/biome_impl/coalmine/wandtrap_h_04.png b/biome_impl/coalmine/wandtrap_h_04.png
    index e32f821..2a333fe 100644
    Binary files a/biome_impl/coalmine/wandtrap_h_04.png and b/biome_impl/coalmine/wandtrap_h_04.png differ
    diff --git a/biome_impl/coalmine/wandtrap_h_07.png b/biome_impl/coalmine/wandtrap_h_07.png
    index d073a47..8588c89 100644
    Binary files a/biome_impl/coalmine/wandtrap_h_07.png and b/biome_impl/coalmine/wandtrap_h_07.png differ
    diff --git a/biome_impl/overworld/snowy_ruins_eye_pillar.png b/biome_impl/overworld/snowy_ruins_eye_pillar.png
    index b6ef1a2..6101520 100644
    Binary files a/biome_impl/overworld/snowy_ruins_eye_pillar.png and b/biome_impl/overworld/snowy_ruins_eye_pillar.png differ
    diff --git a/biome_impl/overworld/snowy_ruins_eye_pillar_visual.png b/biome_impl/overworld/snowy_ruins_eye_pillar_visual.png
    index f78a0ff..a5abc8d 100644
    Binary files a/biome_impl/overworld/snowy_ruins_eye_pillar_visual.png and b/biome_impl/overworld/snowy_ruins_eye_pillar_visual.png differ
    diff --git a/entities/_debug/debug_menu.lua b/entities/_debug/debug_menu.lua
    index 9322827..a296d40 100644
    --- a/entities/_debug/debug_menu.lua
    +++ b/entities/_debug/debug_menu.lua
    @@ -385,6 +385,14 @@ main_menu_items =
    			ConvertMaterialOnAreaInstantly( x-dim, y-dim, dim*2, dim*2, from, to, true, true )
    		end,
    	},
    +	{
    +		ui_name="Test GameShootProjectile bug",
    +		action = function()
    +			local x,y = GameGetCameraPos()
    +			local e = EntityLoad( "data/entities/items/pickup/goldnugget_200.xml" )
    +			GameShootProjectile( 0, x, y, 0, 0, e, false )
    +		end
    +	},
    	{
    		ui_name="Close",
    		action = function() destroy = true end,
    diff --git a/entities/animals/apparition/playerghost.xml b/entities/animals/apparition/playerghost.xml
    index 4d089a7..bca3e8f 100644
    --- a/entities/animals/apparition/playerghost.xml
    +++ b/entities/animals/apparition/playerghost.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_playerghost">
    +<Entity tags="glue_NOT" name="$animal_playerghost">
    	<!-- NOTE! This is the file for the spawned ghost that has an old wand -->
    	<!-- the other playerghost.xml is used as a polymorph target -->

    diff --git a/entities/animals/bloodcrystal_physics.xml b/entities/animals/bloodcrystal_physics.xml
    index 7b64202..d4d6fe2 100644
    --- a/entities/animals/bloodcrystal_physics.xml
    +++ b/entities/animals/bloodcrystal_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_bloodcrystal_physics" >
    +<Entity tags="glue_NOT" name="$animal_bloodcrystal_physics" >

    <PhysicsAIComponent
    		target_vec_max_len="20.0"
    diff --git a/entities/animals/boss_alchemist/boss_alchemist.xml b/entities/animals/boss_alchemist/boss_alchemist.xml
    index db1cb66..1ac6f02 100644
    --- a/entities/animals/boss_alchemist/boss_alchemist.xml
    +++ b/entities/animals/boss_alchemist/boss_alchemist.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_boss_alchemist" tags="touchmagic_immunity,polymorphable_NOT,boss,miniboss,music_energy_100,necrobot_NOT">
    +<Entity name="$animal_boss_alchemist" tags="touchmagic_immunity,polymorphable_NOT,boss,miniboss,music_energy_100,necrobot_NOT,glue_NOT">

    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/boss_book/book_physics.xml b/entities/animals/boss_book/book_physics.xml
    index 557cceb..473d997 100644
    --- a/entities/animals/boss_book/book_physics.xml
    +++ b/entities/animals/boss_book/book_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity  >
    +<Entity tags="glue_NOT" >

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/boss_centipede/boss_centipede.xml b/entities/animals/boss_centipede/boss_centipede.xml
    index 8e2cc37..bc8325d 100644
    --- a/entities/animals/boss_centipede/boss_centipede.xml
    +++ b/entities/animals/boss_centipede/boss_centipede.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,sampo_or_boss,boss_centipede,polymorphable_NOT,boss,necrobot_NOT" name="$animal_boss_centipede">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,sampo_or_boss,boss_centipede,polymorphable_NOT,boss,necrobot_NOT,glue_NOT" name="$animal_boss_centipede">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<!-- keeps the streaming alive -->
    diff --git a/entities/animals/boss_centipede/boss_centipede_minion.xml b/entities/animals/boss_centipede/boss_centipede_minion.xml
    index 209674a..3bc1061 100644
    --- a/entities/animals/boss_centipede/boss_centipede_minion.xml
    +++ b/entities/animals/boss_centipede/boss_centipede_minion.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="boss_centipede_minion" name="$animal_boss_centipede_minion" >
    +<Entity tags="boss_centipede_minion,glue_NOT" name="$animal_boss_centipede_minion" >

    	<VariableStorageComponent
    		_tags="no_gold_drop">
    diff --git a/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua b/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
    index a043697..744cd11 100644
    --- a/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
    +++ b/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
    @@ -46,7 +46,7 @@ if essence_1 and essence_2 and essence_3 and essence_4 then
    end

    local newgame_orbs_required = 5 + newgame_n
    -if( orb_count ~= 33
    +if( orb_count < 33
    	and
    	( ( orb_count > ORB_COUNT_IN_WORLD and newgame_orbs_required >= ORB_COUNT_IN_WORLD and orb_count >= newgame_orbs_required ) or
    	( orb_count >= newgame_orbs_required and orb_count < ORB_COUNT_IN_WORLD ) ) ) then
    @@ -93,7 +93,7 @@ if( doing_newgame_plus == false ) then

    	print(tostring(endpoint_underground))

    -	if( orb_count == 33 ) then
    +	if( orb_count >= 33 ) then
    		-- ORBS >= 33 ENDINGs
    		-- on top -> new game+
    		AddFlagPersistent( "secret_amulet" )
    diff --git a/entities/animals/boss_centipede/sampo_init.lua b/entities/animals/boss_centipede/sampo_init.lua
    index 063410e..358661f 100644
    --- a/entities/animals/boss_centipede/sampo_init.lua
    +++ b/entities/animals/boss_centipede/sampo_init.lua
    @@ -10,7 +10,10 @@ if( orb_count > MAX_ORB_NAMES ) then orb_count = MAX_ORB_NAMES end
    local orb_name = "$item_mcguffin_" .. tostring(orb_count)
    local orb_desc = "$itemdesc_mcguffin_" .. tostring(orb_count)

    -
    +if( GameGetOrbCountThisRun() > 33 ) then
    +	orb_name = "$item_mcguffin_33"
    +	orb_desc = "$itemdesc_mcguffin_33"
    +end

    local item_component = EntityGetFirstComponent( entity_id, "ItemComponent" )
    if( item_component ~= nil ) then
    diff --git a/entities/animals/boss_dragon.xml b/entities/animals/boss_dragon.xml
    index e4be249..96a7db8 100644
    --- a/entities/animals/boss_dragon.xml
    +++ b/entities/animals/boss_dragon.xml
    @@ -1,5 +1,5 @@
    <Entity
    -	tags="enemy,mortal,hittable,teleportable_NOT,boss_dragon,homing_target" name="$animal_boss_dragon">
    +	tags="enemy,mortal,hittable,teleportable_NOT,boss_dragon,homing_target,glue_NOT" name="$animal_boss_dragon">

    	<_Transform
    		position.x="0"
    diff --git a/entities/animals/boss_gate/gate_monster_a.xml b/entities/animals/boss_gate/gate_monster_a.xml
    index 86046f3..a05984d 100644
    --- a/entities/animals/boss_gate/gate_monster_a.xml
    +++ b/entities/animals/boss_gate/gate_monster_a.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_gate_monster_a" tags="gate_monster,necrobot_NOT" >
    +<Entity name="$animal_gate_monster_a" tags="gate_monster,necrobot_NOT,glue_NOT" >

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/boss_ghost/boss_ghost.xml b/entities/animals/boss_ghost/boss_ghost.xml
    index 6309f60..2faabdd 100644
    --- a/entities/animals/boss_ghost/boss_ghost.xml
    +++ b/entities/animals/boss_ghost/boss_ghost.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,teleportable_NOT,hittable,mortal,boss,touchmagic_immunity,music_energy_100,miniboss,polymorphable_NOT,necrobot_NOT" name="$animal_boss_ghost">
    +<Entity tags="enemy,teleportable_NOT,hittable,mortal,boss,touchmagic_immunity,music_energy_100,miniboss,polymorphable_NOT,necrobot_NOT,glue_NOT" name="$animal_boss_ghost">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<!-- art - main body ---------------------- -->
    @@ -102,6 +102,8 @@
    		blood_spray_material="plasma_fading"
    		blood_sprite_directional=""
    		blood_sprite_large=""
    +		air_needed="0"
    +		falling_damages="0"
    		>
    		<damage_multipliers
    			projectile="0.0"
    @@ -142,7 +144,7 @@
    	</PathFindingGridMarkerComponent>

    	<GenomeDataComponent
    -		herd_id="ghost"
    +		herd_id="ghost_boss"
    		food_chain_rank="10"
    		is_predator="1" >
    	</GenomeDataComponent>
    @@ -162,7 +164,7 @@
    		target_vec_max_len="15.0"
    		force_coeff="14.0"
    		force_balancing_coeff="0.8"
    -		force_max="160"
    +		force_max="120"
    		torque_coeff="50"
    		torque_balancing_coeff="0.8"
    		torque_max="50.0"
    diff --git a/entities/animals/boss_limbs/boss_limbs.xml b/entities/animals/boss_limbs/boss_limbs.xml
    index 818bd3b..fc43dc8 100644
    --- a/entities/animals/boss_limbs/boss_limbs.xml
    +++ b/entities/animals/boss_limbs/boss_limbs.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,boss,polymorphable_NOT,miniboss,music_energy_100,necrobot_NOT" name="$animal_boss_limbs">
    +<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,boss,polymorphable_NOT,miniboss,music_energy_100,necrobot_NOT,glue_NOT" name="$animal_boss_limbs">

    	<!-- art - main body ---------------------- -->

    diff --git a/entities/animals/boss_limbs/boss_limbs_physics.xml b/entities/animals/boss_limbs/boss_limbs_physics.xml
    index cc23e5f..5e229e5 100644
    --- a/entities/animals/boss_limbs/boss_limbs_physics.xml
    +++ b/entities/animals/boss_limbs/boss_limbs_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_boss_limbs">
    +<Entity tags="glue_NOT" name="$animal_boss_limbs">

    	<LightComponent
    		_enabled="1"
    diff --git a/entities/animals/boss_pit/boss_pit.xml b/entities/animals/boss_pit/boss_pit.xml
    index e93d005..8c053ed 100644
    --- a/entities/animals/boss_pit/boss_pit.xml
    +++ b/entities/animals/boss_pit/boss_pit.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,boss,touchmagic_immunity,music_energy_100,miniboss,polymorphable_NOT,necrobot_NOT" name="$animal_boss_pit">
    +<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,boss,touchmagic_immunity,music_energy_100,miniboss,polymorphable_NOT,necrobot_NOT,glue_NOT" name="$animal_boss_pit">

    	<!-- art - main body ---------------------- -->

    diff --git a/entities/animals/boss_wizard/boss_wizard.xml b/entities/animals/boss_wizard/boss_wizard.xml
    index 2cd884c..af39edb 100644
    --- a/entities/animals/boss_wizard/boss_wizard.xml
    +++ b/entities/animals/boss_wizard/boss_wizard.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_boss_wizard" tags="touchmagic_immunity,polymorphable_NOT,boss,miniboss,music_energy_100,boss_wizard,necrobot_NOT">
    +<Entity name="$animal_boss_wizard" tags="touchmagic_immunity,polymorphable_NOT,boss,miniboss,music_energy_100,boss_wizard,necrobot_NOT,glue_NOT">

    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/chest_leggy.xml b/entities/animals/chest_leggy.xml
    index 41007d2..08dc9a8 100644
    --- a/entities/animals/chest_leggy.xml
    +++ b/entities/animals/chest_leggy.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT" name="$animal_lukki" >
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,glue_NOT" name="$animal_lukki" >

    <AnimalAIComponent
    	_enabled="1"
    diff --git a/entities/animals/chest_mimic.xml b/entities/animals/chest_mimic.xml
    index 5b40b24..88affa1 100644
    --- a/entities/animals/chest_mimic.xml
    +++ b/entities/animals/chest_mimic.xml
    @@ -82,7 +82,23 @@
    			mass="2.2"
    			>
    		</CharacterDataComponent>
    +
    	</Base>

    +	<VariableStorageComponent
    +		_enabled="1"
    +		name="mimic_poop_count"
    +		value_bool="0"
    +		value_int="0"
    +		value_string="" >
    +	</VariableStorageComponent>
    +
    +	<LuaComponent
    +		_enabled="1"
    +		script_source_file="data/scripts/animals/mimic_charm.lua"
    +		execute_every_n_frame="183"
    +		>
    +	</LuaComponent>
    +
    </Entity>

    diff --git a/entities/animals/crystal_physics.xml b/entities/animals/crystal_physics.xml
    index 7752396..ef8d81a 100644
    --- a/entities/animals/crystal_physics.xml
    +++ b/entities/animals/crystal_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_crystal_physics" >
    +<Entity tags="glue_NOT" name="$animal_crystal_physics" >

    <PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/darkghost.xml b/entities/animals/darkghost.xml
    index 05a6baf..4c0e80e 100644
    --- a/entities/animals/darkghost.xml
    +++ b/entities/animals/darkghost.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="$animal_darkghost"
    -  tags="mortal,hittable,enemy"
    +  tags="mortal,hittable,enemy,glue_NOT"
    serialize="0" >

    <_Transform
    diff --git a/entities/animals/drone_physics.xml b/entities/animals/drone_physics.xml
    index 4ec79f4..bb4fa65 100644
    --- a/entities/animals/drone_physics.xml
    +++ b/entities/animals/drone_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_drone_physics">
    +<Entity tags="glue_NOT" name="$animal_drone_physics">

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/eel.xml b/entities/animals/eel.xml
    index 3da4eaf..8064742 100644
    --- a/entities/animals/eel.xml
    +++ b/entities/animals/eel.xml
    @@ -1,6 +1,6 @@
    <Entity
    	name="$animal_eel"
    -	tags="mortal,hittable,homing_target,destruction_target,enemy" >
    +	tags="mortal,hittable,homing_target,destruction_target,enemy,glue_NOT" >
    	<_Transform
    		position.x="0"
    		position.y="0"
    diff --git a/entities/animals/ethereal_being.xml b/entities/animals/ethereal_being.xml
    index 046efc3..636a024 100644
    --- a/entities/animals/ethereal_being.xml
    +++ b/entities/animals/ethereal_being.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,teleportable_NOT,polymorphable_NOT,hittable,mortal,boss_ghost_helper" name="$animal_ethereal_being">
    +<Entity tags="enemy,teleportable_NOT,polymorphable_NOT,hittable,mortal,boss_ghost_helper,glue_NOT" name="$animal_ethereal_being">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<!-- art - main body ---------------------- -->
    diff --git a/entities/animals/ghost.xml b/entities/animals/ghost.xml
    index 689e558..e4fd7fa 100644
    --- a/entities/animals/ghost.xml
    +++ b/entities/animals/ghost.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="$animal_ghost"
    -  tags="mortal,hittable,music_energy_000_near,enemy"
    +  tags="mortal,hittable,music_energy_000_near,enemy,glue_NOT"
    serialize="0" >

    <_Transform
    diff --git a/entities/animals/healerdrone_physics.xml b/entities/animals/healerdrone_physics.xml
    index 86da745..2626f8d 100644
    --- a/entities/animals/healerdrone_physics.xml
    +++ b/entities/animals/healerdrone_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_healerdrone_physics" >
    +<Entity tags="glue_NOT" name="$animal_healerdrone_physics" >

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/illusions/acidshooter.xml b/entities/animals/illusions/acidshooter.xml
    index f77ad3a..e525b6d 100644
    --- a/entities/animals/illusions/acidshooter.xml
    +++ b/entities/animals/illusions/acidshooter.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_acidshooter">
    +<Entity tags="glue_NOT" name="$animal_acidshooter">

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="1" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/enlightened_alchemist.xml b/entities/animals/illusions/enlightened_alchemist.xml
    index da0f126..77cf75b 100644
    --- a/entities/animals/illusions/enlightened_alchemist.xml
    +++ b/entities/animals/illusions/enlightened_alchemist.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_enlightened_alchemist" >
    +<Entity tags="glue_NOT" name="$animal_enlightened_alchemist" >

    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/scavenger_grenade.xml b/entities/animals/illusions/scavenger_grenade.xml
    index bebb782..bbf1b84 100644
    --- a/entities/animals/illusions/scavenger_grenade.xml
    +++ b/entities/animals/illusions/scavenger_grenade.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_scavenger_grenade" >
    +<Entity tags="glue_NOT" name="$animal_scavenger_grenade" >

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/scavenger_mine.xml b/entities/animals/illusions/scavenger_mine.xml
    index 079f636..f9f8c02 100644
    --- a/entities/animals/illusions/scavenger_mine.xml
    +++ b/entities/animals/illusions/scavenger_mine.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_scavenger_mine" >
    +<Entity tags="glue_NOT" name="$animal_scavenger_mine" >

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="3" enemy_drop="1" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/shaman.xml b/entities/animals/illusions/shaman.xml
    index 6835cdd..1b0ed4f 100644
    --- a/entities/animals/illusions/shaman.xml
    +++ b/entities/animals/illusions/shaman.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="shaman" name="$animal_shaman">
    +<Entity tags="shaman,glue_NOT" name="$animal_shaman">
    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="1" > </ItemChestComponent>

    diff --git a/entities/animals/illusions/tank.xml b/entities/animals/illusions/tank.xml
    index ab34ec3..795705d 100644
    --- a/entities/animals/illusions/tank.xml
    +++ b/entities/animals/illusions/tank.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_tank" >
    +<Entity tags="glue_NOT" name="$animal_tank" >

    	<Base file="data/entities/base_enemy_robot.xml" >
    		<ItemChestComponent level="2" >
    diff --git a/entities/animals/illusions/tentacler.xml b/entities/animals/illusions/tentacler.xml
    index 2ec67d2..ffb1463 100644
    --- a/entities/animals/illusions/tentacler.xml
    +++ b/entities/animals/illusions/tentacler.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_tentacler" >
    +<Entity tags="glue_NOT" name="$animal_tentacler" >

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/thundermage.xml b/entities/animals/illusions/thundermage.xml
    index 11a7e3f..0ffa088 100644
    --- a/entities/animals/illusions/thundermage.xml
    +++ b/entities/animals/illusions/thundermage.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_thundermage" tags="thundermage" >
    +<Entity tags="glue_NOT" name="$animal_thundermage" tags="thundermage" >

    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/wizard_swapper.xml b/entities/animals/illusions/wizard_swapper.xml
    index f85508d..9306375 100644
    --- a/entities/animals/illusions/wizard_swapper.xml
    +++ b/entities/animals/illusions/wizard_swapper.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_wizard_swapper" >
    +<Entity tags="glue_NOT" name="$animal_wizard_swapper" >

    	<Base file="data/entities/base_enemy_basic.xml" >
    		<ItemChestComponent level="2" > </ItemChestComponent>
    diff --git a/entities/animals/illusions/worm_big.xml b/entities/animals/illusions/worm_big.xml
    index e031c45..032fd74 100644
    --- a/entities/animals/illusions/worm_big.xml
    +++ b/entities/animals/illusions/worm_big.xml
    @@ -1,5 +1,5 @@
    <Entity
    -	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    	name="$animal_worm_big"
    	>
    	<_Transform
    diff --git a/entities/animals/lukki/lukki.xml b/entities/animals/lukki/lukki.xml
    index 3d41677..75f0b34 100644
    --- a/entities/animals/lukki/lukki.xml
    +++ b/entities/animals/lukki/lukki.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki" >
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki" >
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<LuaComponent
    diff --git a/entities/animals/lukki/lukki_creepy.xml b/entities/animals/lukki/lukki_creepy.xml
    index 5dc5bd0..26b15e2 100644
    --- a/entities/animals/lukki/lukki_creepy.xml
    +++ b/entities/animals/lukki/lukki_creepy.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki_creepy">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki_creepy">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<LuaComponent
    diff --git a/entities/animals/lukki/lukki_creepy_long.xml b/entities/animals/lukki/lukki_creepy_long.xml
    index 66d0a5e..fab8c52 100644
    --- a/entities/animals/lukki/lukki_creepy_long.xml
    +++ b/entities/animals/lukki/lukki_creepy_long.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki_creepy_long">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki_creepy_long">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<LuaComponent
    diff --git a/entities/animals/lukki/lukki_dark.xml b/entities/animals/lukki/lukki_dark.xml
    index 585277d..c8055b9 100644
    --- a/entities/animals/lukki/lukki_dark.xml
    +++ b/entities/animals/lukki/lukki_dark.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki_dark">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki_dark">

    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    diff --git a/entities/animals/lukki/lukki_longleg.xml b/entities/animals/lukki/lukki_longleg.xml
    index 5c952e5..85c54dd 100644
    --- a/entities/animals/lukki/lukki_longleg.xml
    +++ b/entities/animals/lukki/lukki_longleg.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki_longleg">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki_longleg">

    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    diff --git a/entities/animals/lukki/lukki_tiny.xml b/entities/animals/lukki/lukki_tiny.xml
    index 86ede25..6e537f6 100644
    --- a/entities/animals/lukki/lukki_tiny.xml
    +++ b/entities/animals/lukki/lukki_tiny.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki" name="$animal_lukki_tiny">
    +<Entity tags="enemy,mortal,hittable,homing_target,teleportable_NOT,music_energy_100,lukki,glue_NOT" name="$animal_lukki_tiny">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<LuaComponent
    diff --git a/entities/animals/mimic_physics.xml b/entities/animals/mimic_physics.xml
    index 8da511d..43c45db 100644
    --- a/entities/animals/mimic_physics.xml
    +++ b/entities/animals/mimic_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_mimic_physics" >
    +<Entity tags="glue_NOT" name="$animal_mimic_physics" >

    <PhysicsAIComponent
    		_enabled="0"
    diff --git a/entities/animals/parallel/tentacles/parallel_tentacles.xml b/entities/animals/parallel/tentacles/parallel_tentacles.xml
    index d595dba..b9627fb 100644
    --- a/entities/animals/parallel/tentacles/parallel_tentacles.xml
    +++ b/entities/animals/parallel/tentacles/parallel_tentacles.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,touchmagic_immunity,polymorphable_NOT" name="$animal_parallel_tentacles">
    +<Entity tags="enemy,mortal,human,hittable,homing_target,teleportable_NOT,touchmagic_immunity,polymorphable_NOT,glue_NOT" name="$animal_parallel_tentacles">

    	<!-- art - main body ---------------------- -->

    diff --git a/entities/animals/pebble_physics.xml b/entities/animals/pebble_physics.xml
    index 4e4ba78..173dfd2 100644
    --- a/entities/animals/pebble_physics.xml
    +++ b/entities/animals/pebble_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_pebble">
    +<Entity tags="glue_NOT" name="$animal_pebble">
    	<PhysicsAIComponent
    		target_vec_max_len="25.0"
    		force_coeff="28.0"
    diff --git a/entities/animals/phantom_a.xml b/entities/animals/phantom_a.xml
    index 6e76ce7..5789428 100644
    --- a/entities/animals/phantom_a.xml
    +++ b/entities/animals/phantom_a.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_phantom_a" >
    +<Entity tags="glue_NOT" name="$animal_phantom_a" >

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="5" enemy_drop="1" > </ItemChestComponent>
    diff --git a/entities/animals/phantom_b.xml b/entities/animals/phantom_b.xml
    index d13c004..e5fd6cf 100644
    --- a/entities/animals/phantom_b.xml
    +++ b/entities/animals/phantom_b.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_phantom_b" >
    +<Entity tags="glue_NOT" name="$animal_phantom_b" >

    	<Base file="data/entities/base_enemy_flying.xml" >
    		<ItemChestComponent level="5" enemy_drop="1" > </ItemChestComponent>
    diff --git a/entities/animals/playerghost.xml b/entities/animals/playerghost.xml
    index c8aff23..417b83d 100644
    --- a/entities/animals/playerghost.xml
    +++ b/entities/animals/playerghost.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_playerghost">
    +<Entity tags="glue_NOT" name="$animal_playerghost">
    	<!-- NOTE! This file is used for polymorph purpouses only -->
    	<!-- the spawned player ghost (that has an old wand) is now at entities/animals/apparition/playerghost.xml -->

    diff --git a/entities/animals/skycrystal_physics.xml b/entities/animals/skycrystal_physics.xml
    index e083d00..d16d47d 100644
    --- a/entities/animals/skycrystal_physics.xml
    +++ b/entities/animals/skycrystal_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_skycrystal_physics" >
    +<Entity tags="glue_NOT" name="$animal_skycrystal_physics" >

    <PhysicsAIComponent
    		target_vec_max_len="18.0"
    diff --git a/entities/animals/special/minipit.xml b/entities/animals/special/minipit.xml
    index fc25a89..0f7bbb6 100644
    --- a/entities/animals/special/minipit.xml
    +++ b/entities/animals/special/minipit.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_minipit" >
    +<Entity tags="glue_NOT" name="$animal_minipit" >

    <PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/statue_physics.xml b/entities/animals/statue_physics.xml
    index b355482..5f19d52 100644
    --- a/entities/animals/statue_physics.xml
    +++ b/entities/animals/statue_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_statue_physics" >
    +<Entity tags="glue_NOT" name="$animal_statue_physics" >

    <PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/animals/worm.xml b/entities/animals/worm.xml
    index 8bc1210..87977d0 100644
    --- a/entities/animals/worm.xml
    +++ b/entities/animals/worm.xml
    @@ -1,5 +1,5 @@
    <Entity
    -	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    	name="$animal_worm"
    	>
    	<_Transform
    diff --git a/entities/animals/worm_big.xml b/entities/animals/worm_big.xml
    index 6096952..0888820 100644
    --- a/entities/animals/worm_big.xml
    +++ b/entities/animals/worm_big.xml
    @@ -1,5 +1,5 @@
    <Entity
    -	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    	name="$animal_worm_big"
    	>
    	<_Transform
    diff --git a/entities/animals/worm_end.xml b/entities/animals/worm_end.xml
    index 5cce086..89a0366 100644
    --- a/entities/animals/worm_end.xml
    +++ b/entities/animals/worm_end.xml
    @@ -1,5 +1,5 @@
    <Entity
    -  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    name="$animal_worm_end"
    >
    <_Transform
    diff --git a/entities/animals/worm_skull.xml b/entities/animals/worm_skull.xml
    index ca9d79d..2bb43ad 100644
    --- a/entities/animals/worm_skull.xml
    +++ b/entities/animals/worm_skull.xml
    @@ -1,5 +1,5 @@
    <Entity
    -  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,music_energy_000"
    +  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,music_energy_000,glue_NOT"
    name="$animal_worm_skull"
    >
    <_Transform
    diff --git a/entities/animals/worm_tiny.xml b/entities/animals/worm_tiny.xml
    index abe40f0..f383e17 100644
    --- a/entities/animals/worm_tiny.xml
    +++ b/entities/animals/worm_tiny.xml
    @@ -1,5 +1,5 @@
    <Entity
    -  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +  tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    name="$animal_worm_tiny"
    >
    <_Transform
    diff --git a/entities/base_apparition.xml b/entities/base_apparition.xml
    index 83165b0..3019c48 100644
    --- a/entities/base_apparition.xml
    +++ b/entities/base_apparition.xml
    @@ -41,7 +41,7 @@
    				projectile="0.5"
    				explosion="1.0"
    				electricity="1.0"
    -				freeze="1.0"
    +				ice="1.0"
    				fire="0.1" >
    			</damage_multipliers>
    		</DamageModelComponent>
    diff --git a/entities/base_shop_item.xml b/entities/base_shop_item.xml
    index 164c6b2..6479482 100644
    --- a/entities/base_shop_item.xml
    +++ b/entities/base_shop_item.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="hittable,item,item_shop">
    +<Entity tags="hittable,item,item_shop,glue_NOT">

    	<!-- these two are used to make these shop items -->
    	<ItemCostComponent cost="100" />
    diff --git a/entities/base_wand_ghost.xml b/entities/base_wand_ghost.xml
    index 8e77dc7..8031a44 100644
    --- a/entities/base_wand_ghost.xml
    +++ b/entities/base_wand_ghost.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable,homing_target,teleportable_NOT,enemy" >
    +<Entity tags="mortal,hittable,homing_target,teleportable_NOT,enemy,glue_NOT" >

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/buildings/arrowtrap_left.xml b/entities/buildings/arrowtrap_left.xml
    index a67f640..9e74332 100644
    --- a/entities/buildings/arrowtrap_left.xml
    +++ b/entities/buildings/arrowtrap_left.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable" >
    +<Entity tags="mortal,hittable,glue_NOT" >

    	<AnimalAIComponent
    		_enabled="1"
    diff --git a/entities/buildings/biome_modifiers/drain_pipe.xml b/entities/buildings/biome_modifiers/drain_pipe.xml
    index f3269e7..9415bc5 100644
    --- a/entities/buildings/biome_modifiers/drain_pipe.xml
    +++ b/entities/buildings/biome_modifiers/drain_pipe.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable,teleportable_NOT,destruction_target">
    +<Entity tags="mortal,hittable,teleportable_NOT,destruction_target,glue_NOT">
    	<Base file="data/entities/base_item_physics2.xml" >
    		<PhysicsBody2Component
    			is_static="1"
    diff --git a/entities/buildings/firebugnest.xml b/entities/buildings/firebugnest.xml
    index bbbc54b..36d6f90 100644
    --- a/entities/buildings/firebugnest.xml
    +++ b/entities/buildings/firebugnest.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="unknown"
    -  tags="mortal,nest,predator,hittable" >
    +  tags="mortal,nest,predator,hittable,glue_NOT" >

    <DamageModelComponent
    	_enabled="1"
    diff --git a/entities/buildings/firetrap_left.xml b/entities/buildings/firetrap_left.xml
    index 98e6079..0c03236 100644
    --- a/entities/buildings/firetrap_left.xml
    +++ b/entities/buildings/firetrap_left.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable" >
    +<Entity tags="mortal,hittable,glue_NOT" >

    	<AnimalAIComponent
    		_enabled="1"
    diff --git a/entities/buildings/flynest.xml b/entities/buildings/flynest.xml
    index c3b000e..7abb17a 100644
    --- a/entities/buildings/flynest.xml
    +++ b/entities/buildings/flynest.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="unknown"
    -  tags="mortal,nest,predator,hittable" >
    +  tags="mortal,nest,predator,hittable,glue_NOT" >

    <DamageModelComponent
    	_enabled="1"
    diff --git a/entities/buildings/lasergun.xml b/entities/buildings/lasergun.xml
    index bb07ad7..e86f0d5 100644
    --- a/entities/buildings/lasergun.xml
    +++ b/entities/buildings/lasergun.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable,homing_target" >
    +<Entity tags="mortal,hittable,homing_target,glue_NOT" >
    	<DamageModelComponent
    		hp="6.5"
    		ragdoll_material="steel"
    diff --git a/entities/buildings/lukki_eggs.xml b/entities/buildings/lukki_eggs.xml
    index 7e61362..f0deb58 100644
    --- a/entities/buildings/lukki_eggs.xml
    +++ b/entities/buildings/lukki_eggs.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable" >
    +<Entity tags="mortal,hittable,glue_NOT" >

    <!-- mortal is required so it can explode -->

    diff --git a/entities/buildings/snowcrystal.xml b/entities/buildings/snowcrystal.xml
    index d9135f2..a561c0a 100644
    --- a/entities/buildings/snowcrystal.xml
    +++ b/entities/buildings/snowcrystal.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="$animal_snowcrystal"
    -  tags="hittable,mortal" >
    +  tags="hittable,mortal,glue_NOT" >

    <DamageModelComponent
    	_enabled="1"
    diff --git a/entities/buildings/spidernest.xml b/entities/buildings/spidernest.xml
    index 6ddb831..e734abc 100644
    --- a/entities/buildings/spidernest.xml
    +++ b/entities/buildings/spidernest.xml
    @@ -1,6 +1,6 @@
    <Entity
    name="unknown"
    -  tags="mortal,nest,predator,hittable" >
    +  tags="mortal,nest,predator,hittable,glue_NOT" >

    <DamageModelComponent
    	_enabled="1"
    diff --git a/entities/buildings/spittrap_left.xml b/entities/buildings/spittrap_left.xml
    index 07b95d9..ed65c5d 100644
    --- a/entities/buildings/spittrap_left.xml
    +++ b/entities/buildings/spittrap_left.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable" >
    +<Entity tags="mortal,hittable,glue_NOT" >

    	<AnimalAIComponent
    		_enabled="1"
    diff --git a/entities/buildings/statue_trap_left.xml b/entities/buildings/statue_trap_left.xml
    index 204731a..ed87c3f 100644
    --- a/entities/buildings/statue_trap_left.xml
    +++ b/entities/buildings/statue_trap_left.xml
    @@ -1,6 +1,6 @@
    <Entity
    	name="unknown"
    -	tags="hittable,mortal" >
    +	tags="hittable,mortal,glue_NOT" >

    	<Base file="data/entities/buildings/statue_trap_right.xml">
    		<SpriteComponent
    diff --git a/entities/buildings/teleport_ending.xml b/entities/buildings/teleport_ending.xml
    index f319256..8841add 100644
    --- a/entities/buildings/teleport_ending.xml
    +++ b/entities/buildings/teleport_ending.xml
    @@ -175,7 +175,9 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_end_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>

    	<AudioLoopComponent
    @@ -183,6 +185,8 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_end_emitter_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>
    </Entity>
    \ No newline at end of file
    diff --git a/entities/buildings/teleport_liquid_powered.xml b/entities/buildings/teleport_liquid_powered.xml
    index f7853a0..907621a 100644
    --- a/entities/buildings/teleport_liquid_powered.xml
    +++ b/entities/buildings/teleport_liquid_powered.xml
    @@ -119,7 +119,9 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>

    	<AudioLoopComponent
    @@ -127,7 +129,9 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_emitter_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>

    	<!-- teleporter powered by teleportium beneath -->
    diff --git a/entities/buildings/teleport_snowcave_buried_eye.xml b/entities/buildings/teleport_snowcave_buried_eye.xml
    index 35fd9d3..08bfe5a 100644
    --- a/entities/buildings/teleport_snowcave_buried_eye.xml
    +++ b/entities/buildings/teleport_snowcave_buried_eye.xml
    @@ -120,7 +120,9 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>

    	<AudioLoopComponent
    @@ -128,7 +130,9 @@
    		file="data/audio/Desktop/misc.bank"
    		event_name="misc/teleport_emitter_loop"
    		calculate_material_lowpass="0"
    -		auto_play="1" >
    +		auto_play="0"
    +		auto_play_if_enabled="1"
    +		play_on_component_enable="1" >
    	</AudioLoopComponent>

    	<!-- teleporter powered by teleportium beneath -->
    diff --git a/entities/buildings/thundertrap_left.xml b/entities/buildings/thundertrap_left.xml
    index 10f3833..0c5ba81 100644
    --- a/entities/buildings/thundertrap_left.xml
    +++ b/entities/buildings/thundertrap_left.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable" >
    +<Entity tags="mortal,hittable,glue_NOT" >

    	<AnimalAIComponent
    		_enabled="1"
    diff --git a/entities/items/orbs/orb_particles_base.xml b/entities/items/orbs/orb_particles_base.xml
    index 4ea48d2..3b3341d 100644
    --- a/entities/items/orbs/orb_particles_base.xml
    +++ b/entities/items/orbs/orb_particles_base.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="hittable,teleportable_NOT">
    +<Entity tags="hittable,teleportable_NOT,glue_NOT">
    	<ParticleEmitterComponent
    		emitted_material_name="spark_blue"
    		gravity.y="0.0"
    diff --git a/entities/items/pickup/powder_stash.xml b/entities/items/pickup/powder_stash.xml
    index 4f309d0..57f2c53 100644
    --- a/entities/items/pickup/powder_stash.xml
    +++ b/entities/items/pickup/powder_stash.xml
    @@ -208,7 +208,7 @@
    <AudioLoopComponent
    	_tags="sound_spray,enabled_in_world,enabled_in_hand"
    	file="data/audio/Desktop/materials.bank"
    -    event_name="materials/spray_potion"
    +    event_name="materials/spray_powder"
    	volume_autofade_speed="0.1" >
    </AudioLoopComponent>

    diff --git a/entities/items/pickup/sunseed.xml b/entities/items/pickup/sunseed.xml
    index 2046554..c182afb 100644
    --- a/entities/items/pickup/sunseed.xml
    +++ b/entities/items/pickup/sunseed.xml
    @@ -92,7 +92,7 @@
    		from_material_tag="[sand_ground]"
    		steps_per_frame="2"
    		to_material="gunpowder_unstable"
    -		clean_stains="1"
    +		clean_stains="0"
    		is_circle="1"
    		radius="64"
    		loop="1"
    diff --git a/entities/misc/greed_curse/greed_ghost.xml b/entities/misc/greed_curse/greed_ghost.xml
    index 82463c5..59f4547 100644
    --- a/entities/misc/greed_curse/greed_ghost.xml
    +++ b/entities/misc/greed_curse/greed_ghost.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="enemy,teleportable_NOT,polymorphable_NOT,greed_curse_ghost" name="$animal_greed_ghost">
    +<Entity tags="enemy,teleportable_NOT,polymorphable_NOT,greed_curse_ghost,glue_NOT" name="$animal_greed_ghost">
    	<ItemChestComponent level="4" enemy_drop="1" > </ItemChestComponent>

    	<!-- keeps the streaming alive -->
    diff --git a/entities/misc/physics_poltergeist_ai.xml b/entities/misc/physics_poltergeist_ai.xml
    index 8bef1fe..d9f2353 100644
    --- a/entities/misc/physics_poltergeist_ai.xml
    +++ b/entities/misc/physics_poltergeist_ai.xml
    @@ -1,4 +1,4 @@
    -<Entity>
    +<Entity tags="glue_NOT">

    <PhysicsAIComponent
    	target_vec_max_len="20.0"
    diff --git a/entities/misc/physics_ragdoll_ai.xml b/entities/misc/physics_ragdoll_ai.xml
    index 3c27d17..84e7ea9 100644
    --- a/entities/misc/physics_ragdoll_ai.xml
    +++ b/entities/misc/physics_ragdoll_ai.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="prey">
    +<Entity tags="prey,glue_NOT">

    	<PhysicsAIComponent
    		target_vec_max_len="14.0"
    diff --git a/entities/misc/worm_big_worm_rain.xml b/entities/misc/worm_big_worm_rain.xml
    index 3b301c1..4468b39 100644
    --- a/entities/misc/worm_big_worm_rain.xml
    +++ b/entities/misc/worm_big_worm_rain.xml
    @@ -1,5 +1,5 @@
    <Entity
    -	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm"
    +	tags="mortal,hittable,teleportable_NOT,homing_target,enemy,worm,glue_NOT"
    	name="$animal_worm_big"
    	>
    	<_Transform
    diff --git a/entities/projectiles/deck/pebble_player_physics.xml b/entities/projectiles/deck/pebble_player_physics.xml
    index f1c986b..cc9d6a1 100644
    --- a/entities/projectiles/deck/pebble_player_physics.xml
    +++ b/entities/projectiles/deck/pebble_player_physics.xml
    @@ -1,4 +1,4 @@
    -<Entity name="$animal_pebble_player" >
    +<Entity tags="glue_NOT" name="$animal_pebble_player" >
    	<PhysicsAIComponent
    		target_vec_max_len="25.0"
    		force_coeff="28.0"
    diff --git a/entities/projectiles/glue.xml b/entities/projectiles/glue.xml
    index bfd1e06..20bb7e5 100644
    --- a/entities/projectiles/glue.xml
    +++ b/entities/projectiles/glue.xml
    @@ -1,4 +1,4 @@
    -<Entity>
    +<Entity tags="glue">
    	<VelocityComponent
    		gravity_y="0"
    		terminal_velocity="10"
    @@ -35,7 +35,7 @@
    	</LuaComponent>

    	<LifetimeComponent
    -		lifetime="600"
    +		lifetime="500"
    		>
    	</LifetimeComponent>
    	<!--
    diff --git a/entities/projectiles/orb_expanding.xml b/entities/projectiles/orb_expanding.xml
    index ab2068a..e57f737 100644
    --- a/entities/projectiles/orb_expanding.xml
    +++ b/entities/projectiles/orb_expanding.xml
    @@ -66,12 +66,27 @@
    		</config_explosion>
    	</ProjectileComponent>

    +	<!-- main sprite -->
    	<SpriteComponent
    		image_file="data/projectiles_gfx/orb_expanding.xml"
    -		additive="1"
    -		emissive="1" >
    +		additive="0"
    +		emissive="0" >
    	</SpriteComponent>

    +	<!-- glow sprite -->
    +	<Entity>
    +		<InheritTransformComponent
    +			only_position="1" >
    +		</InheritTransformComponent>
    +		<SpriteComponent
    +			image_file="data/projectiles_gfx/orb_expanding_glow.xml"
    +			additive="1"
    +			emissive="1"
    +			update_transform_rotation="0" >
    +		</SpriteComponent>
    +	</Entity>
    +
    +	<!-- launch flash -->
    	<SpriteComponent
    		image_file="data/particles/explosion_016.xml"
    		z_index="-1.1">
    @@ -160,6 +175,7 @@
    	<ParticleEmitterComponent
    		emitted_material_name="spark_yellow"
    		delay_frames="115"
    +		emitter_lifetime_frames="2"
    		fade_based_on_lifetime="1"
    		render_on_grid="1"
    		x_pos_offset_min="0"
    diff --git a/entities/projectiles/polyorb.xml b/entities/projectiles/polyorb.xml
    index 8c548c8..1ce997a 100644
    --- a/entities/projectiles/polyorb.xml
    +++ b/entities/projectiles/polyorb.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable,homing_target,polymorphable_NOT" name="$projectile_default">
    +<Entity tags="mortal,hittable,homing_target,polymorphable_NOT,glue_NOT" name="$projectile_default">

    	<PhysicsAIComponent
    		target_vec_max_len="15.0"
    diff --git a/entities/projectiles/polyshot.xml b/entities/projectiles/polyshot.xml
    index 7d807be..092a201 100644
    --- a/entities/projectiles/polyshot.xml
    +++ b/entities/projectiles/polyshot.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="hittable" name="$projectile_default">
    +<Entity tags="hittable,glue_NOT" name="$projectile_default">

    	<Base file="data/entities/base_projectile.xml" >
    		<VelocityComponent
    diff --git a/entities/props/root_grower.xml b/entities/props/root_grower.xml
    index 5682e0a..7aef6b0 100644
    --- a/entities/props/root_grower.xml
    +++ b/entities/props/root_grower.xml
    @@ -1,4 +1,4 @@
    -<Entity tags="mortal,hittable,teleportable_NOT,destruction_target,root">
    +<Entity tags="mortal,hittable,teleportable_NOT,destruction_target,root,glue_NOT">
    	<HitboxComponent
    		aabb_min_x="-3"
    		aabb_max_x="3"
    diff --git a/genome_relations.csv b/genome_relations.csv
    index 1eb9e00..ff11f41 100644
    --- a/genome_relations.csv
    +++ b/genome_relations.csv
    @@ -1,34 +1,35 @@
    -HERD,player,-1,slimes,ant,robot,fly,boss_dragon,crawler,helpless,eel,fire,fungus,ghoul,giant,ice,spider,orcs,rat,electricity,wolf,worm,zombie,nest,mage,flower,ghost,boss_limbs,healer,apparition,bat,mage_swapper,curse,trap
    -      player,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    --1,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,100,0,0,0
    -      slimes,0,0,100,80,95,90,0,0,0,90,90,90,90,90,90,95,95,30,90,90,90,90,100,90,90,90,0,100,50,100,90,100,100
    -         ant,0,0,80,100,40,90,0,0,0,0,0,100,0,0,0,95,40,50,0,0,0,90,100,90,90,90,0,100,50,100,90,100,100
    -       robot,0,0,95,90,100,80,0,90,0,90,95,95,90,90,0,95,95,0,90,0,90,95,100,95,90,90,0,100,50,100,95,100,100
    -         fly,0,0,90,90,90,100,0,0,0,0,90,90,90,0,0,90,90,60,90,0,0,90,100,80,90,90,0,100,50,100,80,100,100
    - boss_dragon,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -     crawler,0,0,0,0,90,0,0,100,0,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -    helpless,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -         eel,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -        fire,0,0,90,80,90,100,0,0,0,0,100,90,90,0,20,90,96,0,0,0,0,90,100,95,90,90,0,100,50,100,95,100,100
    -      fungus,0,0,75,80,70,90,0,0,0,0,80,100,0,0,80,95,95,95,80,0,0,70,100,90,90,90,0,100,50,100,90,100,100
    -       ghoul,0,0,0,0,90,50,0,0,0,0,0,0,100,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -       giant,0,0,0,0,90,50,0,0,0,0,0,0,0,100,100,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -         ice,0,0,0,0,0,0,0,0,0,0,20,80,0,100,100,90,50,0,0,0,0,90,100,99,90,90,0,100,50,100,99,100,100
    -      spider,0,0,95,95,95,90,0,95,95,0,95,95,0,95,0,100,95,95,95,95,90,95,100,95,90,90,0,100,50,100,95,100,100
    -        orcs,2,0,80,80,95,90,0,30,40,100,90,90,0,90,40,95,100,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -         rat,0,0,50,50,50,0,0,0,0,0,0,90,0,0,0,95,50,100,0,0,0,50,100,90,90,90,0,100,50,0,90,100,100
    - electricity,0,0,0,80,90,90,0,0,0,0,0,80,0,0,0,90,0,0,100,0,0,0,100,90,90,90,0,100,50,100,90,100,100
    -        wolf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,100,0,0,100,90,90,90,0,100,50,100,90,100,100
    -        worm,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,0,100,0,100,90,90,90,0,100,50,100,90,100,100
    -      zombie,0,0,90,80,90,90,0,0,10,100,90,90,0,0,90,95,95,70,0,0,0,100,100,90,90,90,0,100,50,100,90,100,100
    -nest,0,0,100,100,100,100,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,0,100,50,100,100,100,100
    -mage,0,0,90,80,90,90,0,0,0,0,90,90,90,0,95,95,90,0,0,0,0,90,100,100,90,90,0,100,50,100,100,100,100
    -flower,0,0,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,100,90,100,90,0,100,50,100,90,100,100
    -ghost,0,0,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,100,90,90,100,0,100,50,100,90,100,100
    -boss_limbs,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,100,100,50,100,0,100,100
    -healer,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,0,100,100,100,100,100,100,100,100,100,100,50,100,100,100,100
    -apparition,0,0,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,100,100,50,100,100
    -bat,0,0,100,80,95,90,0,0,0,90,90,90,90,90,90,95,95,30,90,90,90,90,100,90,90,90,0,100,50,100,90,100,100
    -mage_swapper,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100
    -curse,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
    -trap,0,0,80,80,50,100,100,100,0,0,100,50,100,100,100,100,100,0,100,0,100,100,100,100,100,100,100,100,100,100,100,100,100
    +HERD,player,-1,slimes,ant,robot,fly,boss_dragon,crawler,helpless,eel,fire,fungus,ghoul,giant,ice,spider,orcs,rat,electricity,wolf,worm,zombie,nest,mage,flower,ghost,boss_limbs,healer,apparition,bat,mage_swapper,curse,trap,ghost_boss
    +      player,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    +-1,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,100,0,0,0,0
    +      slimes,0,0,100,80,95,90,0,0,0,90,90,90,90,90,90,95,95,30,90,90,90,90,100,90,90,90,0,100,50,100,90,100,100,100
    +         ant,0,0,80,100,40,90,0,0,0,0,0,100,0,0,0,95,40,50,0,0,0,90,100,90,90,90,0,100,50,100,90,100,100,100
    +       robot,0,0,95,90,100,80,0,90,0,90,95,95,90,90,0,95,95,0,90,0,90,95,100,95,90,90,0,100,50,100,95,100,100,100
    +         fly,0,0,90,90,90,100,0,0,0,0,90,90,90,0,0,90,90,60,90,0,0,90,100,80,90,90,0,100,50,100,80,100,100,100
    + boss_dragon,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +     crawler,0,0,0,0,90,0,0,100,0,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +    helpless,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +         eel,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +        fire,0,0,90,80,90,100,0,0,0,0,100,90,90,0,20,90,96,0,0,0,0,90,100,95,90,90,0,100,50,100,95,100,100,100
    +      fungus,0,0,75,80,70,90,0,0,0,0,80,100,0,0,80,95,95,95,80,0,0,70,100,90,90,90,0,100,50,100,90,100,100,100
    +       ghoul,0,0,0,0,90,50,0,0,0,0,0,0,100,0,0,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +       giant,0,0,0,0,90,50,0,0,0,0,0,0,0,100,100,90,0,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +         ice,0,0,0,0,0,0,0,0,0,0,20,80,0,100,100,90,50,0,0,0,0,90,100,99,90,90,0,100,50,100,99,100,100,100
    +      spider,0,0,95,95,95,90,0,95,95,0,95,95,0,95,0,100,95,95,95,95,90,95,100,95,90,90,0,100,50,100,95,100,100,100
    +        orcs,2,0,80,80,95,90,0,30,40,100,90,90,0,90,40,95,100,0,0,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +         rat,0,0,50,50,50,0,0,0,0,0,0,90,0,0,0,95,50,100,0,0,0,50,100,90,90,90,0,100,50,0,90,100,100,100
    + electricity,0,0,0,80,90,90,0,0,0,0,0,80,0,0,0,90,0,0,100,0,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +        wolf,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,100,0,0,100,90,90,90,0,100,50,100,90,100,100,100
    +        worm,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,0,100,0,100,90,90,90,0,100,50,100,90,100,100,100
    +      zombie,0,0,90,80,90,90,0,0,10,100,90,90,0,0,90,95,95,70,0,0,0,100,100,90,90,90,0,100,50,100,90,100,100,100
    +nest,0,0,100,100,100,100,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,0,100,50,100,100,100,100,100
    +mage,0,0,90,80,90,90,0,0,0,0,90,90,90,0,95,95,90,0,0,0,0,90,100,100,90,90,0,100,50,100,100,100,100,100
    +flower,0,0,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,100,90,100,90,0,100,50,100,90,100,100,100
    +ghost,0,0,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,100,90,90,100,0,100,50,100,90,100,100,100
    +boss_limbs,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90,0,0,0,100,100,50,100,0,100,100,100
    +healer,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,0,100,100,100,100,100,100,100,100,100,100,50,100,100,100,100,100
    +apparition,0,0,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,100,100,50,100,100,100
    +bat,0,0,100,80,95,90,0,0,0,90,90,90,90,90,90,95,95,30,90,90,90,90,100,90,90,90,0,100,50,100,90,100,100,100
    +mage_swapper,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100
    +curse,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
    +trap,0,0,80,80,50,100,100,100,0,0,100,50,100,100,100,100,100,0,100,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100
    +ghost_boss,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100
    diff --git a/magic_numbers.xml b/magic_numbers.xml
    index d7df988..d1b846e 100644
    --- a/magic_numbers.xml
    +++ b/magic_numbers.xml
    @@ -153,10 +153,10 @@
    INVENTORY_ICON_SIZE="20"
    INVENTORY_STASH_X="370"
    INVENTORY_STASH_Y="80"
    -  INVENTORY_DEBUG_X="180"
    -  INVENTORY_DEBUG_Y="55"
    -  DEBUG_UI_ALL_THE_CARDS_HEIGHT="15"
    -  DEBUG_UI_ALL_THE_CARDS_WIDTH="23"
    +  INVENTORY_DEBUG_X="165"
    +  INVENTORY_DEBUG_Y="45"
    +  DEBUG_UI_ALL_THE_CARDS_HEIGHT="16"
    +  DEBUG_UI_ALL_THE_CARDS_WIDTH="24"
    UI_BARS_POS_X="20"
    UI_BARS_POS_Y="20"
    UI_BARS2_OFFSET_X="-40"
    diff --git a/materials.xml b/materials.xml
    index c9f6e7f..314d445 100644
    --- a/materials.xml
    +++ b/materials.xml
    @@ -1185,6 +1185,7 @@
    	ui_name="$mat_wood"
    	wang_color="ff005345"
    	hp="200000"
    +	durability="12"
    	audio_physics_material_event="rock"
    	audio_physics_material_wall="woodwall"
    	audio_physics_material_solid="wood"
    @@ -9695,6 +9696,66 @@
    	</StatusEffects>
    </CellData>

    +  <CellData
    +	name="fungus_powder"
    +	ui_name="$mat_fungisoil"
    +  	tags="[sand_other]"
    +	burnable="1"
    +	density="7"
    +	durability="3"
    +	cell_type="liquid"
    +	wang_color="ffbecafe"
    +	generates_smoke="0"
    +	liquid_gravity="2"
    +	liquid_sand="1"
    +	on_fire="1"
    +	requires_oxygen="0"
    +	temperature_of_fire="10"
    +	autoignition_temperature="0"
    +	generates_flames="0"
    +	on_fire_flame_material="swamp"
    +	hp="1000"
    +	fire_hp="20"
    +	audio_physics_material_event="sand"
    +	audio_physics_material_wall="sand"
    +	audio_physics_material_solid="sand"
    +	show_in_creative_mode="0"
    +	lifetime="4.0"
    +	>
    +	<ExplosionConfig
    +		damage="0"
    +		cell_explosion_power="2"
    +		cell_explosion_damage_required="1"
    +		cell_explosion_radius_min="2"
    +		explosion_sprite=""
    +		load_this_entity="data/entities/misc/fungus_powder.xml"
    +		ray_energy="0"
    +		audio_enabled="0"
    +		create_cell_probability="0"
    +		sparks_enabled="0"
    +		light_enabled="0"
    +		hole_enabled="1"
    +		crack_count="0"
    +		stains_enabled="0"
    +		damage_mortals="0"
    +		particle_effect="0"
    +		>
    +	</ExplosionConfig>
    +    <Graphics
    +	  texture_file="data/materials_gfx/meat_rotten.png"
    +	  color="ffb89e57" >
    +    </Graphics>
    +	<StatusEffects>
    +		<Ingestion>
    +			<StatusEffect type="POISONED" amount="0.15" />
    +			<StatusEffect type="FOOD_POISONING" amount="0.05" />
    +		</Ingestion>
    +		<Stains>
    +			<StatusEffect type="WET" />
    +		</Stains>
    +	</StatusEffects>
    +  </CellData>
    +
    <CellData
    	name="orb_powder"
    	ui_name="$mat_orb_powder"
    diff --git a/projectiles_gfx/orb_expanding.png b/projectiles_gfx/orb_expanding.png
    index eef2c57..3de6371 100644
    Binary files a/projectiles_gfx/orb_expanding.png and b/projectiles_gfx/orb_expanding.png differ
    diff --git a/projectiles_gfx/orb_expanding.xml b/projectiles_gfx/orb_expanding.xml
    index 585fe5f..42992c4 100644
    --- a/projectiles_gfx/orb_expanding.xml
    +++ b/projectiles_gfx/orb_expanding.xml
    @@ -1,7 +1,7 @@
    <Sprite
    filename="data/projectiles_gfx/orb_expanding.png"
    - offset_x="10"
    - offset_y="10"
    + offset_x="8"
    + offset_y="8"
    default_animation="fireball" >

    <!-- animation -->
    @@ -10,8 +10,8 @@
    pos_x="0"
    pos_y="0"
    frame_count="12"
    -  frame_width="20"
    -  frame_height="20"
    +  frame_width="16"
    +  frame_height="16"
    frame_wait="0.16"
    frames_per_row="12"
    loop="0"   >
    diff --git a/scripts/biomes/alchemist_secret.lua b/scripts/biomes/alchemist_secret.lua
    index 381491d..b884bff 100644
    --- a/scripts/biomes/alchemist_secret.lua
    +++ b/scripts/biomes/alchemist_secret.lua
    @@ -24,7 +24,7 @@ function spawn_potions( x, y ) end
    function spawn_wands( x, y ) end

    function init( x, y, w, h )
    -	LoadPixelScene( "data/biome_impl/alchemist_secret.png", "data/biome_impl/alchemist_secret_visual.png", x, y, "data/biome_impl/alchemist_secret_background.png", true )
    +	LoadPixelScene( "data/biome_impl/alchemist_secret.png", "data/biome_impl/alchemist_secret_visual.png", x, y, "", true )
    end

    function spawn_orb(x, y)
    diff --git a/scripts/biomes/coalmine.lua b/scripts/biomes/coalmine.lua
    index 40237f3..1e0b886 100644
    --- a/scripts/biomes/coalmine.lua
    +++ b/scripts/biomes/coalmine.lua
    @@ -1192,9 +1192,14 @@ end

    function spawn_chest(x, y)
    	SetRandomSeed( x, y )
    -	local rnd = Random(1,100)
    +	local super_chest_spawn_rate = 2000
    +	if GameHasFlagRun( "greed_curse" ) and ( GameHasFlagRun( "greed_curse_gone" ) == false ) then
    +		super_chest_spawn_rate = 100
    +	end
    +
    +	local rnd = Random(1,super_chest_spawn_rate)

    -	if (rnd >= 99) then
    +	if (rnd >= super_chest_spawn_rate-1) then
    		EntityLoad( "data/entities/items/pickup/chest_random_super.xml", x, y)
    	else
    		EntityLoad( "data/entities/items/pickup/chest_random.xml", x, y)
    diff --git a/scripts/biomes/lake.lua b/scripts/biomes/lake.lua
    index 8c3ee70..227dec9 100644
    --- a/scripts/biomes/lake.lua
    +++ b/scripts/biomes/lake.lua
    @@ -8,6 +8,7 @@ RegisterSpawnFunction( 0xffb2a700, "spawn_bunker2" )
    RegisterSpawnFunction( 0xffb27600, "spawn_bunker" )
    RegisterSpawnFunction( 0xff390000, "spawn_alchemist" )
    RegisterSpawnFunction( 0xffffeedd, "init" )
    +RegisterSpawnFunction( 0xFF5078C8, "spawn_rainbow_card")

    ------------ SMALL ENEMIES ----------------------------------------------------

    @@ -243,4 +244,8 @@ end

    function spawn_teleport_back( x, y )
    	EntityLoad( "data/entities/buildings/teleport_bunker_back.xml", x, y )
    +end
    +
    +function spawn_rainbow_card( x, y )
    +	CreateItemActionEntity( "RAINBOW_TRAIL", x, y )
    end
    \ No newline at end of file
    diff --git a/scripts/biomes/snowcave.lua b/scripts/biomes/snowcave.lua
    index 482f14b..e092964 100644
    --- a/scripts/biomes/snowcave.lua
    +++ b/scripts/biomes/snowcave.lua
    @@ -298,7 +298,7 @@ g_big_enemies =
    		entity 	= "data/entities/animals/thunderskull.xml"
    	},
    	{
    -		prob   		= 0.01,
    +		prob   		= 0.1,
    		min_count	= 2,
    		max_count	= 4,
    		entity 	= "data/entities/animals/scavenger_glue.xml",
    diff --git a/scripts/biomes/vault.lua b/scripts/biomes/vault.lua
    index 6f55e9f..01080e9 100644
    --- a/scripts/biomes/vault.lua
    +++ b/scripts/biomes/vault.lua
    @@ -37,6 +37,7 @@ RegisterSpawnFunction( 0xffaa42ff, "spawn_electricity_trap" )
    RegisterSpawnFunction( 0xff33934c, "spawn_shopitem" )

    RegisterSpawnFunction( 0xffacf14b, "spawn_laser_trap" )
    +RegisterSpawnFunction( 0xffa45aff, "spawn_lab_puzzle" )


    ------------ small enemies -------------------------------
    @@ -173,10 +174,10 @@ g_small_enemies =
    		}
    	},
    	{
    -		prob   		= 0.05,
    +		prob   		= 0.1,
    		min_count	= 1,
    		max_count	= 3,
    -		entity 	= "data/entities/animals/scavenger_glue.xml",
    +		entity 	= "data/entities/animals/vault/scavenger_glue.xml",
    	},
    }

    @@ -549,6 +550,14 @@ g_pixel_scene_02 =
    		background_file	= "",
    		is_unique		= 0,
    	},
    +	{
    +		prob   			= 0.5,
    +		material_file 	= "data/biome_impl/vault/lab_puzzle.png",
    +		visual_file		= "data/biome_impl/vault/lab_puzzle_visual.png",
    +		background_file	= "data/biome_impl/vault/lab_puzzle_background.png",
    +		is_unique		= 0,
    +		background_z_index = 38,
    +	},
    }

    g_pixel_scene_wide =
    @@ -1190,6 +1199,25 @@ function spawn_shopitem( x, y )
    	generate_shop_item( x, y, false, nil )
    end

    +function spawn_lab_puzzle(x, y)
    +	SetRandomSeed(x, y)
    +	local type_a = random_from_array({
    +		"poly",
    +		"tele",
    +		"charm",
    +		"berserk",
    +	})
    +	local type_b = random_from_array({
    +		"protect",
    +		"worm",
    +		"invis",
    +		"speed",
    +	})
    +	EntityLoad("data/entities/buildings/vault_lab_puzzle_" .. type_a .. ".xml", x - 10, y)
    +	EntityLoad("data/entities/buildings/vault_lab_puzzle_" .. type_b .. ".xml", x + 11, y)
    +end
    +
    +
    -----------------------------------------
    -- PIPES
    -----------------------------------------
    diff --git a/scripts/biomes/vault_frozen.lua b/scripts/biomes/vault_frozen.lua
    index fba4988..b3fe087 100644
    --- a/scripts/biomes/vault_frozen.lua
    +++ b/scripts/biomes/vault_frozen.lua
    @@ -126,6 +126,12 @@ g_small_enemies =
    		max_count	= 1,
    		entity 	= "data/entities/animals/drone_shield.xml"
    	},
    +	{
    +		prob   		= 0.1,
    +		min_count	= 2,
    +		max_count	= 4,
    +		entity 	= "data/entities/animals/vault/scavenger_glue.xml",
    +	},
    	{
    		prob   		= 0.1,
    		min_count	= 1,
    diff --git a/scripts/buildings/orb_07_pitcheck_b.lua b/scripts/buildings/orb_07_pitcheck_b.lua
    index fdf138b..cc1273b 100644
    --- a/scripts/buildings/orb_07_pitcheck_b.lua
    +++ b/scripts/buildings/orb_07_pitcheck_b.lua
    @@ -1,9 +1,11 @@
    dofile_once("data/scripts/lib/utilities.lua")

    -function collision_trigger()
    +function collision_trigger( colliding_entity )
    	local entity_id    = GetUpdatedEntityID()
    	local x, y = EntityGetTransform( entity_id )

    +	if( IsInvisible( colliding_entity ) ) then return end
    +
    	local pid = EntityLoad( "data/entities/animals/boss_pit/boss_pit.xml", x - 160, y + 256 )
    	PhysicsApplyForce( pid, 0, -80 )
    end
    \ No newline at end of file
    diff --git a/scripts/gun/gun.lua b/scripts/gun/gun.lua
    index f08d53d..dd700af 100644
    --- a/scripts/gun/gun.lua
    +++ b/scripts/gun/gun.lua
    @@ -112,6 +112,7 @@ function clone_action( source, target )
    	target.type              = source.type
    	target.recursive         = source.recursive
    	target.related_projectiles = source.related_projectiles
    +	target.related_extra_entities = source.related_extra_entities
    	target.action            = source.action
    	target.deck_index        = source.deck_index
    	target.custom_uses_logic = source.custom_uses_logic
    diff --git a/scripts/gun/gun_actions.lua b/scripts/gun/gun_actions.lua
    index 72a5a92..3ef1f90 100644
    --- a/scripts/gun/gun_actions.lua
    +++ b/scripts/gun/gun_actions.lua
    @@ -1659,6 +1659,27 @@ actions =
    			c.spread_degrees = c.spread_degrees + 4.0
    		end,
    	},
    +	{
    +		id          = "ICEBALL",
    +		name 		= "$action_iceball",
    +		description = "$actiondesc_iceball",
    +		sprite 		= "data/ui_gfx/gun_actions/iceball.png",
    +		sprite_unidentified = "data/ui_gfx/gun_actions/fireball_unidentified.png",
    +		related_projectiles	= {"data/entities/projectiles/deck/iceball.xml"},
    +		type 		= ACTION_TYPE_PROJECTILE,
    +		spawn_level                       = "2,3,4,6", -- FIREBALL
    +		spawn_probability                 = "1,1,1,1", -- FIREBALL
    +		price = 260,
    +		mana = 90,
    +		max_uses = 15,
    +		custom_xml_file = "data/entities/misc/custom_cards/iceball.xml",
    +		action 		= function()
    +			add_projectile("data/entities/projectiles/deck/iceball.xml")
    +			c.spread_degrees = c.spread_degrees + 8.0
    +			c.fire_rate_wait = c.fire_rate_wait + 80
    +			shot_effects.recoil_knockback = shot_effects.recoil_knockback + 20.0
    +		end,
    +	},
    	--[[
    	{
    		id          = "ICETHROWER",
    @@ -1905,6 +1926,24 @@ actions =
    			shot_effects.recoil_knockback = shot_effects.recoil_knockback + 30.0
    		end,
    	},
    +	{
    +		id          = "GLUE_SHOT",
    +		name 		= "$action_glue_shot",
    +		description = "$actiondesc_glue_shot",
    +		sprite 		= "data/ui_gfx/gun_actions/glue_shot.png",
    +		sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    +		related_projectiles	= {"data/entities/projectiles/deck/glue_shot.xml"},
    +		type 		= ACTION_TYPE_PROJECTILE,
    +		spawn_level                       = "2,3,4,5", -- GLUE_SHOT
    +		spawn_probability                 = "0.6,0.2,0.2,0.6", -- GLUE_SHOT
    +		price = 140,
    +		mana = 25,
    +		action 		= function()
    +			add_projectile("data/entities/projectiles/deck/glue_shot.xml")
    +			c.fire_rate_wait = c.fire_rate_wait + 30
    +			c.spread_degrees = c.spread_degrees + 5.0
    +		end,
    +	},
    	{
    		id          = "BOMB_HOLY",
    		name 		= "$action_bomb_holy",
    @@ -4533,6 +4572,24 @@ actions =
    			draw_actions( 1, true )
    		end,
    	},
    +	{
    +		id          = "HOMING_SHORT",
    +		name 		= "$action_homing_short",
    +		description = "$actiondesc_homing_short",
    +		sprite 		= "data/ui_gfx/gun_actions/homing_short.png",
    +		sprite_unidentified = "data/ui_gfx/gun_actions/homing_unidentified.png",
    +		related_extra_entities = { "data/entities/misc/homing_short.xml", "data/entities/particles/tinyspark_white_weak.xml" },
    +		type 		= ACTION_TYPE_MODIFIER,
    +		spawn_level                       = "1,2,3,4,5,6", -- HOMING
    +		spawn_probability                 = "0.4,0.8,1,0.4,0.1,0.1", -- HOMING
    +		price = 160,
    +		mana = 40,
    +		--max_uses = 100,
    +		action 		= function()
    +			c.extra_entities = c.extra_entities .. "data/entities/misc/homing_short.xml,data/entities/particles/tinyspark_white_weak.xml,"
    +			draw_actions( 1, true )
    +		end,
    +	},
    	{
    		id          = "HOMING_ROTATE",
    		name 		= "$action_homing_rotate",
    @@ -7366,6 +7423,7 @@ actions =
    		custom_xml_file = "data/entities/misc/custom_cards/energy_shield.xml",
    		action 		= function()
    			-- does nothing to the projectiles
    +			draw_actions( 1, true )
    		end,
    	},
    	{
    @@ -7381,6 +7439,7 @@ actions =
    		custom_xml_file = "data/entities/misc/custom_cards/energy_shield_sector.xml",
    		action 		= function()
    			-- does nothing to the projectiles
    +			draw_actions( 1, true )
    		end,
    	},
    	{
    @@ -8212,7 +8271,6 @@ actions =
    		description = "$actiondesc_summon_portal",
    		sprite 		= "data/ui_gfx/gun_actions/summon_portal.png",
    		sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    -		spawn_requires_flag = "card_unlocked_everything",
    		type 		= ACTION_TYPE_OTHER,
    		spawn_level                       = "10", -- MANA_REDUCE
    		spawn_probability                 = "0", -- MANA_REDUCE
    diff --git a/scripts/items/chest_random_super.lua b/scripts/items/chest_random_super.lua
    index 821b4a0..bb05805 100644
    --- a/scripts/items/chest_random_super.lua
    +++ b/scripts/items/chest_random_super.lua
    @@ -20,8 +20,9 @@ function drop_random_reward( x, y, entity_id, rand_x, rand_y, set_rnd_  )
    	local count = 1

    	if( Random( 0, 100000) >= 100000 ) then
    -		table.insert( entities, { "data/entities/animals/boss_centipede/sampo.xml" } )
    +		EntityLoadEndGameItem( "data/entities/animals/boss_centipede/sampo.xml", x, y )
    		count = 0
    +		return
    	end


    diff --git a/scripts/items/gold_orb.lua b/scripts/items/gold_orb.lua
    index f7277ca..beba6a2 100644
    --- a/scripts/items/gold_orb.lua
    +++ b/scripts/items/gold_orb.lua
    @@ -13,7 +13,7 @@ function drop()

    		SetRandomSeed( x + entity_id, y - GameGetFrameNum() )

    -		local outcome = Random( 1, 20 )
    +		local outcome = Random( 1, 26 )

    		if ( count == 1 ) then
    			outcome = 10
    diff --git a/scripts/magic/kantele.lua b/scripts/magic/kantele.lua
    index 5ab1378..83926b6 100644
    --- a/scripts/magic/kantele.lua
    +++ b/scripts/magic/kantele.lua
    @@ -4,7 +4,7 @@ local kantele_songs = {
    	portal = { "a", "dis", "e", "g" },
    	bomb = { "g", "d", "e", "d" },
    	worm = { "d", "e", "a", "e", "dis" },
    -	alchemy = { "f", "g", "f", "a2", "c", "g", "f", "gsharp" },
    +	alchemy = { "f", "g", "f", "a2", "c" },
    }

    local entity_id = GetUpdatedEntityID()
    diff --git a/scripts/magic/ocarina.lua b/scripts/magic/ocarina.lua
    index 1e4f66d..374212e 100644
    --- a/scripts/magic/ocarina.lua
    +++ b/scripts/magic/ocarina.lua
    @@ -4,7 +4,7 @@ local ocarina_songs = {
    	portal = { "a", "f", "d", "e", "a2" },
    	bomb = { "f", "c", "d", "c" },
    	worm = { "gsharp", "f", "e", "b", "d" },
    -	alchemy = { "a2", "d", "dis", "e", "a", "b", "c", "gsharp" },
    +	alchemy = { "a2", "d", "dis", "e", "a" },
    }

    local entity_id = GetUpdatedEntityID()
    diff --git a/scripts/magic/orb_line.lua b/scripts/magic/orb_line.lua
    index ffd4102..da63c84 100644
    --- a/scripts/magic/orb_line.lua
    +++ b/scripts/magic/orb_line.lua
    @@ -7,14 +7,7 @@ SetRandomSeed( x * GameGetFrameNum(), y )

    local orbdata = orb_map_get()

    -local mx = ( ( x + 17920 ) % 35840 ) - 17920
    -local pw = x
    -
    -if ( x >= 0 ) then
    -	pw = math.floor( ( x + 17920 ) / 35840 )
    -else
    -	pw = math.floor( ( x - 17920 ) / 35840 )
    -end
    +local pw,mx = check_parallel_pos( x )

    if ( Random( 1, 25 ) == 4 ) then
    	local closest = -1
    diff --git a/scripts/perks/attract_items.lua b/scripts/perks/attract_items.lua
    index 11b86b8..7fe7cc3 100644
    --- a/scripts/perks/attract_items.lua
    +++ b/scripts/perks/attract_items.lua
    @@ -4,13 +4,14 @@ local entity_id = GetUpdatedEntityID()
    local x, y = EntityGetTransform( entity_id )

    local items = EntityGetWithTag( "gold_nugget" )
    +local distance_full = tonumber( GlobalsGetValue( "PERK_ATTRACT_ITEMS_RANGE", "72" ) )
    +local power = math.min( distance_full / 8, 20 )

    if ( #items > 0 ) then
    	for i,item_id in ipairs(items) do
    		local px, py = EntityGetTransform( item_id )

    		local distance = math.abs( x - px ) + math.abs( y - py )
    -		local distance_full = 72

    		if ( distance < distance_full * 1.25 ) then
    			distance = math.sqrt( ( x - px ) ^ 2 + ( y - py ) ^ 2 )
    @@ -20,8 +21,8 @@ if ( #items > 0 ) then
    				local physicscomponents = EntityGetComponent( item_id, "PhysicsBodyComponent" )

    				if ( physicscomponents ~= nil ) then
    -					local vel_x = math.cos( direction ) * 9
    -					local vel_y = 0 - math.sin( direction ) * 9
    +					local vel_x = math.cos( direction ) * power
    +					local vel_y = 0 - math.sin( direction ) * power

    					PhysicsApplyForce( item_id, vel_x, vel_y )
    				end
    diff --git a/scripts/perks/mana_from_kills.lua b/scripts/perks/mana_from_kills.lua
    index 2f3b8ee..d038919 100644
    --- a/scripts/perks/mana_from_kills.lua
    +++ b/scripts/perks/mana_from_kills.lua
    @@ -3,35 +3,39 @@ dofile_once("data/scripts/lib/utilities.lua")
    local entity_id = GetUpdatedEntityID()
    local x, y = EntityGetTransform( entity_id )

    -local targets = EntityGetInRadiusWithTag( x, y, 160, "homing_target" )
    +local targets = EntityGetInRadiusWithTag( x, y, 240, "homing_target" )

    if ( #targets > 0 ) then
    	for i,target_id in ipairs( targets ) do
    		local variablestorages = EntityGetComponent( target_id, "VariableStorageComponent" )
    		local found = false

    -		if ( variablestorages ~= nil ) then
    -			for j,storage_id in ipairs( variablestorages ) do
    -				local var_name = ComponentGetValue( storage_id, "name" )
    -				if ( var_name == "mana_from_kills" ) then
    -					found = true
    -					break
    +		if ( EntityHasTag( target_id, "mana_from_kills" ) == false ) then
    +			if ( variablestorages ~= nil ) then
    +				for j,storage_id in ipairs( variablestorages ) do
    +					local var_name = ComponentGetValue( storage_id, "name" )
    +					if ( var_name == "mana_from_kills" ) then
    +						found = true
    +						break
    +					end
    				end
    			end
    -		end

    -		if ( found == false and ( EntityHasTag( target_id, "polymorphed") == false) ) then
    -			EntityAddComponent( target_id, "VariableStorageComponent",
    -			{
    -				name = "mana_from_kills",
    -				value_int = entity_id,
    -			} )
    -
    -			EntityAddComponent( target_id, "LuaComponent",
    -			{
    -				script_death = "data/scripts/perks/mana_from_kills_death.lua",
    -				execute_every_n_frame = "-1",
    -			} )
    +			if ( found == false and ( EntityHasTag( target_id, "polymorphed") == false) ) then
    +				EntityAddTag( target_id, "mana_from_kills" )
    +
    +				EntityAddComponent( target_id, "VariableStorageComponent",
    +				{
    +					name = "mana_from_kills",
    +					value_int = entity_id,
    +				} )
    +
    +				EntityAddComponent( target_id, "LuaComponent",
    +				{
    +					script_death = "data/scripts/perks/mana_from_kills_death.lua",
    +					execute_every_n_frame = "-1",
    +				} )
    +			end
    		end
    	end
    end
    \ No newline at end of file
    diff --git a/scripts/perks/perk_list.lua b/scripts/perks/perk_list.lua
    index 088fbe3..ec53058 100644
    --- a/scripts/perks/perk_list.lua
    +++ b/scripts/perks/perk_list.lua
    @@ -267,12 +267,14 @@ perk_list =
    					local kick_damage = tonumber( ComponentGetMetaCustom( model, "kick_damage" ) ) + 2.4
    					local kick_knockback = tonumber( ComponentGetMetaCustom( model, "kick_knockback" ) ) + 250
    					local telekinesis_throw_speed = tonumber( ComponentGetValue2( model, "telekinesis_throw_speed") ) + 25
    +					local kick_entities = tostring( ComponentGetValue2( model, "kick_entities" ) ) .. ",data/entities/misc/crack_ice.xml"

    					ComponentSetMetaCustom( model, "max_force", kick_force )
    					ComponentSetMetaCustom( model, "player_kickforce", player_kick_force )
    					ComponentSetMetaCustom( model, "kick_damage", kick_damage )
    					ComponentSetMetaCustom( model, "kick_knockback", kick_knockback )
    					ComponentSetValue2( model, "telekinesis_throw_speed", telekinesis_throw_speed )
    +					ComponentSetValue2( model, "kick_entities", kick_entities )
    				end
    			end

    @@ -1453,6 +1455,21 @@ perk_list =
    			--GenomeSetHerdId( entity_who_picked, "rat" )
    		end,
    	},
    +	{
    +		id = "MOLD",
    +		ui_name = "$perk_mold",
    +		ui_description = "$perkdesc_mold",
    +		ui_icon = "data/ui_gfx/perk_icons/mold.png",
    +		perk_icon = "data/items_gfx/perks/mold.png",
    +		stackable = STACKABLE_NO,
    +		func = function( entity_perk_item, entity_who_picked, item_name )
    +			local x,y = EntityGetTransform( entity_perk_item )
    +			local child_id = EntityLoad( "data/entities/misc/perks/slime_fungus.xml", x, y )
    +			EntityAddChild( entity_who_picked, child_id )
    +
    +			EntityLoad( "data/entities/items/pickup/potion_slime.xml", x, y )
    +		end,
    +	},
    	{
    		id = "WORM_SMALLER_HOLES",
    		ui_name = "$perk_worm_smaller_holes",
    @@ -1763,12 +1780,28 @@ perk_list =
    		perk_icon = "data/items_gfx/perks/attract_items.png",
    		usable_by_enemies = true,
    		stackable = STACKABLE_YES,
    +		stackable_maximum = 6,
    		func = function( entity_perk_item, entity_who_picked, item_name )
    +			local distance_full = tonumber( GlobalsGetValue( "PERK_ATTRACT_ITEMS_RANGE", "0" ) )
    +
    +			if ( distance_full == 0 ) then
    +				GlobalsSetValue( "PERK_ATTRACT_ITEMS_RANGE", "72" )
    +				EntityAddComponent( entity_who_picked, "LuaComponent",
    +				{
    +					script_source_file = "data/scripts/perks/attract_items.lua",
    +					execute_every_n_frame = "2",
    +				} )
    +			else
    +				distance_full = distance_full + 24
    +				GlobalsSetValue( "PERK_ATTRACT_ITEMS_RANGE", tostring(distance_full) )
    +			end
    +		end,
    +		func_enemy = function( entity_perk_item, entity_who_picked )
    			EntityAddComponent( entity_who_picked, "LuaComponent",
    			{
    -				script_source_file = "data/scripts/perks/attract_items.lua",
    +				script_source_file = "data/scripts/perks/attract_items_enemy.lua",
    				execute_every_n_frame = "2",
    -			} )
    +			} )
    		end,
    	},
    	{
    @@ -2316,6 +2349,18 @@ perk_list =
    			GlobalsSetValue( "TEMPLE_PERK_DESTROY_CHANCE", tostring(perk_destroy_chance) )
    		end,
    	},
    +	{
    +		id = "GAMBLE",
    +		ui_name = "$perk_gamble",
    +		ui_description = "$perkdesc_gamble",
    +		ui_icon = "data/ui_gfx/perk_icons/gamble.png", -- TODO
    +		perk_icon = "data/items_gfx/perks/gamble.png", -- TODO
    +		stackable = STACKABLE_YES,
    +		func = function( entity_perk_item, entity_who_picked, item_name )
    +			local pos_x, pos_y = EntityGetTransform(entity_who_picked)
    +			EntityLoad("data/entities/misc/perk_gamble_spawner.xml", pos_x, pos_y)
    +		end,
    +	},
    	{
    		id = "EXTRA_SHOP_ITEM",
    		ui_name = "$perk_extra_shop_item",
    @@ -2412,6 +2457,22 @@ perk_list =
    			} )
    		end,
    	},
    +	{
    +		id = "ANGRY_LEVITATION",
    +		ui_name = "$perk_angry_levitation",
    +		ui_description = "$perkdesc_angry_levitation",
    +		ui_icon = "data/ui_gfx/perk_icons/angry_levitation.png",
    +		perk_icon = "data/items_gfx/perks/angry_levitation.png",
    +		stackable = STACKABLE_NO,
    +		func = function( entity_perk_item, entity_who_picked, item_name )
    +
    +			EntityAddComponent( entity_who_picked, "LuaComponent",
    +			{
    +				script_source_file = "data/scripts/perks/angry_levitation.lua",
    +				execute_every_n_frame = "20",
    +			} )
    +		end,
    +	},
    	{
    		id = "LASER_AIM",
    		ui_name = "$perk_laser_aim",
    diff --git a/scripts/projectiles/glue_anchor.lua b/scripts/projectiles/glue_anchor.lua
    index ae9bd7e..18a6662 100644
    --- a/scripts/projectiles/glue_anchor.lua
    +++ b/scripts/projectiles/glue_anchor.lua
    @@ -20,11 +20,10 @@ end)

    if target < 0 then
    	-- no target entity. add physics to tie to a surface
    -	local physics_comp = EntityGetFirstComponent(entity_id, "PhysicsBody2Component")
    -	if physics_comp == nil then
    +	if EntityGetFirstComponent(entity_id, "PhysicsBody2Component") == nil then
    		EntityAddComponent2( entity_id, "PhysicsBody2Component",
    		{
    -			angular_damping = 0.2,
    +			angular_damping = 1.2,
    			destroy_body_if_entity_destroyed = true,
    		})
    		EntityAddComponent2( entity_id, "PhysicsImageShapeComponent",
    @@ -62,38 +61,29 @@ if target_x ~= nil and target_x ~= 0 and target_y ~= 0 then
    	-- snap anchor to target
    	EntitySetTransform(entity_id, target_x, target_y - 2)

    -	-- pull target closer to anchor
    -	local center_x, center_y = EntityGetTransform(EntityGetParent(entity_id))
    -
    -	local vx = center_x - target_x
    -	local vy = center_y - target_y
    +	-- if target is anchor, don't apply force to both
    +	if target > entity_id and EntityHasTag(target, "glue_anchor") then return end

    -	-- prevent pulling into a wall by checking if glue center (parent) is inside platform
    -	local dist = get_magnitude(vx, vy)
    -	if dist < 8 or RaytracePlatforms(center_x, center_y, center_x + 1, center_y) then
    -		--print("abort pull")
    -		return
    -	end
    +	-- don't apply force physics objects since it gets messy
    +	local comp = EntityGetFirstComponent(target, "PhysicsBodyComponent") or EntityGetFirstComponent(target, "PhysicsBody2Component")
    +	if comp == nil or comp == 0 then
    +		-- pull target closer to anchor
    +		local center_x, center_y = EntityGetTransform(EntityGetParent(entity_id))
    +
    +		local vx = center_x - target_x
    +		local vy = center_y - target_y

    -	-- calculate force
    -	local age_factor = map(t, 0, 300, 1, 0.25) -- glue pull gets weaker over time
    -	vx, vy = vec_mult(vx, vy, force * age_factor)
    +		-- prevent pulling into a wall by checking if glue center (parent) is inside platform
    +		local dist = get_magnitude(vx, vy)
    +		if dist < 8 or RaytracePlatforms(center_x, center_y, center_x + 1, center_y) then
    +			--print("abort pull")
    +			return
    +		end
    +
    +		-- calculate force
    +		local age_factor = map(t, 0, 300, 1, 0.25) -- glue pull gets weaker over time
    +		vx, vy = vec_mult(vx, vy, force * age_factor)

    -	-- use physics force if applicable
    -	local comp = EntityGetFirstComponent(target, "PhysicsBodyComponent") or EntityGetFirstComponent(target, "PhysicsBody2Component")
    -	if comp ~= nil and comp ~= 0 then
    -		PhysicsApplyForce(target, target_x - vx, target_y - vy)
    -	else
    		EntityApplyTransform(target, target_x + vx, target_y + vy)
    -		--[[
    -		-- apply to velocity comp
    -		local velocitycomp = EntityGetFirstComponent(target, "VelocityComponent")
    -		if velocitycomp ~= nil and velocitycomp ~= 0 then
    -			vx,vy = vec_add(vx, vy, ComponentGetValue2( velocitycomp, "mVelocity"))
    -			ComponentSetValue2( velocitycomp, "mVelocity", vx, vy)
    -		else
    -			print("no velocity component found")
    -		end
    -		--]]
    	end
    end
    diff --git a/scripts/projectiles/glue_init.lua b/scripts/projectiles/glue_init.lua
    index ce51612..1734054 100644
    --- a/scripts/projectiles/glue_init.lua
    +++ b/scripts/projectiles/glue_init.lua
    @@ -14,13 +14,19 @@ for _,anchor in ipairs(children) do
    	end
    end

    --- identify target
    +-- optimization: remove when it gets crowded
    +if #EntityGetInRadiusWithTag( pos_x, pos_y, 80, "glue") > 10 then
    +	EntityKill(entity_id)
    +	return
    +end
    +
    +-- identify target & check that it's valid
    local target = EntityGetClosestWithTag( pos_x, pos_y, tag)
    if target == nil or target == 0 then return end

    target = EntityGetRootEntity(target)
    local tx, ty = EntityGetTransform(target)
    -if get_distance(pos_x, pos_y, tx, ty) > max_dist then return end
    +if get_distance(pos_x, pos_y, tx, ty) > max_dist or EntityHasTag( target, "glue_NOT" ) then return end

    -- assign a target to glue anchor
    component_write( EntityGetFirstComponent( children[1], "VariableStorageComponent" ), { value_int = target } )
    diff --git a/scripts/status_effects/effect_curse_cloud_thunder.lua b/scripts/status_effects/effect_curse_cloud_thunder.lua
    index 4e410ba..1a6624c 100644
    --- a/scripts/status_effects/effect_curse_cloud_thunder.lua
    +++ b/scripts/status_effects/effect_curse_cloud_thunder.lua
    @@ -7,5 +7,4 @@ SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )

    local offset_x = Random( -32, 32 )

    -shoot_projectile( entity_id, "data/entities/projectiles/deck/lightning_extra_arcs.xml", pos_x + offset_x, pos_y - 42, 0, 4000 )
    -
    +shoot_projectile( entity_id, "data/entities/projectiles/deck/lightning_extra_arcs.xml", pos_x + offset_x, pos_y - 32, 0, 4000 )
    diff --git a/ui_gfx/animal_icons/_list.txt b/ui_gfx/animal_icons/_list.txt
    index a37617c..8e0b77f 100644
    --- a/ui_gfx/animal_icons/_list.txt
    +++ b/ui_gfx/animal_icons/_list.txt
    @@ -8,6 +8,7 @@ duck
    wolf
    deer
    elk
    +eel
    zombie_weak
    zombie
    miner_weak
    @@ -34,8 +35,8 @@ coward
    flamer
    icer
    bigzombie
    -bigzombie_torso
    -bigzombie_head
    +bigzombietorso
    +bigzombiehead
    slimeshooter_weak
    slimeshooter
    acidshooter_weak
    @@ -136,9 +137,9 @@ crystal_physics
    bloodcrystal_physics
    skycrystal_physics
    chest_mimic
    -chest_leggt
    +chest_leggy
    necromancer_shop
    -necromander_super
    +necromancer_super
    boss_dragon
    boss_limbs
    boss_alchemist
