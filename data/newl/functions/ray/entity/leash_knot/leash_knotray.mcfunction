execute if entity @s[distance=..5] if block ~ ~ ~ #fences if entity @e[type=leash_knot,distance=..1] run advancement revoke @s only newl:gameplay/entity/leash_knot/leash_knot
execute if entity @s[distance=..5] if block ~ ~ ~ #fences if entity @e[type=leash_knot,distance=..1] run title @s actionbar {"text": "已有拴绳在栅栏上","color": "red"}
execute if entity @s[distance=5..] run advancement revoke @s only newl:gameplay/entity/leash_knot/leash_knot
execute if entity @s[distance=..5] unless block ~ ~ ~ #fences positioned ^ ^ ^0.15 run function newl:ray/entity/leash_knot/leash_knotray
execute if entity @s[distance=..5] if block ~ ~ ~ #fences unless entity @e[type=leash_knot,distance=..1] run function newl:gameplay/entity/leash_knot/leash_knot