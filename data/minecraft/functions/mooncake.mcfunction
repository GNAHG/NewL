execute store result score @s newltemp run clear @s bowl{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s honeycomb 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s clay_ball{CustomModelData:1} 0
execute if score @s newltemp matches 2.. run execute store result score @s newltemp run clear @s egg 0
execute if score @s newltemp matches 2.. run clear @s clay_ball{CustomModelData:1} 2
execute if score @s newltemp matches 2.. run clear @s egg 2
execute if score @s newltemp matches 2.. run clear @s honeycomb 2
execute if score @s newltemp matches 2.. run give @s pumpkin_pie 1
execute if score @s newltemp matches 2.. run playsound block.lava.pop player @a
execute if score @s newltemp matches 2.. run playsound block.bone_block.break player @a
execute if score @s newltemp matches 2.. run playsound item.axe.wax_off player @a
execute if score @s newltemp matches 2.. run particle dust 0.945 0.671 0.161 1 ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..1 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake