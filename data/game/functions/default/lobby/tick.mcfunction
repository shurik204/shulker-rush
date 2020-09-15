schedule function #game:lobby/tick 1t

execute as @a[tag=!Joined] run function #game:lobby/player_joined

# Disable team selection setting
execute if score #DisableTeamSelect settings matches 1 run scoreboard players set @a openVillager 0
execute if score #DisableTeamSelect settings matches 1 as @e[type=minecraft:armor_stand,tag=TeamChar] run data modify entity @s CustomNameVisible set value 0
execute unless score #DisableTeamSelect settings matches 1 as @e[type=minecraft:armor_stand,tag=TeamChar] run data modify entity @s CustomNameVisible set value 1

execute at @e[type=minecraft:armor_stand,tag=charYellow] as @a[distance=..5,scores={openVillager=1..},team=!yellow] run function #game:lobby/join_yellow
execute at @e[type=minecraft:armor_stand,tag=charBlue] as @a[distance=..5,scores={openVillager=1..},team=!blue] run function #game:lobby/join_blue

# function #game:addon/switch_check

effect give @a minecraft:resistance 5 255 true
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 255 true
effect give @e[type=minecraft:villager] minecraft:invisibility 1000000 0 true
scoreboard players set @a openVillager 0