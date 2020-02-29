scoreboard players remove #Souls blue 1
scoreboard players add @e[type=minecraft:shulker,tag=bBed,limit=1] HP 1
execute as @e[type=minecraft:shulker,tag=bBed,limit=1] run function game:default/game/shulker/update_name 
#Translate
tellraw @a[team=blue] {"text":"Твой Шалкер получил +1 HP","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1