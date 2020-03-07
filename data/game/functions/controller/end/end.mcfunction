gamerule fallDamage false

execute as @e[type=area_effect_cloud,limit=1,tag=Fill] at @s run function #game:filler_clear
kill @e[tag=game]
fill 989 172 1109 1004 170 1096 minecraft:water replace air

execute if block 997 180 1139 air run setblock 986 176 1135 minecraft:structure_block{author:"shurik204",posX:0,posY:0,posZ:0,sizeX:23,sizeY:15,sizeZ:24,name:"game:spawn",mode:"LOAD",powered:0b,showboundingbox:1b}
execute if block 997 180 1139 air run setblock 986 177 1135 minecraft:redstone_block

clear @a
effect clear @a
tp @a 997.5 180.1 1144.5 180 0
execute as @a at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 2 1
team join player @a
gamemode adventure @a
scoreboard players set #State var 1
scoreboard players set #Debug var 0
scoreboard players set @a drinkPotion 0

schedule clear #game:block_drops_schedule
# Shulker functions
schedule clear #game:shulker_schedule

# Generators
schedule clear #game:yellow_iron_generator
schedule clear #game:blue_iron_generator
schedule clear #game:yellow_gold_generator
schedule clear #game:blue_gold_generator
schedule clear #game:ruby_generator

# Game
schedule clear #game:tick
schedule clear #game:respawn_schedule
schedule clear #game:player_schedule
schedule clear #game:filler_schedule

# Shop
schedule clear #game:shop_schedule

#Upgrader
schedule clear #game:upgrader_schedule


schedule clear #game:controller_end_condition
schedule function #game:lobby_tick 2t