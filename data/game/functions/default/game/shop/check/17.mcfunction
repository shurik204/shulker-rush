execute store success score @s result run clear @s minecraft:end_stone{shop:true}
execute if score @s[scores={statCoins2=2..}] result matches 1 run scoreboard players set @s buyID 17
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1