execute store success score @s result run clear @s minecraft:fishing_rod{shop:true}
execute if score @s[scores={statCoins1=18..}] result matches 1 run scoreboard players set @s buyID 22
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1