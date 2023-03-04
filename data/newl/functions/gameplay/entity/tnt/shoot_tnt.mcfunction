summon marker 0.00 0.00 0.00 {Tags:["entity_marker"]}
execute at @s as @e[tag=entity_marker] positioned 0.00 0.00 0.00 run tp @s ^ ^ ^1
execute anchored eyes run summon tnt ^ ^ ^-0.2 {Tags:["entity_marker_shoot_tnt","entity_shoot_tnt"],Fuse:80}
data modify entity @e[type=tnt,tag=entity_marker_shoot_tnt,limit=1] Motion set from entity @e[type=marker,tag=entity_marker,limit=1] Pos
title @s actionbar {"text": "砰!","color": "green"}
playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.7
playsound block.fire.ambient player @a ~ ~ ~ 1 1.7
playsound block.lava.pop player @a ~ ~ ~ 0.5 1.7
function newl:gameplay/animation/torch
function newl:gameplay/animation/use_flint_and_steel
kill @e[tag=entity_marker,type=marker]
tag @e[tag=entity_marker_shoot_tnt] remove entity_marker_shoot_tnt
item replace entity @s weapon.mainhand with spyglass
advancement revoke @s only newl:gameplay/entity/tnt/shoot_tnt