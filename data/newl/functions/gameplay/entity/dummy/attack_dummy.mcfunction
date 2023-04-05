#获取(150-Damage)*100
execute store result score @s newltemp run data get entity @s Health 100
#获取Damage*100
scoreboard players set @s newlmath -1
scoreboard players remove @s newltemp 15000
scoreboard players operation @s newltemp *= @s newlmath
#保存 Damage*100
scoreboard players operation @s newldisplay1 = @s newltemp
scoreboard players operation @s newldisplay2 = @s newltemp
#获取Display1
scoreboard players set @s newlmath 100
scoreboard players operation @s newldisplay1 /= @s newlmath
#获取D2
scoreboard players operation @s newlmath *= @s newldisplay1
scoreboard players operation @s newldisplay2 -= @s newlmath
scoreboard players set @s newlmath -1
#输出
execute on attacker run title @s actionbar {"text": "","color": "green","extra": [{"score":{"objective": "newldisplay1","name": "@e[tag=entity_dummy_pig,scores={newlmath=-1},limit=1]"}},".",{"score":{"objective": "newldisplay2","name": "@e[tag=entity_dummy_pig,scores={newlmath=-1},limit=1]"}}]}
item replace entity @s weapon.mainhand with stone
item modify entity @s weapon.mainhand newl:damage_display
execute on passengers run data modify entity @s CustomName set from entity @e[tag=entity_dummy_pig,scores={newlmath=-1},limit=1] HandItems.[0].tag.display.Name
#重置
scoreboard players reset @s newltemp
scoreboard players reset @s newlmath
scoreboard players reset @s newldisplay1
scoreboard players reset @s newldisplay2
data modify entity @s Health set value 150
#可移动
execute on attacker as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add entity_marker_player_stick
execute on attacker as @s[nbt={SelectedItem:{id:"minecraft:compass"}}] run tag @s add entity_marker_player_compass
execute unless entity @a[tag=entity_marker_player_stick] run data modify entity @s Motion[0] set value 0.0d
execute unless entity @a[tag=entity_marker_player_stick] run data modify entity @s Motion[1] set value 0.0d
execute unless entity @a[tag=entity_marker_player_stick] run data modify entity @s Motion[2] set value 0.0d
execute rotated as @a[tag=entity_marker_player_stick,limit=1] on passengers run tp @s ~ ~ ~ ~180 0
execute rotated as @a[tag=entity_marker_player_compass,limit=1] on passengers run tp @s ~ ~ ~ ~ 0
tag @a[tag=entity_marker_player_stick] remove entity_marker_player_stick
tag @a[tag=entity_marker_player_compass] remove entity_marker_player_compass
#音效
playsound block.wood.break master @a