execute if entity @s[distance=..5] if block ~ ~ ~ #fences if entity @e[type=leash_knot,distance=..1] run advancement revoke @s only recipes/gameplay/entity/leash_knot/leash_knoted
execute if entity @s[distance=..5] if block ~ ~ ~ #fences if entity @e[type=leash_knot,distance=..1] run tag @s add playerleadno
execute if entity @s[distance=..5] if block ~ ~ ~ #fences if entity @e[type=leash_knot,distance=..1] run function gameplay/entity/leash_knot/player_leash_knot
execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/entity/leash_knot/leash_knoted
execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/entity/leash_knot/leash_knot
execute if entity @s[distance=..5] unless block ~ ~ ~ #fences positioned ^ ^ ^0.15 run function ray/entity/leash_knot/leash_knotedray
execute if entity @s[distance=..5] if block ~ ~ ~ #fences unless entity @e[type=leash_knot,distance=..1] run function gameplay/entity/leash_knot/leash_knoted