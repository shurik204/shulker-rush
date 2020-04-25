# Moved the schedule here because of the bug that lead to infinite game ending. Now I can remove schedule clear from lobby/tick :D
schedule function #controller:end_condition 7t

scoreboard players set #Count yellow 0
scoreboard players set #Count blue 0
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1

execute if score #Count yellow matches 1.. if score #Count blue matches 0 run function #controller:yellow_win
execute if score #Count yellow matches 0 if score #Count blue matches 1.. run function #controller:blue_win
execute if score #Count blue matches 0 if score #Count yellow matches 0 run function #controller:end