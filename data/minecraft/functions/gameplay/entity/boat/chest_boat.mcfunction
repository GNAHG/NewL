execute store success score @s newltemp run clear @s chest 1
execute if score @s newltemp matches 1 run summon chest_boat ~ ~ ~
execute if score @s newltemp matches 1 run data modify entity @e[type=chest_boat,limit=1,distance=..0.5] Type set from entity @e[type=boat,limit=1,distance=..0.5] Type
execute if score @s newltemp matches 1 run data modify entity @e[type=chest_boat,limit=1,distance=..0.5] Rotation set from entity @e[type=boat,limit=1,distance=..0.5] Rotation
execute if score @s newltemp matches 1 run playsound block.chest.locked player @a
execute if score @s newltemp matches 1 run kill @e[type=boat,limit=1,distance=..0.5]
advancement revoke @s only recipes/gameplay/entity/boat/chest_boat