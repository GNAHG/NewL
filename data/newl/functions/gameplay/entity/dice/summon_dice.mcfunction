data modify entity @s PickupDelay set value 4
summon marker 0.00 0.00 0.00 {Tags:["entity_marker"]}
execute at @p as @e[tag=entity_marker] positioned 0.00 0.00 0.00 run tp @s ^ ^0.2 ^0.8
summon armor_stand ~ ~1 ~ {Tags:["entity_marker_dice","entity_dice"],Invisible:1b,Small:1b,DisabledSlots:16191,FallDistance:10}
execute as @e[tag=entity_marker_dice,type=armor_stand,limit=1] at @s run function newl:gameplay/entity/dice/execute_dice
kill @e[tag=entity_marker,type=marker]
tag @e[tag=entity_marker_dice] remove entity_marker_dice