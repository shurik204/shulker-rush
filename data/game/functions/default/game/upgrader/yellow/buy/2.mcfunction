execute if score #Effects yellow matches 0 run scoreboard players remove #Souls yellow 3
execute if score #Effects yellow matches 1 run scoreboard players remove #Souls yellow 4
execute if score #Effects yellow matches 2 run scoreboard players remove #Souls yellow 6

#Translate
execute if score #Effects yellow matches 0 run data modify storage minecraft:upgrader Yellow[1].tag.display set from storage game:lang Upgrader.Items[1][1]
#Translate
execute if score #Effects yellow matches 1 run data modify storage minecraft:upgrader Yellow[1].tag.display set from storage game:lang Upgrader.Items[1][2]
#Translate
execute if score #Effects yellow matches 2 run data modify storage minecraft:upgrader Yellow[1].tag.display set from storage game:lang Upgrader.Items[1][3]
execute if score #Effects yellow matches 2 run data remove storage minecraft:upgrader Yellow[1].tag.U
execute if score #Effects yellow matches 2 run data modify storage minecraft:upgrader Yellow[1].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Effects yellow 1
#Translate
tellraw @a[team=yellow] {"storage": "game:lang", "nbt": "Upgrader.UpgradeMagicEffects", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1