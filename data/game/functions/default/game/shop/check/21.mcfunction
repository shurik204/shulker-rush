execute store success score @s result run clear @s minecraft:arrow{shop:true}
execute if score @s[scores={statCoins2=3..}] result matches 1 run scoreboard players set @s buyID 21
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1