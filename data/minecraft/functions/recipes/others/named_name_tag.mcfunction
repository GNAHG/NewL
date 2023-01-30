item modify entity @s weapon.mainhand player_lore
item modify entity @s weapon.mainhand named_name_tag
playsound ui.cartography_table.take_result player @a
playsound entity.experience_orb.pickup player @a
playsound block.grindstone.use player @a
particle happy_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
advancement revoke @s only recipes/others/named_name_tag