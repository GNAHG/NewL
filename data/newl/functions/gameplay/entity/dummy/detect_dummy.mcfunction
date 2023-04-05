execute as @e[tag=entity_dummy_pig,nbt=!{Health:150.0f}] on attacker if predicate newl:is_sneaking as @e[tag=entity_dummy_pig,nbt=!{Health:150.0f}] at @s run function newl:gameplay/entity/dummy/kill_dummy
execute as @e[tag=entity_dummy_pig,nbt=!{Health:150.0f}] on attacker unless predicate newl:is_sneaking as @e[tag=entity_dummy_pig,nbt=!{Health:150.0f}] at @s run function newl:gameplay/entity/dummy/attack_dummy
scoreboard players set @e[tag=entity_dummy_display] newltemp 0
execute as @e[tag=entity_dummy_display] store success score @s newltemp run execute on vehicle if entity @s
execute as @e[tag=entity_dummy_display] unless score @s newltemp matches 1 run kill @s