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

if minetest.get_modpath( 'mudbrick') then
minetest.override_item("mudbrick:mudbrick_1", {
   tiles = {"alignedbricks_mudbrick_wet_top.png",
  "alignedbricks_mudbrick_wet_top.png^[transformFXR90",
  "alignedbricks_mudbrick_wet_side.png",
  "alignedbricks_mudbrick_wet_side.png^[transformFX",
  "alignedbricks_mudbrick_wet.png^[transformFX",
  "alignedbricks_mudbrick_wet.png"},
})

minetest.override_item("mudbrick:mudbrick_2", {
   tiles = {"alignedbricks_mudbrick_dried_top.png",
  "alignedbricks_mudbrick_dried_top.png^[transformFXR90",
  "alignedbricks_mudbrick_dried_side.png",
  "alignedbricks_mudbrick_dried_side.png^[transformFX",
  "alignedbricks_mudbrick_dried.png^[transformFX",
  "alignedbricks_mudbrick_dried.png"},
})
end

if minetest.get_modpath( 'nether') then
minetest.override_item("nether:brick", {
   tiles = {"alignedbricks_nether_brick_top.png",
  "alignedbricks_nether_brick_top.png^[transformFXR90",
  "alignedbricks_nether_brick_side.png",
  "alignedbricks_nether_brick_side.png^[transformFX",
  "alignedbricks_nether_brick.png^[transformFX",
  "alignedbricks_nether_brick.png"},
})
end

if minetest.get_modpath( 'xdecor') then
--[[minetest.override_item("xdecor:cactusbrick", {
   tiles = {"alignedbricks_cactusbrick.png",
  "alignedbricks_cactusbrick.png^[transformFXR90",
  "alignedbricks_cactusbrick.png",
  "alignedbricks_cactusbrick.png^[transformFX",
  "alignedbricks_cactusbrick.png^[transformFX",
  "alignedbricks_cactusbrick.png"},
})--]]

minetest.override_item("xdecor:moonbrick", {
   tiles = {"alignedbricks_moonbrick_top.png",
  "alignedbricks_moonbrick_top.png^[transformFXR90",
  "alignedbricks_moonbrick_side.png",
  "alignedbricks_moonbrick_side.png^[transformFX",
  "alignedbricks_moonbrick.png^[transformFX",
  "alignedbricks_moonbrick.png"},
})
end