execute as @e[tag=led,distance=..6] at @s unless entity @e[type=leash_knot,distance=..0.5] run kill @s
title @s actionbar {"text": "删除拴绳结","color": "green"}
playsound entity.leash_knot.break player @a
advancement revoke @s only recipes/gameplay/entity/leash_knot/kill_leash_knot