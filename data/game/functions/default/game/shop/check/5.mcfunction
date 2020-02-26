execute store success score @s result run clear @s minecraft:potion{shop:true}
execute if score @s[scores={statCoins3=3..}] result matches 1 run scoreboard players set @s buyID 5
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1