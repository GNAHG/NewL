particle item stick ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[distance=..5] if entity @e[distance=..1,type=armor_stand] run function gameplay/armor_stand_arms
execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/armor_stand_arms
execute if entity @s[distance=..5] unless entity @e[distance=..1,type=armor_stand] positioned ^ ^ ^0.15 run function ray/armor_stand_armsray