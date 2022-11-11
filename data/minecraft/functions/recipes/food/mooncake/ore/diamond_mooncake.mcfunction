execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s diamond 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s diamond 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:9,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVpBgIGlT2hdz4K+LVCF5+liLs0Ix/qk/FpghJO18cD8g==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oUiiznKl3XBLRFecW+/TaYSZoN8Hk5s7Dvp1H1+LYIKrQ==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVkYBn4M2S3ynrsDUXzfjUU64O+ud4BkGdq4/DwMGvA2k54Eve0f+bjNbbzWmSRBEA=","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oW/q7C8x75ig6rriYROngJKydHd0tREAhuXizSpIonnnw=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#36CFC9","text":"钻石月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.fire.extinguish player @a
execute if score @s newltemp matches 4.. run playsound block.stone.step player @a
execute if score @s newltemp matches 4.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 4.. run particle block diamond_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/ore/diamond_mooncake