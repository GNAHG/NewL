clear @s name_tag{CustomModelData:1} 1
playsound ui.cartography_table.take_result player @a
playsound block.stone.break player @a
particle wax_off ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
item modify entity @s weapon.offhand player_lore
item modify entity @s weapon.offhand item_named_tag
advancement revoke @s only recipes/gameplay/named_name_tag