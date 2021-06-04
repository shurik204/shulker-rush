execute if score #Weapon blue matches 0 run scoreboard players remove #Souls blue 4
execute if score #Weapon blue matches 1 run scoreboard players remove #Souls blue 7
execute if score #Weapon blue matches 2 run scoreboard players remove #Souls blue 11

#Translate
execute if score #Weapon blue matches 0 run data modify storage minecraft:upgrader Blue[2].tag.display set from storage game:lang Upgrader.Items[2][1]
#Translate
execute if score #Weapon blue matches 1 run data modify storage minecraft:upgrader Blue[2].tag.display set from storage game:lang Upgrader.Items[2][2]
#Translate
execute if score #Weapon blue matches 2 run data modify storage minecraft:upgrader Blue[2].tag.display set from storage game:lang Upgrader.Items[2][3]
execute if score #Weapon blue matches 2 run data remove storage minecraft:upgrader Blue[2].tag.U
execute if score #Weapon blue matches 2 run data modify storage minecraft:upgrader Blue[2].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Weapon blue 1
#Translate
tellraw @a[team=blue] {"storage": "game:lang", "nbt": "Upgrader.UpgradeWeapons", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1