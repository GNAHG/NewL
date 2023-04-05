execute store result score @s newltemp run xp query @s levels
execute if score @s newltemp matches ..2 run title @s actionbar {"text": "你没有足够的经验生成假人,需要 16 点(至少 2 级)经验值.","color": "red"}
execute if score @s newltemp matches 2.. run xp add @s -16 points
execute if score @s newltemp matches 2.. run title @s actionbar {"text": "假人已生成,Shift + 左键摧毁.","color": "green"}
execute if score @s newltemp matches 2.. run function newl:gameplay/entity/dummy/summon_dummy
title @s[gamemode=creative] actionbar {"text": "假人已生成,Shift + 左键摧毁.","color": "green"}
execute as @s[gamemode=creative] run function newl:gameplay/entity/dummy/summon_dummy
advancement revoke @s only newl:gameplay/entity/dummy/summon_dummy