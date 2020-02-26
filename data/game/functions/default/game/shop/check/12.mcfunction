execute store success score @s result run clear @s minecraft:diamond_boots{shop:true}
execute if score @s[scores={statCoins3=8..}] result matches 1 run scoreboard players set @s buyID 12
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1