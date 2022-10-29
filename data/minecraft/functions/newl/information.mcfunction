execute unless score @s newlinfor matches 1 run scoreboard players set @s newlinfor 0
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"--------------粗体字可点击--------------","color":"gold"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"这是 NewL 合成扩展数据包的提示信息。NewL 是一个为这个服务器制作的数据包，添加了一些成就，合成，小特性等等。","color":"dark_green"}]
execute if score @s newlinfor matches 0 run tellraw @p [{"text":"可以按下 F3+T 清屏 或输入","color":"red"},{"text":"/trigger newlinfor set 1","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger newlinfor set 1"},"hoverEvent":{"action":"show_text","value":"点击将运行 /trigger newlinfor set 1"}},{"text":"来关闭提示.","color":"red"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"----------------------------------------","color":"gold"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"成就：","color":"blue"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"数据包添加了一些基于原版的成就，在此感谢群友们提供的创意！","color":"blue"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"----------------------------------------","color":"gold"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"合成：","color":"blue"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"数据包的合成系统使用了音符盒，玩家手持特定物品右键，且背包中有合成需要物品即可合成，突破了工作台的物品和 NBT 的限制。","color":"blue"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"想获得合成配方可以输入 ","color":"blue"},{"text":"/warp crafting","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/warp crafting"},"hoverEvent":{"action":"show_text","value":"点击将运行 /warp crafting"}},{"text":" 或者到网站 ","color":"blue"},{"text":"https://gnahg.github.io/datapack_wiki/","color":"blue","bold":true,"clickEvent":{"action":"open_url","value":"https://gnahg.github.io/datapack_wiki/"},"hoverEvent":{"action":"show_text","value":"点击将打开网站 https://gnahg.github.io/datapack_wiki/"}},{"text":" 去查看。","color":"blue"}]
execute if score @s newlinfor matches 0 run tellraw @s [{"text":"----------------------------------------","color":"gold"}]
advancement revoke @s only recipes/newl/information
scoreboard players enable @s newlinfor