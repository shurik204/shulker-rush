schedule function #game:lobby/tick 1t

execute as @a[tag=!Joined] run function #game:lobby/player_joined

execute at @e[type=minecraft:armor_stand,tag=charYellow] as @a[distance=..5,scores={openVillager=1..},team=!yellow] run function #game:lobby/join_yellow

execute at @e[type=minecraft:armor_stand,tag=charBlue] as @a[distance=..5,scores={openVillager=1..},team=!blue] run function #game:lobby/join_blue

# function #game:addon_switch_check

effect give @a minecraft:resistance 5 255 true
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 255 true
effect give @e[type=minecraft:villager] minecraft:invisibility 1000000 0 true
scoreboard players set @a openVillager 0