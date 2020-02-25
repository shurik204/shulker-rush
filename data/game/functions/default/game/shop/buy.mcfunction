execute store result score @s statCoins1 run clear @s minecraft:iron_nugget 0
execute store result score @s statCoins2 run clear @s minecraft:gold_nugget 0
execute store result score @s statCoins3 run clear @s minecraft:nether_wart 0

scoreboard players set @s buyID -1
scoreboard players set @s clearDetect 0
# 
clear @s minecraft:black_stained_glass_pane{shop:true}
execute store success score @s result run clear @s minecraft:wooden_sword{shop:true}
execute if score @s[scores={statCoins1=5..}] result matches 1 run scoreboard players set @s buyID 1
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:stone_sword{shop:true}
execute if score @s[scores={statCoins1=27..}] result matches 1 run scoreboard players set @s buyID 2
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:iron_sword{shop:true}
execute if score @s[scores={statCoins2=6..}] result matches 1 run scoreboard players set @s buyID 3
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:golden_sword{shop:true}
execute if score @s[scores={statCoins3=4..}] result matches 1 run scoreboard players set @s buyID 4
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:potion{shop:true}
execute if score @s[scores={statCoins3=3..}] result matches 1 run scoreboard players set @s buyID 5
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
#
execute store success score @s result run clear @s minecraft:stone_pickaxe{shop:true}
execute if score @s[scores={statCoins1=32..}] result matches 1 run scoreboard players set @s buyID 7
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:iron_pickaxe{shop:true}
execute if score @s[scores={statCoins2=8..}] result matches 1 run scoreboard players set @s buyID 8
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:diamond_pickaxe{shop:true}
execute if score @s[scores={statCoins3=2..}] result matches 1 run scoreboard players set @s buyID 9
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1

execute store success score @s result run clear @s minecraft:chainmail_boots{shop:true}
execute if score @s[scores={statCoins2=4..}] result matches 1 run scoreboard players set @s buyID 10
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:iron_boots{shop:true}
execute if score @s[scores={statCoins2=16..}] result matches 1 run scoreboard players set @s buyID 11
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:diamond_boots{shop:true}
execute if score @s[scores={statCoins3=8..}] result matches 1 run scoreboard players set @s buyID 12
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:elytra{shop:true}
execute if score @s[scores={statCoins3=6..}] result matches 1 run scoreboard players set @s buyID 13
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:firework_rocket{shop:true}
execute if score @s[scores={statCoins3=2..}] result matches 1 run scoreboard players set @s buyID 14
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
#
execute store success score @s result run clear @s minecraft:yellow_stained_glass{shop:true}
execute if score @s[scores={statCoins1=4..}] result matches 1 run scoreboard players set @s buyID 16
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:light_blue_stained_glass{shop:true}
execute if score @s[scores={statCoins1=4..}] result matches 1 run scoreboard players set @s buyID 16
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:end_stone{shop:true}
execute if score @s[scores={statCoins2=2..}] result matches 1 run scoreboard players set @s buyID 17
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1

execute store success score @s result run clear @s minecraft:obsidian{shop:true}
execute if score @s[scores={statCoins3=4..}] result matches 1 run scoreboard players set @s buyID 18
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:bow{shop:true}
execute if score @s[scores={statCoins2=10..}] result matches 1 run scoreboard players set @s buyID 19
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:bow{shop1:true}
execute if score @s[scores={statCoins3=6..}] result matches 1 run scoreboard players set @s buyID 20
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:arrow{shop:true}
execute if score @s[scores={statCoins2=3..}] result matches 1 run scoreboard players set @s buyID 21
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:fishing_rod{shop:true}
execute if score @s[scores={statCoins1=18..}] result matches 1 run scoreboard players set @s buyID 22
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:ender_pearl{shop:true}
execute if score @s[scores={statCoins3=3..}] result matches 1 run scoreboard players set @s buyID 23
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
#
execute store success score @s result run clear @s minecraft:golden_axe{shop:true}
execute if score @s[scores={statCoins3=2..}] result matches 1 run scoreboard players set @s buyID 25
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:oak_planks{shop:true}
execute if score @s[scores={statCoins1=20..}] result matches 1 run scoreboard players set @s buyID 26
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:cobweb{shop:true}
execute if score @s[scores={statCoins1=8..}] result matches 1 run scoreboard players set @s buyID 27
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1

execute if score @s buyID matches 1.. run function game:default/game/shop/sucess

execute if entity @s[scores={buyID=1..,clearDetect=-1}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1
tellraw @s[scores={buyID=-1,clearDetect=-1}] {"text":"У тебя недостаточно ресурсов для покупки","color":"red"}
execute at @s run playsound minecraft:entity.item.break master @s[scores={buyID=-1,clearDetect=-1}] ~ ~ ~ 1000 1.1 1

kill @e[type=item,nbt={Item:{tag:{shop:true}}}]

# Remove barriers
clear @s barrier{shop:true}