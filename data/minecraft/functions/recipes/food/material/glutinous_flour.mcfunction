execute store result score @s newltemp run clear @s wheat 1
execute if score @s newltemp matches 1 run give @s sugar{CustomModelData:2,display:{Name:'{"italic":false,"text":"糯米粉"}'}} 1
execute if score @s newltemp matches 1 run playsound block.sand.place player @a
execute if score @s newltemp matches 1 run playsound block.wood.place player @a
execute if score @s newltemp matches 1 run playsound entity.generic.swim player @a ~ ~ ~ 1 2
execute if score @s newltemp matches 1 run particle item wheat ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/material/glutinous_flour
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/material/glutinous_flour