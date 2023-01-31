execute if entity @s[distance=5..] run advancement revoke @s only recipes/gameplay/entity/tnt/tnt_dispenser
execute if entity @s[distance=..5] unless entity @e[distance=..0.5,type=tnt,tag=!shoottnt] positioned ^ ^ ^0.15 run function ray/entity/tnt/tnt_dispenserray
execute if entity @s[distance=..5] if entity @e[distance=..0.5,type=tnt,tag=!shoottnt] run function gameplay/entity/tnt/tnt_dispenser