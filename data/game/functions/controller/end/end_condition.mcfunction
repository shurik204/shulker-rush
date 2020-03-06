scoreboard players set #Count yellow 0
scoreboard players set #Count blue 0
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1

execute unless score #Debug var matches 1 if score #Count yellow matches 1.. if score #Count blue matches 0 run function #game:controller_yellow_win
execute unless score #Debug var matches 1 if score #Count yellow matches 0 if score #Count blue matches 1.. run function #game:controller_blue_win
execute unless score #Debug var matches 1 if score #Count blue matches 0 if score #Count yellow matches 0 run function #game:controller_end

schedule function #game:controller_end_condition 7t