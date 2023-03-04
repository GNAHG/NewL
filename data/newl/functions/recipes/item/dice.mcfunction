playsound block.piston.extend player @a
playsound block.iron_door.open player @a ~ ~ ~ 1 0.6
setblock ~ ~ ~ air destroy
execute store result score @s newltemp run gamerule doTileDrops
execute if score @s newltemp matches 1 run gamerule doTileDrops false
fill ~ ~-1 ~ ~ ~-3 ~ air destroy
execute if score @s newltemp matches 1 run gamerule doTileDrops true
particle happy_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
give @s player_head{SkullOwner:{Id:[I;1061813703,-1749728932,-2072064375,1201616795],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk3OTU1NDYyZTRlNTc2NjY0NDk5YWM0YTFjNTcyZjYxNDNmMTlhZDJkNjE5NDc3NjE5OGY4ZDEzNmZkYjIifX19"}]}},Tags:["dice"],display:{Name:'{"italic": false,"text": "骰子"}'},Enchantments:[{id:"infinity",lvl:1}]}
advancement revoke @s only newl:recipes/item/dice