execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s red_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s yellow_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s blue_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s green_wool 0
execute if score @s newltemp matches 1.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 1.. run clear @s red_wool 1
execute if score @s newltemp matches 1.. run clear @s yellow_wool 1
execute if score @s newltemp matches 1.. run clear @s blue_wool 1
execute if score @s newltemp matches 1.. run clear @s green_wool 1
execute if score @s newltemp matches 1.. run give @s pumpkin_pie 1
execute if score @s newltemp matches 1.. run playsound block.honey_block.place player @a
execute if score @s newltemp matches 1.. run playsound item.axe.scrape player @a
execute if score @s newltemp matches 1.. run playsound block.wool.break player @a
execute if score @s newltemp matches 1.. run playsound entity.firework_rocket.twinkle_far player @a
execute if score @s newltemp matches 1.. run particle ambient_entity_effect ~ ~1.5 ~ 0 0 0 1 20 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
scoreboard players reset @s newltemp