execute store success score @s result run clear @s minecraft:iron_pickaxe{shop:true}
execute if score @s[scores={statCoins2=8..}] result matches 1 run scoreboard players set @s buyID 8
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1