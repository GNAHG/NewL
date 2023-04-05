playsound item.axe.wax_off block @a
playsound block.bone_block.break block @a ~ ~ ~ 1 0
particle heart ~ ~ ~ 0.2 1 0.2 0 16
execute store result score @s newltemp run gamerule doTileDrops
execute if score @s newltemp matches 1 run gamerule doTileDrops false
fill ~ ~-1 ~ ~ ~-3 ~ air destroy
execute if score @s newltemp matches 1 run gamerule doTileDrops true
summon pig ~ ~ ~ {Attributes: [{Name: "generic.max_health", Base: 150.0d}], Tags: ["entity_dummy_pig", "entity_marker_dummy_pig"], Silent: true, DeathLootTable: "empty", Health: 150.0f}
summon block_display ~ ~ ~ {CustomNameVisible:true,block_state: {Name: "carved_pumpkin"}, transformation: {translation: [-0.375f, -0.675f, -0.375f], left_rotation: [0f, 0f, 0f, 1f], scale: [0.75f, 0.75f, 0.75f], right_rotation: [0f, 0f, 0f, 1f]}, Tags: ["entity_dummy_display", "entity_marker_dummy_display"]}
effect give @e[tag=entity_marker_dummy_pig] slowness infinite 7 true
effect give @e[tag=entity_marker_dummy_pig] invisibility infinite 7 true
ride @e[tag=entity_marker_dummy_display,limit=1] mount @e[tag=entity_marker_dummy_pig,limit=1]
tag @e[tag=entity_marker_dummy_display] remove entity_marker_dummy_display
tag @e[tag=entity_marker_dummy_pig] remove entity_marker_dummy_pig