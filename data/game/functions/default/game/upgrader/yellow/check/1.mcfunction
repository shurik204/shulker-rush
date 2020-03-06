# Check conditions
execute if score #Souls yellow matches ..0 run scoreboard players set @s UbuyID -1
execute if score @e[type=minecraft:shulker,tag=yBed,limit=1] HP matches 7.. run scoreboard players set @s UbuyID -2

# If buyID is still equals zero, confirm buying this item
execute if score @s UbuyID matches 0 run scoreboard players set @s UbuyID 1

# If one of conditions was triggered
execute if score @s UbuyID matches -2 run tellraw @s {"text":"Твой Шалкер уже имеет максимум здоровья","color":"red"}