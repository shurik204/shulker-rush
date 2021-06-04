execute store success score @s result run clear @s minecraft:yellow_stained_glass{shop:true}
execute if score @s[scores={statCoins1=4..}] result matches 1 run scoreboard players set @s buyID 16
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:light_blue_stained_glass{shop:true}
execute if score @s[scores={statCoins1=4..}] result matches 1 run scoreboard players set @s buyID 16
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1