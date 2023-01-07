execute anchored eyes as @e[type=armor_stand,distance=..1] run data merge entity @s {ShowArms:1}
execute anchored eyes at @e[type=armor_stand,distance=..1] run particle block oak_log ~ ~ ~ 0.2 0.2 0.2 0 16 force @a
execute anchored eyes at @e[type=armor_stand,distance=..1] run particle end_rod ~ ~0.5 ~ 0.075 0.32 0.075 0 16 force @a
playsound block.wood.place player @a
advancement revoke @s only recipes/gameplay/armor_stand_arms