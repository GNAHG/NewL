execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s water_bucket 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s water_bucket 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie 1
execute if score @s newltemp matches 4.. run give @s bucket 4
execute if score @s newltemp matches 4.. run playsound item.bottle.fill player @a
execute if score @s newltemp matches 4.. run playsound item.bottle.empty player @a
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.break player @a
execute if score @s newltemp matches 4.. run particle dripping_water ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/water_mooncake