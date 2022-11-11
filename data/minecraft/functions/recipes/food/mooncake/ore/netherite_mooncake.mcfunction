execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s netherite_ingot 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s netherite_ingot 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:10,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVpBgIGlT2hdz4K+LVCF5+lvCaLmySMsd07t2YYzHUHuw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oUiiznKl3XBLRFecW+/TaYSQrrVvhUQPOi1Wdn5B3DCaw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVkYBn4M2S3ynrsDUXzfjUUkNSeV8V5SkZrt5VXI6Xoqk54Eve0f+bjNbbzWmSRBEA=","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oW/q7C8x75ig6rriYROngJKT7b0EY4FB0Gva0vQPiBz1w=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#262626","text":"下界合金月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.fire.extinguish player @a
execute if score @s newltemp matches 4.. run playsound block.stone.step player @a
execute if score @s newltemp matches 4.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 4.. run particle block netherite_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/ore/netherite_mooncake