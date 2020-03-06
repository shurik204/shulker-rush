execute if score @s UbuyID matches 1 run function #item:yupgrader_buy_1
execute if score @s UbuyID matches 2 run function #item:yupgrader_buy_2
execute if score @s UbuyID matches 3 run function #item:yupgrader_buy_3
execute if score @s UbuyID matches 4 run function #item:yupgrader_buy_4
execute if score @s UbuyID matches 5 run function #item:yupgrader_buy_5

execute if score @s UbuyID matches 1.. run playsound minecraft:entity.item.break master @s ~ ~ ~ 1000 1.1 1