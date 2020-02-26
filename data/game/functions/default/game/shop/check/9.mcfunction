execute store success score @s result run clear @s minecraft:diamond_pickaxe{shop:true}
execute if score @s[scores={statCoins3=2..}] result matches 1 run scoreboard players set @s buyID 9
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1