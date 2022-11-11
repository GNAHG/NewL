execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s iron_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s gold_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s copper_ingot 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s quartz 0
execute if score @s newltemp matches 1.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 1.. run clear @s iron_ingot 1
execute if score @s newltemp matches 1.. run clear @s gold_ingot 1
execute if score @s newltemp matches 1.. run clear @s copper_ingot 1
execute if score @s newltemp matches 1.. run clear @s quartz 1
execute if score @s newltemp matches 1.. run give @s pumpkin_pie{CustomModelData:2,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVeXs9yC2n1XB8Ia9hxQKjVTGJ7R+mvbZxtMPoQnQ98Kw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oW/q7C8x75ig6rriYROngJKvF1/Cq2NjE2IZMmtnYYWTg=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FFF4E6","text":"五"},{"color":"#F76707","text":"金"},{"color":"#FFFFE8","text":"月"},{"color":"#FCC419","text":"饼"}],"text":""}'}} 1
execute if score @s newltemp matches 1.. run playsound block.lava.extinguish player @a
execute if score @s newltemp matches 1.. run playsound block.iron_door.open player @a
execute if score @s newltemp matches 1.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 1.. run particle lava ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/wujin_mooncake