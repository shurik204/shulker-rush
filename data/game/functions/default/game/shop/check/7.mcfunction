execute store success score @s result run clear @s minecraft:stone_pickaxe{shop:true}
execute if score @s[scores={statCoins1=32..}] result matches 1 run scoreboard players set @s buyID 7
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1