summon marker 0.00 0.00 0.00 {Tags:["newltemptag"]}
execute at @s as @e[tag=newltemptag] positioned 0.00 0.00 0.00 run tp @s ^ ^ ^1
execute anchored eyes run summon tnt ^ ^ ^-0.2 {Tags:["shooting","shoottnt"],Fuse:80}
data modify entity @e[type=tnt,tag=shooting,limit=1] Motion set from entity @e[type=marker,tag=newltemptag,limit=1] Pos
title @s actionbar {"text": "砰!","color": "green"}
playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.7
playsound block.fire.ambient player @a ~ ~ ~ 1 1.7
playsound block.lava.pop player @a ~ ~ ~ 0.5 1.7
function gameplay/animation/torch
function gameplay/animation/use_flint_and_steel
kill @e[tag=newltemptag,type=marker]
tag @e[tag=shooting] remove shooting
item replace entity @s weapon.mainhand with spyglass
advancement revoke @s only recipes/gameplay/entity/tnt/shoot_tnt