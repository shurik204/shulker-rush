execute store success score @s result run clear @s minecraft:elytra{shop:true}
execute if score @s[scores={statCoins3=6..}] result matches 1 run scoreboard players set @s buyID 13
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1