execute as @a[scores={death=1..}] run function game:default/game/events/killed_by_player

execute as @a[scores={kill=1..}] run function game:default/game/events/killed_player

execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={height=..130}] run function game:default/game/events/killed_by_void

execute as @a[tag=!Joined] at @s run function game:default/game/events/player_joined

schedule function game:default/game/tick 1t replace