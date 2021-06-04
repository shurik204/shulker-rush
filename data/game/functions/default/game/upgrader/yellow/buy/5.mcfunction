execute if score #Forge yellow matches 0 run scoreboard players remove #Souls yellow 2
execute if score #Forge yellow matches 1 run scoreboard players remove #Souls yellow 5
execute if score #Forge yellow matches 2 run scoreboard players remove #Souls yellow 10

#Translate
execute if score #Forge yellow matches 0 run data modify storage minecraft:upgrader Yellow[4].tag.display set from storage game:lang Upgrader.Items[4][1]
#Translate
execute if score #Forge yellow matches 1 run data modify storage minecraft:upgrader Yellow[4].tag.display set from storage game:lang Upgrader.Items[4][2]
#Translate
execute if score #Forge yellow matches 2 run data modify storage minecraft:upgrader Yellow[4].tag.display set from storage game:lang Upgrader.Items[4][3]
execute if score #Forge yellow matches 2 run data remove storage minecraft:upgrader Yellow[4].tag.U
execute if score #Forge yellow matches 2 run data modify storage minecraft:upgrader Yellow[4].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Forge yellow 1
#Translate
tellraw @a[team=yellow] {"storage": "game:lang", "nbt": "Upgrader.UpgradeForge", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1