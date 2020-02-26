execute store success score @s result run clear @s minecraft:iron_boots{shop:true}
execute if score @s[scores={statCoins2=16..}] result matches 1 run scoreboard players set @s buyID 11
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1