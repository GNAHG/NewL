execute anchored eyes as @e[type=glow_item_frame,distance=..0.5] run data merge entity @s {Invisible:1}
execute anchored eyes as @e[type=glow_item_frame,distance=..0.5] run data merge entity @s {ItemRotation:0}
execute anchored eyes at @e[type=glow_item_frame,distance=..0.5] run particle block water ~ ~ ~ 0.2 0.2 0.2 0 16 force @a
execute anchored eyes at @e[type=glow_item_frame,distance=..0.5] run function newl:particle/block
playsound item.bucket.empty player @a
advancement revoke @s only newl:gameplay/entity/item_frame/gifi