execute if score @s UbuyID matches 1 run function game:default/game/upgrader/yellow/buy/1
execute if score @s UbuyID matches 2 run function game:default/game/upgrader/yellow/buy/2
execute if score @s UbuyID matches 3 run function game:default/game/upgrader/yellow/buy/3
execute if score @s UbuyID matches 4 run function game:default/game/upgrader/yellow/buy/4
execute if score @s UbuyID matches 5 run function game:default/game/upgrader/yellow/buy/5

execute if score @s UbuyID matches 1.. run playsound minecraft:entity.item.break master @s ~ ~ ~ 1000 1.1 1