execute store success score @s result run clear @s minecraft:bow{shop:true}
execute if score @s[scores={statCoins2=10..}] result matches 1 run scoreboard players set @s buyID 19
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1