execute store result score @s newltemp run clear @s wheat 1
execute if score @s newltemp matches 1 run give @s sugar 1
execute if score @s newltemp matches 1 run playsound block.sand.place player @a
execute if score @s newltemp matches 1 run particle item wheat ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
scoreboard players reset @s newltemp