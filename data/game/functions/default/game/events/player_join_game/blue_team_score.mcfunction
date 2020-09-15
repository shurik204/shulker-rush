tag @s add can_join_blue
execute as @a[team=blue] run scoreboard players add #blue_team_score var 10000
scoreboard players set #tmp var 0
execute as @a[team=blue] run scoreboard players operation #tmp var += @s killCount
scoreboard players set #tmp2 var 0
execute as @a[team=blue] run scoreboard players operation #tmp2 var += @s deathCount

# Calculate kill/death ratio. Can be zero when no data.
# #tmp will now hold kill/death ratio multiplier bonus
execute unless score #tmp2 var matches 0 run scoreboard players operation #tmp var /= #tmp2 var

# Calculate bonus score
scoreboard players operation #tmp2 var = #blue_team_score var
scoreboard players operation #tmp2 var *= #tmp var
# Nothing will change if bonus score = 0
scoreboard players operation #blue_team_score var += #tmp var