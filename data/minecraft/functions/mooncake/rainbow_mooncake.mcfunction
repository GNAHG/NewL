execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s red_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s yellow_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s blue_wool 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s green_wool 0
execute if score @s newltemp matches 1.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 1.. run clear @s red_wool 1
execute if score @s newltemp matches 1.. run clear @s yellow_wool 1
execute if score @s newltemp matches 1.. run clear @s blue_wool 1
execute if score @s newltemp matches 1.. run clear @s green_wool 1
execute if score @s newltemp matches 1.. run give @s pumpkin_pie{CustomModelData:11,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8KKRqw/F4RB1zRt8BI6F+pTwhSzpZlGD4Pmd7T+JUqYiA==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8K0Yw7TC0ZuGFRJiDgHKDgoX7J9W8Owr5kZSak6sQACtQ==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8LuepC0S0lxV7odzrXAAzr2Qec9dcImhqed1CjrIvQ06w==","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8K/q7C8x75ig6rriYROngJKvAUrEKYQ6XwpvbqfVvVSBw=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"red","text":"彩"},{"color":"yellow","text":"虹"},{"color":"#0088FF","text":"月"},{"color":"green","text":"饼"}],"text":""}'}} 1
execute if score @s newltemp matches 1.. run playsound block.honey_block.place player @a
execute if score @s newltemp matches 1.. run playsound item.axe.scrape player @a
execute if score @s newltemp matches 1.. run playsound block.wool.break player @a
execute if score @s newltemp matches 1.. run playsound entity.firework_rocket.twinkle_far player @a
execute if score @s newltemp matches 1.. run particle ambient_entity_effect ~ ~1.5 ~ 0 0 0 1 20 force @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/rainbow_mooncake