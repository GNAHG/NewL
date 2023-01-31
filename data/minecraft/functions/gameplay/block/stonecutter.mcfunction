execute store result score @s newltemp run data get entity @s Health
scoreboard players set @s[gamemode=creative] newltemp 20
execute if score @s newltemp matches 1..6 run function gameplay/block/stonecutter_kill
execute if score @s newltemp matches 7.. run effect give @s instant_damage 1 0 true
advancement revoke @s only recipes/gameplay/block/stonecutter