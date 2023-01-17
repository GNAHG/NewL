summon chest_boat ~ ~ ~
data modify entity @e[type=chest_boat,limit=1,distance=..0.5] Type set from entity @e[type=boat,limit=1,distance=..0.5] Type
data modify entity @e[type=chest_boat,limit=1,distance=..0.5] Rotation set from entity @e[type=boat,limit=1,distance=..0.5] Rotation
playsound block.chest.locked player @a
advancement revoke @s only recipes/gameplay/entity/boat/chest_boat
kill @e[type=boat,limit=1,distance=..0.5]