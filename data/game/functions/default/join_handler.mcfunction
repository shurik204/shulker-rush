schedule function #game:join_handler 1t

execute as @a unless score @s leaveGame matches 0.. run scoreboard players set @s leaveGame 1

#Welcome msg
#Translate
tellraw @a[tag=!Joined] {"storage": "game:lang","nbt": "Welcome","interpret": true}
tag @a[tag=!Joined] add Joined


tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0