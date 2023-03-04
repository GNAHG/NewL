summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1,tag:{display:{Name:'{"italic": false,"text": "硬币"}'},Tags:["coin"],Enchantments:[{lvl:1,id:"infinity"}]}},PickupDelay:20,Health:45,Tags:["summon_coin","newltemptag"]}
data modify entity @e[type=item,tag=newltemptag,limit=1] Item.Count set from entity @s Item.Count
particle item iron_ingot ~ ~ ~ 0.1 0.1 0.1 0 16
tag @e[tag=newltemptag] remove newltemptag
kill @s