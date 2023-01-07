particle item gunpowder ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[distance=..20] if entity @e[distance=..0.5,type=glow_item_frame] run function gameplay/firecrackers
execute if entity @s[distance=..20] unless block ~ ~ ~ air run function gameplay/firecrackers
execute if entity @s[distance=20..] run advancement revoke @s only recipes/gameplay/firecrackers
execute if entity @s[distance=20..] run function gameplay/firecrackers
execute if entity @s[distance=..20] unless entity @e[distance=..0.5,type=glow_item_frame] if block ~ ~ ~ air positioned ^ ^ ^0.15 run function ray/firecrackersray