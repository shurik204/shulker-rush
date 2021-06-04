execute if score #Forge yellow matches 0 if score #Souls yellow matches ..1 run scoreboard players set @s UbuyID -1
execute if score #Forge yellow matches 1 if score #Souls yellow matches ..4 run scoreboard players set @s UbuyID -1
execute if score #Forge yellow matches 2 if score #Souls yellow matches ..9 run scoreboard players set @s UbuyID -1

execute if score @s UbuyID matches 0 run scoreboard players set @s UbuyID 5
execute unless score @s UbuyID matches 0 run scoreboard players set @s UclearDetect -1