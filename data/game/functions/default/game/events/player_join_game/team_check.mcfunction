scoreboard players set #yellow_team_score var 0
scoreboard players set #blue_team_score var 0

execute if entity @e[type=minecraft:shulker,tag=yBed] run function game:default/game/events/player_join_game/yellow_team_score
execute if entity @e[type=minecraft:shulker,tag=bBed] run function game:default/game/events/player_join_game/blue_team_score