scoreboard players remove #Souls blue 1
scoreboard players add @e[type=minecraft:shulker,tag=bBed,limit=1] HP 1
execute at @e[type=minecraft:shulker,tag=bBed,limit=1] run particle minecraft:nautilus ~ ~1.2 ~ 0.1 0.2 0.1 1 100 force
execute as @e[type=minecraft:shulker,tag=bBed,limit=1] run function #game:shulker/update_name
#Translate
tellraw @a[team=blue] {"storage": "game:lang", "nbt": "Upgrader.ShulkerPlusHP", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1