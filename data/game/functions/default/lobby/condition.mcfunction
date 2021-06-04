scoreboard players set #Start var 0
scoreboard players set #Count yellow 0
scoreboard players set #Count player 0
scoreboard players set #Count blue 0
scoreboard players set #Count var 0

# Count players
# Update: Don't count players in spectator
execute as @a[gamemode=!spectator] run scoreboard players add #Count var 1

# Moved this here to make function count players without team only after this function
# If enabled, join random team for all players without team (Condition: there must be at least 2 players)
execute if score #JoinTeamForPlayers settings matches 1 if score #Count var matches 2.. as @a[team=player] run function #game:event/player_join_game/join_random_team

execute as @a[team=yellow,gamemode=!spectator] run scoreboard players add #Count yellow 1
execute as @a[team=blue,gamemode=!spectator] run scoreboard players add #Count blue 1
execute as @a[team=player,gamemode=!spectator] run scoreboard players add #Count player 1

# Not enough players
execute if score #Start var matches 0 if score #Count var matches ..1 run scoreboard players set #Start var -1
# Not enough players
execute if score #Start var matches 0 if score #Count player matches 1.. run scoreboard players set #Start var -4
# No blue players
execute if score #Start var matches 0 if score #Count yellow matches 1.. if score #Count blue matches 0 run scoreboard players set #Start var -2
# No yellow players
execute if score #Start var matches 0 if score #Count yellow matches 0 if score #Count blue matches 1.. run scoreboard players set #Start var -3

# Debug start switch
execute if score #Enabled Debug matches 1.. run scoreboard players set #Start var 0

# Play sound if game cannot be started
execute if score #Start var matches ..-1 run playsound minecraft:entity.item.break block @a ~ ~ ~ 0.6 1.2 0.4
#Translate
execute if score #Start var matches -1 run title @a actionbar {"storage": "game:lang", "nbt": "Controller.NotEnoughPlayers", "interpret": true}
#Translate
execute if score #Start var matches -2 run title @a actionbar {"storage": "game:lang", "nbt": "Controller.BlueEmpty", "interpret": true}
#Translate
execute if score #Start var matches -3 run title @a actionbar {"storage": "game:lang", "nbt": "Controller.YellowEmpty", "interpret": true}
#Translate
execute if score #Start var matches -4 run title @a actionbar {"storage": "game:lang", "nbt": "Controller.NoTeam", "interpret": true}

execute if score #Start var matches 0 run function controller:pre_start