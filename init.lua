--AlignedBricks mod
--by Napiophelios

--Depends : default

--for Minetest_game 0.4.11 or later
--All code derived from Minetest_game (Default Mod) 0.4.11

minetest.register_node(":default:brick", {
  description = "Brick Block",
   tiles = {"alignedbricks_brick_top.png",
  "alignedbricks_brick_top.png^[transformFXR90",
  "alignedbricks_brick_side.png",
  "alignedbricks_brick_side.png^[transformFX",
  "alignedbricks_brick.png^[transformFX",
  "alignedbricks_brick.png"},
  is_ground_content = false,
  sunlight_propagates = false,
  groups = {cracky=3},
  sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:desert_stonebrick", {
  description = "Desert Stone Brick",
  tiles = {"alignedbricks_desert_stone_brick_top.png",
  "alignedbricks_desert_stone_brick_top.png^[transformFXR90",
  "alignedbricks_desert_stone_brick_side.png",
  "alignedbricks_desert_stone_brick_side.png^[transformFX",
  "alignedbricks_desert_stone_brick.png^[transformFX",
  "alignedbricks_desert_stone_brick.png"},
  is_ground_content = false,
  sunlight_propagates = false,
  groups = {cracky=2, stone=1},
  sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:obsidianbrick", {
  description = "Obsidian Brick",
  tiles = {"alignedbricks_obsidian_brick_top.png",
  "alignedbricks_obsidian_brick_top.png^[transformFXR90",
  "alignedbricks_obsidian_brick_side.png",
  "alignedbricks_obsidian_brick_side.png^[transformFX",
  "alignedbricks_obsidian_brick.png^[transformFX",
  "alignedbricks_obsidian_brick.png"},
  is_ground_content = false,
  sunlight_propagates = false,
  groups = {cracky=1,level=2},
  sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:sandstonebrick", {
  description = "Sandstone Brick",
  tiles = {"alignedbricks_sandstone_brick_top.png",
  "alignedbricks_sandstone_brick_top.png^[transformFXR90",
  "alignedbricks_sandstone_brick_side.png",
  "alignedbricks_sandstone_brick_side.png^[transformFX",
  "alignedbricks_sandstone_brick.png^[transformFX",
  "alignedbricks_sandstone_brick.png"},
  is_ground_content = false,
  sunlight_propagates = false,
  groups = {cracky=2},
  sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:stonebrick", {
  description = "Stone Brick",
  tiles = {"alignedbricks_stone_brick_top.png",
  "alignedbricks_stone_brick_top.png^[transformFXR90",
  "alignedbricks_stone_brick_side.png",
  "alignedbricks_stone_brick_side.png^[transformFX",
  "alignedbricks_stone_brick.png^[transformFX",
  "alignedbricks_stone_brick.png"},
  is_ground_content = false,
  sunlight_propagates = false,
  groups = {cracky=2, stone=1},
  sounds = default.node_sound_stone_defaults(),
})