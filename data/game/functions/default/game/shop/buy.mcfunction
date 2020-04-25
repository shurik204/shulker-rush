execute store result score @s statCoins1 run clear @s minecraft:iron_nugget 0
execute store result score @s statCoins2 run clear @s minecraft:gold_nugget 0
execute store result score @s statCoins3 run clear @s minecraft:nether_wart 0

scoreboard players set @s buyID -1
scoreboard players set @s clearDetect 0
# 
clear @s minecraft:black_stained_glass_pane{shop:true}

execute unless score @s clearDetect matches -1 run function #item:check/1
execute unless score @s clearDetect matches -1 run function #item:check/2
execute unless score @s clearDetect matches -1 run function #item:check/3
execute unless score @s clearDetect matches -1 run function #item:check/4
execute unless score @s clearDetect matches -1 run function #item:check/5
execute unless score @s clearDetect matches -1 run function #item:check/6
execute unless score @s clearDetect matches -1 run function #item:check/7
execute unless score @s clearDetect matches -1 run function #item:check/8
execute unless score @s clearDetect matches -1 run function #item:check/9
execute unless score @s clearDetect matches -1 run function #item:check/10
execute unless score @s clearDetect matches -1 run function #item:check/11
execute unless score @s clearDetect matches -1 run function #item:check/12
execute unless score @s clearDetect matches -1 run function #item:check/13
execute unless score @s clearDetect matches -1 run function #item:check/14
execute unless score @s clearDetect matches -1 run function #item:check/15
execute unless score @s clearDetect matches -1 run function #item:check/16
execute unless score @s clearDetect matches -1 run function #item:check/17
execute unless score @s clearDetect matches -1 run function #item:check/18
execute unless score @s clearDetect matches -1 run function #item:check/19
execute unless score @s clearDetect matches -1 run function #item:check/20
execute unless score @s clearDetect matches -1 run function #item:check/21
execute unless score @s clearDetect matches -1 run function #item:check/22
execute unless score @s clearDetect matches -1 run function #item:check/23
execute unless score @s clearDetect matches -1 run function #item:check/24
execute unless score @s clearDetect matches -1 run function #item:check/25
execute unless score @s clearDetect matches -1 run function #item:check/26
execute unless score @s clearDetect matches -1 run function #item:check/27

execute if score @s buyID matches 1.. run function #game:shop/success
#Translate
tellraw @s[scores={buyID=-1,clearDetect=-1}] {"text":"У тебя недостаточно ресурсов для покупки","color":"red"}
#Translate
tellraw @s[scores={buyID=-2,clearDetect=-1}] {"text":"У тебя уже есть такая броня","color":"red"}
#Translate
tellraw @s[scores={buyID=-3,clearDetect=-1}] {"text":"У тебя уже есть броня лучше","color":"red"}
playsound minecraft:entity.item.break master @s[scores={buyID=..-1,clearDetect=-1}] ~ ~ ~ 1000 1.1 1

# Remove barriers
clear @s minecraft:barrier{shop:true}