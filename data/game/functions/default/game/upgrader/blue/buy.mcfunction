scoreboard players set @s UbuyID 0
scoreboard players set @s UclearDetect 0

execute store result score @s Uresult run clear @s minecraft:emerald{U:1}
execute if score @s Uresult matches 1.. run function game:default/game/upgrader/blue/check/1

execute store result score @s Uresult run clear @s minecraft:golden_carrot{U:1}
execute if score @s Uresult matches 1.. run function game:default/game/upgrader/blue/check/2

execute store result score @s Uresult run clear @s minecraft:iron_sword{U:1}
execute if score @s Uresult matches 1.. run function game:default/game/upgrader/blue/check/3

execute store result score @s Uresult run clear @s minecraft:iron_chestplate{U:1}
execute if score @s Uresult matches 1.. run function game:default/game/upgrader/blue/check/4

execute store result score @s Uresult run clear @s minecraft:brewing_stand{U:1}
execute if score @s Uresult matches 1.. run function game:default/game/upgrader/blue/check/5

execute if score @s UbuyID matches 1.. run function game:default/game/upgrader/blue/success

clear @s minecraft:golden_carrot{U:2}
clear @s minecraft:iron_sword{U:2}
clear @s minecraft:iron_chestplate{U:2}
clear @s minecraft:brewing_stand{U:2}

execute if score @s UbuyID matches -1 run tellraw @s {"text":"У тебя недостаточно душ для покупки","color":"red"}