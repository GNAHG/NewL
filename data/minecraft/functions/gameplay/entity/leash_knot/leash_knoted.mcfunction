playsound entity.leash_knot.place block @a
summon bat ~ ~-1 ~ {NoAI:true,Silent:true,ActiveEffects:[{Id:14,ShowParticles:false,Duration:2147483646}],Tags:["leadmarker","led"],PersistenceRequired:true,DeathLootTable:"empty",Health:0.1f}
data modify entity @e[tag=leadmarker,limit=1] Leash.UUID set from entity @e[tag=lead1,limit=1] UUID
summon leash_knot ~ ~ ~ {Tags:["lead2"],Invulnerable:true}
execute positioned as @e[tag=lead2,limit=1] run tp @e[tag=leadmarker] ~ ~-0.4 ~-0.15
tag @e[tag=leadmarker] remove leadmarker
tag @e[tag=lead1] remove lead1
tag @e[tag=lead2] remove lead2
tag @s remove playerlead
title @s actionbar {"text": "链接两个栅栏,右键拴绳结删除","color": "green"}
clear @s lead 1
advancement revoke @s only recipes/gameplay/entity/leash_knot/leash_knoted
advancement revoke @s only recipes/gameplay/entity/leash_knot/leash_knot