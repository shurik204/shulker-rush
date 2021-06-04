execute if score #Armor blue matches 0 run scoreboard players remove #Souls blue 4
execute if score #Armor blue matches 1 run scoreboard players remove #Souls blue 6
execute if score #Armor blue matches 2 run scoreboard players remove #Souls blue 9

#Translate
execute if score #Armor blue matches 0 run data modify storage minecraft:upgrader Blue[3].tag.display set from storage game:lang Upgrader.Items[3][1]
#Translate
execute if score #Armor blue matches 1 run data modify storage minecraft:upgrader Blue[3].tag.display set from storage game:lang Upgrader.Items[3][2]
#Translate
execute if score #Armor blue matches 2 run data modify storage minecraft:upgrader Blue[3].tag.display set from storage game:lang Upgrader.Items[3][3]
execute if score #Armor blue matches 2 run data remove storage minecraft:upgrader Blue[3].tag.U
execute if score #Armor blue matches 2 run data modify storage minecraft:upgrader Blue[3].tag.Enchantments set value [{id:"minecraft:loyalty",lvl:1}]

scoreboard players add #Armor blue 1

execute as @a[team=blue] run function #game:shop/item/armor/give
#Translate
tellraw @a[team=blue] {"storage": "game:lang", "nbt": "Upgrader.UpgradeArmor", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1