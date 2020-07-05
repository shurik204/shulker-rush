execute if score #Weapon yellow matches 0 run scoreboard players remove #Souls yellow 4
execute if score #Weapon yellow matches 1 run scoreboard players remove #Souls yellow 7
execute if score #Weapon yellow matches 2 run scoreboard players remove #Souls yellow 11

#Translate
execute if score #Weapon yellow matches 0 run data modify storage minecraft:upgrader Yellow[2].tag.display set from storage game:lang Upgrader.Items[2][1]
#Translate
execute if score #Weapon yellow matches 1 run data modify storage minecraft:upgrader Yellow[2].tag.display set from storage game:lang Upgrader.Items[2][2]
#Translate
execute if score #Weapon yellow matches 2 run data modify storage minecraft:upgrader Yellow[2].tag.display set from storage game:lang Upgrader.Items[2][3]
execute if score #Weapon yellow matches 2 run data remove storage minecraft:upgrader Yellow[2].tag.U
execute if score #Weapon yellow matches 2 run data modify storage minecraft:upgrader Yellow[2].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Weapon yellow 1
#Translate
tellraw @a[team=yellow] {"storage": "game:lang", "nbt": "Upgrader.UpgradeWeapons", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1