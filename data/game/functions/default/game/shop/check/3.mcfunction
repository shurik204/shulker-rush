execute store success score @s result run clear @s minecraft:iron_sword{shop:true}
execute if score @s[scores={statCoins2=6..}] result matches 1 run scoreboard players set @s buyID 3
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1