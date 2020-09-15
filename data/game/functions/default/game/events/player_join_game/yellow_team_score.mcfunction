tag @s add can_join_yellow
execute as @a[team=yellow] run scoreboard players add #yellow_team_score var 10000
scoreboard players set #tmp var 0
execute as @a[team=yellow] run scoreboard players operation #tmp var += @s killCount
scoreboard players set #tmp2 var 0
execute as @a[team=yellow] run scoreboard players operation #tmp2 var += @s deathCount

# Calculate kill/death ratio. Can be zero when no data.
# #tmp will now hold kill/death ratio multiplier bonus
execute unless score #tmp2 var matches 0 run scoreboard players operation #tmp var /= #tmp2 var

# Calculate bonus score
scoreboard players operation #tmp2 var = #yellow_team_score var
scoreboard players operation #tmp2 var *= #tmp var
# Nothing will change if bonus score = 0
scoreboard players operation #yellow_team_score var += #tmp var