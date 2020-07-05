scoreboard players set @s UbuyID 0
scoreboard players set @s UclearDetect 0

execute store result score @s Uresult run clear @s minecraft:emerald{U:1}
execute if score @s Uresult matches 1.. run function #item:upgrader/yellow/check/1

execute store result score @s Uresult run clear @s minecraft:golden_carrot{U:1}
execute if score @s Uresult matches 1.. run function #item:upgrader/yellow/check/2

execute store result score @s Uresult run clear @s minecraft:iron_sword{U:1}
execute if score @s Uresult matches 1.. run function #item:upgrader/yellow/check/3

execute store result score @s Uresult run clear @s minecraft:iron_chestplate{U:1}
execute if score @s Uresult matches 1.. run function #item:upgrader/yellow/check/4

execute store result score @s Uresult run clear @s minecraft:brewing_stand{U:1}
execute if score @s Uresult matches 1.. run function #item:upgrader/yellow/check/5

execute if score @s UbuyID matches 1.. run function #game:upgrader/yellow/success

clear @s minecraft:golden_carrot{Up:true}
clear @s minecraft:iron_sword{Up:true}
clear @s minecraft:iron_chestplate{Up:true}
clear @s minecraft:brewing_stand{Up:true}

execute if score @s UbuyID matches ..-1 run playsound minecraft:entity.item.break master @s ~ ~ ~ 1000 1.1 1
#Translate
execute if score @s UbuyID matches -1 run tellraw @s {"storage": "game:lang", "nbt": "Upgrader.NotEnoughSouls", "interpret": true}