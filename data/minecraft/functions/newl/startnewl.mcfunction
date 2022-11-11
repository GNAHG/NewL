scoreboard objectives add newltemptemp dummy
execute store success score @s newltemptemp run scoreboard objectives add newltemp dummy
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功创建“newltemp”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"已有“newltemp”计分板","color":"red"}]
execute store success score @s newltemptemp run scoreboard objectives add newlinfor trigger
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功创建“newlinfor”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"已有“newlinfor”计分板","color":"red"}]
execute store success score @s newltemptemp run scoreboard objectives add health dummy
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功创建“health”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"已有“health”计分板","color":"red"}]
tellraw @s [{"text":"加载完毕！","color":"gold"}]
scoreboard objectives remove newltemptemp