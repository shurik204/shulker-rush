scoreboard players set #Start var 0
scoreboard players set #Count yellow 0
scoreboard players set #Count blue 0
scoreboard players set #Count var 0

# Count players
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1
execute as @a run scoreboard players add #Count var 1
# Not enough players
execute if score #Start var matches 0 if score #Count var matches ..1 run scoreboard players set #Start var -1
# No blue players
execute if score #Start var matches 0 if score #Count yellow matches 1.. if score #Count blue matches 0 run scoreboard players set #Start var -2
# No yellow players
execute if score #Start var matches 0 if score #Count yellow matches 0 if score #Count blue matches 1.. run scoreboard players set #Start var -3

execute if score #Start var matches ..-1 run playsound minecraft:block.anvil.break block @a ~ ~ ~ 0.6 1.2 1

execute if score #Start var matches -1 run title @a actionbar {"text":"Недостаточно игроков для начала игры","color":"red"}
execute if score #Start var matches -2 run title @a actionbar {"text":"В синей команде никого нет","color":"red"}
execute if score #Start var matches -3 run title @a actionbar {"text":"В жёлтой команде никого нет","color":"red"}

execute if score #Start var matches 0 run function game:controller/pre_start