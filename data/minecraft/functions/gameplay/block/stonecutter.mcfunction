execute store result score @s newltemp run data get entity @s Health
scoreboard players set @s[gamemode=creative] newltemp 20
execute if score @s newltemp matches 1..6 run summon minecraft:area_effect_cloud ~ ~1 ~ {Radius:0.23f,Duration:6,Particle:"block air",Effects:[{Id:6b,Amplifier:29}],ReapplicationDelay:0,WaitTime:0}
execute if score @s newltemp matches 1..6 run playsound entity.player.death player @a
execute if score @s newltemp matches 1..6 run tellraw @a [{"selector": "@s"},{"text": "被切石机斩首了"}]
execute if score @s newltemp matches 7.. run summon minecraft:area_effect_cloud ~ ~1 ~ {Radius:0.23f,Duration:6,Particle:"block air",Effects:[{Id:7b,Amplifier:1}],ReapplicationDelay:0,WaitTime:0}
advancement revoke @s only recipes/gameplay/block/stonecutter