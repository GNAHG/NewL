execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s apple{CustomModelData:1} 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s apple{CustomModelData:1} 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:12,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8JpBgIGlT2hdz4K+LVCF5+l869FZV14sjq2gkSoOjTVNg==","XXN8H6OU6h8zTB84HnVc6/bKsWIQJETbWAuJkKuIoA031XgfujRgNiNtP/zKF8u2PZibQ73+RFKfK/hbJPNfQg=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FFEE6F","text":"香蕉月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.grass.break player @a
execute if score @s newltemp matches 4.. run playsound ui.loom.take_result player @a
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.place player @a
execute if score @s newltemp matches 4.. run particle end_rod ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/food/mooncake/fruit/banana_mooncake
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/fruit/banana_mooncake