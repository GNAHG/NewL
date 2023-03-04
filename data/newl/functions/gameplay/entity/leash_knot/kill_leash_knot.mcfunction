execute as @e[tag=entity_leash_knot_bat,distance=..6] at @s unless entity @e[type=leash_knot,distance=..0.5] run kill @s
title @s actionbar {"text": "删除拴绳结","color": "green"}
playsound entity.leash_knot.break player @a
advancement revoke @s only newl:gameplay/entity/leash_knot/kill_leash_knot