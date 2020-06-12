gamerule fallDamage false
gamerule sendCommandFeedback false

team modify yellow nametagVisibility always
team modify blue nametagVisibility always
team modify player nametagVisibility always

function controller:end/reset_map

kill @e[tag=game]
kill @e[type=item]

# Create spawn back from template
# TODO: Move spawn file to datapack
execute if block 997 180 1139 air run setblock 986 176 1135 minecraft:structure_block{author:"shurik204",posX:0,posY:0,posZ:0,sizeX:23,sizeY:15,sizeZ:24,name:"game:spawn",mode:"LOAD",powered:0b,showboundingbox:1b}
execute if block 997 180 1139 air run setblock 986 177 1135 minecraft:redstone_block

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
scoreboard players set #Debug var 0
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
schedule clear #game:gen/ruby_generator

# Game
schedule clear #game:tick
schedule clear #game:player/respawn/schedule
schedule clear #game:player/schedule
schedule clear #game:filler/schedule

# Shop
schedule clear #game:shop/schedule

#Upgrader
schedule clear #game:upgrader/schedule
schedule clear #controller:end_condition

# And schedule lobby function 1 tick after end triggered
schedule function #game:lobby/tick 1t


# Update info on the sign
data modify block 1002 180 1156 Text1 set value '{"text":"Map version: 1.2"}'
data modify block 1002 180 1156 Text3 set value '{"text":"17.05.20"}'
data modify block 1002 180 1156 Text4 set value '{"text":"Code ver: 1.2.2"}'