execute unless score @s newlinfor matches 1 run scoreboard players set @s newlinfor 0
playsound entity.player.levelup player @a
tellraw @s {"text":"===================粗体字可点击===================","color":"gold"}
tellraw @s {"text":"=================新玩家请耐心看完=================","color":"red"}
tellraw @s {"text":"这是 NewL 合成扩展数据包的提示信息。NewL 是一个为这个服务器制作的数据包，添加了一些成就，合成，小特性等等。","color":"dark_green"}
tellraw @p [{"text":"可以按下 F3+T 清屏 或输入","color":"red"},{"text":"/trigger newlinfor set 1","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger newlinfor set 1"},"hoverEvent":{"action":"show_text","value":"点击将运行 /trigger newlinfor set 1"}},{"text":"来关闭提示.","color":"red"}]
function information/divider
tellraw @s {"text":"成就：","color":"blue"}
tellraw @s {"text":"数据包添加了一些基于原版的成就，在此感谢群友们提供的创意！","color":"blue"}
function information/divider
tellraw @s {"text":"合成：","color":"blue"}
tellraw @s {"text":"数据包的合成系统使用了音符盒，玩家手持特定物品右键，且背包中有合成需要物品即可合成，突破了工作台的物品和 NBT 的限制。","color":"blue"}
tellraw @s [{"text":"想获得合成配方可以左键音符盒，或者到网站 ","color":"blue"},{"text":"https://gnahg.github.io/datapack_wiki/","color":"blue","bold":true,"clickEvent":{"action":"open_url","value":"https://gnahg.github.io/datapack_wiki/"},"hoverEvent":{"action":"show_text","value":"点击将打开网站 https://gnahg.github.io/datapack_wiki/"}},{"text":" 去查看。","color":"blue"}]
function information/divider
tellraw @s {"text":"特性：","color":"blue"}
tellraw @s {"text":"你现在可以使用水桶右键物品展示框让其隐身，使用皮革右键恢复原样。","color":"blue"}
tellraw @s {"text":"你现在可以一手持木棍，一手持盔甲架来放置有手臂的盔甲架。","color":"blue"}
tellraw @s {"text":"=================新玩家请耐心看完=================","color":"red"}
function information/divider
advancement revoke @s only recipes/newl/information
scoreboard players enable @s newlinfor