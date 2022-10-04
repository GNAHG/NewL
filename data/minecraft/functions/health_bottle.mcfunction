execute store result score @s newltemp run clear @s glass_bottle 1
execute if score @s newltemp matches 1.. run give @s dragon_breath{CustomModelData:1,NBTCommands:["6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oXEJ2F+lvRWVWQ9tVW7VSA7zDqZN7E3nWEyCX4IU+CdKg==","EEfwdAWWdqhTE7CMQlJFJEX3lhvHy2CTL0w9lw6A3bSP/tuUu6r5IrM23smzr0dNgpswLNh3NyiNH5S2aR/tjAVFTu4ppIqwt8rZfp78K2Q=","uyc6cbYuu+n+tu7/BGhBW9T+U2w4tijJkoOeypM9jxbVx7Zv6l3jF1j+1CBkATnj"],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FF7875","text":"生命之瓶"}],"text":""}'}} 1
execute if score @s newltemp matches 1.. run effect give @s instant_damage 1 1 true
execute if score @s newltemp matches 1.. run playsound item.bottle.fill_dragonbreath player @s
execute if score @s newltemp matches 1.. run particle block redstone_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound block.stem.fall player @s
execute if score @s newltemp matches 0 run playsound item.dye.use player @s
scoreboard players reset @s newltemp
advancement revoke @s only recipes/health_bottle