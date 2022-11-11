execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s beetroot 0
execute if score @s newltemp matches 2.. run execute store result score @s newltemp run clear @s sweet_berries 0
execute if score @s newltemp matches 2.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 2.. run clear @s beetroot 2
execute if score @s newltemp matches 2.. run clear @s sweet_berries 2
execute if score @s newltemp matches 2.. run give @s pumpkin_pie{CustomModelData:3,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oUiiznKl3XBLRFecW+/TaYSlBH2SRhrsqNLcwGLzW3Bcw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVpBgIGlT2hdz4K+LVCF5+lOHd8XvyD5hGccoWUPnAryQ=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"yellow","text":"豆沙月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 2.. run playsound block.wool.break player @a
execute if score @s newltemp matches 2.. run playsound block.grass.break player @a
execute if score @s newltemp matches 2.. run playsound block.barrel.open player @a
execute if score @s newltemp matches 2.. run particle block yellow_wool ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..1 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/dousha_mooncake