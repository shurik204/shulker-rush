######################
# Shop related stuff #
######################

# Copy data from Template
data modify storage minecraft:shop mod set from storage minecraft:shop Template
# Modifing template with enabled modificators

function #controller:pre_init_shop

# Copy from modded template to teams' shops 
data modify storage minecraft:shop Yellow set from storage minecraft:shop mod
data modify storage minecraft:shop Blue set from storage minecraft:shop mod

# Insert glass to team shops
data modify storage minecraft:shop Yellow prepend from storage minecraft:shop YellowGlass
data modify storage minecraft:shop Blue prepend from storage minecraft:shop BlueGlass

function #controller:post_init_shop

data modify storage minecraft:upgrader Yellow set from storage minecraft:upgrader Template
data modify storage minecraft:upgrader Blue set from storage minecraft:upgrader Template

function #controller:init_upgrader

########################
# Resetting everything #
########################

scoreboard players set #MaxShulkerHealth var 7
scoreboard players set #KillHeight var 130

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

# Make sure to clear display objectives
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

fill 985 192 1085 991 188 1079 air
fill 1003 192 1085 1009 188 1079 air
fill 986 176 1135 1008 190 1158 air

kill @e[tag=Lobby]
title @a subtitle {"text":"Игра началась!","color":"yellow"}

# Remove old entities
kill @e[tag=game]
kill @e[type=item]
# And summon new ones
function #controller:summon

# Schedule functions
function #controller:init_schedule

# Init players
execute as @a[tag=NeedInit] run function #controller:init_player

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 0.8 1

#Clear the arena to make sure nothing left
execute as @e[type=area_effect_cloud,limit=1,tag=Fill] at @s run function #game:filler/clear

execute at @e[type=minecraft:area_effect_cloud,tag=Chest] run data modify block ~ ~ ~ Items set value []
#Translate
execute at @e[type=minecraft:area_effect_cloud,tag=Upgrader] unless block ~ ~-1 ~ minecraft:hopper run tellraw @a [{"text":"[Game] One of your upgrade markers is placed incorrectly! (Must be one block above the hopper)"}]
#Translate
execute at @e[type=minecraft:area_effect_cloud,tag=Chest] unless block ~ ~ ~ minecraft:chest run tellraw @a [{"text":"[Game] One of your chest markers is placed incorrectly!"}]
#Translate
execute if score #Enabled Debug matches 1 run tellraw @a {"text":"[Game] Debug mode enabled.\n[Game] To end the game run /function #controller:end"}

team modify yellow nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify player nametagVisibility never

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops true
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule keepInventory false
gamerule logAdminCommands false
gamerule maxCommandChainLength 32768
gamerule mobGriefing false
gamerule maxEntityCramming 40
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
execute if score #Enabled Debug matches 1 run gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
execute if score #Enabled Debug matches 1 run gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule spawnRadius 1
gamerule spectatorsGenerateChunks false