#define storage minecraft:shop Shop storage

######################
# Shop related stuff #
######################

# Copy data from Template
data modify storage minecraft:shop modified set from storage minecraft:shop Template
# Modifing template with enabled modificators

# Copy from modded template to teams' shops 
data modify storage minecraft:shop Blue set from storage minecraft:shop modified
data modify storage minecraft:shop Yellow set from storage minecraft:shop modified
# Insert glass to team shops if it is not disabled
execute if score #NoGlass settings matches 0 run data modify storage minecraft:shop Yellow prepend from storage minecraft:shop YellowGlass
execute if score #NoGlass settings matches 0 run data modify storage minecraft:shop Blue prepend from storage minecraft:shop BlueGlass

########################
# Resetting everything #
########################

# Upgrades
scoreboard players set #Effects yellow 0
scoreboard players set #Effects blue 0

scoreboard players set #Armor yellow 0
scoreboard players set #Armor blue 0

scoreboard players set #Weapon yellow 0
scoreboard players set #Weapon blue 0

scoreboard players set #Forge yellow 0
scoreboard players set #Forge blue 0

scoreboard players set #Souls yellow 0
scoreboard players set #Souls blue 0

# Remove old entities
kill @e[tag=game]
kill @e[type=item]
# And summon new ones
function game:controller/summon

# Schedule functions
function game:controller/init_schedule
execute as @a run function game:controller/init_player

execute at @e[type=minecraft:area_effect_cloud,tag=Chest] run data modify block ~ ~ ~ Items set value []
# TODO: Implement tagged functions reschedule for better "moduleness"