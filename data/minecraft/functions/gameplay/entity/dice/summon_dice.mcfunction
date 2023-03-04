summon marker 0.00 0.00 0.00 {Tags:["newltemptag"]}
execute at @s as @e[tag=newltemptag] positioned 0.00 0.00 0.00 run tp @s ^ ^0.2 ^0.8
summon armor_stand ~ ~1 ~ {Tags:["summon_dice","dice"],Invisible:1b,Small:1b,DisabledSlots:16191,FallDistance:10}
execute as @e[tag=summon_dice,type=armor_stand,limit=1] at @s run function minecraft:gameplay/entity/dice/execute_dice
kill @e[tag=newltemptag,type=marker]
tag @e[tag=summon_dice] remove summon_dice