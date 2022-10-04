execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s copper_ingot 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s copper_ingot 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:6,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","XXN8H6OU6h8zTB84HnVc69BdM51EvVu33+lwpFa9SRz2yrFiECRE21gLiZCriKANQsYpFFC/Sbdp2nkKNAPc4OnTsFMEyz1b/y6JICX5fWe76Xwhzic3oYWjQxf8MTU+","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVkYBn4M2S3ynrsDUXzfjUUmP841UJK/DxFH/BFEZVhkhrfNqo/a8kqeQyyYTFgGcQ=","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVeXs9yC2n1XB8Ia9hxQKjVTGJ7R+mvbZxtMPoQnQ98Kw=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#F76707","text":"铜月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.fire.extinguish player @a
execute if score @s newltemp matches 4.. run playsound block.stone.step player @a
execute if score @s newltemp matches 4.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 4.. run particle block copper_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/ore/copper_mooncake