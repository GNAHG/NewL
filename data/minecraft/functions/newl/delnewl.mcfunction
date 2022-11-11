scoreboard objectives add newltemptemp dummy
execute store success score @s newltemptemp run scoreboard objectives remove newltemp
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功删除“newltemp”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"未有“newltemp”计分板","color":"red"}]
execute store success score @s newltemptemp run scoreboard objectives remove newlinfor
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功删除“newlinfor”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"未有“newlinfor”计分板","color":"red"}]
execute store success score @s newltemptemp run scoreboard objectives remove health
execute if score @s newltemptemp matches 1 run tellraw @s [{"text":"成功删除“health”计分板","color":"green"}]
execute if score @s newltemptemp matches 0 run tellraw @s [{"text":"未有“health”计分板","color":"red"}]
tellraw @s [{"text":"删除完毕！","color":"gold"}]
scoreboard objectives remove newltemptemp