execute as @a[scores={death=1..}] run function #game:game_killed_by_player

execute as @a[scores={kill=1..}] run function #game:game_killed_player

execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={height=..130}] run function #game:game_killed_by_void

execute as @a[tag=!Joined] at @s run function #game:game_player_joined

execute as @a store result score @s[tag=!regiveAll] HasAxe run clear @s minecraft:golden_axe 0

execute as @a[scores={drinkPotion=1..}] at @s run function #game:used_explosive_potion

execute as @a if score @s join matches 180420 run function game:default/game/events/player_join_game

# Init just joined players
execute as @a[tag=NeedInit] run function #game:controller_init_player

schedule function #game:tick 1t