playsound ui.cartography_table.take_result player @a
playsound entity.experience_orb.pickup player @a
playsound block.grindstone.use player @a
item modify entity @s weapon.mainhand newl:coin_nbt
execute at @p positioned ~ ~1.62 ~ run particle item iron_ingot ^-0.2 ^-0.1 ^0.3 0 0 0 0.05 16
advancement revoke @s only newl:recipes/item/coin