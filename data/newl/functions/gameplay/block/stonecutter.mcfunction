summon marker ~ ~-1 ~ {Tags:["entity_marker_stonecutter"],CustomName:'{"text": "切石机"}'}
damage @s 4 minecraft:trident by @e[limit=1,tag=entity_marker_stonecutter]
kill @e[tag=entity_marker_stonecutter]
advancement revoke @s only newl:gameplay/block/stonecutter