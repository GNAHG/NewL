execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s apple{CustomModelData:7} 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s apple{CustomModelData:7} 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:18,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8JpBgIGlT2hdz4K+LVCF5+l869FZV14sjq2gkSoOjTVNg==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8L58buv+LizXGCogrUomExf/z7T7eOp056Wtz5ki8+0HUZ58lvCZWSdBzBfI/DG0xY="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FFC15C","text":"橙子月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.grass.break player @a
execute if score @s newltemp matches 4.. run playsound ui.loom.take_result player @a
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.place player @a
execute if score @s newltemp matches 4.. run particle end_rod ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/fruit/orange_mooncake