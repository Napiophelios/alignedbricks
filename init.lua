--AlignedBricks mod
--by Napiophelios

--Depends : default

--for Minetest_game 0.4.11 or later
--All code derived from Minetest_game (Default Mod) 0.4.11

minetest.override_item("default:brick", {
   tiles = {"alignedbricks_brick_top.png",
  "alignedbricks_brick_top.png^[transformFXR90",
  "alignedbricks_brick_side.png",
  "alignedbricks_brick_side.png^[transformFX",
  "alignedbricks_brick.png^[transformFX",
  "alignedbricks_brick.png"},
})

minetest.override_item("default:desert_stonebrick", {
   tiles = {"alignedbricks_desert_stone_brick_top.png",
   "alignedbricks_desert_stone_brick_top.png^[transformFXR90",
   "alignedbricks_desert_stone_brick_side.png",
   "alignedbricks_desert_stone_brick_side.png^[transformFX",
   "alignedbricks_desert_stone_brick.png^[transformFX",
   "alignedbricks_desert_stone_brick.png"},
})

minetest.override_item("default:obsidianbrick", {
   tiles = {"alignedbricks_obsidian_brick_top.png",
   "alignedbricks_obsidian_brick_top.png^[transformFXR90",
   "alignedbricks_obsidian_brick_side.png",
   "alignedbricks_obsidian_brick_side.png^[transformFX",
   "alignedbricks_obsidian_brick.png^[transformFX",
   "alignedbricks_obsidian_brick.png"},
})

minetest.override_item("default:sandstonebrick", {
   tiles = {"alignedbricks_sandstone_brick_top.png",
   "alignedbricks_sandstone_brick_top.png^[transformFXR90",
   "alignedbricks_sandstone_brick_side.png",
   "alignedbricks_sandstone_brick_side.png^[transformFX",
   "alignedbricks_sandstone_brick.png^[transformFX",
   "alignedbricks_sandstone_brick.png"},
})

minetest.override_item("default:stonebrick", {
  tiles = {"alignedbricks_stone_brick_top.png",
  "alignedbricks_stone_brick_top.png^[transformFXR90",
  "alignedbricks_stone_brick_side.png",
  "alignedbricks_stone_brick_side.png^[transformFX",
  "alignedbricks_stone_brick.png^[transformFX",
  "alignedbricks_stone_brick.png"},
})
