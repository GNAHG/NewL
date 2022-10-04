execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s coal 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s coal 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:5,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVkYBn4M2S3ynrsDUXzfjUU64O+ud4BkGdq4/DwMGvA2k54Eve0f+bjNbbzWmSRBEA="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#495057","text":"煤炭月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.fire.extinguish player @a
execute if score @s newltemp matches 4.. run playsound block.stone.step player @a
execute if score @s newltemp matches 4.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 4.. run particle block coal_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/ore/coal_mooncake