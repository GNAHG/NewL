particle falling_dust brown_wool ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[distance=..5] if entity @e[distance=..0.5,type=item_frame] run function gameplay/ifni
execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/ifni
execute if entity @s[distance=..5] unless entity @e[distance=..0.5,type=item_frame] positioned ^ ^ ^0.15 run function ray/ifniray