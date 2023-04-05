playsound entity.leash_knot.place block @a
summon bat ~ ~-1 ~ {NoAI:true,Silent:true,Tags:["entity_marker_leash_knot","entity_leash_knot_bat"],PersistenceRequired:true,DeathLootTable:"empty",Health:0.1f}
effect give @e[tag=entity_leash_knot_bat] invisibility infinite 7 true
data modify entity @e[tag=entity_marker_leash_knot,limit=1] Leash.UUID set from entity @e[tag=entity_leash_knot_first,limit=1] UUID
summon leash_knot ~ ~ ~ {Tags:["entity_leash_knot_second"],Invulnerable:true}
execute positioned as @e[tag=entity_leash_knot_second,limit=1] run tp @e[tag=entity_marker_leash_knot] ~ ~-0.4 ~-0.15
tag @e[tag=entity_marker_leash_knot] remove entity_marker_leash_knot
tag @e[tag=entity_leash_knot_first] remove entity_leash_knot_first
tag @e[tag=entity_leash_knot_second] remove entity_leash_knot_second
tag @s remove entity_leash_knot_choosing
title @s actionbar {"text": "链接两个栅栏,右键拴绳结删除","color": "green"}
clear @s lead 1
advancement revoke @s only newl:gameplay/entity/leash_knot/leash_knoted
advancement revoke @s only newl:gameplay/entity/leash_knot/leash_knot