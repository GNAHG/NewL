execute store result score @s newltemp run clear @s stick 1
execute if score @s newltemp matches 1 run give @s stick{CustomModelData:1,display:{Name:'{"italic":false,"extra":[{"text":""},{"text":"擀面杖"}],"text":""}'}} 1
execute if score @s newltemp matches 0 run function information/recipes/food/material/rolling_pin
advancement revoke @s only recipes/food/material/rolling_pin