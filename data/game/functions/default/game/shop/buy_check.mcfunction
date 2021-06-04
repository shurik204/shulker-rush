execute store result score @s statCoins1 run clear @s minecraft:iron_nugget 0
execute store result score @s statCoins2 run clear @s minecraft:gold_nugget 0
execute store result score @s statCoins3 run clear @s minecraft:nether_wart 0

scoreboard players set @s buyID -1
scoreboard players set @s clearDetect 0

clear @s minecraft:black_stained_glass_pane{shop:true}

function #game:shop/buy_check/part_1
execute unless score @s clearDetect matches -1 run function #game:shop/buy_check/part_2
execute unless score @s clearDetect matches -1 run function #game:shop/buy_check/part_3

execute if score @s buyID matches 1.. run function #game:shop/success
#Translate
tellraw @s[scores={buyID=-1,clearDetect=-1}] {"storage": "game:lang", "nbt": "Shop.NotEnoughRes", "interpret": true}
#Translate
tellraw @s[scores={buyID=-2,clearDetect=-1}] {"storage": "game:lang", "nbt": "Shop.HaveThisArmor", "interpret": true}
#Translate
tellraw @s[scores={buyID=-3,clearDetect=-1}] {"storage": "game:lang", "nbt": "Shop.HaveBetterArmor", "interpret": true}

playsound minecraft:entity.item.break master @s[scores={buyID=..-1,clearDetect=-1}] ~ ~ ~ 1000 1.1 1

# Remove barriers
clear @s minecraft:barrier{shop:true}

scoreboard players add #ProcessedInShop var 1