execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:10,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#262626","text":"下界合金月饼"}],"text":""}'}} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s dragon_breath{CustomModelData:1} 0
execute if score @s newltemp matches 2.. run clear @s pumpkin_pie{CustomModelData:10,display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#262626","text":"下界合金月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 2.. run clear @s dragon_breath{CustomModelData:1} 2
execute if score @s newltemp matches 2.. run give @s pumpkin_pie{CustomModelData:23,Enchantments:[{id:"minecraft:knockback",lvl:1s}],HideFlags:1,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVpBgIGlT2hdz4K+LVCF5+liLs0Ix/qk/FpghJO18cD8g==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oUiiznKl3XBLRFecW+/TaYSZoN8Hk5s7Dvp1H1+LYIKrQ==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oVkYBn4M2S3ynrsDUXzfjUU64O+ud4BkGdq4/DwMGvA2k54Eve0f+bjNbbzWmSRBEA=","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oW/q7C8x75ig6rriYROngJKydHd0tREAhuXizSpIonnnw==","Ve9GCkx7kJQu8RqjpFoz6EPIVjkNxgA295QUZ5Z8G5Ia3zaqP2vJKnkMsmExYBnE"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FFF1F0","text":"注"},{"color":"#FFCCC7","text":"入"},{"color":"#FFA39E","text":"生"},{"color":"#FF7875","text":"命"},{"color":"#FF4D4F","text":"的"},{"color":"#F5222D","text":"下"},{"color":"#CF1322","text":"界"},{"color":"#A8071A","text":"合"},{"color":"#820014","text":"金"},{"color":"#5C0011","text":"月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 2.. run give @s glass_bottle 2
execute if score @s newltemp matches 2.. run playsound block.brewing_stand.brew player @a
execute if score @s newltemp matches 2.. run playsound entity.firework_rocket.large_blast player @a
execute if score @s newltemp matches 2.. run playsound block.fire.ambient player @a
execute if score @s newltemp matches 2.. run particle block red_concrete ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 2.. run particle wax_on ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..1 run playsound item.dye.use player @a
execute if score @s newltemp matches 0..1 run function information/recipes/food/mooncake/health_mooncake
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/health_mooncake