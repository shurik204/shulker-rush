

######################
# Shop related stuff #
######################

# Copy data from Template
data modify storage minecraft:shop modified set from storage minecraft:shop Template
# Modifing template with enabled modificators

# Copy from modded template to teams' shops 
data modify storage minecraft:shop Yellow set from storage minecraft:shop modified
data modify storage minecraft:shop Blue set from storage minecraft:shop modified

# # Insert glass to team shops if it is not disabled
data modify storage minecraft:shop Yellow prepend from storage minecraft:shop YellowGlass
data modify storage minecraft:shop Blue prepend from storage minecraft:shop BlueGlass

data modify storage minecraft:upgrader Yellow set from storage minecraft:upgrader Template
data modify storage minecraft:upgrader Blue set from storage minecraft:upgrader Template

########################
# Resetting everything #
########################

scoreboard players add #Current GameID 1
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

#Clear the arena to make sure nothing left
execute as @e[type=area_effect_cloud,limit=1,tag=Fill] at @s run function game:default/game/filler/clear

execute at @e[type=minecraft:area_effect_cloud,tag=Chest] run data modify block ~ ~ ~ Items set value []
execute at @e[type=minecraft:area_effect_cloud,tag=Upgrader] unless block ~ ~-1 ~ minecraft:hopper run tellraw @a [{"text":"[Game] One of your upgrade markers is placed incorrectly! (Must be one block above the hopper)"}]
execute at @e[type=minecraft:area_effect_cloud,tag=Chest] unless block ~ ~ ~ minecraft:chest run tellraw @a [{"text":"[Game] One of your chest markers is placed incorrectly!"}]