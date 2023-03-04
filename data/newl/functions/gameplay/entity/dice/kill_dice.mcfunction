scoreboard players add @e[tag=entity_dice,type=armor_stand] newltemp 1
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=100..}] at @s run playsound entity.item_frame.add_item block @a ~ ~ ~ 0.7 2
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=100..}] at @s run particle item white_dye ~ ~0.5 ~ 0.2 0.2 0.2 0.05 4
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=100..}] at @s run tp @s ~ ~-0.03 ~
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run playsound entity.item_frame.break block @a ~ ~ ~ 1 2
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run particle smoke ~ ~0.8 ~ 0.2 0.2 0.2 0 10
execute as @e[tag=entity_dice,type=armor_stand,scores={newltemp=130..}] at @s run kill @s