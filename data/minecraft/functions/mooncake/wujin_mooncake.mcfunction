execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s iron_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s gold_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s copper_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s quartz 0
execute if score @s newltemp matches 1.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 1.. run clear @s iron_ingot 1
execute if score @s newltemp matches 1.. run clear @s gold_ingot 1
execute if score @s newltemp matches 1.. run clear @s copper_ingot 1
execute if score @s newltemp matches 1.. run clear @s quartz 1
execute if score @s newltemp matches 1.. run give @s pumpkin_pie 1
execute if score @s newltemp matches 1.. run playsound block.lava.extinguish player @a
execute if score @s newltemp matches 1.. run playsound block.iron_door.open player @a
execute if score @s newltemp matches 1.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 1.. run particle lava ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/wujin_mooncake