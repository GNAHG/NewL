execute store result score @s newltemp run clear @s wheat 1
execute if score @s newltemp matches 1 run give @s sugar{CustomModelData:1,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"面粉"}],"text":""}'}} 1
execute if score @s newltemp matches 1 run playsound block.sand.place player @a
execute if score @s newltemp matches 1 run particle item wheat ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/material/flour
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/material/flour