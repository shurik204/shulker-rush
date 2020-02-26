execute store success score @s result run clear @s minecraft:oak_planks{shop:true}
execute if score @s[scores={statCoins1=20..}] result matches 1 run scoreboard players set @s buyID 26
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1