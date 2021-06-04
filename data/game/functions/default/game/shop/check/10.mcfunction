execute store success score @s result run clear @s minecraft:chainmail_boots{shop:true}
execute if score @s[scores={statCoins2=4..}] result matches 1 run scoreboard players set @s buyID 10
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
# If player have this armor type
execute if score @s buyID matches 10 if score @s ArmorType matches 1 run scoreboard players set @s buyID -2
# If player have better armor
execute if score @s buyID matches 10 if score @s ArmorType matches 2.. run scoreboard players set @s buyID -3