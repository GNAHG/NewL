execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData: 1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s gold_ingot 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData: 1} 1
execute if score @s newltemp matches 4.. run clear @s gold_ingot 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie 1
execute if score @s newltemp matches 4.. run playsound block.fire.extinguish player @a
execute if score @s newltemp matches 4.. run playsound block.stone.step player @a
execute if score @s newltemp matches 4.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 4.. run particle block gold_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/ore/gold_mooncake