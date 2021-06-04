execute if score #Armor blue matches 0 if score #Souls blue matches ..3 run scoreboard players set @s UbuyID -1
execute if score #Armor blue matches 1 if score #Souls blue matches ..5 run scoreboard players set @s UbuyID -1
execute if score #Armor blue matches 2 if score #Souls blue matches ..8 run scoreboard players set @s UbuyID -1

execute if score @s UbuyID matches 0 run scoreboard players set @s UbuyID 4
execute unless score @s UbuyID matches 0 run scoreboard players set @s UclearDetect -1