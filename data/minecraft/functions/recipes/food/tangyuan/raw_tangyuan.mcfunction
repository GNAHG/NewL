execute store result score @s newltemp run clear @s clay_ball{CustomModelData:2} 1
execute if score @s newltemp matches 1 run give @s cookie{CustomModelData:1,display:{Name:'{"text": "生汤圆","italic": false}'}} 4
execute if score @s newltemp matches 1 run playsound item.shovel.flatten player @a ~ ~ ~ 0.5 0.5
execute if score @s newltemp matches 1 run playsound block.honey_block.place player @a ~ ~ ~ 2 
execute if score @s newltemp matches 1 run playsound item.bottle.fill player @a ~ ~ ~ 1 1.8
execute if score @s newltemp matches 1 run particle block white_concrete ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1 run particle falling_water ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/tangyuan/raw_tangyuan
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/tangyuan/raw_tangyuan