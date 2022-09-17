execute store result score @s newltemp run clear @s oak_planks 1
execute if score @s newltemp matches 1 run give @s bowl 1
execute if score @s newltemp matches 1 run playsound block.wood.break player @s
execute if score @s newltemp matches 1 run particle item bowl ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @s
scoreboard players reset @s newltemp