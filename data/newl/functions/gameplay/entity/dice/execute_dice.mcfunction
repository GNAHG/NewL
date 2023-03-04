loot replace entity @s armor.head loot gameplay/item/dice
execute store result entity @s Tags[2] int 1 run data get entity @s ArmorItems[3]."tag".Tags[0]
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["1"]}}]}] run function newl:gameplay/entity/dice/summon_dice_1
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["2"]}}]}] run function newl:gameplay/entity/dice/summon_dice_2
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["3"]}}]}] run function newl:gameplay/entity/dice/summon_dice_3
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["4"]}}]}] run function newl:gameplay/entity/dice/summon_dice_4
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["5"]}}]}] run function newl:gameplay/entity/dice/summon_dice_5
execute if entity @s[nbt={ArmorItems:[{"tag":{Tags:["6"]}}]}] run function newl:gameplay/entity/dice/summon_dice_6
scoreboard players set @s newltemp 0
data modify entity @s Motion set from entity @e[type=marker,tag=entity_marker,limit=1] Pos