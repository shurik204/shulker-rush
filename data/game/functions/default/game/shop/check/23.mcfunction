execute store success score @s result run clear @s minecraft:ender_pearl{shop:true}
execute if score @s[scores={statCoins3=3..}] result matches 1 run scoreboard players set @s buyID 23
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1