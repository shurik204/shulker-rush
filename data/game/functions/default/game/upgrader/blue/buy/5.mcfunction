execute if score #Forge blue matches 0 run scoreboard players remove #Souls blue 2
execute if score #Forge blue matches 1 run scoreboard players remove #Souls blue 5
execute if score #Forge blue matches 2 run scoreboard players remove #Souls blue 10

#Translate
execute if score #Forge blue matches 0 run data modify storage minecraft:upgrader Blue[4].tag.display set from storage game:lang Upgrader.Items[4][1]
#Translate
execute if score #Forge blue matches 1 run data modify storage minecraft:upgrader Blue[4].tag.display set from storage game:lang Upgrader.Items[4][2]
#Translate
execute if score #Forge blue matches 2 run data modify storage minecraft:upgrader Blue[4].tag.display set from storage game:lang Upgrader.Items[4][3]
execute if score #Forge blue matches 2 run data remove storage minecraft:upgrader Blue[4].tag.U
execute if score #Forge blue matches 2 run data modify storage minecraft:upgrader Blue[4].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Forge blue 1
#Translate
tellraw @a[team=blue] {"storage": "game:lang", "nbt": "Upgrader.UpgradeForge", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1