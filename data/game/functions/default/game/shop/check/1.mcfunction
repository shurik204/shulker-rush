execute store success score @s result run clear @s minecraft:wooden_sword{shop:true}
execute if score @s[scores={statCoins1=5..}] result matches 1 run scoreboard players set @s buyID 1
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1