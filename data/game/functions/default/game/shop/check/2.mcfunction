execute store success score @s result run clear @s minecraft:stone_sword{shop:true}
execute if score @s[scores={statCoins1=27..}] result matches 1 run scoreboard players set @s buyID 2
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1