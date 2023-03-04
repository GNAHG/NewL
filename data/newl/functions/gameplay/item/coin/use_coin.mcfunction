data modify entity @s PickupDelay set value 1
execute as @p at @s store success score @s newltemp if entity @s[predicate=newl:50_percent]
execute if score @p newltemp matches 1 run title @p actionbar {"text": "正面!","color": "green"}
execute if score @p newltemp matches 0 run title @p actionbar {"text": "反面!","color": "green"}
execute if score @p newltemp matches 1 as @p at @s positioned ~ ~1.62 ~ run particle wax_on ^-0.2 ^-0.1 ^0.3 0 0 0 0 1
execute if score @p newltemp matches 0 as @p at @s positioned ~ ~1.62 ~ run particle wax_off ^-0.2 ^-0.1 ^0.3 0 0 0 0 1
playsound block.iron_door.open player @a ~ ~ ~ 1 2
playsound block.amethyst_block.hit player @a ~ ~ ~ 0.5 2
playsound block.stone.place player @a ~ ~ ~ 0.5