execute store success score @s result run clear @s minecraft:golden_sword{shop:true}
execute if score @s[scores={statCoins3=4..}] result matches 1 run scoreboard players set @s buyID 4
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1