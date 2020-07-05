# Check conditions
execute if score #Souls yellow matches ..0 run scoreboard players set @s UbuyID -1
execute if score @e[type=minecraft:shulker,tag=yBed,limit=1] HP >= #MaxShulkerHealth settings run scoreboard players set @s UbuyID -2
execute unless entity @e[type=minecraft:shulker,tag=yBed] run scoreboard players set @s UbuyID -3

# If buyID is still equals zero, confirm buying this item
execute if score @s UbuyID matches 0 run scoreboard players set @s UbuyID 1

# If one of conditions was triggered
#Translate
execute if score @s UbuyID matches -2 run tellraw @s {"storage": "game:lang", "nbt": "Upgrader.ShulkerFullHP", "interpret": true}
#Translate
execute if score @s UbuyID matches -3 run tellraw @s {"storage": "game:lang", "nbt": "Upgrader.NoShulker", "interpret": true}