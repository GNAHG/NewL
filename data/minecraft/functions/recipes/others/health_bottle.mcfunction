execute store result score @s newltemp run clear @s glass_bottle 1
execute if score @s newltemp matches 1.. run give @s dragon_breath{CustomModelData:1,NBTCommands:["xa9qlgJV52FhL9+yKLvW1w==","6IZeq077dQONb7Zc9swoQmf97oPfSZJ2rBczXJ90DqybT3S+38wMPAJw0Wgu6PSGKZVjNiXFKSX29n7MIKWLU3H8bUG+FOmO3iFsH4FJndA=","VCBbV2yoCcivpXw5QHnXAXk/kkJnEUaXtv+xuow+7oWq3f2TGAA9ku85SPwsOE22qkNRKzufflfV/BVh2RqFN5PIVIc1Lo8IystooqrwTVQ=","p7BYBuKyh1PxgREOTwUKdoGRuc4QPg8h7uGR+zsvzDPp14M4xEI81S4TZwfXFQXoAM6wLKMDJxteu6CX/6g9dg=="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#FF7875","text":"生命之瓶"}],"text":""}'}} 1
execute if score @s newltemp matches 1.. run effect give @s instant_damage 1 1 true
execute if score @s newltemp matches 1.. run playsound item.bottle.fill_dragonbreath player @a
execute if score @s newltemp matches 1.. run particle block redstone_block ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 1.. run playsound block.stem.fall player @a
execute if score @s newltemp matches 0 run playsound item.dye.use player @a
execute if score @s newltemp matches 0 run function information/recipes/others/health_bottle
scoreboard players reset @s newltemp
advancement revoke @s only recipes/others/health_bottle