execute if score #Enabled Debug matches 1.. run say Joining random team

scoreboard players set #Count yellow 0
scoreboard players set #Count blue 0
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1
execute if score #Count yellow = #Count blue if predicate game:random/50 run function #game:event/player_join_game/join_yellow
execute if score #Count yellow = #Count blue if entity @s[team=player] run function #game:event/player_join_game/join_blue
execute if score #Count yellow > #Count blue run team join blue
execute if score #Count yellow < #Count blue run team join yellow