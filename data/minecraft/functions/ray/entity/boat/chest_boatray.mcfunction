execute if entity @s[distance=..5] if entity @e[distance=..0.5,type=boat] at @e[distance=..0.5,type=boat] run function gameplay/entity/boat/chest_boat
execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/entity/boat/chest_boat
execute if entity @s[distance=..5] unless entity @e[distance=..0.5,type=boat] positioned ^ ^ ^0.15 run function ray/entity/boat/chest_boatray