execute store result score @s newltemp run clear @s paper{CustomModelData:2} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s gunpowder 0
execute if score @s newltemp matches 1.. run clear @s paper{CustomModelData:2} 1
execute if score @s newltemp matches 1.. run clear @s gunpowder 1
execute if score @s newltemp matches 1.. run give @s spyglass{CustomModelData:1,display:{Name:'{"italic":false,"text":"爆竹"}'}} 6
execute if score @s newltemp matches 1.. run playsound block.piston.contract player @a ~ ~ ~ 1 1.8 1
execute if score @s newltemp matches 1.. run particle item gunpowder ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound entity.tnt.primed player @a ~ ~ ~ 1 2
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/new_year/firecrackers
scoreboard players reset @s newltemp
advancement revoke @s only recipes/new_year/firecrackers