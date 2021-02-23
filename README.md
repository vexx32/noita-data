HOW TO READ:

FILE CHANGED => +++ b/biome/rainforest_dark.xml

REMOVED CODE => - background_edge_priority="10"

NEW OR CHANGED CODE => + background_edge_priority="9"

---

Actual changes below:
diff --git a/entities/animals/boss*centipede/sampo_init.lua b/entities/animals/boss_centipede/sampo_init.lua
index e84b99a..358661f 100644
--- a/entities/animals/boss_centipede/sampo_init.lua
+++ b/entities/animals/boss_centipede/sampo_init.lua
@@ -10,7 +10,7 @@ if( orb_count > MAX_ORB_NAMES ) then orb_count = MAX_ORB_NAMES end
local orb_name = "$item_mcguffin*" .. tostring(orb*count)
local orb_desc = "$itemdesc_mcguffin*" .. tostring(orb_count)

-if( GameGetOrbCountThisRun() >= 33 ) then
+if( GameGetOrbCountThisRun() > 33 ) then
orb_name = "$item_mcguffin_33"
 	orb_desc = "$itemdesc_mcguffin_33"
end
diff --git a/entities/animals/boss_ghost/death.lua b/entities/animals/boss_ghost/death.lua
index dd463cc..1a618e4 100644
--- a/entities/animals/boss_ghost/death.lua
+++ b/entities/animals/boss_ghost/death.lua
@@ -5,7 +5,7 @@ function death( damage_type_bit_field, damage_message, entity_thats_responsible,
local x, y = EntityGetTransform( entity_id )
EntityLoad( "data/entities/items/pickup/heart_fullhp.xml", x, y )

- EntityLoad( "data/entities/items/pickup/sunseed.xml", x + 16, y )

* EntityLoad( "data/entities/items/pickup/sun/sunseed.xml", x + 16, y )
  AddFlagPersistent( "miniboss_ghost" )
  end
  \ No newline at end of file
  diff --git a/entities/animals/boss_wizard/death.lua b/entities/animals/boss_wizard/death.lua
  index dc5a62f..118ef6e 100644
  --- a/entities/animals/boss_wizard/death.lua
  +++ b/entities/animals/boss_wizard/death.lua
  @@ -10,7 +10,7 @@ function death( damage_type_bit_field, damage_message, entity_thats_responsible,
  local pw = check_parallel_pos( x )
  SetRandomSeed( pw, 30 )

- local opts = { "DUPLICATE", "RANDOM_SPELL", "RANDOM_PROJECTILE", "RANDOM_MODIFIER", "RANDOM_STATIC_PROJECTILE", "DRAW_RANDOM", "DRAW_RANDOM_X3", "DRAW_3_RANDOM" }

* local opts = { "DUPLICATE", "RANDOM_SPELL", "RANDOM_PROJECTILE", "RANDOM_MODIFIER", "RANDOM_STATIC_PROJECTILE", "DRAW_RANDOM", "DRAW_RANDOM_X3", "DRAW_3_RANDOM", "NOLLA", "RESET" }
  local rnd = Random( 1, #opts )
  if flag_status then
  diff --git a/entities/items/books/book_s_b.xml b/entities/items/books/book_s_b.xml
  index 06bec78..02b1908 100644
  --- a/entities/items/books/book_s_b.xml
  +++ b/entities/items/books/book_s_b.xml
  @@ -15,13 +15,13 @@ ></PhysicsImageShapeComponent>
  <UIInfoComponent

-     	name="$item_book_s_b"

*     	name="$item_book_s_a"
      	>
      </UIInfoComponent>

      <ItemComponent
      	ui_sprite="data/items_gfx/book_s.png"

-     	item_name="$item_book_s_b"

*     	item_name="$item_book_s_a"
  ui_description="$itemdesc_book_s_b" >
  </ItemComponent>
  @@ -31,7 +31,7 @@ ></SpriteComponent>
  <AbilityComponent

-     	ui_name="$item_book_s_b"

*     	ui_name="$item_book_s_a"
  >  		</AbilityComponent>
   	</Base>
  diff --git a/entities/items/books/book_s_c.xml b/entities/items/books/book_s_c.xml
  index d4147f5..4cd661c 100644
  --- a/entities/items/books/book_s_c.xml
  +++ b/entities/items/books/book_s_c.xml
  @@ -15,13 +15,13 @@
   		></PhysicsImageShapeComponent>
   
   		<UIInfoComponent

-     	name="$item_book_s_c"

*     	name="$item_book_s_a"
      	>
      </UIInfoComponent>

      <ItemComponent
      	ui_sprite="data/items_gfx/book_s.png"

-     	item_name="$item_book_s_c"

*     	item_name="$item_book_s_a"
  ui_description="$itemdesc_book_s_c" >
  </ItemComponent>
  @@ -31,7 +31,7 @@ ></SpriteComponent>
  <AbilityComponent

-     	ui_name="$item_book_s_c"

*     	ui_name="$item_book_s_a"
  >  		</AbilityComponent>
   	</Base>
  diff --git a/entities/items/books/book_s_d.xml b/entities/items/books/book_s_d.xml
  index ee81367..d1985cf 100644
  --- a/entities/items/books/book_s_d.xml
  +++ b/entities/items/books/book_s_d.xml
  @@ -15,13 +15,13 @@
   		></PhysicsImageShapeComponent>
   
   		<UIInfoComponent

-     	name="$item_book_s_d"

*     	name="$item_book_s_a"
      	>
      </UIInfoComponent>

      <ItemComponent
      	ui_sprite="data/items_gfx/book_s.png"

-     	item_name="$item_book_s_d"

*     	item_name="$item_book_s_a"
  ui_description="$itemdesc_book_s_d" >
  </ItemComponent>
  @@ -31,7 +31,7 @@ ></SpriteComponent>
  <AbilityComponent

-     	ui_name="$item_book_s_d"

*     	ui_name="$item_book_s_a"
  >  		</AbilityComponent>
   	</Base>
  diff --git a/entities/items/books/book_s_e.xml b/entities/items/books/book_s_e.xml
  index 705cf3a..3511cc4 100644
  --- a/entities/items/books/book_s_e.xml
  +++ b/entities/items/books/book_s_e.xml
  @@ -15,13 +15,13 @@
   		></PhysicsImageShapeComponent>
   
   		<UIInfoComponent

-     	name="$item_book_s_e"

*     	name="$item_book_s_a"
      	>
      </UIInfoComponent>

      <ItemComponent
      	ui_sprite="data/items_gfx/book_s.png"

-     	item_name="$item_book_s_e"

*     	item_name="$item_book_s_a"
  ui_description="$itemdesc_book_s_e" >
  </ItemComponent>
  @@ -31,7 +31,7 @@ ></SpriteComponent>
  <AbilityComponent

-     	ui_name="$item_book_s_e"

*     	ui_name="$item_book_s_a"
  >  		</AbilityComponent>
   	</Base>
  diff --git a/entities/player_base.xml b/entities/player_base.xml
  index ad5ff78..1786128 100644
  --- a/entities/player_base.xml
  +++ b/entities/player_base.xml
  @@ -87,6 +87,7 @@
       flying_recharge_removal_frames="8"
       gravity="0"
       buoyancy_check_offset_y="-7"
* send_transform_update_message="1"
  > </CharacterDataComponent>

<GenomeDataComponent
diff --git a/entities/projectiles/bomb.xml b/entities/projectiles/bomb.xml
index eb39d93..6ef6eb5 100644
--- a/entities/projectiles/bomb.xml
+++ b/entities/projectiles/bomb.xml
@@ -22,7 +22,7 @@
explosion_radius="60"
explosion_sprite="data/particles/explosion_128.xml"
explosion_sprite_lifetime="0"

-        load_this_entity="data/entities/particles/particle_explosion/main_gunpowder_large.xml,data/entities/misc/loose_ground.xml"

*        load_this_entity="data/entities/particles/particle_explosion/main_gunpowder_large.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
           create_cell_probability="40"
           hole_destroy_liquid="0"
           hole_enabled="1"
  diff --git a/entities/projectiles/bomb_holy.xml b/entities/projectiles/bomb_holy.xml
  index ad40277..9040d96 100644
  --- a/entities/projectiles/bomb_holy.xml
  +++ b/entities/projectiles/bomb_holy.xml
  @@ -22,7 +22,7 @@
  explosion_radius="180"
  explosion_sprite="data/particles/explosion_128.xml"
  explosion_sprite_lifetime="0"

-       load_this_entity="data/entities/particles/particle_explosion/main_large_radius.xml,data/entities/misc/loose_ground.xml"

*       load_this_entity="data/entities/particles/particle_explosion/main_large_radius.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
  create_cell_probability="40"
  hole_destroy_liquid="0"
  hole_enabled="1"
  diff --git a/entities/projectiles/deck/black_hole.xml b/entities/projectiles/deck/black_hole.xml
  index d4d144e..dd1b520 100644
  --- a/entities/projectiles/deck/black_hole.xml
  +++ b/entities/projectiles/deck/black_hole.xml
  @@ -110,7 +110,8 @@
  <CellEaterComponent
  radius="12"

-     eat_dynamic_physics_bodies="1"

*     eat_dynamic_physics_bodies="1"
*     ignored_material="gem_box2d_yellow_sun"
      >
  </CellEaterComponent>

diff --git a/entities/projectiles/deck/death_cross_big_explosion.xml b/entities/projectiles/deck/death_cross_big_explosion.xml
index f71d5ac..2e84d7b 100644
--- a/entities/projectiles/deck/death_cross_big_explosion.xml
+++ b/entities/projectiles/deck/death_cross_big_explosion.xml
@@ -33,7 +33,7 @@
hole_image=""
particle_effect="0"
damage_mortals="0"

-

*        load_this_entity="data/entities/misc/explosion_was_here.xml"
  physics_explosion_power.min="0"
  physics_explosion_power.max="0"
  physics_throw_enabled="0"
  diff --git a/entities/projectiles/deck/explosion_giga.xml b/entities/projectiles/deck/explosion_giga.xml
  index 633bb83..9cf9282 100644
  --- a/entities/projectiles/deck/explosion_giga.xml
  +++ b/entities/projectiles/deck/explosion_giga.xml
  @@ -30,7 +30,7 @@
  camera_shake="60"
  explosion_radius="250"
  explosion_sprite="data/particles/explosion_032.xml"

- load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml"

* load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml,data/entities/misc/explosion_was_here.xml"
  explosion_sprite_lifetime="0"
  create_cell_probability="5"
  hole_destroy_liquid="0"
  diff --git a/entities/projectiles/deck/meteor.xml b/entities/projectiles/deck/meteor.xml
  index 1267b21..32f4727 100644
  --- a/entities/projectiles/deck/meteor.xml
  +++ b/entities/projectiles/deck/meteor.xml
  @@ -47,7 +47,7 @@
  create_cell_probability="100"
  create_cell_material="fire"
  hole_destroy_liquid="0"

-      load_this_entity="data/entities/particles/particle_explosion/main.xml,data/entities/misc/loose_ground.xml"

*      load_this_entity="data/entities/particles/particle_explosion/main.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
         ray_energy="7500000"
         hole_enabled="1"
         hole_image="data/temp/explosion_hole.png"
  diff --git a/entities/projectiles/deck/meteor_green.xml b/entities/projectiles/deck/meteor_green.xml
  index 90b4b50..3ab8a4a 100644
  --- a/entities/projectiles/deck/meteor_green.xml
  +++ b/entities/projectiles/deck/meteor_green.xml
  @@ -42,7 +42,7 @@
  create_cell_material="fire"
  hole_destroy_liquid="0"
  damage="1.0"

-      load_this_entity="data/entities/particles/particle_explosion/main_green.xml"

*      load_this_entity="data/entities/particles/particle_explosion/main_green.xml,data/entities/misc/explosion_was_here.xml"
         ray_energy="7500000"
         hole_enabled="1"
         hole_image="data/temp/explosion_hole.png"
  diff --git a/entities/projectiles/deck/meteor_rain_meteor.xml b/entities/projectiles/deck/meteor_rain_meteor.xml
  index 4ec6e1d..f806491 100644
  --- a/entities/projectiles/deck/meteor_rain_meteor.xml
  +++ b/entities/projectiles/deck/meteor_rain_meteor.xml
  @@ -57,7 +57,7 @@
  create_cell_probability="100"
  create_cell_material="fire"
  hole_destroy_liquid="0"

-      load_this_entity="data/entities/particles/particle_explosion/main.xml,data/entities/misc/loose_ground.xml"

*      load_this_entity="data/entities/particles/particle_explosion/main.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
         ray_energy="7500000"
         hole_enabled="1"
         hole_image="data/temp/explosion_hole.png"
  diff --git a/entities/projectiles/deck/nuke.xml b/entities/projectiles/deck/nuke.xml
  index 35e2d8a..a865c54 100644
  --- a/entities/projectiles/deck/nuke.xml
  +++ b/entities/projectiles/deck/nuke.xml
  @@ -43,7 +43,7 @@
  camera_shake="60"
  explosion_radius="250"
  explosion_sprite="data/particles/explosion_032.xml"

- load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml"

* load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml,data/entities/misc/explosion_was_here.xml"
  explosion_sprite_lifetime="0"
  create_cell_probability="5"
  hole_destroy_liquid="0"
  diff --git a/entities/projectiles/deck/thunder_blast.xml b/entities/projectiles/deck/thunder_blast.xml
  index 210bc8e..156d273 100644
  --- a/entities/projectiles/deck/thunder_blast.xml
  +++ b/entities/projectiles/deck/thunder_blast.xml
  @@ -34,7 +34,7 @@
  camera_shake="30.5"
  explosion_radius="28"
  explosion_sprite="data/particles/explosion_032_electric.xml"

-      load_this_entity="data/entities/particles/particle_explosion/main_blue.xml,data/entities/misc/loose_ground.xml"

*      load_this_entity="data/entities/particles/particle_explosion/main_blue.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
         explosion_sprite_lifetime="0"
         ray_energy="700000"
         create_cell_probability="0"
  diff --git a/entities/projectiles/meteor_green.xml b/entities/projectiles/meteor_green.xml
  index 20ea945..b87c002 100644
  --- a/entities/projectiles/meteor_green.xml
  +++ b/entities/projectiles/meteor_green.xml
  @@ -42,7 +42,7 @@
  create_cell_material="fire"
  hole_destroy_liquid="0"
  damage="10"

-      load_this_entity="data/entities/particles/particle_explosion/main_green.xml,data/entities/misc/loose_ground.xml"

*      load_this_entity="data/entities/particles/particle_explosion/main_green.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
         ray_energy="7500000"
         hole_enabled="1"
         hole_image="data/temp/explosion_hole.png"
  diff --git a/entities/projectiles/thunderball.xml b/entities/projectiles/thunderball.xml
  index 5b131e5..a31aea0 100644
  --- a/entities/projectiles/thunderball.xml
  +++ b/entities/projectiles/thunderball.xml
  @@ -41,7 +41,7 @@
  camera_shake="30.5"
  explosion_radius="50"
  explosion_sprite="data/particles/explosion_032_electric.xml"

- load_this_entity="data/entities/particles/particle_explosion/main_blue.xml,data/entities/misc/loose_ground.xml"

* load_this_entity="data/entities/particles/particle_explosion/main_blue.xml,data/entities/misc/loose_ground.xml,data/entities/misc/explosion_was_here.xml"
  explosion_sprite_lifetime="0.0"
  create_cell_probability="4"
  create_cell_material="plasma_fading"
  diff --git a/entities/projectiles/ultimate_killer_explosion.xml b/entities/projectiles/ultimate_killer_explosion.xml
  index 37e2364..2d9a98a 100644
  --- a/entities/projectiles/ultimate_killer_explosion.xml
  +++ b/entities/projectiles/ultimate_killer_explosion.xml
  @@ -29,7 +29,7 @@
  damage="1"
  explosion_radius="305"
  explosion_sprite="data/particles/explosion_040_poof.xml"

- load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml"

* load_this_entity="data/entities/particles/particle_explosion/main_large.xml,data/entities/misc/loose_chunks.xml,data/entities/misc/explosion_was_here.xml"
  explosion_sprite_lifetime="0"
  explosion_sprite_random_rotation="0"
  create_cell_probability="20"
  diff --git a/materials.xml b/materials.xml
  index 3680fe6..ed1d899 100644
  --- a/materials.xml
  +++ b/materials.xml
  @@ -12379,6 +12379,39 @@
  color="ff5787E7" >
  </Graphics>
  </CellDataChild>
*
* <CellDataChild
*     _parent="gem_box2d"
*     _inherit_reactions="1"
*     name="gem_box2d_yellow_sun"
* ui_name="$mat_gem_box2d_red"
* gfx_glow_color="0xffff9919"
* gfx_glow="255"
* wang_color="ffff9919"
* show_in_creative_mode="0"
* solid_gravity_scale="0"
* durability="15"
* >
*     <Graphics
* color="ffffc74e" >
* </Graphics>
* </CellDataChild>
*
* <CellDataChild
*     _parent="gem_box2d"
*     _inherit_reactions="1"
*     name="gem_box2d_red_float"
* ui_name="$mat_gem_box2d_red"
* gfx_glow_color="0xFFFF0000"
* wang_color="fffd2d7d"
* show_in_creative_mode="0"
* solid_gravity_scale="0.2"
* durability="15"
* >
*     <Graphics
* color="ffE72850" >
* </Graphics>
* </CellDataChild>
   
     <CellDataChild
     	_parent="gem_box2d"
  diff --git a/scripts/biome_scripts.lua b/scripts/biome_scripts.lua
  index 3a2a03e..a3abf0d 100644
  --- a/scripts/biome_scripts.lua
  +++ b/scripts/biome_scripts.lua
  @@ -101,8 +101,8 @@ function parallel_check( x, y )
   			
   			SetRandomSeed( x + 35, y - 253 )


-     	local r = Random( 1, 100 )
-     	local rx = Random( 0, 512 )

*     	r = Random( 1, 100 )
*     	rx = Random( 0, 512 )
  if ( r >= 98 ) then
  print( "ALCHEMIST AT " .. tostring( x + rx ) .. ", " .. tostring( y ) )
  diff --git a/scripts/biomes/pyramid_top.lua b/scripts/biomes/pyramid_top.lua
  index 1ec99f4..2441823 100644
  --- a/scripts/biomes/pyramid_top.lua
  +++ b/scripts/biomes/pyramid_top.lua
  @@ -37,4 +37,5 @@ end
  function spawn_orb(x, y)
  EntityLoad( "data/entities/items/orbs/orb_01.xml", x, y )
  EntityLoad( "data/entities/items/books/book_01.xml", x+24, y )
* EntityLoad( "data/entities/buildings/sun/spot_1.xml", x+24, y )
  end
  \ No newline at end of file
  diff --git a/scripts/gun/gun_actions.lua b/scripts/gun/gun_actions.lua
  index 1af6dd2..0266e9c 100644
  --- a/scripts/gun/gun_actions.lua
  +++ b/scripts/gun/gun_actions.lua
  @@ -4010,7 +4010,7 @@ actions =
  description = "$actiondesc_nolla",
  sprite = "data/ui_gfx/gun_actions/nolla.png",
  sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",

-     spawn_requires_flag = "card_unlocked_duplicate",

*     spawn_requires_flag = "card_unlocked_mestari",
  related_extra_entities = { "data/entities/misc/nolla.xml" },
  type = ACTION_TYPE_MODIFIER,
  spawn_level = "2,4,5,6,10", -- LIFETIME_DOWN
  @@ -4201,8 +4201,8 @@ actions =
  c.extra_entities = c.extra_entities .. "data/entities/particles/gold_sparks.xml,"

-     			local money = money - damage
-     			local moneyspent = moneyspent + damage

*     			money = money - damage
*     			moneyspent = moneyspent + damage
      			ComponentSetValue2( dcomp, "money", money )
      			ComponentSetValue2( dcomp, "money_spent", moneyspent )


@@ -9428,7 +9428,7 @@ actions =
description = "$actiondesc_reset",
sprite = "data/ui_gfx/gun_actions/reset.png",
sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",

-     spawn_requires_flag = "card_unlocked_maths",

*     spawn_requires_flag = "card_unlocked_mestari",
  type = ACTION_TYPE_UTILITY,
  recursive = true,
  spawn_level = "10", -- BOMB
  diff --git a/scripts/lib/utilities.lua b/scripts/lib/utilities.lua
  index 2962481..3a2895a 100644
  --- a/scripts/lib/utilities.lua
  +++ b/scripts/lib/utilities.lua
  @@ -440,7 +440,12 @@ function shoot_projectile_from_projectile( who_shot, entity_file, x, y, vel_x, v
  local entity_id = EntityLoad( entity_file, x, y )
  local herd_id = get_herd_id( who_shot )

- GameShootProjectile( who_shot, x, y, x+vel_x, y+vel_y, entity_id )

* local who_shot_creature = 0
* edit_component( who_shot, "ProjectileComponent", function(comp,vars)
*     who_shot_creature = ComponentGetValue2( comp, "mWhoShot" )
* end)
*
* GameShootProjectile( who_shot_creature, x, y, x+vel_x, y+vel_y, entity_id )
  edit_component( entity_id, "ProjectileComponent", function(comp,vars)
  vars.mWhoShot = component_get_value_int( who_shot, "ProjectileComponent", "mWhoShot", 0 )
  diff --git a/scripts/projectiles/worm_shot_slowdown.lua b/scripts/projectiles/worm_shot_slowdown.lua
  index 0356b1b..3ec51e1 100644
  --- a/scripts/projectiles/worm_shot_slowdown.lua
  +++ b/scripts/projectiles/worm_shot_slowdown.lua
  @@ -18,7 +18,7 @@ edit_component( entity_id, "VelocityComponent", function(vcomp,vars)
  end
  if ( f_id ~= nil ) and ( f_x ~= nil ) and ( f_y ~= nil ) then

-     local dist = get_distance2( x, y, f_x, f_y )

*     dist = get_distance2( x, y, f_x, f_y )
  if ( dist < radius ) then
  local tx,ty = f_x,f_y
  @@ -38,7 +38,7 @@ edit_component( entity_id, "VelocityComponent", function(vcomp,vars)
  end
  if ( c_id ~= nil ) and ( c_x ~= nil ) and ( c_y ~= nil ) then

-     local dist = get_distance2( x, y, c_x, c_y )

*     dist = get_distance2( x, y, c_x, c_y )

      if ( dist < radius ) then
      	local tx,ty = c_x,c_y
