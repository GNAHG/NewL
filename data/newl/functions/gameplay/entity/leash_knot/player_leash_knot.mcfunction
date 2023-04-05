execute as @e[tag=entity_leash_knot_first] at @s run function newl:particle/block
title @s[tag=entity_leash_knot_choosing] actionbar {"text": "选择第二个栅栏","color": "green"}
title @s[tag=entity_leash_knot_had] actionbar {"text": "已有拴绳在栅栏上，请重新选择","color": "red"}
tag @s remove entity_leash_knot_had
advancement revoke @s only newl:gameplay/entity/leash_knot/player_leash_knot