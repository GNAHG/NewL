execute store result score @s newltemp run clear @s oak_planks 1
execute if score @s newltemp matches 1 run give @s bowl{CustomModelData:1,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"月饼模具"}],"text":""}'}} 1
execute if score @s newltemp matches 1 run playsound block.wood.break player @a
execute if score @s newltemp matches 1 run particle item bowl ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/material/mooncake_mold
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/material/mooncake_mold