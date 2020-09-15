function #game:event/player_join_game/team_check

execute if score #yellow_team_score var < #blue_team_score var if entity @s[tag=can_join_yellow] run function #game:event/player_join_game/join_yellow
execute if score #yellow_team_score var > #blue_team_score var if entity @s[tag=can_join_blue] run function #game:event/player_join_game/join_blue

execute if score #yellow_team_score var = #blue_team_score var if entity @s[tag=can_join_yellow,tag=can_join_blue] run function #game:event/player_join_game/join_random_team

execute if entity @s[team=player,tag=can_join_yellow,tag=!can_join_blue] run function #game:event/player_join_game/join_yellow
execute if entity @s[team=player,tag=!can_join_yellow,tag=can_join_blue] run function #game:event/player_join_game/join_blue

execute if entity @s[team=player,tag=!can_join_yellow,tag=!can_join_blue] run tellraw @s {"storage": "game:lang", "nbt": "Game.CantJoin", "interpret": true}
execute if entity @s[team=player] run scoreboard players enable @s join
scoreboard players set @s join 0

tag @s remove can_join_yellow
tag @s remove can_join_blue