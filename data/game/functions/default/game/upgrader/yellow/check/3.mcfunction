execute if score #Weapon yellow matches 0 if score #Souls yellow matches ..3 run scoreboard players set @s UbuyID -1
execute if score #Weapon yellow matches 1 if score #Souls yellow matches ..6 run scoreboard players set @s UbuyID -1
execute if score #Weapon yellow matches 2 if score #Souls yellow matches ..10 run scoreboard players set @s UbuyID -1

execute if score @s UbuyID matches 0 run scoreboard players set @s UbuyID 3
execute unless score @s UbuyID matches 0 run scoreboard players set @s UclearDetect -1