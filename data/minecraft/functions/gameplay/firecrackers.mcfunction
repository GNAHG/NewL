summon fireball ~ ~ ~ {ExplosionPower:-3,Item:{"id":"tnt","Count":1},power:[0.0d,-0.1d,0.0d]}
execute as @e[type=!fireball,type=!player,distance=..3] run data modify entity @s FallDistance set value 7
execute as @e[type=!fireball,type=!player,distance=..3] run data modify entity @s Motion set value [0.0d,0.7d,0.0d]
effect give @a[distance=..3] levitation 1 5 true 
particle end_rod ~ ~ ~ 0 0 0 0.15 32 force @a
playsound entity.firework_rocket.twinkle player @a
advancement revoke @s only recipes/gameplay/firecrackers