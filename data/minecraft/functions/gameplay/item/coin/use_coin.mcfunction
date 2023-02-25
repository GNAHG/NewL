data modify entity @s PickupDelay set value 1
execute as @p at @s store success score @s newltemp if entity @s[predicate=50_percent]
execute if score @p newltemp matches 1 run title @p actionbar {"text": "正面!","color": "green"}
execute if score @p newltemp matches 0 run title @p actionbar {"text": "反面!","color": "green"}
playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 2
playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 0.5 2
playsound minecraft:block.stone.place player @a ~ ~ ~ 0.5