execute store result score @s newltemp run clear @s paper{CustomModelData: 1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s red_dye 0
execute if score @s newltemp matches 1.. run clear @s paper{CustomModelData: 1} 1
execute if score @s newltemp matches 1.. run clear @s red_dye 1
execute if score @s newltemp matches 1.. run give @s paper{CustomModelData: 2, display: {Name: '{"text": "红纸","italic": false}'}} 1
execute if score @s newltemp matches 1.. run playsound minecraft:item.bottle.empty player @a ~ ~ ~ 1 0 1
execute if score @s newltemp matches 1.. run particle item red_dye ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 2 1
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/others/red_paper
scoreboard players reset @s newltemp
advancement revoke @s only recipes/others/red_paper