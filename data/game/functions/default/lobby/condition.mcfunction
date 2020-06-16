scoreboard players set #Start var 0
scoreboard players set #Count yellow 0
scoreboard players set #Count player 0
scoreboard players set #Count blue 0
scoreboard players set #Count var 0

# Count players
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1
execute as @a[team=player] run scoreboard players add #Count player 1
execute as @a run scoreboard players add #Count var 1
# Not enough players
execute if score #Start var matches 0 if score #Count var matches ..1 run scoreboard players set #Start var -1
# Not enough players
execute if score #Start var matches 0 if score #Count player matches 1.. run scoreboard players set #Start var -4
# No blue players
execute if score #Start var matches 0 if score #Count yellow matches 1.. if score #Count blue matches 0 run scoreboard players set #Start var -2
# No yellow players
execute if score #Start var matches 0 if score #Count yellow matches 0 if score #Count blue matches 1.. run scoreboard players set #Start var -3

execute if score #Start var matches ..-1 run playsound minecraft:entity.item.break block @a ~ ~ ~ 0.6 1.2 0.4

execute if score #Enabled Debug matches 1 run scoreboard players set #Start var 0
#Translate
execute if score #Start var matches -1 run title @a actionbar {"text":"Недостаточно игроков для начала игры","color":"red"}
#Translate
execute if score #Start var matches -2 run title @a actionbar {"text":"В синей команде никого нет","color":"red"}
#Translate
execute if score #Start var matches -3 run title @a actionbar {"text":"В жёлтой команде никого нет","color":"red"}
#Translate
execute if score #Start var matches -4 run title @a actionbar {"text":"Некоторые игроки не выбрали команду","color":"red"}

execute if score #Start var matches 0 run function controller:pre_start