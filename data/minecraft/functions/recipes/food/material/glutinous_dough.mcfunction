execute store result score @s newltemp run clear @s water_bucket 0
execute if score @s newltemp matches 1 run execute store result score @s newltemp run clear @s stick{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s sugar{CustomModelData:2} 0
execute if score @s newltemp matches 1.. run clear @s water_bucket 1
execute if score @s newltemp matches 1.. run clear @s sugar{CustomModelData:2} 1
execute if score @s newltemp matches 1.. run give @s bucket 1
execute if score @s newltemp matches 1.. run give @s clay_ball{CustomModelData:2,display:{Name:'{"italic":false,"text":"糯米面团"}'}} 1
execute if score @s newltemp matches 1.. run playsound item.bucket.fill player @a
execute if score @s newltemp matches 1.. run playsound entity.generic.swim player @a ~ ~ ~ 1 2
execute if score @s newltemp matches 1.. run particle block light_blue_concrete_powder ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound block.wool.break player @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/material/glutinous_dough
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/material/glutinous_dough