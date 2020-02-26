execute store success score @s result run clear @s minecraft:cobweb{shop:true}
execute if score @s[scores={statCoins1=8..}] result matches 1 run scoreboard players set @s buyID 27
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1