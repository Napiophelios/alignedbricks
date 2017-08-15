--[[
--
-- AlignedBricks mod for Minetest_game 0.4.16
-- by Napiophelios
--
-- Depends :
-- default
-- stairs
-- mudbrick?
-- nether?
-- xdecor?
--
-- All code/textures derived from Minetest_game
--
-- License of code:
-- LGPL v2.1
--
-- License of textures:
-- Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
--
--]]

alignedbricks = {}

-- override default bricks { "<node name>", "<image name>" }
local bricks = {
	{"brick", "brick"},
	{"desert_sandstone_brick", "desert_sandstone_brick"},
	{"desert_stonebrick", "desert_stone_brick"},
	{"obsidianbrick", "obsidian_brick"},
	{"sandstonebrick", "sandstone_brick"},
	{"silver_sandstone_brick", "silver_sandstone_brick"},
	{"stonebrick", "stone_brick"},
}

for _, bricks in pairs(bricks) do

	minetest.override_item("default:" .. bricks[1] .. "", {
		tiles = {
		"alignedbricks_" .. bricks[2] .. "_top.png",
		"alignedbricks_" .. bricks[2] .. "_top.png^[transformFXR90",
		"alignedbricks_" .. bricks[2] .. "_side.png",
		"alignedbricks_" .. bricks[2] .. "_side.png^[transformFX",
		"alignedbricks_" .. bricks[2] .. ".png^[transformFX",
		"alignedbricks_" .. bricks[2] .. ".png"},
	})
	
end

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

	minetest.override_item("xdecor:moonbrick", {
		tiles = {"alignedbricks_moonbrick_top.png",
		"alignedbricks_moonbrick_top.png^[transformFXR90",
		"alignedbricks_moonbrick_side.png",
		"alignedbricks_moonbrick_side.png^[transformFX",
		"alignedbricks_moonbrick.png^[transformFX",
		"alignedbricks_moonbrick.png"},
	})
	
end


-- register stacked block slabs
alignedbricks.register = function(dslabs_name, dslabs_desc, dslabs_images, dslabs_groups, dslabs_sounds, dslabs_craftitem)

	minetest.register_node(dslabs_name, {
		description = dslabs_desc,
		tiles = dslabs_images,
		is_ground_content = false,
		groups = dslabs_groups,
		sounds = dslabs_sounds,
	})

-- crafting recipe
	minetest.register_craft({
		output = dslabs_name .. ' 2',
		recipe = {
			{dslabs_craftitem, '', dslabs_craftitem},
			{dslabs_craftitem, '', dslabs_craftitem},
		},
	})

-- reverse recipe
	minetest.register_craft({
		output = dslabs_craftitem .. ' 2',
		recipe = {
			{dslabs_name},
		},
	})
	
end

-- stacked block slabs
alignedbricks.register(
	"alignedbricks:dslabs_bronzeblock",
	"Stacked Bronze Block Slabs",
	{"default_bronze_block.png", "default_bronze_block.png", "alignedbricks_dslabs_bronze_block.png"},
	{cracky = 1, level = 2},
	default.node_sound_metal_defaults(),
	"stairs:slab_bronzeblock"
)

alignedbricks.register(
	"alignedbricks:dslabs_copperblock",
	"Stacked Copper Block Slabs",
	{"default_copper_block.png", "default_copper_block.png", "alignedbricks_dslabs_copper_block.png"},
	{cracky = 1, level = 2},
	default.node_sound_metal_defaults(),
	"stairs:slab_copperblock"
)

alignedbricks.register(
	"alignedbricks:dslabs_desert_sandstone_block",
	"Stacked Desert Sandstone Block Slabs",
	{"default_desert_sandstone_block.png", "default_desert_sandstone_block.png", "alignedbricks_dslabs_desert_sandstone_block.png"},
	{cracky = 2},
	default.node_sound_stone_defaults(),
	"stairs:slab_desert_sandstone_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_desert_stone_block",
	"Stacked Desert Stone Block Slabs",
	{"default_desert_stone_block.png", "default_desert_stone_block.png", "alignedbricks_dslabs_desert_stone_block.png"},
	{cracky = 2, stone = 1},
	default.node_sound_stone_defaults(),
	"stairs:slab_desert_stone_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_goldblock",
	"Stacked Gold Block Slabs",
	{"default_gold_block.png", "default_gold_block.png", "alignedbricks_dslabs_gold_block.png"},
	{cracky = 1},
	default.node_sound_metal_defaults(),
	"stairs:slab_goldblock"
)

alignedbricks.register(
	"alignedbricks:dslabs_obsidian_block",
	"Stacked Obsidian Block Slabs",
	{"default_obsidian_block.png", "default_obsidian_block.png", "alignedbricks_dslabs_obsidian_block.png"},
	{cracky = 1, level = 2},
	default.node_sound_stone_defaults(),
	"stairs:slab_obsidian_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_sandstone_block",
	"Stacked Sandstone Block Slabs",
	{"default_sandstone_block.png", "default_sandstone_block.png", "alignedbricks_dslabs_sandstone_block.png"},
	{cracky = 2},
	default.node_sound_stone_defaults(),
	"stairs:slab_sandstone_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_silver_sandstone_block",
	"Stacked Silver Sandstone Block Slabs",
	{"default_silver_sandstone_block.png", "default_silver_sandstone_block.png", "alignedbricks_dslabs_silver_sandstone_block.png"},
	{cracky = 2},
	default.node_sound_stone_defaults(),
	"stairs:slab_silver_sandstone_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_steelblock",
	"Stacked Steel Block Slabs",
	{"default_steel_block.png", "default_steel_block.png", "alignedbricks_dslabs_steel_block.png"},
	{cracky = 1, level = 2},
	default.node_sound_metal_defaults(),
	"stairs:slab_steelblock"
)

alignedbricks.register(
	"alignedbricks:dslabs_stone_block",
	"Stacked Stone Block Slabs",
	{"default_stone_block.png", "default_stone_block.png", "alignedbricks_dslabs_stone_block.png"},
	{cracky = 2, stone = 1},
	default.node_sound_stone_defaults(),
	"stairs:slab_stone_block"
)

alignedbricks.register(
	"alignedbricks:dslabs_tinblock",
	"Stacked Tin Block Slabs",
	{"default_tin_block.png", "default_tin_block.png", "alignedbricks_dslabs_tin_block.png"},
	{cracky = 1, level = 2},
	default.node_sound_metal_defaults(),
	"stairs:slab_tinblock"
)
