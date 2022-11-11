execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s apple{CustomModelData:2} 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s apple{CustomModelData:2} 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:13,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","uyc6cbYuu+n+tu7/BGhBW9T+U2w4tijJkoOeypM9jxZmu1+frjVZfkLRvGMSxJJcqDS/Oi/VD4dqoaKEZ/AtS2h9eaCr43sQPac3+x8Uidk=","7DGGIGM4tjAZlrPqVLDO1Vmif6St66HDpOtmjJfdM+s="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FAC03D","text":"哈密瓜月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run playsound block.grass.break player @a
execute if score @s newltemp matches 4.. run playsound ui.loom.take_result player @a
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.place player @a
execute if score @s newltemp matches 4.. run particle end_rod ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/food/mooncake/fruit/cantaloupe_mooncake