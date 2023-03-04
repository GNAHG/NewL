scoreboard players add @e[tag=entity_dice,type=armor_stand] newltemp 1
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run playsound entity.item_frame.break block @a ~ ~ ~ 1 2
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run particle smoke ~ ~0.8 ~ 0.2 0.2 0.2 0.15 10
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run particle large_smoke ~ ~0.8 ~ 0.2 0.2 0.2 0 6
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run kill @s