execute store result score @s newltemp run clear @s water_bucket 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s stick{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s sugar{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run clear @s water_bucket 1
execute if score @s newltemp matches 1.. run clear @s sugar{CustomModelData:1} 1
execute if score @s newltemp matches 1.. run give @s bucket 1
execute if score @s newltemp matches 1.. run give @s clay_ball{CustomModelData:1,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"面团"}],"text":""}'}} 1
execute if score @s newltemp matches 1.. run playsound item.bucket.fill player @a
execute if score @s newltemp matches 1.. run particle block light_blue_concrete_powder ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound block.wool.break player @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/material/dough
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/material/dough