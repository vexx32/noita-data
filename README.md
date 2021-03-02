HOW TO READ: \n\n FILE CHANGED => +++ b/biome/rainforest_dark.xml

REMOVED CODE => - background_edge_priority='10'

NEW OR CHANGED CODE => + background_edge_priority='9'

---

Actual changes below:

diff --git a/README.md b/README.md
index 5556038..ffdf5ab 100644
Binary files a/README.md and b/README.md differ
diff --git a/entities/\_debug/debug_menu.lua b/entities/\_debug/debug_menu.lua
index 05cf2d5..c78b00c 100644
--- a/entities/\_debug/debug_menu.lua
+++ b/entities/\_debug/debug_menu.lua
@@ -413,6 +413,36 @@ main_menu_items =
ConvertMaterialEverywhere( CellFactory_GetType( "acid" ), CellFactory_GetType( "blood" ) )
end
},

- {
-     ui_name="Fungal shift water->blood",
-     action = function()
-     	ConvertMaterialEverywhere( CellFactory_GetType( "water" ), CellFactory_GetType( "blood" ) )
-     end
- },
- {
-     ui_name="Fungal shift water->oil",
-     action = function()
-     	ConvertMaterialEverywhere( CellFactory_GetType( "water" ), CellFactory_GetType( "oil" ) )
-     end
- },
- {
-     ui_name="Fungal shift #1",
-     action = function()
-     	local x, y = GameGetCameraPos()
-     	local player_entity = EntityGetClosestWithTag( x, y, "player_unit" )
-     	local mat = get_held_item_material( player_entity )
-     	ConvertMaterialEverywhere( mat, CellFactory_GetType( "blood" ) )
-     end
- },
- {
-     ui_name="Fungal shift #2",
-     action = function()
-     	local x, y = GameGetCameraPos()
-     	local player_entity = EntityGetClosestWithTag( x, y, "player_unit" )
-     	local mat = get_held_item_material( player_entity )
-     	ConvertMaterialEverywhere( mat, CellFactory_GetType( "oil" ) )
-     end
- },
  {
  ui_name="ConvertMaterialOnAreaInstantly() - test near camera",
  action = function()
  diff --git a/entities/buildings/dark_moon_altar.xml b/entities/buildings/dark_moon_altar.xml
  index 7c9206d..ed34435 100644
  --- a/entities/buildings/dark_moon_altar.xml
  +++ b/entities/buildings/dark_moon_altar.xml
  @@ -1,4 +1,4 @@ -<Entity tags="moon_altar"> +<Entity tags="moon_altar,moon_energy">
  <LuaComponent
  \_enabled="1"
  execute_every_n_frame="90"
  @@ -12,4 +12,14 @@
  script_source_file="data/scripts/magic/dark_moon_altar_extra.lua" >
  </LuaComponent>
-
- <LightComponent
-     _tags="enabled_in_world,enabled_in_hand"
-     radius="96"
-     r="255"
-     g="255"
-     b="255"
-     fade_out_time="0.2"
-     >
- </LightComponent>
   </Entity>
  \ No newline at end of file
  diff --git a/entities/buildings/moon_altar.xml b/entities/buildings/moon_altar.xml
  index 239ea98..44db8ff 100644
  --- a/entities/buildings/moon_altar.xml
  +++ b/entities/buildings/moon_altar.xml
  @@ -1,4 +1,4 @@
  -<Entity tags="moon_altar">
  +<Entity tags="moon_altar,moon_energy">
   	<LuaComponent 
           _enabled="1" 
           execute_every_n_frame="90"
  @@ -12,4 +12,14 @@
           script_source_file="data/scripts/magic/moon_altar_extra.lua" 
   	>
       </LuaComponent>
-
- <LightComponent
-     _tags="enabled_in_world,enabled_in_hand"
-     radius="96"
-     r="255"
-     g="255"
-     b="255"
-     fade_out_time="0.2"
-     >
- </LightComponent>
   </Entity>
  \ No newline at end of file
  diff --git a/entities/items/pickup/moon.xml b/entities/items/pickup/moon.xml
  index ab115bc..4e6faca 100644
  --- a/entities/items/pickup/moon.xml
  +++ b/entities/items/pickup/moon.xml
  @@ -1,4 +1,4 @@
  -<Entity tags="hittable,teleportable_NOT,item_pickup" >
  +<Entity tags="hittable,teleportable_NOT,item_pickup,moon_energy" >
   	<Base file="data/entities/base_item_projectile.xml" />
   	<!-- physical presence -->


diff --git a/entities/items/pickup/musicstone.xml b/entities/items/pickup/musicstone.xml
index 9b43695..165c2a2 100644
--- a/entities/items/pickup/musicstone.xml
+++ b/entities/items/pickup/musicstone.xml
@@ -1,4 +1,4 @@ -<Entity tags="hittable,teleportable_NOT,item_physics,item_pickup" > +<Entity tags="hittable,teleportable_NOT,item_physics,item_pickup,moon_energy" >
<Base file="data/entities/base_item_projectile.xml" />

 	<!-- physical presence -->

@@ -140,4 +140,14 @@ ></gun_config>
</AbilityComponent>

- <LightComponent
-     _tags="enabled_in_world,enabled_in_hand"
-     radius="12"
-     r="255"
-     g="255"
-     b="255"
-     fade_out_time="0.1"
-     >
- </LightComponent>
-  </Entity>
  diff --git a/entities/items/pickup/sun/newsun.xml b/entities/items/pickup/sun/newsun.xml
  index e3a4b6d..4335cf1 100644
  --- a/entities/items/pickup/sun/newsun.xml
  +++ b/entities/items/pickup/sun/newsun.xml
  @@ -1,4 +1,6 @@
  -<Entity tags="hittable,teleportable_NOT,item_physics,seed_e" >
  +<Entity tags="hittable,teleportable_NOT,seed_e" >
- <StreamingKeepAliveComponent />
-  	<Base file="data/entities/base_item_projectile.xml" />
   
   	<!-- physical presence -->
  diff --git a/entities/items/pickup/sun/newsun_dark.xml b/entities/items/pickup/sun/newsun_dark.xml
  index c537726..28c830a 100644
  --- a/entities/items/pickup/sun/newsun_dark.xml
  +++ b/entities/items/pickup/sun/newsun_dark.xml
  @@ -1,4 +1,6 @@
  -<Entity tags="hittable,teleportable_NOT,item_physics,seed_f" >
  +<Entity tags="hittable,teleportable_NOT,seed_f" >
- <StreamingKeepAliveComponent />
-  	<Base file="data/entities/base_item_projectile.xml" />
   
   	<!-- physical presence -->
  diff --git a/entities/items/pickup/sun/sunbaby.xml b/entities/items/pickup/sun/sunbaby.xml
  index cb4e7c7..e61fae5 100644
  --- a/entities/items/pickup/sun/sunbaby.xml
  +++ b/entities/items/pickup/sun/sunbaby.xml
  @@ -1,4 +1,6 @@
  -<Entity tags="hittable,teleportable_NOT,item_physics,seed_d" >
  +<Entity tags="hittable,teleportable_NOT,seed_d" >
- <StreamingKeepAliveComponent />
-  	<Base file="data/entities/base_item_projectile.xml" />
   
   	<!-- physical presence -->
  @@ -18,8 +20,8 @@
   	
   	<PhysicsShapeComponent
   		is_circle="1"

*     radius_x="64"
*     radius_y="64"

-     radius_x="42"
-     radius_y="42"
      >
  </PhysicsShapeComponent>

diff --git a/entities/items/pickup/sun/sunegg.xml b/entities/items/pickup/sun/sunegg.xml
index b1b36be..519b8a0 100644
--- a/entities/items/pickup/sun/sunegg.xml
+++ b/entities/items/pickup/sun/sunegg.xml
@@ -1,4 +1,4 @@ -<Entity tags="hittable,teleportable_NOT,item_physics,seed_c" > +<Entity tags="hittable,teleportable_NOT,seed_c" >
<Base file="data/entities/base_item_projectile.xml" />

 	<!-- physical presence -->

@@ -196,4 +196,9 @@
event_name="misc/sun/size_1_loop"
auto_play="1">
</AudioLoopComponent>

-
- <CameraBoundComponent
- max_count="5"
- distance="2000">
- </CameraBoundComponent>
   </Entity>
  diff --git a/entities/items/pickup/sun/sunseed.xml b/entities/items/pickup/sun/sunseed.xml
  index 7b233ba..e3ae250 100644
  --- a/entities/items/pickup/sun/sunseed.xml
  +++ b/entities/items/pickup/sun/sunseed.xml
  @@ -146,4 +146,9 @@
   		render_ultrabright="1"
   		is_emitting="1" >
   	</ParticleEmitterComponent>
-
- <CameraBoundComponent
- max_count="5"
- distance="2000">
- </CameraBoundComponent>
   </Entity>
  diff --git a/entities/items/pickup/sun/sunstone.xml b/entities/items/pickup/sun/sunstone.xml
  index 3116de2..42f9982 100644
  --- a/entities/items/pickup/sun/sunstone.xml
  +++ b/entities/items/pickup/sun/sunstone.xml
  @@ -190,4 +190,9 @@
   		execute_every_n_frame="10"
   		>
   	</LuaComponent>
-
- <CameraBoundComponent
- max_count="5"
- distance="2000">
- </CameraBoundComponent>
   </Entity>
  diff --git a/entities/particles/blue_dust.xml b/entities/particles/blue_dust.xml
  new file mode 100644
  index 0000000..ff68ea6
  --- /dev/null
  +++ b/entities/particles/blue_dust.xml
  @@ -0,0 +1,66 @@
  +<Entity>
- <!-- small sparkys -->
- <SpriteParticleEmitterComponent
-        sprite_file="data/particles/shine_blue.xml"
-        lifetime="1.5"
-        randomize_lifetime.min="1.0"
-        randomize_lifetime.max="2.0"
-        emission_interval_min_frames="2"
-        emission_interval_max_frames="30"
-        count_min="1"
-        count_max="1"
-        additive="1"
-        emissive="0"
-        sprite_random_rotation="1"
-        gravity.y="5"
-        randomize_velocity.min_y="-10"
-        randomize_velocity.max_y="10"
-        randomize_velocity.min_x="-10"
-        randomize_velocity.max_x="10"
-        randomize_position.min_x="-150"
-     randomize_position.max_x="150"
-     randomize_position.min_y="-200"
-     randomize_position.max_y="50"
-     velocity_slowdown="0.5"
-        randomize_animation_speed_coeff.min="0.667"
-        randomize_animation_speed_coeff.max="1.0"
-        >
- </SpriteParticleEmitterComponent>
-
- <!-- bigger blinkys -->
- <SpriteParticleEmitterComponent
-        sprite_file="data/particles/tinyspark_03.xml"
-        lifetime="1.5"
-        randomize_lifetime.min="0.5"
-        randomize_lifetime.max="2.0"
-        emission_interval_min_frames="2"
-        emission_interval_max_frames="80"
-        additive="1"
-        emissive="0"
-        count_min="1"
-        count_max="1"
-        sprite_random_rotation="1"
-        gravity.y="5"
-        randomize_velocity.min_y="-10"
-        randomize_velocity.max_y="10"
-        randomize_velocity.min_x="-10"
-        randomize_velocity.max_x="10"
-        randomize_position.min_x="-100"
-     randomize_position.max_x="100"
-     randomize_position.min_y="-150"
-     randomize_position.max_y="50"
-     velocity_slowdown="0.5"
-        randomize_animation_speed_coeff.min="0.667"
-        randomize_animation_speed_coeff.max="1.0"
-        >
- </SpriteParticleEmitterComponent>
-
- <LightComponent
-        radius="300"
-        r="00"
-        g="20"
-        b="255"
-        >
- </LightComponent>
  +</Entity>
- diff --git a/materials.xml b/materials.xml
  index efbfc1a..035e94f 100644
  --- a/materials.xml
  +++ b/materials.xml
  @@ -5418,6 +5418,9 @@ >
  </Graphics>
  <StatusEffects>
-     <Stains>
-     	<StatusEffect type="WET" />
-     </Stains>
 		<Ingestion>
 			<StatusEffect type="INGESTION_DRUNK" amount="0.01" />
 		</Ingestion>
@@ -12241,7 +12244,7 @@
   <CellDataChild
   	_parent="aluminium"
   	_inherit_reactions="1"

* tags="[box2d],[solid]"

- tags="[box2d],[solid],[sunbaby_ignore_list]"
  name="poop_box2d_hard"
  ui_name="$mat_rock_box2d_hard"
  platform_type="1"
  diff --git a/schemas/schema.xml b/schemas/schema.xml
  index b760207..eb815db 100644
  --- a/schemas/schema.xml
  +++ b/schemas/schema.xml
  @@ -1,4 +1,4 @@ -<Schema hash="613831e95c898860b669bfa8eeed9bee" >

+<Schema hash="1b5fcb8e057004269f9afbce8012d765" >

   <Component component_name="AIAttackComponent" >

     <Var name="use_probability" size="4" type="int" >

     </Var>

@@ -2620,6 +2620,8 @@
</Var>

     <Var name="ground_penetration_coeff" size="4" type="float" >

     </Var>

- <Var name="ground_penetration_max_durability_to_destroy" size="4" type="int" >

- </Var>

  <Var name="go_through_this_material" size="24" type="class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> >" >

  </Var>

  <Var name="do_moveto_update" size="1" type="bool" >

diff --git a/scripts/buildings/sun/sun_controls.lua b/scripts/buildings/sun/sun_controls.lua
index 5c5fe5c..a35cf70 100644
--- a/scripts/buildings/sun/sun_controls.lua
+++ b/scripts/buildings/sun/sun_controls.lua
@@ -4,6 +4,7 @@ local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 100, "projectile" )
+local targets2 = EntityGetInRadiusWithTag( x, y, 320, "moon_energy" )

local vel_x,vel_y = 0,0

@@ -19,4 +20,18 @@ for i,v in ipairs( targets ) do
end
EntityKill( v )
+end

- +for i,v in ipairs( targets2 ) do
- local tx,ty = EntityGetTransform( v )
- local test = EntityGetFirstComponent( v, "LightComponent" )
-
- if ( test ~= nil ) then
-     local dir = 0 - math.atan2( y - ty, x - tx )
-
-     vel_x = math.cos( dir ) * 180
-     vel_y = 0 - math.sin( dir ) * 180
-
-     PhysicsApplyForce( entity_id, vel_x, vel_y )
- end
  end
  \ No newline at end of file
  diff --git a/scripts/buildings/sun/sunbaby_controls.lua b/scripts/buildings/sun/sunbaby_controls.lua
  index 1158c61..e7d1934 100644
  --- a/scripts/buildings/sun/sunbaby_controls.lua
  +++ b/scripts/buildings/sun/sunbaby_controls.lua
  @@ -4,6 +4,7 @@ local entity_id = GetUpdatedEntityID()
  local x, y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 56, "projectile" )
+local targets2 = EntityGetInRadiusWithTag( x, y, 220, "moon_energy" )

local vel_x,vel_y = 0,0

@@ -19,4 +20,18 @@ for i,v in ipairs( targets ) do
end
EntityKill( v )
+end

- +for i,v in ipairs( targets2 ) do
- local tx,ty = EntityGetTransform( v )
- local test = EntityGetFirstComponent( v, "LightComponent" )
-
- if ( test ~= nil ) then
-     local dir = 0 - math.atan2( ty - y, tx - x )
-
-     vel_x = math.cos( dir ) * 180
-     vel_y = 0 - math.sin( dir ) * 180
-
-     PhysicsApplyForce( entity_id, vel_x, vel_y )
- end
  end
  \ No newline at end of file
  diff --git a/scripts/magic/fungal_shift.lua b/scripts/magic/fungal_shift.lua
  index 82a71ae..aea8929 100644
  --- a/scripts/magic/fungal_shift.lua
  +++ b/scripts/magic/fungal_shift.lua
  @@ -132,6 +132,18 @@ function fungal_shift( entity, x, y, debug_no_limits )
  local held_material = get_held_item_material( entity )
  local from_material_name = ""

- -- if a potion is equipped, randomly use main material from potion as one of the materials
- if held_material > 0 and random_nexti( rnd, 1, 100 ) <= 75 then
-     if random_nexti( rnd, 1, 100 ) <= 50 then
-     	from = {}
-     	from.materials = { CellFactory_GetName(held_material) }
-     else
-     	to = {}
-     	to.material = CellFactory_GetName(held_material)
-     end
- end
-
- -- apply effects
  for i,it in ipairs(from.materials) do
  local from_material = CellFactory_GetType( it )
  local to_material = CellFactory_GetType( to.material )
  @@ -140,16 +152,6 @@ function fungal_shift( entity, x, y, debug_no_limits )
  from_material_name = string.upper( GameTextGetTranslatedOrNot( CellFactory_GetUIName( CellFactory_GetType( from.name_material ) ) ) )
  end

*     -- if a potion is equipped, randomly use main material from potion as one of the materials
*     if held_material > 0 and random_nexti( rnd, 1, 100 ) <= 75 then
*     	if random_nexti( rnd, 1, 100 ) <= 50 then
*     		from_material = held_material
*     		from_material_name = string.upper( GameTextGetTranslatedOrNot( CellFactory_GetUIName( from_material ) ) )
*     	else
*     		to_material = held_material
*     	end
*     end
* -- convert
  if from_material ~= to_material then
  print(CellFactory_GetUIName(from_material) .. " -> " .. CellFactory_GetUIName(to_material))
  diff --git a/scripts/perks/perk.lua b/scripts/perks/perk.lua
  index a8e4fb9..12eede0 100644
  --- a/scripts/perks/perk.lua
  +++ b/scripts/perks/perk.lua
  @@ -212,13 +212,16 @@ function perk_pickup( entity_item, entity_who_picked, item_name, do_cosmetic_fx,
  GlobalsSetValue( flag_name .. "\_PICKUP_COUNT", tostring( pickup_count ) )
  -- load perk for entity_who_picked -----------------------------------

- local add_progress_flags = not GameHasFlagRun( "no_progress_flags_perk" )

* local flag_name_persistent = string.lower( flag_name )
* if ( HasFlagPersistent( flag_name_persistent ) == false ) then
*     GameAddFlagRun( "new_" .. flag_name_persistent )

- if add_progress_flags then
-     local flag_name_persistent = string.lower( flag_name )
-     if ( not HasFlagPersistent( flag_name_persistent ) ) then
-     	GameAddFlagRun( "new_" .. flag_name_persistent )
-     end
-     AddFlagPersistent( flag_name_persistent )
  end
  GameAddFlagRun( flag_name )

* AddFlagPersistent( flag_name_persistent )

  -- add game effect
  if perk_data.game_effect ~= nil then
