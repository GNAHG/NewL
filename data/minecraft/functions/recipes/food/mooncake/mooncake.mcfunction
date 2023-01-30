execute store result score @s newltemp run clear @s bowl{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s honeycomb 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s clay_ball{CustomModelData:1} 0
execute if score @s newltemp matches 2.. run execute store result score @s newltemp run clear @s egg 0
execute if score @s newltemp matches 2.. run clear @s clay_ball{CustomModelData:1} 2
execute if score @s newltemp matches 2.. run clear @s egg 2
execute if score @s newltemp matches 2.. run clear @s honeycomb 2
execute if score @s newltemp matches 2.. run give @s pumpkin_pie{CustomModelData:1,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVKfIOWNvwj9s01RpmnZsKNHSVd+nGC+0lCn+MnTXas3Q=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 2.. run playsound block.lava.pop player @a
execute if score @s newltemp matches 2.. run playsound block.bone_block.break player @a
execute if score @s newltemp matches 2.. run playsound item.axe.wax_off player @a
execute if score @s newltemp matches 2.. run particle dust 0.945 0.671 0.161 1 ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..1 run playsound item.dye.use player @a
execute if score @s newltemp matches 0..1 run function information/recipes/food/mooncake/mooncake
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/mooncake