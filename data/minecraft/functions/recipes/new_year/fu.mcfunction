execute store result score @s newltemp run clear @s paper{CustomModelData:2} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s black_dye 0
execute if score @s newltemp matches 1.. run clear @s paper{CustomModelData:2} 1
execute if score @s newltemp matches 1.. run clear @s black_dye 1
execute if score @s newltemp matches 1.. run give @s filled_map{map:-7881,display:{Name:'{"italic":false,"text":"福"}'}} 1
execute if score @s newltemp matches 1.. run playsound block.wooden_door.open player @a ~ ~ ~ 1 1.8 1
execute if score @s newltemp matches 1.. run particle item black_dye ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound ui.cartography_table.take_result player @a ~ ~ ~ 1 1.5 1
execute if score @s newltemp matches 1.. run playsound ui.loom.take_result player @a ~ ~ ~ 1 1.5 1
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/new_year/fu
scoreboard players reset @s newltemp
advancement revoke @s only recipes/new_year/fu
summon minecraft:marker ~ ~ ~ {Tags:["m3"]}