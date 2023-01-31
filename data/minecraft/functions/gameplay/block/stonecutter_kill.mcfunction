execute store result score @s newltemp run gamerule showDeathMessages
execute if score @s newltemp matches 1 run gamerule showDeathMessages false
kill @s
execute if score @s newltemp matches 1 run gamerule showDeathMessages true
tellraw @a [{"selector": "@s"},{"text": "被切石机斩首了"}]