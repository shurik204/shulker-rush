#execute at @e[type=minecraft:area_effect_cloud,tag=shop] run data modify block ~ ~ ~ Items set from block ~ ~-4 ~ Items
execute if score #State var matches 2 run function game:lobby/tick
execute if score #State var matches 3 run function game:lobby/condition
execute if score #State var matches 10 run function game:shop/update
execute if score #State var matches 10 as @a[scores={InGame=1..}] run function game:shop/tick
execute if score #State var matches 10 run function game:game/tick


#Welcome msg
tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0
execute as @a[tag=!Joined] run tellraw @s ["",{"text":"\u041f\u0440\u0438\u0432\u0435\u0442\u0441\u0442\u0432\u0443\u044e \u0442\u0435\u0431\u044f, ","color":"gold"},{"selector":"@s","color":"gold"},{"text":", \u043d\u0430","color":"gold"},{"text":" Shulker Rush","bold":true,"color":"dark_purple"}]
tag @a[tag=!Joined] add Joined

#FallingBlock "Time" update
execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1

#
