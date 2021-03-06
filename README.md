HOW TO READ: \n\n FILE CHANGED => +++ b/biome/rainforest_dark.xml

REMOVED CODE => - background_edge_priority='10'

NEW OR CHANGED CODE => + background_edge_priority='9'

---

Actual changes below:


diff --git a/biome/_biomes_all.xml b/biome/_biomes_all.xml
index 9698466..c13c2f0 100644
--- a/biome/_biomes_all.xml
+++ b/biome/_biomes_all.xml
@@ -97,6 +97,12 @@
 		height_index="3" 
 		color="ffe861f0" >
 	</Biome>
+	
+	<Biome 
+		biome_filename="data/biome/fungiforest.xml" 
+		height_index="3" 
+		color="ffa861ff" >
+	</Biome>
 
 	<Biome 
 		biome_filename="data/biome/vault.xml" 
diff --git a/biome/_pixel_scenes.xml b/biome/_pixel_scenes.xml
index 6724365..fe576ed 100644
--- a/biome/_pixel_scenes.xml
+++ b/biome/_pixel_scenes.xml
@@ -114,6 +114,9 @@
 		<PixelScene DEBUG_RELOAD_ME="0" background_filename="" clean_area_before="0" colors_filename="data/biome_impl/overworld/essence_altar_visual.png" material_filename="data/biome_impl/overworld/essence_altar.png" pos_x="-6948" pos_y="-270" skip_biome_checks="1" skip_edge_textures="1" >
 		</PixelScene>
 		
+		<PixelScene DEBUG_RELOAD_ME="0" background_filename="" clean_area_before="0" colors_filename="data/biome_impl/overworld/essence_altar_desert_visual.png" material_filename="data/biome_impl/overworld/essence_altar_desert.png" pos_x="12519" pos_y="-30" skip_biome_checks="1" skip_edge_textures="1" >
+		</PixelScene>
+		
 		<PixelScene DEBUG_RELOAD_ME="0" background_filename="data/biome_impl/bunker_background.png" clean_area_before="0" colors_filename="data/biome_impl/bunker_visual.png" material_filename="data/biome_impl/bunker.png" pos_x="-12603" pos_y="326" skip_biome_checks="1" skip_edge_textures="1" >
 		</PixelScene>
 		
@@ -172,7 +175,8 @@
 		<PixelScene pos_x="3608" pos_y="934" just_load_an_entity="data/entities/props/physics/bridge_spawner.xml" />
 		<PixelScene pos_x="-9980" pos_y="-30" just_load_an_entity="data/entities/props/physics/bridge_spawner.xml" />
 		
-		<PixelScene pos_x="-6884" pos_y="-165" just_load_an_entity="data/entities/props/physics_protective_armour.xml" />
+		<PixelScene pos_x="-6888" pos_y="-155" just_load_an_entity="data/entities/buildings/essence_eater.xml" />
+		<PixelScene pos_x="12569" pos_y="30" just_load_an_entity="data/entities/buildings/essence_eater.xml" />
 		
 		<PixelScene pos_x="-2434" pos_y="-207" just_load_an_entity="data/entities/items/pickup/evil_eye.xml" />
 		
diff --git a/biome/fungiforest.xml b/biome/fungiforest.xml
new file mode 100644
index 0000000..09d1b69
--- /dev/null
+++ b/biome/fungiforest.xml
@@ -0,0 +1,155 @@
+<Biome>
+  <Topology 
+    name="$biome_fun"
+    type="BIOME_WANG_TILE"
+    background_image="data/weather_gfx/background_fungiforest_01.png"
+    background_edge_left="data/weather_gfx/edges/background_fungiforest_01_left.png"
+    background_edge_right="data/weather_gfx/edges/background_fungiforest_01_right.png"
+    background_edge_top="data/weather_gfx/edges/background_fungiforest_01_top.png"
+    background_edge_bottom="data/weather_gfx/edges/background_fungiforest_01_bottom.png"
+    background_edge_priority="9"
+
+    limit_background_image="0"
+
+    wang_template_file="data/wang_tiles/fungiforest.png" 
+    lua_script="data/scripts/biomes/fungiforest.lua"
+    wang_map_width="260"
+    wang_map_height="260"
+    audio_music_2="fungicave"
+    audio_ambience="fungicave"
+  >
+  </Topology>
+
+  <Materials 
+    name="fungiforest" 
+     >
+    <MaterialComponent 
+      _enabled="1" 
+      is_rare="1" 
+      limit_max_y="2048" 
+      limit_min_y="100" 
+      limit_y="0" 
+      material_index="10" 
+      material_max="0.46" 
+      material_min="0.443701" 
+      material_name="gold" 
+      rare_polka_is_boxed="0" 
+      rare_polka_probability="0.960871" 
+      rare_polka_radius_high="0.771429" 
+      rare_polka_radius_low="0.357143" 
+      rare_required_max="10" 
+      rare_required_min="0" 
+      rare_scale_x="0.0100004" 
+      rare_scale_y="0.00357165" 
+      rare_use_perlin="0" 
+      rare_use_polka="1" >
+    </MaterialComponent>
+
+    <MaterialComponent 
+      _enabled="1" 
+      is_rare="0" 
+      limit_max_y="424.229" 
+      limit_min_y="-1024" 
+      limit_y="0" 
+      material_index="10" 
+      material_max="0.66" 
+      material_min="0.57" 
+      material_name="fungisoil" 
+      rare_polka_is_boxed="1" 
+      rare_polka_probability="0.2" 
+      rare_polka_radius_high="0.65" 
+      rare_polka_radius_low="0.2" 
+      rare_required_max="10" 
+      rare_required_min="0.2" 
+      rare_scale_x="0.05" 
+      rare_scale_y="0.05" 
+      rare_use_perlin="0" 
+      rare_use_polka="1" >
+    </MaterialComponent>
+
+    <MaterialComponent 
+      _enabled="1" 
+      is_rare="1" 
+      limit_max_y="2048" 
+      limit_min_y="100" 
+      limit_y="0" 
+      material_index="10" 
+      material_max="1.2" 
+      material_min="1.1" 
+      material_name="gold" 
+      rare_polka_is_boxed="1" 
+      rare_polka_probability="0.357143" 
+      rare_polka_radius_high="0.464286" 
+      rare_polka_radius_low="0.0428571" 
+      rare_required_max="10" 
+      rare_required_min="0.371429" 
+      rare_scale_x="0.0214286" 
+      rare_scale_y="0.0214286" 
+      rare_use_perlin="0" 
+      rare_use_polka="1" >
+    </MaterialComponent>
+
+    <MaterialComponent 
+      _enabled="1" 
+      is_rare="0" 
+      limit_max_y="2048" 
+      limit_min_y="100" 
+      limit_y="0" 
+      material_index="10" 
+      material_max="3.5" 
+      material_min="0.66" 
+      material_name="rock_static_fungal" 
+      rare_polka_is_boxed="1" 
+      rare_polka_probability="0.2" 
+      rare_polka_radius_high="0.65" 
+      rare_polka_radius_low="0.2" 
+      rare_required_max="10" 
+      rare_required_min="0.2" 
+      rare_scale_x="0.05" 
+      rare_scale_y="0.05" 
+      rare_use_perlin="0" 
+      rare_use_polka="1" >
+    </MaterialComponent>
+	
+	<VegetationComponent 
+      _enabled="1" 
+      is_visual="0" 
+      rand_seed="12376.86" 
+      tree_extra_y="2" 
+      tree_image_file="data/vegetation/mushroom_small_0$[1-5].png" 
+      tree_image_visual="" 
+      tree_material="fungus_loose" 
+      tree_probability="0.128571" 
+      tree_radius_high="0.414286" 
+      tree_radius_low="0.328571" 
+      tree_width="18.1143" 
+      visual_color="0xffb89f6c" 
+      visual_offset_x="3" 
+      visual_offset_y="1"
+	  material_on_top_of="sand_static"
+	  >
+    </VegetationComponent>
+	
+	<VegetationComponent 
+      _enabled="1" 
+      is_visual="0" 
+      rand_seed="1245.86" 
+      tree_extra_y="2" 
+      tree_image_file="data/vegetation/mushroom_small_0$[6-9].png" 
+      tree_image_visual="" 
+      tree_material="fungus_loose" 
+      tree_probability="0.128571" 
+      tree_radius_high="0.414286" 
+      tree_radius_low="0.328571" 
+      tree_width="16.1143" 
+      visual_color="0xffb89f6c" 
+      visual_offset_x="3" 
+      visual_offset_y="1"
+	  material_on_top_of="sand_static"
+	  >
+    </VegetationComponent>
+    
+  </Materials>
+
+</Biome>
+
diff --git a/biome_impl/biome_map.png b/biome_impl/biome_map.png
index 3e3ba2a..a7fd543 100644
Binary files a/biome_impl/biome_map.png and b/biome_impl/biome_map.png differ
diff --git a/biome_impl/biome_map_newgame_plus.png b/biome_impl/biome_map_newgame_plus.png
index 4920fe3..fbfdb13 100644
Binary files a/biome_impl/biome_map_newgame_plus.png and b/biome_impl/biome_map_newgame_plus.png differ
diff --git a/biome_impl/overworld/essence_altar_desert.png b/biome_impl/overworld/essence_altar_desert.png
new file mode 100644
index 0000000..4fec71e
Binary files /dev/null and b/biome_impl/overworld/essence_altar_desert.png differ
diff --git a/biome_impl/overworld/essence_altar_desert_visual.png b/biome_impl/overworld/essence_altar_desert_visual.png
new file mode 100644
index 0000000..3b844ad
Binary files /dev/null and b/biome_impl/overworld/essence_altar_desert_visual.png differ
diff --git a/biome_impl/pillars/pillar_part_dsunmoon.png b/biome_impl/pillars/pillar_part_dsunmoon.png
new file mode 100644
index 0000000..94f480a
Binary files /dev/null and b/biome_impl/pillars/pillar_part_dsunmoon.png differ
diff --git a/biome_impl/pillars/pillar_part_sunkill.png b/biome_impl/pillars/pillar_part_sunkill.png
new file mode 100644
index 0000000..460eac7
Binary files /dev/null and b/biome_impl/pillars/pillar_part_sunkill.png differ
diff --git a/biome_impl/pillars/pillar_part_sunmoon.png b/biome_impl/pillars/pillar_part_sunmoon.png
new file mode 100644
index 0000000..b472d72
Binary files /dev/null and b/biome_impl/pillars/pillar_part_sunmoon.png differ
diff --git a/enemies_gfx/fungus_tiny_b.png b/enemies_gfx/fungus_tiny_b.png
new file mode 100644
index 0000000..4db71c5
Binary files /dev/null and b/enemies_gfx/fungus_tiny_b.png differ
diff --git a/enemies_gfx/fungus_tiny_b.xml b/enemies_gfx/fungus_tiny_b.xml
new file mode 100644
index 0000000..2bdad2b
--- /dev/null
+++ b/enemies_gfx/fungus_tiny_b.xml
@@ -0,0 +1,155 @@
+<Sprite 
+  filename="data/enemies_gfx/fungus_tiny_b.png" 
+  offset_x="5" 
+  offset_y="10"
+  default_animation="stand" >
+
+  <RectAnimation 
+    frame_count="12" 
+    frame_height="13" 
+    frame_wait="0.12" 
+    frame_width="12" 
+    frames_per_row="12" 
+    name="stand" 
+    pos_x="0" 
+    pos_y="0" >
+
+  </RectAnimation>
+
+  <RectAnimation 
+    frame_count="6" 
+    frame_height="13" 
+    frame_wait="0.2" 
+    frame_width="12" 
+    frames_per_row="6" 
+    name="walk" 
+    pos_x="0" 
+    pos_y="13" 
+    >
+
+    <Event 
+      check_physics_material="1" 
+      frame="2" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+    <Event 
+      check_physics_material="1" 
+      frame="5" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+  </RectAnimation>
+
+  <RectAnimation 
+    frame_count="6" 
+    frame_height="13" 
+    frame_wait="0.2" 
+    frame_width="12" 
+    frames_per_row="6" 
+    name="run" 
+    pos_x="0" 
+    pos_y="13" 
+    >
+
+    <Event 
+      check_physics_material="1" 
+      frame="2" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+    <Event 
+      check_physics_material="1" 
+      frame="5" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+  </RectAnimation>
+
+  <RectAnimation 
+    frame_count="6" 
+    frame_height="13" 
+    frame_wait="0.2" 
+    frame_width="12" 
+    frames_per_row="6" 
+    name="burn" 
+    pos_x="0" 
+    pos_y="13" 
+    >
+
+    <Event 
+      check_physics_material="1" 
+      frame="2" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+    <Event 
+      check_physics_material="1" 
+      frame="5" 
+      max_distance="500" 
+      name="step" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+  </RectAnimation>
+
+  <RectAnimation 
+    frame_count="1" 
+    frame_height="13" 
+    frame_wait="0.2" 
+    frame_width="12" 
+    frames_per_row="1" 
+    name="jump_up" 
+    pos_x="0" 
+    pos_y="26" 
+    >
+
+    <Event 
+      check_physics_material="1" 
+      frame="0" 
+      max_distance="500" 
+      name="jump" 
+      on_finished="0" 
+      probability="1" >
+
+    </Event>
+
+  </RectAnimation>
+
+  <RectAnimation 
+    frame_count="1" 
+    frame_height="13" 
+    frame_wait="0.2" 
+    frame_width="12" 
+    frames_per_row="1" 
+    name="jump_fall" 
+    pos_x="0" 
+    pos_y="39" 
+    >
+
+  </RectAnimation>
+
+</Sprite>
+
diff --git a/enemies_gfx/fungus_tiny_b_uv_src.png b/enemies_gfx/fungus_tiny_b_uv_src.png
new file mode 100644
index 0000000..727e976
Binary files /dev/null and b/enemies_gfx/fungus_tiny_b_uv_src.png differ
diff --git a/enemies_gfx/player_amulet_gem.png b/enemies_gfx/player_amulet_gem.png
new file mode 100644
index 0000000..bfbc3b2
Binary files /dev/null and b/enemies_gfx/player_amulet_gem.png differ
diff --git a/enemies_gfx/player_amulet_gem.xml b/enemies_gfx/player_amulet_gem.xml
new file mode 100644
index 0000000..22860a5
--- /dev/null
+++ b/enemies_gfx/player_amulet_gem.xml
@@ -0,0 +1,659 @@
+<Sprite 
+	filename="data/enemies_gfx/player_amulet_gem.png" 
+	offset_x="6" 
+	offset_y="14" 
+	default_animation="stand"
+	>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand" 
+		pos_x="0" 
+		pos_y="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="burn" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_up" 
+		pos_x="0" 
+		pos_y="41" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_fall" 
+		pos_x="0" 
+		pos_y="61" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.075" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="land" 
+		pos_x="0" 
+		pos_y="81" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="fly_idle" 
+		pos_x="0" 
+		pos_y="101" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.12" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="fly_move" 
+		pos_x="0" 
+		pos_y="121" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="knockback" 
+		pos_x="0" 
+		pos_y="141" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.08" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_idle" 
+		pos_x="0" 
+		pos_y="161" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_move" 
+		pos_x="0" 
+		pos_y="181" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="attack" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt" 
+		pos_x="0" 
+		pos_y="221" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="lower_head" 
+		pos_x="0" 
+		pos_y="241" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="raise_head" 
+		pos_x="0" 
+		pos_y="261" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="11" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="11" 
+		name="eat" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="1" 
+		frame_height="19" 
+		frame_wait="0.14" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="crouch" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards" 
+		pos_x="0" 
+		pos_y="301" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item_stash" 
+		pos_x="0" 
+		pos_y="321" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item" 
+		pos_x="0" 
+		pos_y="341" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_old" 
+		pos_x="0" 
+		pos_y="361" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand_crouched" 
+		pos_x="0" 
+		pos_y="381" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards_crouched" 
+		pos_x="0" 
+		pos_y="421" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_crouched" 
+		pos_x="0" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt_crouched" 
+		pos_x="0" 
+		pos_y="461" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_crouched" 
+		pos_x="0" 
+		pos_y="481" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.11" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="rise" 
+		pos_x="0" 
+		pos_y="501" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw" 
+		pos_x="0" 
+		pos_y="521" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide" 
+		pos_x="0" 
+		pos_y="541" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end" 
+		pos_x="0" 
+		pos_y="561" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide_crouched" 
+		pos_x="0" 
+		pos_y="581" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end_crouched" 
+		pos_x="0" 
+		pos_y="601" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start" 
+		pos_x="0" 
+		pos_y="621" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start_crouched" 
+		pos_x="0" 
+		pos_y="641" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt" 
+		pos_x="0" 
+		pos_y="661" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_swim" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_fly" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="9" 
+		frame_height="19" 
+		frame_wait="0.1" 
+		frame_width="12" 
+		frames_per_row="9" 
+		loop="0" 
+		name="grab_item" 
+		pos_x="0" 
+		pos_y="701" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.24" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="idle_hold" 
+		pos_x="0" 
+		pos_y="721" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="10" 
+		frame_height="20" 
+		frame_wait="0.07" 
+		frame_width="13" 
+		frames_per_row="10" 
+		loop="0" 
+		name="throw_item" 
+		pos_x="0" 
+		pos_y="741" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="push_start" 
+		pos_x="0" 
+		pos_y="761" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.12" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="push" 
+		pos_x="0" 
+		pos_y="781" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="cough" 
+		pos_x="0" 
+		pos_y="801" >
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="21" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="21" 
+		loop="0" 
+		name="intro_stand_up" 
+		pos_x="0" 
+		pos_y="840" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		next_animation="stand" 
+		>
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="6" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="8" 
+		loop="1" 
+		name="intro_sleep" 
+		pos_x="0" 
+		pos_y="862" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		>
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_small" 
+		pos_x="0" 
+		pos_y="821" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12"
+		loop="0" 
+		name="telekinesis_grab_start" 
+		pos_x="0" 
+		pos_y="884" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12" 
+		loop="0" 
+		name="telekinesis_grab_start_crouched" 
+		pos_x="0" 
+		pos_y="903" >
+	</RectAnimation>
+
+	<!-- telekinesis throws use shorter+faster kick animations -->
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw" 
+		pos_x="26" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw_crouched" 
+		pos_x="26" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+</Sprite>
+
diff --git a/enemies_gfx/player_hat2.png b/enemies_gfx/player_hat2.png
new file mode 100644
index 0000000..ccf0b01
Binary files /dev/null and b/enemies_gfx/player_hat2.png differ
diff --git a/enemies_gfx/player_hat2.xml b/enemies_gfx/player_hat2.xml
new file mode 100644
index 0000000..7facffa
--- /dev/null
+++ b/enemies_gfx/player_hat2.xml
@@ -0,0 +1,659 @@
+<Sprite 
+	filename="data/enemies_gfx/player_hat2.png" 
+	offset_x="6" 
+	offset_y="14" 
+	default_animation="stand"
+	>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand" 
+		pos_x="0" 
+		pos_y="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="burn" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_up" 
+		pos_x="0" 
+		pos_y="41" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_fall" 
+		pos_x="0" 
+		pos_y="61" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.075" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="land" 
+		pos_x="0" 
+		pos_y="81" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="fly_idle" 
+		pos_x="0" 
+		pos_y="101" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.12" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="fly_move" 
+		pos_x="0" 
+		pos_y="121" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="knockback" 
+		pos_x="0" 
+		pos_y="141" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.08" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_idle" 
+		pos_x="0" 
+		pos_y="161" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_move" 
+		pos_x="0" 
+		pos_y="181" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="attack" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt" 
+		pos_x="0" 
+		pos_y="221" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="lower_head" 
+		pos_x="0" 
+		pos_y="241" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="raise_head" 
+		pos_x="0" 
+		pos_y="261" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="11" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="11" 
+		name="eat" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="1" 
+		frame_height="19" 
+		frame_wait="0.14" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="crouch" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards" 
+		pos_x="0" 
+		pos_y="301" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item_stash" 
+		pos_x="0" 
+		pos_y="321" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item" 
+		pos_x="0" 
+		pos_y="341" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_old" 
+		pos_x="0" 
+		pos_y="361" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand_crouched" 
+		pos_x="0" 
+		pos_y="381" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards_crouched" 
+		pos_x="0" 
+		pos_y="421" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_crouched" 
+		pos_x="0" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt_crouched" 
+		pos_x="0" 
+		pos_y="461" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_crouched" 
+		pos_x="0" 
+		pos_y="481" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.11" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="rise" 
+		pos_x="0" 
+		pos_y="501" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw" 
+		pos_x="0" 
+		pos_y="521" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide" 
+		pos_x="0" 
+		pos_y="541" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end" 
+		pos_x="0" 
+		pos_y="561" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide_crouched" 
+		pos_x="0" 
+		pos_y="581" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end_crouched" 
+		pos_x="0" 
+		pos_y="601" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start" 
+		pos_x="0" 
+		pos_y="621" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start_crouched" 
+		pos_x="0" 
+		pos_y="641" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt" 
+		pos_x="0" 
+		pos_y="661" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_swim" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_fly" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="9" 
+		frame_height="19" 
+		frame_wait="0.1" 
+		frame_width="12" 
+		frames_per_row="9" 
+		loop="0" 
+		name="grab_item" 
+		pos_x="0" 
+		pos_y="701" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.24" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="idle_hold" 
+		pos_x="0" 
+		pos_y="721" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="10" 
+		frame_height="20" 
+		frame_wait="0.07" 
+		frame_width="13" 
+		frames_per_row="10" 
+		loop="0" 
+		name="throw_item" 
+		pos_x="0" 
+		pos_y="741" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="push_start" 
+		pos_x="0" 
+		pos_y="761" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.12" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="push" 
+		pos_x="0" 
+		pos_y="781" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="cough" 
+		pos_x="0" 
+		pos_y="801" >
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="21" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="21" 
+		loop="0" 
+		name="intro_stand_up" 
+		pos_x="0" 
+		pos_y="840" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		next_animation="stand" 
+		>
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="6" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="8" 
+		loop="1" 
+		name="intro_sleep" 
+		pos_x="0" 
+		pos_y="862" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		>
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_small" 
+		pos_x="0" 
+		pos_y="821" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12"
+		loop="0" 
+		name="telekinesis_grab_start" 
+		pos_x="0" 
+		pos_y="884" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12" 
+		loop="0" 
+		name="telekinesis_grab_start_crouched" 
+		pos_x="0" 
+		pos_y="903" >
+	</RectAnimation>
+
+	<!-- telekinesis throws use shorter+faster kick animations -->
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw" 
+		pos_x="26" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw_crouched" 
+		pos_x="26" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+</Sprite>
+
diff --git a/enemies_gfx/player_hat2_shadow.png b/enemies_gfx/player_hat2_shadow.png
new file mode 100644
index 0000000..3942118
Binary files /dev/null and b/enemies_gfx/player_hat2_shadow.png differ
diff --git a/enemies_gfx/player_hat2_shadow.xml b/enemies_gfx/player_hat2_shadow.xml
new file mode 100644
index 0000000..fde2835
--- /dev/null
+++ b/enemies_gfx/player_hat2_shadow.xml
@@ -0,0 +1,659 @@
+<Sprite 
+	filename="data/enemies_gfx/player_hat2_shadow.png" 
+	offset_x="6" 
+	offset_y="14" 
+	default_animation="stand"
+	>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand" 
+		pos_x="0" 
+		pos_y="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="burn" 
+		pos_x="0" 
+		pos_y="21" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_up" 
+		pos_x="0" 
+		pos_y="41" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.082" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="jump_fall" 
+		pos_x="0" 
+		pos_y="61" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.075" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="land" 
+		pos_x="0" 
+		pos_y="81" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="fly_idle" 
+		pos_x="0" 
+		pos_y="101" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.12" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="fly_move" 
+		pos_x="0" 
+		pos_y="121" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="knockback" 
+		pos_x="0" 
+		pos_y="141" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.08" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_idle" 
+		pos_x="0" 
+		pos_y="161" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		name="swim_move" 
+		pos_x="0" 
+		pos_y="181" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="attack" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick" 
+		pos_x="0" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt" 
+		pos_x="0" 
+		pos_y="221" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="lower_head" 
+		pos_x="0" 
+		pos_y="241" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="raise_head" 
+		pos_x="0" 
+		pos_y="261" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="11" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="11" 
+		name="eat" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="1" 
+		frame_height="19" 
+		frame_wait="0.14" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="crouch" 
+		pos_x="0" 
+		pos_y="281" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.105" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards" 
+		pos_x="0" 
+		pos_y="301" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item_stash" 
+		pos_x="0" 
+		pos_y="321" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="move_item" 
+		pos_x="0" 
+		pos_y="341" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_old" 
+		pos_x="0" 
+		pos_y="361" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.2" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="stand_crouched" 
+		pos_x="0" 
+		pos_y="381" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="run_crouched" 
+		pos_x="0" 
+		pos_y="401" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.095" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="walk_backwards_crouched" 
+		pos_x="0" 
+		pos_y="421" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_crouched" 
+		pos_x="0" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="20" 
+		frame_wait="0.11" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="kick_alt_crouched" 
+		pos_x="0" 
+		pos_y="461" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_crouched" 
+		pos_x="0" 
+		pos_y="481" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.11" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="rise" 
+		pos_x="0" 
+		pos_y="501" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="5" 
+		frame_height="19" 
+		frame_wait="0.07" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw" 
+		pos_x="0" 
+		pos_y="521" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide" 
+		pos_x="0" 
+		pos_y="541" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end" 
+		pos_x="0" 
+		pos_y="561" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="slide_crouched" 
+		pos_x="0" 
+		pos_y="581" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_end_crouched" 
+		pos_x="0" 
+		pos_y="601" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start" 
+		pos_x="0" 
+		pos_y="621" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="2" 
+		frame_height="19" 
+		frame_wait="0.05" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="slide_start_crouched" 
+		pos_x="0" 
+		pos_y="641" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt" 
+		pos_x="0" 
+		pos_y="661" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_swim" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="3" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="hurt_fly" 
+		pos_x="0" 
+		pos_y="681" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="9" 
+		frame_height="19" 
+		frame_wait="0.1" 
+		frame_width="12" 
+		frames_per_row="9" 
+		loop="0" 
+		name="grab_item" 
+		pos_x="0" 
+		pos_y="701" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.24" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="idle_hold" 
+		pos_x="0" 
+		pos_y="721" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="10" 
+		frame_height="20" 
+		frame_wait="0.07" 
+		frame_width="13" 
+		frames_per_row="10" 
+		loop="0" 
+		name="throw_item" 
+		pos_x="0" 
+		pos_y="741" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="push_start" 
+		pos_x="0" 
+		pos_y="761" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.12" 
+		frame_width="12" 
+		frames_per_row="8" 
+		name="push" 
+		pos_x="0" 
+		pos_y="781" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.09" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="cough" 
+		pos_x="0" 
+		pos_y="801" >
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="21" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="21" 
+		loop="0" 
+		name="intro_stand_up" 
+		pos_x="0" 
+		pos_y="840" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		next_animation="stand" 
+		>
+	</RectAnimation>
+	
+	<RectAnimation 
+		frame_count="6" 
+		frame_wait="0.15" 
+		frame_width="20" 
+		frame_height="22" 
+		frames_per_row="8" 
+		loop="1" 
+		name="intro_sleep" 
+		pos_x="0" 
+		pos_y="862" 
+		has_offset="1"
+		offset_x="10"
+		offset_y="14"
+		>
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="19" 
+		frame_wait="0.08" 
+		frame_width="12" 
+		frames_per_row="8" 
+		loop="0" 
+		name="throw_small" 
+		pos_x="0" 
+		pos_y="821" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12"
+		loop="0" 
+		name="telekinesis_grab_start" 
+		pos_x="0" 
+		pos_y="884" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="6" 
+		frame_height="19" 
+		frame_wait="0.06" 
+		frame_width="15" 
+		frames_per_row="12" 
+		loop="0" 
+		name="telekinesis_grab_start_crouched" 
+		pos_x="0" 
+		pos_y="903" >
+	</RectAnimation>
+
+	<!-- telekinesis throws use shorter+faster kick animations -->
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw" 
+		pos_x="26" 
+		pos_y="201" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+	<RectAnimation 
+		frame_count="4" 
+		frame_height="20" 
+		frame_wait="0.06" 
+		frame_width="13" 
+		frames_per_row="8" 
+		loop="0" 
+		name="telekinesis_throw_crouched" 
+		pos_x="26" 
+		pos_y="441" 
+		shrink_by_one_pixel="1" >
+	</RectAnimation>
+
+</Sprite>
+
diff --git a/entities/animals/boss_centipede/boss_centipede_update.lua b/entities/animals/boss_centipede/boss_centipede_update.lua
index 6a0267c..f5e8522 100644
--- a/entities/animals/boss_centipede/boss_centipede_update.lua
+++ b/entities/animals/boss_centipede/boss_centipede_update.lua
@@ -710,6 +710,12 @@ function check_death()
 
 		-- check death
 		if ( hp <= 0.0 ) then
+			local sun = EntityGetInRadiusWithTag( x, y, 540, "new_sun" )
+			if ( #sun > 0 ) then
+				print("SUN DETECTED")
+				GameAddFlagRun( "sun_kill" )
+			end
+			
 			move_to_reference()
 			GameTriggerMusicFadeOutAndDequeueAll()
 			if death_sound_started == false then
diff --git a/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua b/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
index 744cd11..386309a 100644
--- a/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
+++ b/entities/animals/boss_centipede/ending/sampo_start_ending_sequence.lua
@@ -97,6 +97,11 @@ if( doing_newgame_plus == false ) then
 		-- ORBS >= 33 ENDINGs
 		-- on top -> new game+
 		AddFlagPersistent( "secret_amulet" )
+		
+		if ( orb_count > 33 ) then
+			AddFlagPersistent( "secret_amulet_gem" )
+		end
+		
 		local distance_from_mountain = 1000
 
 		if( #endpoint_mountain > 0 ) then
diff --git a/entities/animals/boss_centipede/rewards/reward_sun.png b/entities/animals/boss_centipede/rewards/reward_sun.png
new file mode 100644
index 0000000..d3a6b4c
Binary files /dev/null and b/entities/animals/boss_centipede/rewards/reward_sun.png differ
diff --git a/entities/animals/boss_centipede/rewards/reward_sun.xml b/entities/animals/boss_centipede/rewards/reward_sun.xml
new file mode 100644
index 0000000..57a3c4c
--- /dev/null
+++ b/entities/animals/boss_centipede/rewards/reward_sun.xml
@@ -0,0 +1,14 @@
+<Entity tags="teleportable_NOT">
+  <Base file="data/entities/animals/boss_centipede/rewards/gold_reward.xml" >
+    <UIInfoComponent              _enabled="0"/>
+    <ItemComponent                _enabled="0" />
+    <PhysicsImageShapeComponent   image_file="data/entities/animals/boss_centipede/rewards/reward_sun.png" />
+
+  </Base>
+
+  <VariableStorageComponent
+    name="end_gold"
+    value_int="70000" >
+  </VariableStorageComponent>
+
+</Entity>
\ No newline at end of file
diff --git a/entities/animals/boss_centipede/rewards/spawn_rewards.lua b/entities/animals/boss_centipede/rewards/spawn_rewards.lua
index 12b04d0..e3b2540 100644
--- a/entities/animals/boss_centipede/rewards/spawn_rewards.lua
+++ b/entities/animals/boss_centipede/rewards/spawn_rewards.lua
@@ -38,6 +38,7 @@ function spawn_rewards(x, y)
 	print( "money_all_time: " .. tostring(money_all_time ) )
 	print( "orbs collected: " .. tostring( orbs ) )
 	print( "kicks: " .. tostring(kicks) )
+	
 	-- less than 1 minutes -> minit watering can
 	-- less than 5 minutes
 	-- - 0 kills -> pacifist
@@ -126,5 +127,13 @@ function spawn_rewards(x, y)
 	if( spawned_n <= 0 ) then
 		entity = EntityLoad( "data/entities/animals/boss_centipede/rewards/gold_reward.xml", x, y )
 	end
-
+	
+	-- sun
+	
+	if GameHasFlagRun( "sun_kill" ) then
+		entity = EntityLoad( "data/entities/animals/boss_centipede/rewards/reward_sun.xml", x + spawned_n * 20, y - spawned_n * 10 )
+		spawned_n = spawned_n + 1
+		
+		AddFlagPersistent( "progress_sunkill" )
+	end
 end
\ No newline at end of file
diff --git a/entities/animals/boss_ghost/boss_ghost.xml b/entities/animals/boss_ghost/boss_ghost.xml
index 7864ca7..241d085 100644
--- a/entities/animals/boss_ghost/boss_ghost.xml
+++ b/entities/animals/boss_ghost/boss_ghost.xml
@@ -223,12 +223,6 @@
 		>
 	</LuaComponent>
 	
-	<LuaComponent
-		script_death="data/scripts/animals/log_kill.lua"
-		execute_every_n_frame="-1"
-		>
-	</LuaComponent>
-	
 	<AudioLoopComponent
 		file="data/audio/Desktop/animals.bank"
 		event_name="animals/ghost/movement_loop"
diff --git a/entities/animals/boss_ghost/eye.png b/entities/animals/boss_ghost/eye.png
index 61d813e..556df4c 100644
Binary files a/entities/animals/boss_ghost/eye.png and b/entities/animals/boss_ghost/eye.png differ
diff --git a/entities/animals/boss_ghost/pupil.png b/entities/animals/boss_ghost/pupil.png
index 7d54017..7dd2b89 100644
Binary files a/entities/animals/boss_ghost/pupil.png and b/entities/animals/boss_ghost/pupil.png differ
diff --git a/entities/animals/fungus_tiny.xml b/entities/animals/fungus_tiny.xml
new file mode 100644
index 0000000..3d01381
--- /dev/null
+++ b/entities/animals/fungus_tiny.xml
@@ -0,0 +1,175 @@
+<Entity name="$animal_fungus_tiny" tags="fungus_tiny_bad" >
+  
+	<Base file="data/entities/base_enemy_basic.xml" >
+		<ItemChestComponent level="2" enemy_drop="1" > </ItemChestComponent>
+
+		<AnimalAIComponent 
+			_enabled="1" 
+			escape_if_damaged_probability="70"
+			food_material="blood"
+			attack_melee_enabled="0" 
+			attack_melee_max_distance="1"
+			attack_dash_enabled="1"
+			attack_dash_lob="1.1"
+			attack_ranged_enabled="0"
+			aggressiveness_min="10"
+			aggressiveness_max="100"
+			>
+		</AnimalAIComponent>
+		
+		<DamageModelComponent 
+            hp="1.6"
+			air_needed="0"
+			ragdoll_filenames_file="" 
+			fire_probability_of_ignition="100" 
+			ragdoll_material="fungus_loose_trippy"
+			blood_material="blood_fungi"
+			blood_spray_material="blood_fungi"
+			blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_purple_$[1-3].xml"
+			blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_purple_$[1-3].xml"
+			minimum_knockback_force="100000"
+			>
+			<damage_multipliers
+				fire="40.0" 
+				>
+			</damage_multipliers>
+		</DamageModelComponent>
+
+		<SpriteComponent 
+			image_file="data/enemies_gfx/fungus_tiny_b.xml" 
+			offset_x="0"
+			offset_y="0">
+		</SpriteComponent>
+
+		<PathFindingGridMarkerComponent
+			marker_work_flag="16" >
+		</PathFindingGridMarkerComponent>
+		
+		<PathFindingComponent
+			frames_to_get_stuck="120"
+			can_jump="1" 
+			never_consider_line_of_sight="1"
+			>
+		</PathFindingComponent>
+
+		<GenomeDataComponent 
+			herd_id="fungus"
+			food_chain_rank="15"
+			is_predator="1" >
+		</GenomeDataComponent>
+		
+		<CharacterPlatformingComponent 
+			jump_velocity_y="-12" 
+			run_velocity="9"  >
+		</CharacterPlatformingComponent>
+
+		<CameraBoundComponent
+		  max_count="30"
+		  distance="160000">
+		</CameraBoundComponent>
+		
+		<HitboxComponent 
+			_enabled="1" 
+			aabb_max_x="4" 
+			aabb_max_y="4" 
+			aabb_min_x="-4" 
+			aabb_min_y="-8" >
+		</HitboxComponent>
+		
+		<CharacterDataComponent
+			collision_aabb_min_x="-1.0" 
+			collision_aabb_max_x="1.0" 
+			collision_aabb_min_y="-6" 
+			collision_aabb_max_y="3"
+			mass="1.3"
+			>
+		</CharacterDataComponent>
+		
+		<AudioComponent
+			file="data/audio/Desktop/animals.bank"
+			event_root="animals/slime">
+		</AudioComponent>
+
+	</Base>
+
+  <MaterialInventoryComponent 
+    _enabled="1" 
+    drop_as_item="0" 
+    leak_on_damage_percent="0.999" 
+    >
+    <count_per_material_type>
+      <Material material="blood_fungi" count="400"  />
+	</count_per_material_type>
+  </MaterialInventoryComponent>
+  
+  <LuaComponent
+    script_death="data/scripts/animals/fungus_death.lua"
+    >
+  </LuaComponent>
+  
+  <LuaComponent
+	    execute_on_removed="0"
+	    execute_every_n_frame="-1"
+		script_collision_trigger_timer_finished="data/scripts/animals/fungus_death.lua"
+	    remove_after_executed="1">
+  	</LuaComponent>
+  
+  <LuaComponent
+	    execute_on_removed="0"
+	    execute_every_n_frame="-1"
+		script_collision_trigger_hit="data/scripts/animals/fungus_smoke.lua"
+	    remove_after_executed="1">
+  	</LuaComponent>
+  
+  <CollisionTriggerComponent
+    	width="10"
+    	height="10"
+    	radius="5"
+		required_tag="player_unit"
+    	timer_for_destruction="20" >
+    </CollisionTriggerComponent>
+	
+	<CollisionTriggerComponent
+    	width="10"
+    	height="10"
+    	radius="5"
+		required_tag="player_unit"
+    	timer_for_destruction="0" 
+		destroy_this_entity_when_triggered="0"
+		remove_component_when_triggered="1"
+		>
+    </CollisionTriggerComponent>
+	
+	<ParticleEmitterComponent 
+    emitted_material_name="acid_gas"
+    offset.x="0"
+    offset.y="0"
+    x_pos_offset_min="-2"
+    y_pos_offset_min="-2"
+    x_pos_offset_max="2"
+    y_pos_offset_max="2"
+    x_vel_min="-10"
+    x_vel_max="10"
+    y_vel_min="-10"
+    y_vel_max="10"
+    count_min="1"
+    count_max="2"
+    lifetime_min="0.6"
+    lifetime_max="1.8"
+    create_real_particles="1"
+    emit_cosmetic_particles="0"
+    emission_interval_min_frames="10"
+    emission_interval_max_frames="35"
+    is_emitting="1" >
+  </ParticleEmitterComponent>
+	
+	<AudioComponent
+		file="data/audio/Desktop/animals.bank"
+		event_root="animals/fungus" >
+	</AudioComponent>
+	
+	<VariableStorageComponent
+		_tags="no_gold_drop">
+	</VariableStorageComponent>
+
+</Entity>
\ No newline at end of file
diff --git a/entities/animals/necrobot.xml b/entities/animals/necrobot.xml
index 81010bd..e6c4a9e 100644
--- a/entities/animals/necrobot.xml
+++ b/entities/animals/necrobot.xml
@@ -30,7 +30,7 @@
         </SpriteComponent>
 
         <DamageModelComponent 
-            hp="20"
+            hp="16"
             ragdoll_material="steel"
 			ragdoll_filenames_file="data/ragdolls/necrobot/filenames.txt" 
 			blood_material="oil"
diff --git a/entities/animals/necrobot_super.xml b/entities/animals/necrobot_super.xml
index de2085d..748bccc 100644
--- a/entities/animals/necrobot_super.xml
+++ b/entities/animals/necrobot_super.xml
@@ -30,7 +30,7 @@
         </SpriteComponent>
 
         <DamageModelComponent 
-            hp="40"
+            hp="28"
             ragdoll_material="steel"
 			ragdoll_filenames_file="data/ragdolls/necrobot/filenames.txt" 
 			blood_material="oil"
diff --git a/entities/animals/necromancer_super.xml b/entities/animals/necromancer_super.xml
index 628a488..dc939e5 100644
--- a/entities/animals/necromancer_super.xml
+++ b/entities/animals/necromancer_super.xml
@@ -78,11 +78,11 @@
 		<CharacterPlatformingComponent 
 			jump_velocity_y="-12" 
 			run_velocity="14"  
-			fly_speed_max_up="100"
-			fly_speed_max_down="100"
+			fly_speed_max_up="80"
+			fly_speed_max_down="80"
 			fly_speed_mult="40"
 			fly_speed_change_spd="1"
-    		pixel_gravity="0" 
+    		pixel_gravity="50" 
 			fly_velocity_x="80">
 		</CharacterPlatformingComponent>
 	</Base>
diff --git a/entities/buildings/dark_moon_altar.xml b/entities/buildings/dark_moon_altar.xml
index ed34435..7a4183b 100644
--- a/entities/buildings/dark_moon_altar.xml
+++ b/entities/buildings/dark_moon_altar.xml
@@ -6,6 +6,14 @@
 	>
     </LuaComponent>
 	
+	<LuaComponent 
+        _enabled="1" 
+        execute_every_n_frame="1"
+        script_source_file="data/scripts/magic/dark_moon_altar_init.lua"
+		remove_after_executed="1"
+	>
+    </LuaComponent>
+	
 	<LuaComponent 
         _enabled="1" 
         execute_every_n_frame="80"
diff --git a/entities/buildings/essence_eater.xml b/entities/buildings/essence_eater.xml
new file mode 100644
index 0000000..e74d85f
--- /dev/null
+++ b/entities/buildings/essence_eater.xml
@@ -0,0 +1,119 @@
+<Entity name="$item_essence_stone" tags="hittable" >
+	<SpriteComponent 
+		_enabled="1" 
+		alpha="1" 
+		has_special_scale="1" 
+		image_file="data/items_gfx/orbs/orb_small.xml" 
+		is_text_sprite="0" 
+		next_rect_animation="" 
+		offset_x="0" 
+		offset_y="0" 
+		rect_animation="stand"
+		special_scale_x="1"
+		visible="1" 
+		>
+	</SpriteComponent>
+	
+	<HitboxComponent 
+		aabb_min_x="-8"
+		aabb_max_x="8"
+		aabb_min_y="-8" 
+		aabb_max_y="8"
+		>
+	</HitboxComponent>
+	
+  <DamageModelComponent 
+    air_needed="0" 
+    blood_material="blood" 
+    drop_items_on_death="0" 
+    falling_damage_damage_max="1.2" 
+    falling_damage_damage_min="0.1" 
+    falling_damage_height_max="250" 
+    falling_damage_height_min="70" 
+    falling_damages="0" 
+    fire_damage_amount="0.4" 
+    fire_probability_of_ignition="0"
+	critical_damage_resistance="1"
+    hp="4.2" 
+    is_on_fire="0" 
+    materials_create_messages="0" 
+    materials_damage="1"
+    ragdoll_filenames_file="" 
+    ragdoll_material="" >
+	<damage_multipliers
+		melee="0.1"
+		>
+	</damage_multipliers>
+  </DamageModelComponent>
+  
+  <ExplodeOnDamageComponent
+  	explode_on_death_percent="1"
+  	explode_on_damage_percent="0.0"
+  	>
+    <config_explosion
+      never_cache="0"
+      damage="0"
+      camera_shake="60" 
+      explosion_radius="40" 
+      explosion_sprite="" 
+      explosion_sprite_lifetime="0" 
+      create_cell_probability="0" 
+      hole_destroy_liquid="0" 
+      load_this_entity="data/entities/particles/particle_explosion/main_bluesmoke.xml"
+      hole_enabled="1" 
+      ray_energy="30000"
+      particle_effect="0" 
+      damage_mortals="0" 
+      physics_explosion_power.min="1.9" 
+      physics_explosion_power.max="2.5" 
+      physics_throw_enabled="1"
+      shake_vegetation="1" 
+      sparks_count_min="10" 
+      sparks_count_max="25" 
+      sparks_enabled="1" 
+      stains_enabled="1" 
+      stains_radius="15" 
+      >
+    </config_explosion>
+  </ExplodeOnDamageComponent>
+	
+	<UIInfoComponent
+		name="$item_essence_stone"
+		>
+	</UIInfoComponent>
+	
+	<LuaComponent
+		execute_every_n_frame="-1"
+		script_death="data/scripts/essences/away.lua"
+		remove_after_executed="0"
+		>
+	</LuaComponent>
+	
+	<ParticleEmitterComponent 
+			emitted_material_name="spark_blue"
+			gravity.y="0.0"
+			lifetime_min="1"
+			lifetime_max="3"
+			x_vel_min="-5"
+			x_vel_max="5"
+			y_vel_min="-20"
+			y_vel_max="5"
+			count_min="15"
+			count_max="15"
+			render_on_grid="1"
+			fade_based_on_lifetime="1"
+			cosmetic_force_create="1"
+			collide_with_grid="0"
+			airflow_force="0.051"
+			airflow_time="1.01"
+			airflow_scale="0.03"
+			emission_interval_min_frames="12"
+			emission_interval_max_frames="12"
+			emit_cosmetic_particles="1"
+			area_circle_radius.max="11"
+			render_back="1"
+			is_emitting="1" 
+			>
+		</ParticleEmitterComponent>
+	
+</Entity>
diff --git a/entities/buildings/fungitrap_01.xml b/entities/buildings/fungitrap_01.xml
new file mode 100644
index 0000000..73e62c4
--- /dev/null
+++ b/entities/buildings/fungitrap_01.xml
@@ -0,0 +1,13 @@
+<Entity>
+	<LuaComponent
+		script_source_file="data/scripts/buildings/fungitrap_01.lua"
+		execute_every_n_frame="50"
+		>
+	</LuaComponent>
+	
+	<CameraBoundComponent
+		max_count="30"
+		distance="160000" >
+	</CameraBoundComponent>
+</Entity>
+
diff --git a/entities/buildings/fungitrap_01_projectile.xml b/entities/buildings/fungitrap_01_projectile.xml
new file mode 100644
index 0000000..da12412
--- /dev/null
+++ b/entities/buildings/fungitrap_01_projectile.xml
@@ -0,0 +1,50 @@
+<Entity name="$projectile_default">
+	<Base file="data/entities/base_projectile.xml" >
+		<VelocityComponent
+			mass="1.4"
+			>
+    	</VelocityComponent>
+	</Base>
+
+  <ProjectileComponent 
+    _enabled="1" 
+	speed_min="200"
+	speed_max="200"
+    die_on_low_velocity="0"
+    on_death_explode="0"
+    on_death_gfx_leave_sprite="0" 
+    on_lifetime_out_explode="0"
+    on_collision_die="1"
+	penetrate_entities="1"
+	collide_with_entities="0"
+	damage="0"
+    lifetime="40" 
+	on_collision_spawn_entity="1"
+    spawn_entity="data/entities/projectiles/deck/spore_pod_growing.xml"
+	>
+    <config_explosion
+        never_cache="1" 
+		damage="0"
+		camera_shake="0" 
+		explosion_radius="0" 
+		explosion_sprite="" 
+		explosion_sprite_lifetime="0" 
+		create_cell_material=""
+		create_cell_probability="0"  
+		hole_destroy_liquid="0" 
+		hole_enabled="0" 
+		hole_image="" 
+		particle_effect="0" 
+		damage_mortals="0" 
+        
+		physics_explosion_power.min="0"
+		physics_explosion_power.max="0" 
+		physics_throw_enabled="0" 
+		shake_vegetation="0" 
+		sparks_enabled="0" 
+		stains_enabled="0" 
+		>
+    </config_explosion>
+  </ProjectileComponent>
+</Entity>
+
diff --git a/entities/buildings/fungitrap_02.xml b/entities/buildings/fungitrap_02.xml
new file mode 100644
index 0000000..2e44035
--- /dev/null
+++ b/entities/buildings/fungitrap_02.xml
@@ -0,0 +1,13 @@
+<Entity>
+	<LuaComponent
+		script_source_file="data/scripts/buildings/fungitrap_02.lua"
+		execute_every_n_frame="60"
+		>
+	</LuaComponent>
+	
+	<CameraBoundComponent
+		max_count="30"
+		distance="160000" >
+	</CameraBoundComponent>
+</Entity>
+
diff --git a/entities/buildings/fungitrap_02_projectile.xml b/entities/buildings/fungitrap_02_projectile.xml
new file mode 100644
index 0000000..b53330e
--- /dev/null
+++ b/entities/buildings/fungitrap_02_projectile.xml
@@ -0,0 +1,50 @@
+<Entity name="$projectile_default">
+	<Base file="data/entities/base_projectile.xml" >
+		<VelocityComponent
+			mass="1.4"
+			>
+    	</VelocityComponent>
+	</Base>
+
+  <ProjectileComponent 
+    _enabled="1" 
+	speed_min="200"
+	speed_max="200"
+    die_on_low_velocity="0"
+    on_death_explode="0"
+    on_death_gfx_leave_sprite="0" 
+    on_lifetime_out_explode="0"
+    on_collision_die="1"
+	penetrate_entities="1"
+	collide_with_entities="0"
+	damage="0"
+    lifetime="40" 
+	on_collision_spawn_entity="1"
+    spawn_entity="data/entities/buildings/fungitrap_02_spawner.xml"
+	>
+    <config_explosion
+        never_cache="1" 
+		damage="0"
+		camera_shake="0" 
+		explosion_radius="0" 
+		explosion_sprite="" 
+		explosion_sprite_lifetime="0" 
+		create_cell_material=""
+		create_cell_probability="0"  
+		hole_destroy_liquid="0" 
+		hole_enabled="0" 
+		hole_image="" 
+		particle_effect="0" 
+		damage_mortals="0" 
+        
+		physics_explosion_power.min="0"
+		physics_explosion_power.max="0" 
+		physics_throw_enabled="0" 
+		shake_vegetation="0" 
+		sparks_enabled="0" 
+		stains_enabled="0" 
+		>
+    </config_explosion>
+  </ProjectileComponent>
+</Entity>
+
diff --git a/entities/buildings/fungitrap_02_spawner.xml b/entities/buildings/fungitrap_02_spawner.xml
new file mode 100644
index 0000000..23fbdf2
--- /dev/null
+++ b/entities/buildings/fungitrap_02_spawner.xml
@@ -0,0 +1,8 @@
+<Entity>
+	<LuaComponent
+		script_source_file="data/scripts/buildings/fungitrap_02_spawner.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+</Entity>
+
diff --git a/entities/buildings/hpcrystal.xml b/entities/buildings/hpcrystal.xml
index bd5e7db..4ee8039 100644
--- a/entities/buildings/hpcrystal.xml
+++ b/entities/buildings/hpcrystal.xml
@@ -8,7 +8,7 @@
     falling_damages="0" 
     fire_damage_amount="0.2" 
     fire_probability_of_ignition="0.0" 
-    hp="30" 
+    hp="20" 
     is_on_fire="0" 
     blood_material="sand_blue"
     materials_create_messages="0" 
diff --git a/entities/buildings/moon_altar.xml b/entities/buildings/moon_altar.xml
index 44db8ff..d1855e9 100644
--- a/entities/buildings/moon_altar.xml
+++ b/entities/buildings/moon_altar.xml
@@ -6,6 +6,14 @@
 	>
     </LuaComponent>
 	
+	<LuaComponent 
+        _enabled="1" 
+        execute_every_n_frame="1"
+        script_source_file="data/scripts/magic/moon_altar_init.lua"
+		remove_after_executed="1"
+	>
+    </LuaComponent>
+	
 	<LuaComponent 
         _enabled="1" 
         execute_every_n_frame="80"
diff --git a/entities/buildings/snowcrystal.xml b/entities/buildings/snowcrystal.xml
index a561c0a..bafae10 100644
--- a/entities/buildings/snowcrystal.xml
+++ b/entities/buildings/snowcrystal.xml
@@ -8,7 +8,7 @@
     falling_damages="0" 
     fire_damage_amount="0.2" 
     fire_probability_of_ignition="0.0" 
-    hp="30" 
+    hp="20" 
     is_on_fire="0" 
     blood_material="sand_blue"
     materials_create_messages="0" 
diff --git a/entities/items/pickup/egg_fire.xml b/entities/items/pickup/egg_fire.xml
index 271442d..ba60b00 100644
--- a/entities/items/pickup/egg_fire.xml
+++ b/entities/items/pickup/egg_fire.xml
@@ -30,6 +30,7 @@
 
   <VelocityComponent
     _tags="enabled_in_world"
+	affect_physics_bodies="1"
   ></VelocityComponent>
   
   <!-- potion logic -->
diff --git a/entities/items/pickup/egg_hollow.xml b/entities/items/pickup/egg_hollow.xml
index b3f0893..757c956 100644
--- a/entities/items/pickup/egg_hollow.xml
+++ b/entities/items/pickup/egg_hollow.xml
@@ -30,6 +30,7 @@
 
   <VelocityComponent
     _tags="enabled_in_world"
+	affect_physics_bodies="1"
   ></VelocityComponent>
   
   <!-- potion logic -->
diff --git a/entities/items/pickup/egg_monster.xml b/entities/items/pickup/egg_monster.xml
index 67ec2f3..18d9d68 100644
--- a/entities/items/pickup/egg_monster.xml
+++ b/entities/items/pickup/egg_monster.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/egg_purple.xml b/entities/items/pickup/egg_purple.xml
index a9e4cc2..7f826a7 100644
--- a/entities/items/pickup/egg_purple.xml
+++ b/entities/items/pickup/egg_purple.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/egg_red.xml b/entities/items/pickup/egg_red.xml
index 6739ec5..7b2cc41 100644
--- a/entities/items/pickup/egg_red.xml
+++ b/entities/items/pickup/egg_red.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/egg_slime.xml b/entities/items/pickup/egg_slime.xml
index b26871a..bb69ac1 100644
--- a/entities/items/pickup/egg_slime.xml
+++ b/entities/items/pickup/egg_slime.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/egg_spiders.xml b/entities/items/pickup/egg_spiders.xml
index a9e4cc2..7f826a7 100644
--- a/entities/items/pickup/egg_spiders.xml
+++ b/entities/items/pickup/egg_spiders.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/egg_worm.xml b/entities/items/pickup/egg_worm.xml
index 4125a59..aa731c6 100644
--- a/entities/items/pickup/egg_worm.xml
+++ b/entities/items/pickup/egg_worm.xml
@@ -29,6 +29,7 @@
   ></PhysicsThrowableComponent>
 
   <VelocityComponent
+	affect_physics_bodies="1"
     _tags="enabled_in_world"
   ></VelocityComponent>
   
diff --git a/entities/items/pickup/sun/newsun.xml b/entities/items/pickup/sun/newsun.xml
index 4335cf1..05a60c4 100644
--- a/entities/items/pickup/sun/newsun.xml
+++ b/entities/items/pickup/sun/newsun.xml
@@ -1,4 +1,4 @@
-<Entity tags="hittable,teleportable_NOT,seed_e" >
+<Entity tags="hittable,teleportable_NOT,seed_e,new_sun" >
 	<StreamingKeepAliveComponent />
 	
 	<Base file="data/entities/base_item_projectile.xml" />
diff --git a/entities/items/pickup/sun/newsun_dark.xml b/entities/items/pickup/sun/newsun_dark.xml
index 28c830a..ffca929 100644
--- a/entities/items/pickup/sun/newsun_dark.xml
+++ b/entities/items/pickup/sun/newsun_dark.xml
@@ -1,4 +1,4 @@
-<Entity tags="hittable,teleportable_NOT,seed_f" >
+<Entity tags="hittable,teleportable_NOT,seed_f,new_sun" >
 	<StreamingKeepAliveComponent />
 	
 	<Base file="data/entities/base_item_projectile.xml" />
@@ -98,7 +98,7 @@
 		damage_per_frame="2.14"
 		update_every_n_frame="1"
 		entities_with_tag="mortal"
-		death_cause="$damage_sun"
+		death_cause="$damage_darksun"
 		damage_type="DAMAGE_CURSE"
 		>
 	</AreaDamageComponent>
@@ -111,7 +111,7 @@
 		damage_per_frame="1.05"
 		update_every_n_frame="1"
 		entities_with_tag="mortal"
-		death_cause="$damage_sun"
+		death_cause="$damage_darksun"
 		damage_type="DAMAGE_ICE"
 		>
 	</AreaDamageComponent>
@@ -124,7 +124,7 @@
 		damage_per_frame="0.61"
 		update_every_n_frame="1"
 		entities_with_tag="mortal"
-		death_cause="$damage_sun"
+		death_cause="$damage_darksun"
 		damage_type="DAMAGE_ELECTRICITY"
 		>
 	</AreaDamageComponent>
diff --git a/entities/misc/fungus_powder_bad.xml b/entities/misc/fungus_powder_bad.xml
new file mode 100644
index 0000000..5ccf0b0
--- /dev/null
+++ b/entities/misc/fungus_powder_bad.xml
@@ -0,0 +1,7 @@
+<Entity>
+	<LuaComponent
+		script_source_file="data/scripts/animals/fungus_powder_bad.lua"
+		execute_on_added="1"
+		>
+	</LuaComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/player_base.xml b/entities/player_base.xml
index 1786128..dfd3d31 100644
--- a/entities/player_base.xml
+++ b/entities/player_base.xml
@@ -430,6 +430,18 @@
 		_enabled="0"
 	></SpriteComponent>
 	
+	<SpriteComponent 
+		_tags="character,player_amulet_gem" 
+		alpha="1" 
+		image_file="data/enemies_gfx/player_amulet_gem.xml" 
+		next_rect_animation="" 
+		offset_x="6" 
+		offset_y="14" 
+		rect_animation="walk" 
+		z_index="0.58"
+		_enabled="0"
+	></SpriteComponent>
+	
 	<SpriteComponent 
 		_tags="character,player_hat"
 		alpha="1" 
@@ -441,6 +453,30 @@
 		z_index="0.59"
 		_enabled="0"
 	></SpriteComponent>
+	
+	<SpriteComponent 
+		_tags="character,player_hat2"
+		alpha="1" 
+		image_file="data/enemies_gfx/player_hat2.xml" 
+		next_rect_animation="" 
+		offset_x="6" 
+		offset_y="14" 
+		rect_animation="walk" 
+		z_index="0.58"
+		_enabled="0"
+	></SpriteComponent>
+	
+	<SpriteComponent 
+		_tags="character,player_hat2_shadow"
+		alpha="1" 
+		image_file="data/enemies_gfx/player_hat2_shadow.xml" 
+		next_rect_animation="" 
+		offset_x="6" 
+		offset_y="14" 
+		rect_animation="walk" 
+		z_index="0.58"
+		_enabled="0"
+	></SpriteComponent>
 
 	<LuaComponent
 		script_source_file="data/scripts/magic/amulet.lua"
diff --git a/entities/projectiles/deck/luminous_drill.xml b/entities/projectiles/deck/luminous_drill.xml
index 2be1452..f4ef716 100644
--- a/entities/projectiles/deck/luminous_drill.xml
+++ b/entities/projectiles/deck/luminous_drill.xml
@@ -27,6 +27,7 @@
     ragdoll_force_multiplier="0.01"
     hit_particle_force_multiplier="0.25"
 	ground_penetration_coeff="4"
+	ground_penetration_max_durability_to_destroy="14"
     >
   </ProjectileComponent>
   
diff --git a/entities/projectiles/deck/pipe_bomb.xml b/entities/projectiles/deck/pipe_bomb.xml
index 36e646e..0ef71ed 100644
--- a/entities/projectiles/deck/pipe_bomb.xml
+++ b/entities/projectiles/deck/pipe_bomb.xml
@@ -41,6 +41,7 @@
       camera_shake="20" 
       explosion_radius="30"
       explosion_sprite="data/particles/explosion_032_pink.xml"
+	  load_this_entity="data/entities/misc/explosion_was_here.xml"
       explosion_sprite_lifetime="0" 
       create_cell_probability="3"
       explosion_sprite_additive="1"
diff --git a/entities/projectiles/deck/regeneration_aura.xml b/entities/projectiles/deck/regeneration_aura.xml
index f83151e..c17b34a 100644
--- a/entities/projectiles/deck/regeneration_aura.xml
+++ b/entities/projectiles/deck/regeneration_aura.xml
@@ -67,6 +67,9 @@
 			damage_game_effect_entities="data/entities/misc/effect_regeneration.xml,"
 			friendly_fire="1"
 			collide_with_shooter_frames="0" >
+			<damage_by_type 
+				healing="-0.05" 
+			>
 			<config_explosion
 				explosion_sprite="data/particles/blast_out_regeneration.xml" >
 			</config_explosion>
diff --git a/entities/projectiles/deck/regeneration_field.xml b/entities/projectiles/deck/regeneration_field.xml
index beee412..9096179 100644
--- a/entities/projectiles/deck/regeneration_field.xml
+++ b/entities/projectiles/deck/regeneration_field.xml
@@ -65,6 +65,9 @@
 			damage_game_effect_entities="data/entities/misc/effect_regeneration.xml,"
 			friendly_fire="1"
 			collide_with_shooter_frames="0" >
+			<damage_by_type 
+				healing="-0.05" 
+			>
 			<config_explosion
 				explosion_sprite="data/particles/blast_out_regeneration.xml" >
 			</config_explosion>
diff --git a/entities/projectiles/deck/regeneration_field_long.xml b/entities/projectiles/deck/regeneration_field_long.xml
index 92cbfaf..1c49f04 100644
--- a/entities/projectiles/deck/regeneration_field_long.xml
+++ b/entities/projectiles/deck/regeneration_field_long.xml
@@ -65,6 +65,9 @@
 			damage_game_effect_entities="data/entities/misc/effect_regeneration.xml,"
 			friendly_fire="1"
 			collide_with_shooter_frames="0" >
+			<damage_by_type 
+				healing="-0.05" 
+			>
 			<config_explosion
 				explosion_sprite="data/particles/blast_out_regeneration.xml" >
 			</config_explosion>
diff --git a/entities/projectiles/deck/rock.xml b/entities/projectiles/deck/rock.xml
index 12e19a3..38f1a54 100644
--- a/entities/projectiles/deck/rock.xml
+++ b/entities/projectiles/deck/rock.xml
@@ -1,4 +1,4 @@
-<Entity tags="hittable,teleportable_NOT,mortal,item_physics" >
+<Entity tags="hittable,teleportable_NOT,mortal,item_physics,projectile" >
 
   <!-- physical presence -->
   
@@ -38,8 +38,10 @@
   ></ProjectileComponent>
 
   <VelocityComponent
-    _tags="enabled_in_world"
-  ></VelocityComponent>
+	_tags="enabled_in_world"
+    affect_physics_bodies="1"
+	>
+  </VelocityComponent>
 
   <!-- item -->
 
diff --git a/entities/projectiles/deck/sea_lava.xml b/entities/projectiles/deck/sea_lava.xml
index 48e329b..045dcc8 100644
--- a/entities/projectiles/deck/sea_lava.xml
+++ b/entities/projectiles/deck/sea_lava.xml
@@ -1,4 +1,4 @@
-<Entity name="$projectile_default" tags="projectile_player" >
+<Entity name="$projectile_default" tags="projectile_player,sea_of_lava" >
 
 	<MaterialSeaSpawnerComponent
 	    size.x="300"
diff --git a/entities/projectiles/deck/tntbox.xml b/entities/projectiles/deck/tntbox.xml
index 32ed405..cf49e3c 100644
--- a/entities/projectiles/deck/tntbox.xml
+++ b/entities/projectiles/deck/tntbox.xml
@@ -1,4 +1,4 @@
-<Entity tags="hittable,teleportable_NOT,mortal,item_physics" >
+<Entity tags="hittable,teleportable_NOT,mortal,item_physics,projectile" >
 
   <!-- physical presence -->
   
@@ -50,10 +50,39 @@
       >
     </config_explosion>
   </ProjectileComponent>
+  
+  <ExplosionComponent
+	trigger="ON_DEATH"
+	>
+	<config_explosion
+      never_cache="0"
+      damage="5"
+      camera_shake="10" 
+      explosion_radius="40" 
+      explosion_sprite="data/particles/explosion_032.xml"
+	  load_this_entity="data/entities/particles/particle_explosion/main_gunpowder_tiny.xml"
+      explosion_sprite_lifetime="0" 
+      create_cell_probability="80" 
+      hole_destroy_liquid="1"
+	  ray_energy="350000"
+      hole_enabled="1"
+      particle_effect="1" 
+      damage_mortals="1" 
+      physics_throw_enabled="1"
+      shake_vegetation="0" 
+      sparks_enabled="1" 
+      stains_enabled="0" 
+      >
+    </config_explosion>
+	</ExplosionComponent>
+
+  <PhysicsThrowableComponent
+    throw_force_coeff="1" >
+  </PhysicsThrowableComponent>
 
   <VelocityComponent
-    _tags="enabled_in_world"
-  ></VelocityComponent>
+    affect_physics_bodies="1">
+  </VelocityComponent>
 
   <!-- item -->
 
diff --git a/entities/projectiles/deck/tntbox_big.xml b/entities/projectiles/deck/tntbox_big.xml
index dae261c..3981c97 100644
--- a/entities/projectiles/deck/tntbox_big.xml
+++ b/entities/projectiles/deck/tntbox_big.xml
@@ -1,4 +1,4 @@
-<Entity tags="hittable,teleportable_NOT,mortal,item_physics" >
+<Entity tags="hittable,teleportable_NOT,mortal,item_physics,projectile" >
 
   <!-- physical presence -->
   
@@ -51,9 +51,13 @@
     </config_explosion>
   </ProjectileComponent>
 
+  <PhysicsThrowableComponent
+    throw_force_coeff="1" >
+  </PhysicsThrowableComponent>
+
   <VelocityComponent
-    _tags="enabled_in_world"
-  ></VelocityComponent>
+    affect_physics_bodies="1">
+  </VelocityComponent>
 
   <!-- item -->
 
@@ -124,4 +128,29 @@
     file="data/audio/Desktop/projectiles.bank"
     event_root="player_projectiles/throwable">
   </AudioComponent>
+  
+  <ExplosionComponent
+	trigger="ON_DEATH"
+	>
+	<config_explosion
+      never_cache="0"
+      damage="8"
+      camera_shake="15" 
+      explosion_radius="60" 
+      explosion_sprite="data/particles/explosion_040_poof.xml"
+	  load_this_entity="data/entities/particles/particle_explosion/main_gunpowder_medium.xml" 
+      explosion_sprite_lifetime="0" 
+      create_cell_probability="80" 
+      hole_destroy_liquid="1"
+	  ray_energy="650000"
+      hole_enabled="1" 
+      particle_effect="1" 
+      damage_mortals="1" 
+      physics_throw_enabled="1"
+      shake_vegetation="0" 
+      sparks_enabled="1" 
+      stains_enabled="0" 
+      >
+    </config_explosion>
+	</ExplosionComponent>
 </Entity>
diff --git a/entities/projectiles/fungus_big_explosion.xml b/entities/projectiles/fungus_big_explosion.xml
index 7410c45..a60694b 100644
--- a/entities/projectiles/fungus_big_explosion.xml
+++ b/entities/projectiles/fungus_big_explosion.xml
@@ -47,7 +47,8 @@
       stains_image="data/temp/explosion_stain.png" 
 	  ray_energy="6000000"
 	  max_durability_to_destroy="12"
-    audio_event_name="explosions/slime">
+      audio_event_name="explosions/slime"
+	  >
     </config_explosion>
   </ProjectileComponent>
   
diff --git a/entities/projectiles/fungus_explosion.xml b/entities/projectiles/fungus_explosion.xml
index b69ae73..53b5d11 100644
--- a/entities/projectiles/fungus_explosion.xml
+++ b/entities/projectiles/fungus_explosion.xml
@@ -46,7 +46,8 @@
       stains_enabled="1" 
       stains_image="data/temp/explosion_stain.png" 
 	  ray_energy="60000"
-    audio_enabled="0">
+      audio_event_name="explosions/slime"
+	  >
     </config_explosion>
   </ProjectileComponent>
   
diff --git a/entities/props/physics_fungus_acid.xml b/entities/props/physics_fungus_acid.xml
new file mode 100644
index 0000000..56cb53e
--- /dev/null
+++ b/entities/props/physics_fungus_acid.xml
@@ -0,0 +1,258 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="40"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="2"
+		image_file="data/props_gfx/physics_fungus_acid_cap_01.png"
+		material="fungus_loose_green" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="5"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="11"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="17"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="23"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="29"
+		image_file="data/props_gfx/physics_fungus_acid_foot.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="8"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="14"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="20"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="26"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="32"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="41"
+		body1_id="105"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="acid" count="900"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.6"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_green"
+		blood_material="slime_green"
+		blood_spray_material="acid"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_green_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_green_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="30" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_green.xml"	  
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1" 
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="acid"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<LightComponent
+		radius="80"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-25">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_acid_big.xml b/entities/props/physics_fungus_acid_big.xml
new file mode 100644
index 0000000..0b77e68
--- /dev/null
+++ b/entities/props/physics_fungus_acid_big.xml
@@ -0,0 +1,306 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="52"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="0"
+		image_file="data/props_gfx/physics_fungus_acid_cap_03.png"
+		material="fungus_loose_green" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="5"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="11"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="17"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="23"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="29"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="106"
+		offset_x="-3"
+		offset_y="35"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="107"
+		offset_x="-3"
+		offset_y="41"
+		image_file="data/props_gfx/physics_fungus_acid_foot.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="6"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="7"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="8"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="14"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="20"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="26"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="32"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="6"
+		offset_x="0"
+		offset_y="38"
+		body1_id="105"
+		body2_id="106"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="7"
+		offset_x="0"
+		offset_y="44"
+		body1_id="106"
+		body2_id="107"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="53"
+		body1_id="107"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="acid" count="1200"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.6"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_green"
+		blood_material="slime_green"
+		blood_spray_material="acid"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_green_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_green_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="40" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_green.xml"	 
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1" 
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="acid"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+
+  	<LightComponent
+		radius="120"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-35">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_acid_huge.xml b/entities/props/physics_fungus_acid_huge.xml
new file mode 100644
index 0000000..08fcef5
--- /dev/null
+++ b/entities/props/physics_fungus_acid_huge.xml
@@ -0,0 +1,379 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="73"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="0"
+		image_file="data/props_gfx/physics_fungus_acid_cap_04.png"
+		material="fungus_loose_green" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="8"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="14"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="20"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="26"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="31"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="106"
+		offset_x="-3"
+		offset_y="38"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="107"
+		offset_x="-3"
+		offset_y="44"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="108"
+		offset_x="-3"
+		offset_y="50"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="109"
+		offset_x="-3"
+		offset_y="56"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="110"
+		offset_x="-4"
+		offset_y="62"
+		image_file="data/props_gfx/physics_fungus_acid_foot_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="6"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="7"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="8"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="9"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="10"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="11"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="17"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="23"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="29"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="35"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="6"
+		offset_x="0"
+		offset_y="41"
+		body1_id="105"
+		body2_id="106"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="7"
+		offset_x="0"
+		offset_y="47"
+		body1_id="106"
+		body2_id="107"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="8"
+		offset_x="0"
+		offset_y="53"
+		body1_id="107"
+		body2_id="108"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="9"
+		offset_x="0"
+		offset_y="59"
+		body1_id="108"
+		body2_id="109"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="10"
+		offset_x="0"
+		offset_y="65"
+		body1_id="109"
+		body2_id="110"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="74"
+		body1_id="110"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="acid" count="1200"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.8"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_green"
+		blood_material="slime_green"
+		blood_spray_material="acid"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_green_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_green_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="60" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_green.xml"	 
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1"
+			damage="2"
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="acid"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+
+  	<LightComponent
+		radius="120"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-60">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_acid_hugeish.xml b/entities/props/physics_fungus_acid_hugeish.xml
new file mode 100644
index 0000000..d5f67c3
--- /dev/null
+++ b/entities/props/physics_fungus_acid_hugeish.xml
@@ -0,0 +1,283 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="48"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="0"
+		image_file="data/props_gfx/physics_fungus_acid_cap_04.png"
+		material="fungus_loose_green" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="7"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="13"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="19"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="25"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="31"
+		image_file="data/props_gfx/physics_fungus_acid_stalk_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="106"
+		offset_x="-4"
+		offset_y="37"
+		image_file="data/props_gfx/physics_fungus_acid_foot_thick.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="6"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="10"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="16"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="22"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="28"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="34"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="6"
+		offset_x="0"
+		offset_y="40"
+		body1_id="105"
+		body2_id="106"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="49"
+		body1_id="106"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="acid" count="1200"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.8"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_green"
+		blood_material="slime_green"
+		blood_spray_material="acid"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_green_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_green_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="55" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_green.xml"	 
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1"
+			damage="2"
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="acid"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+
+  	<LightComponent
+		radius="120"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-45">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_acid_small.xml b/entities/props/physics_fungus_acid_small.xml
new file mode 100644
index 0000000..c78729a
--- /dev/null
+++ b/entities/props/physics_fungus_acid_small.xml
@@ -0,0 +1,236 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.3" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="28"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="2"
+		image_file="data/props_gfx/physics_fungus_acid_cap_02.png"
+		material="fungus_loose_green" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="5"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="11"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="17"
+		image_file="data/props_gfx/physics_fungus_acid_stalk.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="23"
+		image_file="data/props_gfx/physics_fungus_acid_foot.png"
+		material="fungus_loose_green"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="9"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="9"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="9"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="0"
+		motor_max_torque="9"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="8"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="14"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="20"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+		<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="26"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="35"
+		body1_id="104"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="acid" count="500"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.6"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_green"
+		blood_material="slime_green"
+		blood_spray_material="acid"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_green_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_green_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="20" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_green.xml"	  
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1" 
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="acid"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<LightComponent
+		radius="50"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-8">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_huge.xml b/entities/props/physics_fungus_huge.xml
new file mode 100644
index 0000000..be9c499
--- /dev/null
+++ b/entities/props/physics_fungus_huge.xml
@@ -0,0 +1,379 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="70"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="0"
+		image_file="data/props_gfx/physics_fungus_cap_04.png"
+		material="fungus_loose" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="5"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="11"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="17"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="23"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="29"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="106"
+		offset_x="-3"
+		offset_y="35"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="107"
+		offset_x="-3"
+		offset_y="41"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="108"
+		offset_x="-3"
+		offset_y="47"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="109"
+		offset_x="-3"
+		offset_y="53"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="110"
+		offset_x="-4"
+		offset_y="59"
+		image_file="data/props_gfx/physics_fungus_foot_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="6"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="7"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="8"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="9"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="10"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="8"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="14"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="20"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="26"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="32"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="6"
+		offset_x="0"
+		offset_y="38"
+		body1_id="105"
+		body2_id="106"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="7"
+		offset_x="0"
+		offset_y="44"
+		body1_id="106"
+		body2_id="107"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="8"
+		offset_x="0"
+		offset_y="50"
+		body1_id="107"
+		body2_id="108"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="9"
+		offset_x="0"
+		offset_y="56"
+		body1_id="108"
+		body2_id="109"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="10"
+		offset_x="0"
+		offset_y="62"
+		body1_id="109"
+		body2_id="110"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="71"
+		body1_id="110"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="blood_fungi" count="1200"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.8"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_trippy"
+		blood_material="blood_fungi"
+		blood_spray_material="blood_fungi"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_purple_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_purple_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="60" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_pink.xml"	 
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1"
+			damage="5.5"
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="plasma_fading_pink"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+
+  	<LightComponent
+		radius="120"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-60">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_hugeish.xml b/entities/props/physics_fungus_hugeish.xml
new file mode 100644
index 0000000..96f51d3
--- /dev/null
+++ b/entities/props/physics_fungus_hugeish.xml
@@ -0,0 +1,283 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="48"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="0"
+		image_file="data/props_gfx/physics_fungus_cap_04.png"
+		material="fungus_loose" >
+	</PhysicsImageShapeComponent>
+
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="7"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="13"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="103"
+		offset_x="-3"
+		offset_y="19"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="104"
+		offset_x="-3"
+		offset_y="25"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="105"
+		offset_x="-3"
+		offset_y="31"
+		image_file="data/props_gfx/physics_fungus_stalk_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="106"
+		offset_x="-4"
+		offset_y="37"
+		image_file="data/props_gfx/physics_fungus_foot_thick.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="6"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="10"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="16"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="3"
+		offset_x="0"
+		offset_y="22"
+		body1_id="102"
+		body2_id="103"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="4"
+		offset_x="0"
+		offset_y="28"
+		body1_id="103"
+		body2_id="104"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="5"
+		offset_x="0"
+		offset_y="34"
+		body1_id="104"
+		body2_id="105"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="6"
+		offset_x="0"
+		offset_y="40"
+		body1_id="105"
+		body2_id="106"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="49"
+		body1_id="110"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="blood_fungi" count="1200"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.8"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_trippy"
+		blood_material="blood_fungi"
+		blood_spray_material="blood_fungi"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_purple_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_purple_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="40" 
+			explosion_radius="60" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity="data/entities/particles/particle_explosion/main_pink.xml"	 
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1"
+			damage="6"
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="plasma_fading_pink"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="6000000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+
+  	<LightComponent
+		radius="120"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-45">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/props/physics_fungus_trap.xml b/entities/props/physics_fungus_trap.xml
new file mode 100644
index 0000000..503aceb
--- /dev/null
+++ b/entities/props/physics_fungus_trap.xml
@@ -0,0 +1,202 @@
+<Entity tags="hittable,teleportable_NOT,prop,prop_physics,mortal,fungitrap_02">
+	<PhysicsBody2Component 
+		is_static="0"
+		allow_sleep="1"
+		angular_damping="0.01"
+		linear_damping="0.5" 
+		fixed_rotation="0"
+		is_bullet="0"
+		init_offset_y="15"
+		>
+	</PhysicsBody2Component>
+
+	<PhysicsImageShapeComponent 
+		body_id="100"
+		is_root="1"
+		centered="1"
+		offset_y="2"
+		image_file="data/props_gfx/physics_fungus_trap_cap_02.png"
+		material="fungus_loose" >
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="101"
+		offset_x="-3"
+		offset_y="3"
+		image_file="data/props_gfx/physics_fungus_trap_stalk.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+	<PhysicsImageShapeComponent
+		body_id="102"
+		offset_x="-3"
+		offset_y="6"
+		image_file="data/props_gfx/physics_fungus_trap_foot.png"
+		material="fungus_loose"
+		>
+	</PhysicsImageShapeComponent>
+
+	<!-- joints -->
+	<PhysicsJoint2MutatorComponent
+		joint_id="1"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="2"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="3"
+		motor_speed="0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="4"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+	<PhysicsJoint2MutatorComponent
+		joint_id="5"
+		motor_speed="-0"
+		motor_max_torque="10"
+	></PhysicsJoint2MutatorComponent>
+
+	<!-- stalk joints -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="1"
+		offset_x="0"
+		offset_y="6"
+		body1_id="100"
+		body2_id="101"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT"
+		joint_id="2"
+		offset_x="0"
+		offset_y="10"
+		body1_id="101"
+		body2_id="102"
+		break_force="10"
+		break_distance="5"
+		>
+	</PhysicsJoint2Component>
+
+	<!-- joint to ground -->
+	<PhysicsJoint2Component
+		type="REVOLUTE_JOINT_ATTACH_TO_NEARBY_SURFACE"
+		offset_x="0"
+		offset_y="16"
+		body1_id="102"
+		break_force="35"
+		break_distance="8"
+		ray_x="0"
+		ray_y="30"
+		>
+	</PhysicsJoint2Component>
+
+	<MaterialInventoryComponent 
+		_enabled="1" 
+		drop_as_item="0" 
+		on_death_spill="1"
+		leak_on_damage_percent="1"
+		leak_pressure_min="0.5"
+		leak_pressure_max="1.0"
+		b2_force_on_leak="0.25"
+		kill_when_empty="1"
+		>
+		<count_per_material_type>
+			<Material material="fungus_powder_bad" count="500"  />
+		</count_per_material_type>
+	</MaterialInventoryComponent>
+
+	<DamageModelComponent 
+		hp="0.4"
+		air_needed="0"
+		ragdoll_filenames_file="" 
+		fire_probability_of_ignition="100" 
+		ragdoll_material="fungus_loose_trippy"
+		blood_material="slime_yellow"
+		blood_spray_material="fungus_powder_bad"
+		blood_sprite_directional="data/particles/bloodsplatters/bloodsplatter_directional_yellow_$[1-3].xml"
+		blood_sprite_large="data/particles/bloodsplatters/bloodsplatter_yellow_$[1-3].xml"
+		minimum_knockback_force="100000"
+		ui_report_damage="0"
+		>
+		<damage_multipliers
+			fire="40.0" 
+			>
+		</damage_multipliers>
+	</DamageModelComponent>
+
+	<ExplodeOnDamageComponent
+		explode_on_death_percent="1"
+		explode_on_damage_percent="0.0"
+		physics_body_modified_death_probability="0.9" 
+		physics_body_destruction_required="0.25"
+		>
+		<config_explosion
+			never_cache="0" 
+			camera_shake="10" 
+			explosion_radius="20" 
+			explosion_sprite="data/particles/explosion_025_fuel.xml"
+			load_this_entity=""	  
+			explosion_sprite_lifetime="0" 
+			create_cell_probability="1" 
+			create_cell_material="fire"
+			hole_destroy_liquid="0" 
+			hole_enabled="1"
+			hole_image="data/temp/explosion_hole.png" 
+			particle_effect="1" 
+			physics_explosion_power.min="0.8" 
+			physics_explosion_power.max="1.8" 
+			physics_throw_enabled="1" 
+			shake_vegetation="1" 
+			sparks_count_max="50" 
+			sparks_count_min="35" 
+			sparks_enabled="1"
+			spark_material="fungus_powder_bad"
+			material_sparks_enabled="1"
+			material_sparks_real="1"
+			stains_enabled="1" 
+			stains_image="data/temp/explosion_stain.png" 
+			ray_energy="2000"
+			max_durability_to_destroy="12"
+			audio_enabled="1"
+			audio_event_name="explosions/slime">
+		</config_explosion>
+	</ExplodeOnDamageComponent>
+
+	<LightComponent
+		radius="80"
+		r="32"
+		g="255"
+		b="250">
+	</LightComponent>
+
+	<PhysicsBodyCollisionDamageComponent 
+    speed_threshold="75.0"
+  	></PhysicsBodyCollisionDamageComponent>
+	
+	<LuaComponent
+		script_source_file="data/scripts/props/physics_fungus.lua"
+		execute_every_n_frame="1"
+		>
+	</LuaComponent>
+
+	<VariableStorageComponent
+		name="lift"
+		value_int="-25">
+	</VariableStorageComponent>
+
+	<AudioLoopComponent
+		_tags="sound_spray"
+		file="data/audio/Desktop/materials.bank"
+		event_name="materials/spray_fungus" 
+		volume_autofade_speed="0.25" >
+	</AudioLoopComponent>
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_blue.xml b/entities/verlet_chains/vines/verlet_vine_blue.xml
new file mode 100644
index 0000000..aa77181
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_blue.xml
@@ -0,0 +1,40 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="15"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		verlet_min_joint_distance="28"
+		type="VERLET_ROPE_TWO_JOINTS" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_dark_blue.xml b/entities/verlet_chains/vines/verlet_vine_dark_blue.xml
new file mode 100644
index 0000000..9af7e0c
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_dark_blue.xml
@@ -0,0 +1,40 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="15"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		verlet_min_joint_distance="28"
+		type="VERLET_ROPE_TWO_JOINTS" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_dark_long_blue.xml b/entities/verlet_chains/vines/verlet_vine_dark_long_blue.xml
new file mode 100644
index 0000000..618a21b
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_dark_long_blue.xml
@@ -0,0 +1,43 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="17"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+    	wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="64"
+		verlet_min_joint_distance="40"
+		type="VERLET_ROPE_TWO_JOINTS" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_dark_short_blue.xml b/entities/verlet_chains/vines/verlet_vine_dark_short_blue.xml
new file mode 100644
index 0000000..a907644
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_dark_short_blue.xml
@@ -0,0 +1,34 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="8"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="28"
+		verlet_min_joint_distance="14"
+		type="VERLET_ROPE_ONE_JOINT" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_dark_shorter_blue.xml b/entities/verlet_chains/vines/verlet_vine_dark_shorter_blue.xml
new file mode 100644
index 0000000..e4c565d
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_dark_shorter_blue.xml
@@ -0,0 +1,32 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="6"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="20"
+		verlet_min_joint_distance="10"
+		type="VERLET_ROPE_ONE_JOINT" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_long_blue.xml b/entities/verlet_chains/vines/verlet_vine_long_blue.xml
new file mode 100644
index 0000000..65e58e0
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_long_blue.xml
@@ -0,0 +1,43 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="17"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+    	wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="64"
+		verlet_min_joint_distance="40"
+		type="VERLET_ROPE_TWO_JOINTS" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_short_blue.xml b/entities/verlet_chains/vines/verlet_vine_short_blue.xml
new file mode 100644
index 0000000..4f2f2f9
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_short_blue.xml
@@ -0,0 +1,34 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="8"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="28"
+		verlet_min_joint_distance="14"
+		type="VERLET_ROPE_ONE_JOINT" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/verlet_vine_shorter_blue.xml b/entities/verlet_chains/vines/verlet_vine_shorter_blue.xml
new file mode 100644
index 0000000..1bfb420
--- /dev/null
+++ b/entities/verlet_chains/vines/verlet_vine_shorter_blue.xml
@@ -0,0 +1,32 @@
+<Entity >
+   
+    <VerletPhysicsComponent
+    	num_points="6"
+    	stiffness="1.0"
+		velocity_dampening="0.9"
+    	resting_distance="4" 
+    	pixelate_sprite_transforms="1"
+        follow_entity_transform="0"
+    	simulate_wind="1"
+        wind_change_speed="0.25"
+    	simulate_gravity="1" >
+    </VerletPhysicsComponent>
+
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml" />
+	<Base file="data/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml" />
+	
+	<MoveToSurfaceOnCreateComponent
+		lookup_radius="20"
+		verlet_min_joint_distance="10"
+		type="VERLET_ROPE_ONE_JOINT" >
+	</MoveToSurfaceOnCreateComponent>
+
+	<AudioComponent
+		file="data/audio/Desktop/materials.bank"
+		event_root="collision/vine" >
+	</AudioComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts/vine_b.png b/entities/verlet_chains/vines/vine_parts/vine_b.png
index 16ec97a..6d9fbb2 100644
Binary files a/entities/verlet_chains/vines/vine_parts/vine_b.png and b/entities/verlet_chains/vines/vine_parts/vine_b.png differ
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a.png b/entities/verlet_chains/vines/vine_parts_blue/vine_a.png
new file mode 100644
index 0000000..7baf199
Binary files /dev/null and b/entities/verlet_chains/vines/vine_parts_blue/vine_a.png differ
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_1.xml
new file mode 100644
index 0000000..fdf0df2
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_1.xml
@@ -0,0 +1,19 @@
+<Sprite
+filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+offset_x="0"
+offset_y="0"
+default_animation="stand" >
+
+<!-- animation -->
+	<RectAnimation
+		name="stand"
+		pos_x="0"
+		pos_y="0"
+		frame_count="1"
+		frame_width="4"
+		frame_height="3"
+		frame_wait="1"
+		frames_per_row="8"
+		loop="1"   >
+	</RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_2.xml
new file mode 100644
index 0000000..022b178
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_2.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="4"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_3.xml
new file mode 100644
index 0000000..0e78d68
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_3.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="8"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_4.xml
new file mode 100644
index 0000000..888711d
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_4.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="12"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_5.xml
new file mode 100644
index 0000000..fbc8203
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_5.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="16"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_6.xml
new file mode 100644
index 0000000..7084b4e
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_6.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="20"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_7.xml
new file mode 100644
index 0000000..3d659a8
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_7.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="24"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_a_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_a_8.xml
new file mode 100644
index 0000000..e469c07
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_a_8.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="28"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b.png b/entities/verlet_chains/vines/vine_parts_blue/vine_b.png
new file mode 100644
index 0000000..6c76d80
Binary files /dev/null and b/entities/verlet_chains/vines/vine_parts_blue/vine_b.png differ
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_1.xml
new file mode 100644
index 0000000..1fc1ddd
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_1.xml
@@ -0,0 +1,19 @@
+<Sprite
+filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+offset_x="0"
+offset_y="0"
+default_animation="stand" >
+
+<!-- animation -->
+	<RectAnimation
+		name="stand"
+		pos_x="0"
+		pos_y="0"
+		frame_count="1"
+		frame_width="4"
+		frame_height="3"
+		frame_wait="1"
+		frames_per_row="8"
+		loop="1"   >
+	</RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_2.xml
new file mode 100644
index 0000000..6e139db
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_2.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="4"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_3.xml
new file mode 100644
index 0000000..b856bc5
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_3.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="8"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_4.xml
new file mode 100644
index 0000000..39b0d63
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_4.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="12"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_5.xml
new file mode 100644
index 0000000..479f08c
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_5.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="16"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_6.xml
new file mode 100644
index 0000000..804c052
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_6.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="20"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_7.xml
new file mode 100644
index 0000000..31b602c
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_7.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="24"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_b_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_b_8.xml
new file mode 100644
index 0000000..a67eae2
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_b_8.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="28"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png
new file mode 100644
index 0000000..c739366
Binary files /dev/null and b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png differ
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_1.xml
new file mode 100644
index 0000000..d69d0cb
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_1.xml
@@ -0,0 +1,19 @@
+<Sprite
+filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+offset_x="0"
+offset_y="0"
+default_animation="stand" >
+
+<!-- animation -->
+	<RectAnimation
+		name="stand"
+		pos_x="0"
+		pos_y="0"
+		frame_count="1"
+		frame_width="4"
+		frame_height="3"
+		frame_wait="1"
+		frames_per_row="8"
+		loop="1"   >
+	</RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_2.xml
new file mode 100644
index 0000000..6284b2f
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_2.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="4"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_3.xml
new file mode 100644
index 0000000..f74e139
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_3.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="8"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_4.xml
new file mode 100644
index 0000000..083920e
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_4.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="12"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_5.xml
new file mode 100644
index 0000000..bc90a8d
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_5.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="16"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_6.xml
new file mode 100644
index 0000000..7e70b0a
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_6.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="20"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_7.xml
new file mode 100644
index 0000000..d066010
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_7.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="24"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_8.xml
new file mode 100644
index 0000000..512db7a
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_8.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="28"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png
new file mode 100644
index 0000000..e152c62
Binary files /dev/null and b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png differ
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_1.xml
new file mode 100644
index 0000000..cf8fd1e
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_1.xml
@@ -0,0 +1,19 @@
+<Sprite
+filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+offset_x="0"
+offset_y="0"
+default_animation="stand" >
+
+<!-- animation -->
+	<RectAnimation
+		name="stand"
+		pos_x="0"
+		pos_y="0"
+		frame_count="1"
+		frame_width="4"
+		frame_height="3"
+		frame_wait="1"
+		frames_per_row="8"
+		loop="1"   >
+	</RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_2.xml
new file mode 100644
index 0000000..26eeb0d
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_2.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="4"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_3.xml
new file mode 100644
index 0000000..176f74f
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_3.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="8"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_4.xml
new file mode 100644
index 0000000..527cbac
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_4.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="12"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_5.xml
new file mode 100644
index 0000000..b3576a7
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_5.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="16"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_6.xml
new file mode 100644
index 0000000..22ad603
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_6.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="20"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_7.xml
new file mode 100644
index 0000000..56393ba
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_7.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="24"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_8.xml
new file mode 100644
index 0000000..a67eae2
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_8.xml
@@ -0,0 +1,19 @@
+<Sprite
+ filename="data/entities/verlet_chains/vines/vine_parts_blue/vine_b.png"
+ offset_x="0"
+ offset_y="0"
+ default_animation="stand" >
+
+ <!-- animation -->
+ <RectAnimation
+  name="stand"
+  pos_x="28"
+  pos_y="0"
+  frame_count="1"
+  frame_width="4"
+  frame_height="3"
+  frame_wait="1"
+  frames_per_row="8"
+  loop="1"   >
+ </RectAnimation>
+</Sprite>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_1.xml
new file mode 100644
index 0000000..cbdcf46
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_1.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_1.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_2.xml
new file mode 100644
index 0000000..e2d5995
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_2.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_2.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_3.xml
new file mode 100644
index 0000000..f24dadd
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_3.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_3.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_4.xml
new file mode 100644
index 0000000..42fdc7c
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_4.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_4.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_5.xml
new file mode 100644
index 0000000..8cb5117
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_5.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_5.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_6.xml
new file mode 100644
index 0000000..33bff6d
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_6.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_6.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_7.xml
new file mode 100644
index 0000000..041ddbf
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_7.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_a_7.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_8.xml
new file mode 100644
index 0000000..0d21adb
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_a_8.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_8.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml
new file mode 100644
index 0000000..ceb4418
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_1.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_1.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml
new file mode 100644
index 0000000..f48e997
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_2.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_2.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml
new file mode 100644
index 0000000..a052d4c
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_3.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_3.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml
new file mode 100644
index 0000000..b0e0a46
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_4.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_4.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml
new file mode 100644
index 0000000..69b9ccb
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_5.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_5.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml
new file mode 100644
index 0000000..1ce781c
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_6.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_6.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml
new file mode 100644
index 0000000..93dd8fb
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_7.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_7.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml
new file mode 100644
index 0000000..0cb63df
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_dark_verlet_b_8.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_dark_b_8.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_1.xml
new file mode 100644
index 0000000..2447f3a
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_1.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_1.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_2.xml
new file mode 100644
index 0000000..db3f931
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_2.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_2.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_3.xml
new file mode 100644
index 0000000..32bbdd0
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_3.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_3.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_4.xml
new file mode 100644
index 0000000..f77d990
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_4.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_4.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_5.xml
new file mode 100644
index 0000000..cfd5949
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_5.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_5.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_6.xml
new file mode 100644
index 0000000..b55c3d6
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_6.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_6.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_7.xml
new file mode 100644
index 0000000..05aef26
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_7.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_7.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_8.xml
new file mode 100644
index 0000000..0d21adb
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_a_8.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_a_8.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml
new file mode 100644
index 0000000..fafafbf
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_1.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_1.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml
new file mode 100644
index 0000000..4a5b3bf
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_2.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_2.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml
new file mode 100644
index 0000000..f15d274
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_3.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_3.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml
new file mode 100644
index 0000000..91fefae
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_4.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_4.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml
new file mode 100644
index 0000000..ffa4c8d
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_5.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_5.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml
new file mode 100644
index 0000000..4ff9eb6
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_6.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_6.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml
new file mode 100644
index 0000000..b7429db
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_7.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_7.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml
new file mode 100644
index 0000000..5775cd0
--- /dev/null
+++ b/entities/verlet_chains/vines/vine_parts_blue/vine_verlet_b_8.xml
@@ -0,0 +1,11 @@
+<Entity >
+   
+  <SpriteComponent 
+    image_file="data/entities/verlet_chains/vines/vine_parts_blue/vine_b_8.xml" 
+    offset_x="0"
+    offset_y="1.5"
+    update_transform="0"
+    update_transform_rotation="0" >
+  </SpriteComponent>
+  
+</Entity>
\ No newline at end of file
diff --git a/generated/material_icons/rock_fungal.png b/generated/material_icons/rock_fungal.png
new file mode 100644
index 0000000..c20f5b1
Binary files /dev/null and b/generated/material_icons/rock_fungal.png differ
diff --git a/generated/material_icons/rock_static_fungal.png b/generated/material_icons/rock_static_fungal.png
new file mode 100644
index 0000000..c20f5b1
Binary files /dev/null and b/generated/material_icons/rock_static_fungal.png differ
diff --git a/generated/sprite_uv_maps/data.enemies_gfx.fungus_tiny_b.png b/generated/sprite_uv_maps/data.enemies_gfx.fungus_tiny_b.png
new file mode 100644
index 0000000..16a9cd6
Binary files /dev/null and b/generated/sprite_uv_maps/data.enemies_gfx.fungus_tiny_b.png differ
diff --git a/items_gfx/orbs/orb_small.xml b/items_gfx/orbs/orb_small.xml
index 81f44bf..a8912e0 100644
--- a/items_gfx/orbs/orb_small.xml
+++ b/items_gfx/orbs/orb_small.xml
@@ -1,7 +1,7 @@
 <Sprite 
 	filename="data/items_gfx/orbs/orb_small.png" 
 	offset_x="8" 
-	offset_y="16"
+	offset_y="8"
 	default_animation="default"
 	>
 	
diff --git a/materials.xml b/materials.xml
index 035e94f..52c4ede 100644
--- a/materials.xml
+++ b/materials.xml
@@ -1291,6 +1291,68 @@
     </Graphics>
   </CellDataChild>
   
+  <CellDataChild
+  	_parent="rock_static"
+  	_inherit_reactions="1"
+	tags="[static],[alchemy],[solid],[earth]"
+  	name="rock_static_fungal" 
+	ui_name="$mat_fungisoil"
+	wang_color="ff00a244"
+	hp="150000"
+	audio_physics_material_event="rock"
+	audio_physics_material_wall="rock"
+	audio_physics_material_solid="rock"
+	show_in_creative_mode="1"
+	>
+  	<Graphics
+		texture_file="data/materials_gfx/fun.png"
+		color="ff495978" >
+		<Edge>
+			<EdgeGraphics 
+				color="ff261f26" 
+				overwrite="0" 
+				percent="1" 
+				require_same_material="0" 
+				require_same_material_type="0" 
+				type="NORMAL_BASED" 
+				z="1" >
+				<Images>
+					<Image 
+						do_only_horizontal_stripe="1" 
+						do_only_vertical_stripe="0" 
+						filename="data/materials_gfx/edge_files/edge_earth_fun_hor.png" 
+						min_angle="45" 
+						max_angle="135" />
+					<Image 
+						do_only_horizontal_stripe="1" 
+						do_only_vertical_stripe="0" 
+						filename="data/materials_gfx/edge_files/edge_earth_fun_hor.png" 
+						min_angle="235" 
+						max_angle="315" />
+					<Image 
+						do_only_horizontal_stripe="0" 
+						do_only_vertical_stripe="1" 
+						filename="data/materials_gfx/edge_files/edge_earth_fun_ver.png" 
+						min_angle="135" 
+						max_angle="235" />
+					  <Image 
+						do_only_horizontal_stripe="0" 
+						do_only_vertical_stripe="1" 
+						filename="data/materials_gfx/edge_files/edge_earth_fun_ver.png" 
+						min_angle="315" 
+						max_angle="360" />
+					  <Image 
+						do_only_horizontal_stripe="0" 
+						do_only_vertical_stripe="1" 
+						filename="data/materials_gfx/edge_files/edge_earth_fun_ver.png" 
+						min_angle="0" 
+						max_angle="45" />
+				</Images>
+			</EdgeGraphics>
+		</Edge>
+    </Graphics>
+  </CellDataChild>
+  
   <CellDataChild
   	_parent="rock_static"
   	_inherit_reactions="1"
@@ -8268,6 +8330,33 @@
 		</Ingestion>
 	</StatusEffects>
   </CellDataChild>
+  
+  <CellDataChild
+  	_parent="slime"
+  	_inherit_reactions="1"
+  	name="slime_yellow" 
+	ui_name="$mat_slime_static"
+	wang_color="889cb32b" 
+	liquid_viscosity="0"
+	liquid_sticks_to_ceiling="100"
+	liquid_damping="0.9"
+	liquid_flow_speed="0.1"
+	status_effects="SLIMY"
+	audio_physics_material_event="slime"
+	audio_physics_material_wall="slime"
+	audio_physics_material_solid="slime"
+	show_in_creative_mode="1"
+	>
+  	<Graphics
+	texture_file="data/materials_gfx/yellowblood.png"
+	color="889cb32b" >
+    </Graphics>
+	<StatusEffects>
+		<Ingestion>
+			<StatusEffect type="FOOD_POISONING" amount="0.2" />
+		</Ingestion>
+	</StatusEffects>
+  </CellDataChild>
 
   <CellDataChild
   	_parent="slime_green"
@@ -9833,6 +9922,27 @@
 	</StatusEffects>
   </CellData>
   
+  <CellDataChild
+  	_parent="fungus_powder"
+	name="fungus_powder_bad"
+	ui_name="$mat_fungisoil"
+	wang_color="ffcacafe"
+	>
+    <Graphics
+	color="ffa10F24"
+        >
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
+  </CellDataChild>
+  
   <CellData
 	name="orb_powder"
 	ui_name="$mat_orb_powder"
@@ -11191,6 +11301,28 @@
 	</StatusEffects>
   </CellDataChild>
   
+  <CellDataChild
+  	_parent="wood_loose"
+  	_inherit_reactions="1"
+  	name="fungus_loose_green" 
+	ui_name="$mat_fungus_loose"
+	solid_restitution="0.4"
+	solid_on_collision_material="slime_green"
+	solid_on_collision_splash_power="1"
+	wang_color="ff64ab2c"
+	audio_physics_material_wall="organicbouncy"
+	audio_physics_material_solid="organicbouncy" >
+  	<Graphics
+	texture_file="data/materials_gfx/moss.png"
+	color="ff64ab2c" >
+    </Graphics>
+	<StatusEffects>
+		<Ingestion>
+			<StatusEffect type="FOOD_POISONING" amount="1" />
+		</Ingestion>
+	</StatusEffects>
+  </CellDataChild>
+  
   <CellDataChild
   	_parent="wood_loose"
   	_inherit_reactions="1"
@@ -12244,7 +12376,7 @@
   <CellDataChild
   	_parent="aluminium"
   	_inherit_reactions="1"
-	tags="[box2d],[solid],[sunbaby_ignore_list]"
+	tags="[box2d],[solid],[sunbaby_ignore_list],[matter_eater_ignore_list]"
   	name="poop_box2d_hard"
 	ui_name="$mat_rock_box2d_hard"
 	platform_type="1"
@@ -12523,7 +12655,7 @@
 	gfx_glow_color="0xFFFF0000"
 	wang_color="fffd2d7d"
 	show_in_creative_mode="0"
-	solid_gravity_scale="0.2"
+	solid_gravity_scale="0.5"
 	durability="15"
 	>
   	<Graphics
@@ -15011,5 +15143,12 @@
 		entity="data/entities/misc/fungus_powder.xml"
 		>
 	</Reaction>
+	
+	<Reaction probability="100"
+		input_cell1="fungus_powder_bad" input_cell2="air"
+		output_cell1="air" output_cell2="air"
+		entity="data/entities/misc/fungus_powder_bad.xml"
+		>
+	</Reaction>
 
 </Materials>
diff --git a/materials_gfx/edge_files/edge_earth_fun_hor.png b/materials_gfx/edge_files/edge_earth_fun_hor.png
new file mode 100644
index 0000000..9dbfd8b
Binary files /dev/null and b/materials_gfx/edge_files/edge_earth_fun_hor.png differ
diff --git a/materials_gfx/edge_files/edge_earth_fun_ver.png b/materials_gfx/edge_files/edge_earth_fun_ver.png
new file mode 100644
index 0000000..f25bf54
Binary files /dev/null and b/materials_gfx/edge_files/edge_earth_fun_ver.png differ
diff --git a/materials_gfx/edge_files/edge_rock_fun_1.png b/materials_gfx/edge_files/edge_rock_fun_1.png
new file mode 100644
index 0000000..67abfe5
Binary files /dev/null and b/materials_gfx/edge_files/edge_rock_fun_1.png differ
diff --git a/materials_gfx/fun.png b/materials_gfx/fun.png
new file mode 100644
index 0000000..948c6a3
Binary files /dev/null and b/materials_gfx/fun.png differ
diff --git a/props_gfx/physics_fungus_acid_cap_01.png b/props_gfx/physics_fungus_acid_cap_01.png
new file mode 100644
index 0000000..b945519
Binary files /dev/null and b/props_gfx/physics_fungus_acid_cap_01.png differ
diff --git a/props_gfx/physics_fungus_acid_cap_02.png b/props_gfx/physics_fungus_acid_cap_02.png
new file mode 100644
index 0000000..a3f3885
Binary files /dev/null and b/props_gfx/physics_fungus_acid_cap_02.png differ
diff --git a/props_gfx/physics_fungus_acid_cap_03.png b/props_gfx/physics_fungus_acid_cap_03.png
new file mode 100644
index 0000000..649722e
Binary files /dev/null and b/props_gfx/physics_fungus_acid_cap_03.png differ
diff --git a/props_gfx/physics_fungus_acid_cap_04.png b/props_gfx/physics_fungus_acid_cap_04.png
new file mode 100644
index 0000000..032abde
Binary files /dev/null and b/props_gfx/physics_fungus_acid_cap_04.png differ
diff --git a/props_gfx/physics_fungus_acid_cap_05.png b/props_gfx/physics_fungus_acid_cap_05.png
new file mode 100644
index 0000000..eed7a4d
Binary files /dev/null and b/props_gfx/physics_fungus_acid_cap_05.png differ
diff --git a/props_gfx/physics_fungus_acid_foot.png b/props_gfx/physics_fungus_acid_foot.png
new file mode 100644
index 0000000..7a8ea22
Binary files /dev/null and b/props_gfx/physics_fungus_acid_foot.png differ
diff --git a/props_gfx/physics_fungus_acid_foot_thick.png b/props_gfx/physics_fungus_acid_foot_thick.png
new file mode 100644
index 0000000..cad8e2b
Binary files /dev/null and b/props_gfx/physics_fungus_acid_foot_thick.png differ
diff --git a/props_gfx/physics_fungus_acid_stalk.png b/props_gfx/physics_fungus_acid_stalk.png
new file mode 100644
index 0000000..885aca6
Binary files /dev/null and b/props_gfx/physics_fungus_acid_stalk.png differ
diff --git a/props_gfx/physics_fungus_acid_stalk_thick.png b/props_gfx/physics_fungus_acid_stalk_thick.png
new file mode 100644
index 0000000..be68412
Binary files /dev/null and b/props_gfx/physics_fungus_acid_stalk_thick.png differ
diff --git a/props_gfx/physics_fungus_cap_04.png b/props_gfx/physics_fungus_cap_04.png
new file mode 100644
index 0000000..3d4ba53
Binary files /dev/null and b/props_gfx/physics_fungus_cap_04.png differ
diff --git a/props_gfx/physics_fungus_cap_05.png b/props_gfx/physics_fungus_cap_05.png
new file mode 100644
index 0000000..f32de39
Binary files /dev/null and b/props_gfx/physics_fungus_cap_05.png differ
diff --git a/props_gfx/physics_fungus_foot_thick.png b/props_gfx/physics_fungus_foot_thick.png
new file mode 100644
index 0000000..f34c4b3
Binary files /dev/null and b/props_gfx/physics_fungus_foot_thick.png differ
diff --git a/props_gfx/physics_fungus_stalk_thick.png b/props_gfx/physics_fungus_stalk_thick.png
new file mode 100644
index 0000000..25f9b35
Binary files /dev/null and b/props_gfx/physics_fungus_stalk_thick.png differ
diff --git a/props_gfx/physics_fungus_trap_cap_01.png b/props_gfx/physics_fungus_trap_cap_01.png
new file mode 100644
index 0000000..a8cfa88
Binary files /dev/null and b/props_gfx/physics_fungus_trap_cap_01.png differ
diff --git a/props_gfx/physics_fungus_trap_cap_02.png b/props_gfx/physics_fungus_trap_cap_02.png
new file mode 100644
index 0000000..c45c436
Binary files /dev/null and b/props_gfx/physics_fungus_trap_cap_02.png differ
diff --git a/props_gfx/physics_fungus_trap_foot.png b/props_gfx/physics_fungus_trap_foot.png
new file mode 100644
index 0000000..7a50a41
Binary files /dev/null and b/props_gfx/physics_fungus_trap_foot.png differ
diff --git a/props_gfx/physics_fungus_trap_stalk.png b/props_gfx/physics_fungus_trap_stalk.png
new file mode 100644
index 0000000..d9ebf27
Binary files /dev/null and b/props_gfx/physics_fungus_trap_stalk.png differ
diff --git a/scripts/animals/fungus_powder_bad.lua b/scripts/animals/fungus_powder_bad.lua
new file mode 100644
index 0000000..8155593
--- /dev/null
+++ b/scripts/animals/fungus_powder_bad.lua
@@ -0,0 +1,15 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id    = GetUpdatedEntityID()
+local x, y = EntityGetTransform( entity_id )
+
+SetRandomSeed( x, y )
+local rats = EntityGetWithTag( "fungus_tiny_bad" )
+
+if ( #rats < 20 ) then
+	if ( Random( 1, 30 ) == 5 ) then
+		local eid = EntityLoad( "data/entities/animals/fungus_tiny.xml", x, y )
+	end
+end
+
+EntityKill( entity_id )
\ No newline at end of file
diff --git a/scripts/animals/leader_damage.lua b/scripts/animals/leader_damage.lua
index 9f5fcd3..381476b 100644
--- a/scripts/animals/leader_damage.lua
+++ b/scripts/animals/leader_damage.lua
@@ -2,7 +2,7 @@ dofile_once("data/scripts/lib/utilities.lua")
 
 function damage_received( damage, desc, entity_who_caused, is_fatal )
 	local entity_id    = GetUpdatedEntityID()
-	local pos_x, pos_y = EntityGetTransform( entity_id )
+	local pos_x, pos_y = EntityGetFirstHitboxCenter( entity_id )
 	
 	SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )
 
@@ -27,10 +27,22 @@ function damage_received( damage, desc, entity_who_caused, is_fatal )
 	
 	while (nearest_interval > new_health) and (count < limit) and (nearest_interval >= 0) do
 		GameEntityPlaySound( entity_id, "duplicate" )
+
+		-- find a spawn spot
+		local x = Randomf(10,50) -- spawn distance
+		local y = 0
+		x,y = vec_rotate(x, 0, Randomf(math.pi * 2)) -- random direction
+		local did_hit, hit_x, hit_y = RaytracePlatforms(pos_x, pos_y, pos_x + x, pos_y + y)
+		local dist = get_distance(pos_x, pos_y, hit_x, hit_y)
+		if did_hit then dist = math.max(0, dist - 8) end -- avoid spawning too close by the platform
 		
-		pos_x = pos_x + Random(-4, 4)
-		pos_y = pos_y + Random(-4, 4)
-		local e = EntityLoad( "data/entities/animals/scavenger_grenade.xml", pos_x, pos_y )
+		x, y = vec_normalize(x, y)
+		x, y = vec_mult(x, y, dist)
+		x = x + pos_x
+		y = y + pos_y
+
+		EntityLoad( "data/entities/animals/scavenger_grenade.xml", x, y )
+		EntityLoad( "data/entities/particles/teleportation_target.xml", x, y )
 		
 		nearest_interval = nearest_interval - minion_interval
 		
diff --git a/scripts/biomes/fungiforest.lua b/scripts/biomes/fungiforest.lua
new file mode 100644
index 0000000..cd26d50
--- /dev/null
+++ b/scripts/biomes/fungiforest.lua
@@ -0,0 +1,375 @@
+-- default biome functions that get called if we can't find a a specific biome that works for us
+-- The level of action ids that are spawned from the chests
+CHEST_LEVEL = 2
+dofile_once("data/scripts/director_helpers.lua")
+dofile_once("data/scripts/biome_scripts.lua")
+dofile_once("data/scripts/biome_modifiers.lua")
+dofile_once("data/scripts/biomes/summon_portal_util.lua")
+
+RegisterSpawnFunction( 0xffffeedd, "init" )
+RegisterSpawnFunction( 0xff0000ff, "spawn_nest" )
+RegisterSpawnFunction( 0xff30b3b0, "spawn_physics_fungus" )
+RegisterSpawnFunction( 0xff30b3f0, "spawn_physics_acid_fungus" )
+RegisterSpawnFunction( 0xff80FF5A, "spawn_vines" )
+RegisterSpawnFunction( 0xff6a8d79, "spawn_fungitrap" )
+
+------------ SMALL ENEMIES ----------------------------------------------------
+
+g_small_enemies =
+{
+	total_prob = 0,
+	-- this is air, so nothing spawns at 0.6
+	{
+		prob   		= 2.2,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	-- add skullflys after this step
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 3,    
+		entity 	= "data/entities/animals/fungus.xml"
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 2,    
+		entity 	= "data/entities/animals/fungus_big.xml"
+	},
+	{
+		prob   		= 0.1,
+		min_count	= 1,
+		max_count	= 2,    
+		entity 	= "data/entities/animals/ant.xml"
+	},
+	{
+		prob   		= 0.2,
+		min_count	= 2,
+		max_count	= 4,    
+		entity 	= "data/entities/animals/blob.xml"
+	},
+	{
+		prob   		= 0.1,
+		min_count	= 2,
+		max_count	= 4,    
+		entity 	= "data/entities/animals/frog_big.xml",
+	},
+}
+
+
+------------ BIG ENEMIES ------------------------------------------------------
+
+g_big_enemies =
+{
+	total_prob = 0,
+	-- this is air, so nothing spawns at 0.6
+	{
+		prob   		= 2.7,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	-- add skullflys after this step
+	{
+		prob   		= 0.4,
+		min_count	= 1,
+		max_count	= 3,    
+		entity 	= "data/entities/animals/fungus.xml"
+	},
+	{
+		prob   		= 0.1,
+		min_count	= 3,
+		max_count	= 5,    
+		entity 	= "data/entities/animals/blob.xml"
+	},
+	{
+		prob   		= 0.2,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/animals/alchemist.xml"
+	},
+	{
+		prob   		= 0.4,
+		min_count	= 1,
+		max_count	= 2,    
+		entity 	= "data/entities/animals/fungus_big.xml"
+	},
+	{
+		prob   		= 0.2,
+		min_count	= 1,
+		max_count	= 1,    
+		entities 	= {
+			{
+				min_count	= 1,
+				max_count	= 3,
+				entity	= "data/entities/animals/fungus.xml",
+			},
+			{
+				min_count	= 1,
+				max_count	= 1,
+				entity	= "data/entities/animals/fungus_big.xml",
+			},
+		},
+	},
+	{
+		prob   		= 0.1,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/animals/drone_shield.xml",
+		ngpluslevel = 2,
+	},
+}
+
+------------ ITEMS ------------------------------------------------------------
+
+g_items =
+{
+	total_prob = 0,
+	-- this is air, so nothing spawns at 0.6
+	{
+		prob   		= 0,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	-- add skullflys after this step
+	{
+		prob   		= 5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/items/wand_unshuffle_03.xml"
+	},
+	{
+		prob   		= 5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/items/wand_unshuffle_04.xml"
+	},
+	{
+		prob   		= 5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/items/wand_level_05_better.xml"
+	},
+}
+
+------------ MISC --------------------------------------
+
+g_physics_fungi =
+{
+	total_prob = 0,
+	{
+		prob   		= 1.0,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_small.xml"
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus.xml"
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_big.xml"
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_hugeish.xml"
+	},
+	{
+		prob   		= 0.4,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_huge.xml"
+	},
+}
+
+g_physics_fungi_acid =
+{
+	total_prob = 0,
+	{
+		prob   		= 1.0,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_acid_small.xml"
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_acid.xml"
+	},
+	{
+		prob   		= 1.0,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_acid_big.xml"
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_acid_hugeish.xml"
+	},
+	{
+		prob   		= 0.4,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_fungus_acid_huge.xml"
+	},
+}
+
+g_props =
+{
+	total_prob = 0,
+	{
+		prob   		= 0.5,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/props/physics_barrel_radioactive.xml"
+	},
+}
+
+g_fungitrap =
+{
+	total_prob = 0,
+	{
+		prob   		= 1.0,
+		min_count	= 0,
+		max_count	= 0,    
+		entity 	= ""
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/buildings/fungitrap_01.xml"
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/buildings/fungitrap_02.xml"
+	},
+}
+
+g_vines =
+{
+	total_prob = 0,
+	{
+		prob   		= 0.4,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/verlet_chains/vines/verlet_vine_blue.xml"
+	},
+	{
+		prob   		= 0.3,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/verlet_chains/vines/verlet_vine_long_blue.xml"
+	},
+	{
+		prob   		= 1.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= ""
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/verlet_chains/vines/verlet_vine_short_blue.xml"
+	},
+	{
+		prob   		= 0.5,
+		min_count	= 1,
+		max_count	= 1,    
+		entity 	= "data/entities/verlet_chains/vines/verlet_vine_shorter_blue.xml"
+	},
+}
+
+-- actual functions that get called from the wang generator
+
+function init(x, y, w, h)
+end
+
+function spawn_small_enemies(x, y)
+	spawn(g_small_enemies,x,y)
+end
+
+function spawn_big_enemies(x, y)
+	spawn(g_big_enemies,x,y)
+end
+
+function spawn_items(x, y)
+	local r = ProceduralRandom( x-11.631, y+10.2257 )
+	
+	if (r > 0.06) then
+		LoadPixelScene( "data/biome_impl/wand_altar.png", "data/biome_impl/wand_altar_visual.png", x-10, y-17, "", true )
+	end
+end
+
+function spawn_nest(x, y)
+end
+
+function spawn_props(x, y)
+	spawn(g_props,x,y)
+end
+
+function spawn_fungitrap(x, y)
+	spawn(g_fungitrap,x,y)
+end
+
+function spawn_potion_altar(x, y)
+	--spawn(g_potions,x,y)
+	LoadPixelScene( "data/biome_impl/potion_altar.png", "data/biome_impl/potion_altar_visual.png", x-10, y-17, "", true )
+end
+
+function spawn_physics_fungus(x, y)
+	spawn(g_physics_fungi,x,y)
+end
+
+function spawn_physics_acid_fungus(x, y)
+	spawn(g_physics_fungi_acid,x,y)
+end
+
+function spawn_lamp(x, y) end
+function load_pixel_scene( x, y ) end
+function load_pixel_scene2( x, y ) end
+function spawn_props2( x, y ) end
+function spawn_props3( x, y ) end
+function spawn_unique_enemy( x, y ) end
+function spawn_unique_enemy2( x, y ) end
+function spawn_unique_enemy3( x, y ) end
+function spawn_ghostlamp( x, y ) end
+function spawn_candles( x, y ) end
+
+function spawn_vines(x, y)
+	spawn(g_vines,x+5,y+5)
+end
\ No newline at end of file
diff --git a/scripts/biomes/moon_room.lua b/scripts/biomes/moon_room.lua
index 2abe95e..8b2d12e 100644
--- a/scripts/biomes/moon_room.lua
+++ b/scripts/biomes/moon_room.lua
@@ -32,5 +32,6 @@ function spawn_orb(x, y)
 end
 
 function spawn_essence(x, y)
-	perk_spawn( x, y, "MOON_RADAR" )
+	perk_spawn( x - 8, y, "MOON_RADAR" )
+	EntityLoad("data/entities/items/books/book_music_a.xml", x + 8, y )
 end
\ No newline at end of file
diff --git a/scripts/biomes/mountain_tree.lua b/scripts/biomes/mountain_tree.lua
index 8c0e199..6760c07 100644
--- a/scripts/biomes/mountain_tree.lua
+++ b/scripts/biomes/mountain_tree.lua
@@ -294,10 +294,10 @@ function spawn_pillars( x, y )
 	local flags = 
 	{
 		{ { "misc_chest_rain", "crain" }, { "misc_worm_rain", "wrain" }, { "misc_greed_rain", "grain" }, { "misc_altar_tablet", "train" }, { "misc_monk_bots", "mbots" }, { "secret_tower", "secrett" }, { "player_status_ghostly", "pghost" }, { "player_status_ratty", "prat" }, { "player_status_funky", "pfungi" } },
-		{ { "essence_fire", "essencef" }, { "essence_water", "essencew" }, { "essence_laser", "essencee" }, { "essence_air", "essencea" }, { "essence_alcohol", "essenceal" }, { "secret_moon", "moon" }, { "secret_moon2", "moona" }, { "special_mood", "moong" }, { "secret_dmoon", "dmoon" }, { "dead_mood", "dmoong" }, { "secret_sun_collision", "sun" }, { "secret_darksun_collision", "dsun" } },
+		{ { "essence_fire", "essencef" }, { "essence_water", "essencew" }, { "essence_laser", "essencee" }, { "essence_air", "essencea" }, { "essence_alcohol", "essenceal" }, { "secret_moon", "moon" }, { "secret_moon2", "moona" }, { "special_mood", "moong" }, { "secret_dmoon", "dmoon" }, { "dead_mood", "dmoong" }, { "secret_sun_collision", "sunmoon" }, { "secret_darksun_collision", "dsunmoon" } },
 		{ { "progress_ending0", "end0" }, { "progress_ending1_toxic", "endt" }, { "progress_ending1_gold", "endb" }, { "progress_ending2", "endg" }, { "progress_newgameplusplus3", "endp" }, { "progress_nightmare", "endn" } },
 		{ { "miniboss_dragon", "minid" }, { "miniboss_limbs", "minil" }, { "miniboss_ghost", "minigh" }, { "miniboss_pit", "minip" }, { "miniboss_alchemist", "minia" }, { "miniboss_wizard", "meme" }, { "miniboss_gate_monsters", "minigm" }, { "boss_centipede", "boss" } },
-		{ { "progress_orb_1", "orbf" }, { "progress_orb_evil", "orbe" }, { "progress_orb_all", "orba" }, { "progress_pacifist", "pacifist" }, { "progress_nogold", "nogold" }, { "progress_clock", "clock" }, { "progress_minit", "minit" }, { "progress_nohit", "nohit" } },
+		{ { "progress_orb_1", "orbf" }, { "progress_orb_evil", "orbe" }, { "progress_orb_all", "orba" }, { "progress_pacifist", "pacifist" }, { "progress_nogold", "nogold" }, { "progress_clock", "clock" }, { "progress_minit", "minit" }, { "progress_nohit", "nohit" }, { "progress_sun", "sun" }, { "progress_darksun", "dsun" }, { "progress_sunkill", "sunkill" } },
 		{ { "secret_greed", "secretg" }, { "final_secret_orb", "yeah" }, { "secret_chest_dark", "secretcd" }, { "secret_chest_light", "secretcl" }, { "card_unlocked_everything", "secretall" }, { "card_unlocked_divide", "secretten" }, { "secret_fruit", "secretf" }, { "secret_allessences", "secretae" }, { "secret_meditation", "secretme" }, { "secret_buried_eye", "secretbe" }, { "secret_hourglass", "secrethg" }, { "progress_hut_a", "huta" }, { "progress_hut_b", "hutb" } },
 	}
 	
diff --git a/scripts/buildings/fungitrap_01.lua b/scripts/buildings/fungitrap_01.lua
new file mode 100644
index 0000000..76ec5eb
--- /dev/null
+++ b/scripts/buildings/fungitrap_01.lua
@@ -0,0 +1,17 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id = GetUpdatedEntityID()
+local x,y = EntityGetTransform( entity_id )
+
+SetRandomSeed( GameGetFrameNum(), entity_id + y )
+
+local rnd = Random( 1, 7 )
+local angle = math.rad( Random( 1, 180 ) )
+local speed = 200
+
+local vel_x = math.cos( 0 - angle ) * speed
+local vel_y = 0 - math.sin( 0 - angle ) * speed
+
+if ( rnd == 5 ) then
+	shoot_projectile( entity_id, "data/entities/buildings/fungitrap_01_projectile.xml", x, y, vel_x, vel_y )
+end
\ No newline at end of file
diff --git a/scripts/buildings/fungitrap_02.lua b/scripts/buildings/fungitrap_02.lua
new file mode 100644
index 0000000..428719d
--- /dev/null
+++ b/scripts/buildings/fungitrap_02.lua
@@ -0,0 +1,21 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id = GetUpdatedEntityID()
+local x,y = EntityGetTransform( entity_id )
+
+SetRandomSeed( GameGetFrameNum(), entity_id + y )
+
+local entities = EntityGetInRadiusWithTag( x, y, 160, "fungitrap_02" )
+
+if ( #entities < 4 ) then
+	local rnd = Random( 1, 7 )
+	local angle = math.rad( Random( 1, 180 ) )
+	local speed = 200
+
+	local vel_x = math.cos( 0 - angle ) * speed
+	local vel_y = 0 - math.sin( 0 - angle ) * speed
+
+	if ( rnd == 5 ) then
+		shoot_projectile( entity_id, "data/entities/buildings/fungitrap_02_projectile.xml", x, y, vel_x, vel_y )
+	end
+end
\ No newline at end of file
diff --git a/scripts/buildings/fungitrap_02_spawner.lua b/scripts/buildings/fungitrap_02_spawner.lua
new file mode 100644
index 0000000..7f95562
--- /dev/null
+++ b/scripts/buildings/fungitrap_02_spawner.lua
@@ -0,0 +1,11 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id = GetUpdatedEntityID()
+local x,y = EntityGetTransform( entity_id )
+
+local entities = EntityGetInRadiusWithTag( x, y, 200, "fungitrap_02" )
+
+if ( #entities < 6 ) then
+	EntityLoad( "data/entities/props/physics_fungus_trap.xml", x, y )
+	EntityKill( entity_id )
+end
\ No newline at end of file
diff --git a/scripts/buildings/sun/spot_2.lua b/scripts/buildings/sun/spot_2.lua
index 365cfc5..7ac908c 100644
--- a/scripts/buildings/sun/spot_2.lua
+++ b/scripts/buildings/sun/spot_2.lua
@@ -28,8 +28,9 @@ local entity_id    = GetUpdatedEntityID()
 local x,y = EntityGetTransform( entity_id )
 
 local explosions = EntityGetInRadiusWithTag( x, y, 120, "big_explosion" )
+local seas = EntityGetInRadiusWithTag( x, y, 120, "sea_of_lava" )
 
-if ( #explosions > 5 ) then
+if ( #explosions > 5 ) or ( #seas > 0 ) then
 	EntityLoad("data/entities/items/pickup/sun/sunegg.xml", x, y)
 	EntityLoad("data/entities/projectiles/deck/explosion_giga.xml", x, y)
 	EntityKill(entity_id)
diff --git a/scripts/buildings/sun/spot_4.lua b/scripts/buildings/sun/spot_4.lua
index caed556..a9bf046 100644
--- a/scripts/buildings/sun/spot_4.lua
+++ b/scripts/buildings/sun/spot_4.lua
@@ -134,9 +134,11 @@ if ( comp ~= nil ) and ( comp2 ~= nil ) then
 		if ( ohno == false ) then
 			EntityLoad("data/entities/items/pickup/sun/newsun.xml", x, y)
 			GamePrintImportant( "$log_new_step", "$itemdesc_seed_e" )
+			AddFlagPersistent( "progress_sun" )
 		else
 			EntityLoad("data/entities/items/pickup/sun/newsun_dark.xml", x, y)
 			GamePrintImportant( "$itemdesc_seed_f", "$logdesc_new_step_b" )
+			AddFlagPersistent( "progress_darksun" )
 		end
 		
 		GameTriggerMusicFadeOutAndDequeueAll( 3.0 )
diff --git a/scripts/buildings/sun/sun_controls.lua b/scripts/buildings/sun/sun_controls.lua
index a35cf70..ca15eab 100644
--- a/scripts/buildings/sun/sun_controls.lua
+++ b/scripts/buildings/sun/sun_controls.lua
@@ -4,7 +4,7 @@ local entity_id    = GetUpdatedEntityID()
 local x, y = EntityGetTransform( entity_id )
 
 local targets = EntityGetInRadiusWithTag( x, y, 100, "projectile" )
-local targets2 = EntityGetInRadiusWithTag( x, y, 320, "moon_energy" )
+local targets2 = EntityGetInRadiusWithTag( x, y, 400, "moon_energy" )
 
 local vel_x,vel_y = 0,0
 
@@ -15,7 +15,7 @@ for i,v in ipairs( targets ) do
 		end)
 		
 		if ( vel_x ~= 0 ) or ( vel_y ~= 0 ) then
-			PhysicsApplyForce( entity_id, vel_x, vel_y )
+			PhysicsApplyForce( entity_id, vel_x * 1.5, vel_y * 1.5 )
 		end
 	end
 	
@@ -27,10 +27,10 @@ for i,v in ipairs( targets2 ) do
 	local test = EntityGetFirstComponent( v, "LightComponent" )
 	
 	if ( test ~= nil ) then
-		local dir = 0 - math.atan2( y - ty, x - tx )
+		local dir = 0 - math.atan2( ty - y, tx - x )
 		
-		vel_x = math.cos( dir ) * 180
-		vel_y = 0 - math.sin( dir ) * 180
+		vel_x = math.cos( dir ) * 240
+		vel_y = 0 - math.sin( dir ) * 240
 		
 		PhysicsApplyForce( entity_id, vel_x, vel_y )
 	end
diff --git a/scripts/buildings/sun/sunbaby_controls.lua b/scripts/buildings/sun/sunbaby_controls.lua
index e7d1934..408b277 100644
--- a/scripts/buildings/sun/sunbaby_controls.lua
+++ b/scripts/buildings/sun/sunbaby_controls.lua
@@ -4,7 +4,7 @@ local entity_id    = GetUpdatedEntityID()
 local x, y = EntityGetTransform( entity_id )
 
 local targets = EntityGetInRadiusWithTag( x, y, 56, "projectile" )
-local targets2 = EntityGetInRadiusWithTag( x, y, 220, "moon_energy" )
+local targets2 = EntityGetInRadiusWithTag( x, y, 400, "moon_energy" )
 
 local vel_x,vel_y = 0,0
 
@@ -15,7 +15,7 @@ for i,v in ipairs( targets ) do
 		end)
 		
 		if ( vel_x ~= 0 ) or ( vel_y ~= 0 ) then
-			PhysicsApplyForce( entity_id, vel_x * 1.2, vel_y * 1.2 )
+			PhysicsApplyForce( entity_id, vel_x * 2.0, vel_y * 2.0 )
 		end
 	end
 	
@@ -29,8 +29,8 @@ for i,v in ipairs( targets2 ) do
 	if ( test ~= nil ) then
 		local dir = 0 - math.atan2( ty - y, tx - x )
 		
-		vel_x = math.cos( dir ) * 180
-		vel_y = 0 - math.sin( dir ) * 180
+		vel_x = math.cos( dir ) * 240
+		vel_y = 0 - math.sin( dir ) * 240
 		
 		PhysicsApplyForce( entity_id, vel_x, vel_y )
 	end
diff --git a/scripts/lib/utilities.lua b/scripts/lib/utilities.lua
index 3a2895a..e11375d 100644
--- a/scripts/lib/utilities.lua
+++ b/scripts/lib/utilities.lua
@@ -831,7 +831,7 @@ function check_parallel_pos( x )
 	local mapwidth = BiomeMapGetSize() * 512
 	local half = mapwidth * 0.5
 	
-	local mx = ( x + half ) % mapwidth
+	local mx = x % mapwidth
 	
 	return pw,mx
 end
diff --git a/scripts/magic/amulet.lua b/scripts/magic/amulet.lua
index 438908e..f0a1cb2 100644
--- a/scripts/magic/amulet.lua
+++ b/scripts/magic/amulet.lua
@@ -4,4 +4,12 @@ local entity_id = GetUpdatedEntityID()
 
 if HasFlagPersistent( "secret_amulet" ) then
 	EntitySetComponentsWithTagEnabled( entity_id, "player_amulet", true )
+end
+
+if HasFlagPersistent( "secret_amulet_gem" ) then
+	EntitySetComponentsWithTagEnabled( entity_id, "player_amulet_gem", true )
+end
+
+if HasFlagPersistent( "moon_is_sun" ) and HasFlagPersistent( "darkmoon_is_darksun" ) then
+	EntitySetComponentsWithTagEnabled( entity_id, "player_hat2", true )
 end
\ No newline at end of file
diff --git a/scripts/magic/dark_moon_altar.lua b/scripts/magic/dark_moon_altar.lua
index f6f549c..1d65eb5 100644
--- a/scripts/magic/dark_moon_altar.lua
+++ b/scripts/magic/dark_moon_altar.lua
@@ -40,7 +40,7 @@ if essence_1 and essence_2 and essence_3 and essence_4 and ( #players_ == 0 ) an
 	end
 end
 
-if ( #sun > 0 ) or ( #sun2 > 0 ) then
+if ( ( #sun > 0 ) and ( HasFlagPersistent( "darkmoon_is_sun" ) == false ) ) or ( ( #sun > 0 ) and ( HasFlagPersistent( "darkmoon_is_darksun" ) == false ) ) then
 	local flag = GameHasFlagRun( "secret_sun_collision_1" )
 	EntityLoad("data/entities/projectiles/deck/explosion_giga.xml", x, y)
 	
@@ -49,8 +49,14 @@ if ( #sun > 0 ) or ( #sun2 > 0 ) then
 		
 		if ( #sun > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_sun.xml", x, y)
+			
+			RemoveFlagPersistent( "darkmoon_is_darksun" )
+			AddFlagPersistent( "darkmoon_is_sun" )
 		elseif ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_darksun.xml", x, y)
+			
+			RemoveFlagPersistent( "darkmoon_is_sun" )
+			AddFlagPersistent( "darkmoon_is_darksun" )
 		end
 		
 		GamePrintImportant( "$log_collision_1", "$logdesc_collision_1" )
@@ -61,10 +67,16 @@ if ( #sun > 0 ) or ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_sun.xml", x, y)
 			GamePrintImportant( "$log_collision_2", "$logdesc_collision_2" )
 			AddFlagPersistent( "secret_sun_collision" )
+			
+			RemoveFlagPersistent( "darkmoon_is_darksun" )
+			AddFlagPersistent( "darkmoon_is_sun" )
 		elseif ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_darksun.xml", x, y)
 			GamePrintImportant( "$log_collision_3", "$logdesc_collision_3" )
 			AddFlagPersistent( "secret_darksun_collision" )
+			
+			RemoveFlagPersistent( "darkmoon_is_sun" )
+			AddFlagPersistent( "darkmoon_is_darksun" )
 		end
 	end
 	
diff --git a/scripts/magic/dark_moon_altar_init.lua b/scripts/magic/dark_moon_altar_init.lua
new file mode 100644
index 0000000..61a90f4
--- /dev/null
+++ b/scripts/magic/dark_moon_altar_init.lua
@@ -0,0 +1,8 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id = GetUpdatedEntityID()
+local x, y = EntityGetTransform( entity_id )
+
+if HasFlagPersistent( "darkmoon_is_darksun" ) then
+	EntityLoad( "data/entities/items/pickup/sun/newsun_dark.xml", x, y )
+end
\ No newline at end of file
diff --git a/scripts/magic/fungal_shift.lua b/scripts/magic/fungal_shift.lua
index aea8929..3f012a6 100644
--- a/scripts/magic/fungal_shift.lua
+++ b/scripts/magic/fungal_shift.lua
@@ -12,7 +12,6 @@ materials_from =
 	{ probability = 1.0, materials = { "acid" } },
 	{ probability = 0.4, materials = { "acid_gas", "acid_gas_static", "poison_gas", "fungal_gas", "radioactive_gas", "radioactive_gas_static" }, name_material = "acid_gas" },
 	{ probability = 0.4, materials = { "magic_liquid_polymorph", "magic_liquid_unstable_polymorph" }, name_material = "magic_liquid_polymorph" },
-	{ probability = 0.4, materials = { "magic_liquid_teleportation", "magic_liquid_unstable_teleportation" }, name_material = "magic_liquid_teleportation" },
 	{ probability = 0.4, materials = { "magic_liquid_berserk", "magic_liquid_charm", "magic_liquid_invisibility" } },
 	{ probability = 0.6, materials = { "diamond" } },
 	{ probability = 0.6, materials = { "silver", "brass", "copper" } },
diff --git a/scripts/magic/moon_altar.lua b/scripts/magic/moon_altar.lua
index 037bfd9..2d510d7 100644
--- a/scripts/magic/moon_altar.lua
+++ b/scripts/magic/moon_altar.lua
@@ -49,7 +49,7 @@ if essence_1 and essence_2 and essence_3 and essence_4 and ( #players_ == 0 ) an
 	end
 end
 
-if ( #sun > 0 ) or ( #sun2 > 0 ) then
+if ( ( #sun > 0 ) and ( HasFlagPersistent( "moon_is_sun" ) == false ) ) or ( ( #sun > 0 ) and ( HasFlagPersistent( "moon_is_darksun" ) == false ) ) then
 	local flag = GameHasFlagRun( "secret_sun_collision_1" )
 	EntityLoad("data/entities/projectiles/deck/explosion_giga.xml", x, y)
 	
@@ -58,8 +58,14 @@ if ( #sun > 0 ) or ( #sun2 > 0 ) then
 		
 		if ( #sun > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_sun.xml", x, y)
+			
+			RemoveFlagPersistent( "moon_is_darksun" )
+			AddFlagPersistent( "moon_is_sun" )
 		elseif ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_darksun.xml", x, y)
+			
+			RemoveFlagPersistent( "moon_is_sun" )
+			AddFlagPersistent( "moon_is_darksun" )
 		end
 		
 		GamePrintImportant( "$log_collision_1", "$logdesc_collision_1" )
@@ -70,10 +76,16 @@ if ( #sun > 0 ) or ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_sun.xml", x, y)
 			GamePrintImportant( "$log_collision_2", "$logdesc_collision_2" )
 			AddFlagPersistent( "secret_sun_collision" )
+			
+			RemoveFlagPersistent( "moon_is_darksun" )
+			AddFlagPersistent( "moon_is_sun" )
 		elseif ( #sun2 > 0 ) then
 			EntityLoad("data/entities/misc/moon_effect_darksun.xml", x, y)
 			GamePrintImportant( "$log_collision_3", "$logdesc_collision_3" )
 			AddFlagPersistent( "secret_darksun_collision" )
+			
+			RemoveFlagPersistent( "moon_is_sun" )
+			AddFlagPersistent( "moon_is_darksun" )
 		end
 	end
 	
diff --git a/scripts/magic/moon_altar_init.lua b/scripts/magic/moon_altar_init.lua
new file mode 100644
index 0000000..038d895
--- /dev/null
+++ b/scripts/magic/moon_altar_init.lua
@@ -0,0 +1,8 @@
+dofile_once("data/scripts/lib/utilities.lua")
+
+local entity_id = GetUpdatedEntityID()
+local x, y = EntityGetTransform( entity_id )
+
+if HasFlagPersistent( "moon_is_sun" ) then
+	EntityLoad( "data/entities/items/pickup/sun/newsun.xml", x, y )
+end
\ No newline at end of file
diff --git a/scripts/magic/orb_line.lua b/scripts/magic/orb_line.lua
index da63c84..6212e1b 100644
--- a/scripts/magic/orb_line.lua
+++ b/scripts/magic/orb_line.lua
@@ -30,7 +30,7 @@ if ( Random( 1, 25 ) == 4 ) then
 		local ox = v[1] * 512 + 256
 		local oy = v[2] * 512 + 256
 		
-		-- print("Closest orb is at " .. tostring(v[1]) .. ", " .. tostring(v[2]))
+		-- print( "Closest orb is at " .. tostring(v[1]) .. ", " .. tostring(v[2]) .. " (parallel: " .. tostring(pw) .. ", " .. tostring(mx) .. ")" )
 		
 		local dir = get_direction( ox, oy, mx, y )
 		
diff --git a/scripts/perks/perk_list.lua b/scripts/perks/perk_list.lua
index 348eb69..ed0c309 100644
--- a/scripts/perks/perk_list.lua
+++ b/scripts/perks/perk_list.lua
@@ -1478,6 +1478,7 @@ perk_list =
 				
 				if ( funginess == 3 ) then
 					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat", true )
+					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat2_shadow", false )
 					
 					AddFlagPersistent( "player_status_funky" )
 					
@@ -1515,6 +1516,7 @@ perk_list =
 				
 				if ( funginess == 3 ) then
 					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat", true )
+					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat2_shadow", false )
 					
 					AddFlagPersistent( "player_status_funky" )
 					
@@ -1628,6 +1630,7 @@ perk_list =
 				
 				if ( funginess == 3 ) then
 					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat", true )
+					EntitySetComponentsWithTagEnabled( entity_who_picked, "player_hat2_shadow", false )
 					
 					AddFlagPersistent( "player_status_funky" )
 					
diff --git a/scripts/perks/radar.lua b/scripts/perks/radar.lua
index d8afdf5..218a6ee 100644
--- a/scripts/perks/radar.lua
+++ b/scripts/perks/radar.lua
@@ -21,11 +21,21 @@ for _,enemy_id in pairs(EntityGetInRadiusWithTag( pos_x, pos_y, range, "enemy"))
 	local indicator_y = pos_y + dir_y * indicator_distance
 
 	-- display sprite based on proximity
-	if distance > range * 0.5 then
+	if distance > range * 0.75 then
 		GameCreateSpriteForXFrames( "data/particles/radar_enemy_faint.png", indicator_x, indicator_y )
-	elseif distance > range * 0.25 then
+	elseif distance > range * 0.5 then
 		GameCreateSpriteForXFrames( "data/particles/radar_enemy_medium.png", indicator_x, indicator_y )
-	else
+		-- turn emissive
+		if not EntityHasTag(enemy_id, "detected_by_radar") then
+			EntityAddTag(enemy_id, "detected_by_radar")
+			local sprite_comps = EntityGetComponent(enemy_id, "SpriteComponent")
+			for _,v in ipairs(sprite_comps) do
+				ComponentSetValue2(v, "emissive", true)
+				ComponentSetValue2(v, "fog_of_war_hole", true)
+				EntityRefreshSprite(enemy_id, v)
+			end
+		end
+	elseif distance > range * 0.3 then
 		GameCreateSpriteForXFrames( "data/particles/radar_enemy_strong.png", indicator_x, indicator_y )
 	end
 end
diff --git a/scripts/projectiles/glue_anchor.lua b/scripts/projectiles/glue_anchor.lua
index 18a6662..ab5b2e7 100644
--- a/scripts/projectiles/glue_anchor.lua
+++ b/scripts/projectiles/glue_anchor.lua
@@ -75,7 +75,7 @@ if target_x ~= nil and target_x ~= 0 and target_y ~= 0 then
 
 		-- prevent pulling into a wall by checking if glue center (parent) is inside platform
 		local dist = get_magnitude(vx, vy)
-		if dist < 8 or RaytracePlatforms(center_x, center_y, center_x + 1, center_y) then
+		if dist < 8 or dist > 130 or RaytracePlatforms(center_x, center_y, center_x + 1, center_y) then
 			--print("abort pull")
 			return
 		end
diff --git a/scripts/projectiles/tentacle_ray.lua b/scripts/projectiles/tentacle_ray.lua
index f529a03..e792785 100644
--- a/scripts/projectiles/tentacle_ray.lua
+++ b/scripts/projectiles/tentacle_ray.lua
@@ -11,4 +11,5 @@ local length = 3000
 local vel_x = math.cos( angle ) * length
 local vel_y = 0 - math.sin( angle ) * length
 
-shoot_projectile_from_projectile( entity_id, "data/entities/projectiles/deck/tentacle.xml", pos_x, pos_y, vel_x, vel_y )
\ No newline at end of file
+-- NOTE: tentacle's mWhoShot will be the projectile, not the actual shooter
+local proj_id = shoot_projectile(entity_id, "data/entities/projectiles/deck/tentacle.xml", pos_x, pos_y, vel_x, vel_y )
diff --git a/wang_tiles/fungiforest.png b/wang_tiles/fungiforest.png
new file mode 100644
index 0000000..78aeb9f
Binary files /dev/null and b/wang_tiles/fungiforest.png differ
diff --git a/weather_gfx/background_fungiforest_01.png b/weather_gfx/background_fungiforest_01.png
new file mode 100644
index 0000000..44c48aa
Binary files /dev/null and b/weather_gfx/background_fungiforest_01.png differ
diff --git a/weather_gfx/edges/background_fungiforest_01_bottom.png b/weather_gfx/edges/background_fungiforest_01_bottom.png
new file mode 100644
index 0000000..2ecdd22
Binary files /dev/null and b/weather_gfx/edges/background_fungiforest_01_bottom.png differ
diff --git a/weather_gfx/edges/background_fungiforest_01_left.png b/weather_gfx/edges/background_fungiforest_01_left.png
new file mode 100644
index 0000000..674a9b2
Binary files /dev/null and b/weather_gfx/edges/background_fungiforest_01_left.png differ
diff --git a/weather_gfx/edges/background_fungiforest_01_right.png b/weather_gfx/edges/background_fungiforest_01_right.png
new file mode 100644
index 0000000..d48a8cc
Binary files /dev/null and b/weather_gfx/edges/background_fungiforest_01_right.png differ
diff --git a/weather_gfx/edges/background_fungiforest_01_top.png b/weather_gfx/edges/background_fungiforest_01_top.png
new file mode 100644
index 0000000..37e27f8
Binary files /dev/null and b/weather_gfx/edges/background_fungiforest_01_top.png differ
