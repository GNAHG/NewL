execute anchored eyes as @e[type=item_frame,distance=..0.5] run data merge entity @s {Invisible:1}
execute anchored eyes as @e[type=item_frame,distance=..0.5] run data merge entity @s {ItemRotation:0}
execute anchored eyes at @e[type=item_frame,distance=..0.5] run particle block water ~ ~ ~ 0.2 0.2 0.2 0 16 force @a
execute anchored eyes at @e[type=item_frame,distance=..0.5] run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
playsound item.bucket.empty player @a
advancement revoke @s only recipes/gameplay/ifi