schedule function #game:join_handler 1t
#Welcome msg
execute as @a unless score @s leaveGame matches 0.. run scoreboard players set @s leaveGame 1
#Translate
tellraw @a[tag=!Joined] {"storage": "game:lang","nbt": "Welcome","interpret": true}

# Show message if player just joined
#Translate
execute if score #InGameJoin settings matches 1 run tellraw @a[tag=ShowJoinMessage] {"storage": "game:lang","nbt": "JoinGame","interpret": true}
tag @a remove ShowJoinMessage

tag @a[tag=!Joined] add Joined


tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0