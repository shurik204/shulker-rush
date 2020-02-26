execute store result score @s statCoins1 run clear @s minecraft:iron_nugget 0
execute store result score @s statCoins2 run clear @s minecraft:gold_nugget 0
execute store result score @s statCoins3 run clear @s minecraft:nether_wart 0

scoreboard players set @s buyID -1
scoreboard players set @s clearDetect 0
# 
clear @s minecraft:black_stained_glass_pane{shop:true}

execute unless score @s clearDetect matches -1 run function #item:check_1
execute unless score @s clearDetect matches -1 run function #item:check_2
execute unless score @s clearDetect matches -1 run function #item:check_3
execute unless score @s clearDetect matches -1 run function #item:check_4
execute unless score @s clearDetect matches -1 run function #item:check_5
execute unless score @s clearDetect matches -1 run function #item:check_6
execute unless score @s clearDetect matches -1 run function #item:check_7
execute unless score @s clearDetect matches -1 run function #item:check_8
execute unless score @s clearDetect matches -1 run function #item:check_9
execute unless score @s clearDetect matches -1 run function #item:check_10
execute unless score @s clearDetect matches -1 run function #item:check_11
execute unless score @s clearDetect matches -1 run function #item:check_12
execute unless score @s clearDetect matches -1 run function #item:check_13
execute unless score @s clearDetect matches -1 run function #item:check_14
execute unless score @s clearDetect matches -1 run function #item:check_15
execute unless score @s clearDetect matches -1 run function #item:check_16
execute unless score @s clearDetect matches -1 run function #item:check_17
execute unless score @s clearDetect matches -1 run function #item:check_18
execute unless score @s clearDetect matches -1 run function #item:check_19
execute unless score @s clearDetect matches -1 run function #item:check_20
execute unless score @s clearDetect matches -1 run function #item:check_21
execute unless score @s clearDetect matches -1 run function #item:check_22
execute unless score @s clearDetect matches -1 run function #item:check_23
execute unless score @s clearDetect matches -1 run function #item:check_24
execute unless score @s clearDetect matches -1 run function #item:check_25
execute unless score @s clearDetect matches -1 run function #item:check_26
execute unless score @s clearDetect matches -1 run function #item:check_27

execute if score @s buyID matches 1.. run function game:default/game/shop/sucess

tellraw @s[scores={buyID=-1,clearDetect=-1}] {"text":"У тебя недостаточно ресурсов для покупки","color":"red"}
playsound minecraft:entity.item.break master @s[scores={buyID=-1,clearDetect=-1}] ~ ~ ~ 1000 1.1 1

# Remove barriers
clear @s minecraft:barrier{shop:true}