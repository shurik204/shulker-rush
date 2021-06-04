execute store success score @s result run clear @s minecraft:bow{shop1:true}
execute if score @s[scores={statCoins3=6..}] result matches 1 run scoreboard players set @s buyID 20
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1