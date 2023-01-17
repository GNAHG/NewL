execute store result score @s newltemp run clear @s bowl 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s cookie{CustomModelData:1} 0
execute if score @s newltemp matches 4.. run clear @s bowl 1
execute if score @s newltemp matches 4.. run clear @s cookie{CustomModelData:1} 4
execute if score @s newltemp matches 4.. run give @s rabbit_stew{CustomModelData:1,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oWMcoDjR3/Ug6+8fVyhyQDaqGJfoTiMPs8y7l/PBLXzWw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVocz3gXnid8b3c63Sqo59rktOKab+yOJs1+S1DKWcmKg=="]} 2
execute if score @s newltemp matches 4.. run playsound block.lava.pop player @a ~ ~ ~ 0.5 1.8
execute if score @s newltemp matches 4.. run playsound entity.generic.drink player @a ~ ~ ~ 1 2
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.8
execute if score @s newltemp matches 4.. run particle dripping_honey ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 4.. run particle item honeycomb ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..4 run playsound item.dye.use player @a
execute if score @s newltemp matches 0..4 run function information/recipes/food/tangyuan/tangyuan
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/tangyuan/tangyuan