summon marker 0.0 0.0 0.0 {Tags:["tntmarker"]}
execute at @s as @e[tag=tntmarker] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
execute anchored eyes run summon tnt ^ ^ ^ {Tags:["shooting","shoottnt"],Fuse:80}
data modify entity @e[type=tnt,tag=shooting,limit=1] Motion set from entity @e[type=marker,tag=tntmarker,limit=1] Pos
title @s actionbar {"text": "砰!","color": "green"}
playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.7
playsound block.fire.ambient player @a ~ ~ ~ 1 1.7
playsound block.lava.pop player @a ~ ~ ~ 0.5 1.7
function gameplay/animation/torch
function gameplay/animation/use_flint_and_steel
kill @e[tag=tntmarker,type=marker]
tag @e[tag=shooting] remove shooting
advancement revoke @s only recipes/gameplay/entity/tnt/tnt_dispenser
advancement revoke @s only recipes/gameplay/entity/tnt/shoot_tnt