execute store result score @s newltemp run clear @s pumpkin_pie{CustomModelData:1} 0
execute if score @s newltemp matches 1.. run execute store result score @s newltemp run clear @s water_bucket 0
execute if score @s newltemp matches 4.. run clear @s pumpkin_pie{CustomModelData:1} 1
execute if score @s newltemp matches 4.. run clear @s water_bucket 4
execute if score @s newltemp matches 4.. run give @s pumpkin_pie{CustomModelData:4,NBTCommands:["3+BFMRk7H3rC/t5xrDpFGw==","6oBX/erfHAx1FmzbfKTPyHk/kkJnEUaXtv+xuow+7oXHeFVmye+zUcywQIeZjvx2LgC8ppet4RIq/7tmU8r6Ak54Eve0f+bjNbbzWmSRBEA=","2OrxKIdyNFL+vspVF5rsf+WTQk2BqVMTvN0UrjCaSpL2yrFiECRE21gLiZCriKANa5DpljNK2sAX0TZlZboWWcJP7q8ES1QxEJiEjrMC36M=","6oBX/erfHAx1FmzbfKTPyI6/577QQfBF6YV1GdoLz8Km9zMTAqgBD7HYi5E4MHNJwIXPK07eu9ixikZNWh44P054Eve0f+bjNbbzWmSRBEA="],display:{Name:'{"italic":false,"extra":[{"text":""},{"color":"#2096FF","text":"水月饼"}],"text":""}'}} 1
execute if score @s newltemp matches 4.. run give @s bucket 4
execute if score @s newltemp matches 4.. run playsound item.bottle.fill player @a
execute if score @s newltemp matches 4.. run playsound item.bottle.empty player @a
execute if score @s newltemp matches 4.. run playsound block.amethyst_block.break player @a
execute if score @s newltemp matches 4.. run particle dripping_water ~ ~1.5 ~ 0.2 0.2 0.2 0 13 force @a
execute if score @s newltemp matches 0..3 run playsound item.dye.use player @a
scoreboard players reset @s newltemp
advancement revoke @s only recipes/mooncake/water_mooncake