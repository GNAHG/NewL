data modify entity @s PickupDelay set value 1
execute as @p at @s store success score @s newltemp if entity @s[predicate=50_percent]
execute if score @p newltemp matches 1 run title @p actionbar {"text": "正面!","color": "green"}
execute if score @p newltemp matches 0 run title @p actionbar {"text": "反面!","color": "green"}
execute if score @p newltemp matches 1 as @p at @s positioned ~ ~1.62 ~ run particle minecraft:wax_on ^-0.2 ^-0.1 ^0.3 0 0 0 0 1
execute if score @p newltemp matches 0 as @p at @s positioned ~ ~1.62 ~ run particle minecraft:wax_off ^-0.2 ^-0.1 ^0.3 0 0 0 0 1
playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 2
playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 0.5 2
playsound minecraft:block.stone.place player @a ~ ~ ~ 0.5