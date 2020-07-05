gamerule fallDamage false
gamerule sendCommandFeedback false

team modify yellow nametagVisibility always
team modify blue nametagVisibility always
team modify player nametagVisibility always

function #controller:reset_map

kill @e[tag=game]
kill @e[type=item]

# Create spawn back from template
execute if block 997 180 1139 air run setblock 986 176 1135 minecraft:structure_block{author:"shurik204",posX:0,posY:0,posZ:0,sizeX:23,sizeY:15,sizeZ:24,name:"game:spawn",mode:"LOAD",powered:0b,showboundingbox:1b}
execute if block 997 180 1139 air run setblock 986 177 1135 minecraft:redstone_block

team remove yellow
team remove blue
team remove player
team add yellow {"text":"Yellow","color":"yellow"}
team add blue {"text":"Blue","color":"aqua"}
team modify yellow collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify yellow deathMessageVisibility never
team modify blue deathMessageVisibility never
team modify yellow color yellow
team modify blue color aqua
team modify yellow friendlyFire false
team modify blue friendlyFire false
team modify yellow nametagVisibility always
team modify blue nametagVisibility always
team modify yellow seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true

team add player {"text":"Spectators","color":"gray"}
team modify player nametagVisibility always
team modify player deathMessageVisibility never
team modify player color gray
team modify player collisionRule never
team modify player friendlyFire false

# Set difficulty back to easy
difficulty easy
# Set title delay for "(Team) won" text
title @a times 3 46 24
# Clear actionbar
title @a actionbar ""
# Clear all players' inventories
clear @a
# Clear all effects
effect clear @a
# TP all players to lobby
tp @a 997.5 180.1 1144.5 180 0
# PLay end sound (Wither death)
execute as @a at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 2 1
# Set all players' gamemode to adventure
gamemode adventure @a
# Set gamestate to 1 (Lobby)
scoreboard players set #State var 1
# Disable debug flag
scoreboard players set #Enabled Debug 0
# Reset drink potion score just to be sure that nothing weird will happen
scoreboard players set @a drinkPotion 0
# Set team to "player" for all players
team join player @a

# Clear functions schedule
schedule clear #game:block_drops_schedule
# Shulker functions
schedule clear #game:shulker/schedule

# Generators
schedule clear #game:gen/yellow/iron_generator
schedule clear #game:gen/blue/iron_generator
schedule clear #game:gen/yellow/gold_generator
schedule clear #game:gen/blue/gold_generator
schedule clear #game:gen/ruby/schedule

# Game
schedule clear #game:tick
schedule clear #game:player/respawn/schedule
schedule clear #game:player/schedule
schedule clear #game:filler/schedule

# Shop
schedule clear #game:shop/schedule

#Upgrader
schedule clear #game:upgrader/schedule
# New particles
schedule clear #game:upgrader/particles

schedule clear #controller:end_condition

#Re-schedule join handler if needed
schedule function #game:join_handler 1t
# And schedule lobby function 1 tick after end triggered
schedule function #game:lobby/tick 1t

# Version 1.3.1
execute as @e[type=minecraft:armor_stand,tag=charYellow] run data modify entity @s CustomName set from storage game:lang Lobby.CharYellow
execute as @e[type=minecraft:armor_stand,tag=charBlue] run data modify entity @s CustomName set from storage game:lang Lobby.CharBlue
execute as @e[type=minecraft:area_effect_cloud,tag=label.creator] run data modify entity @s CustomName set from storage game:lang Lobby.Creator
execute as @e[type=minecraft:area_effect_cloud,tag=label.originallyby] run data modify entity @s CustomName set from storage game:lang Lobby.OriginallyBy

data modify block 997 180 1140 Text4 set from storage game:lang Lobby.RightClick
data modify block 994 180 1152 Text4 set from storage game:lang Lobby.RightClick

data modify block 997 180 1140 Text1 set from storage game:lang Lobby.StartSign[0]
data modify block 997 180 1140 Text2 set from storage game:lang Lobby.StartSign[1]

# Add tag to teams "chars'"
tag @e[type=minecraft:armor_stand,tag=charYellow] add TeamChar
tag @e[type=minecraft:armor_stand,tag=charBlue] add TeamChar


# Update info on the sign
data modify block 1002 180 1156 Text1 set value '{"text":"Map version: 1.3"}'
data modify block 1002 180 1156 Text3 set value '{"text":"05.07.20"}'
data modify block 1002 180 1156 Text4 set value '{"text":"Code ver: 1.3.1"}'