tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0
execute if score #State var matches 2 run function game:lobby/tick
execute if score #State var matches 3 run function game:lobby/condition
execute if score #State var matches 4 run function game:lobby/countdown
execute if score #State var matches 10 run function game:shop/update
execute if score #State var matches 10 as @a run function game:shop/tick
execute if score #State var matches 10 run function game:game/tick

#Welcome msg
execute as @a[tag=!Joined] run tellraw @s ["",{"text":"Welcome, ","color":"gold"},{"selector":"@s","color":"gold"},{"text":", to","color":"gold"},{"text":" Shulker Rush","bold":true,"color":"dark_purple"}]

#FallingBlock "Time" update
execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1

tag @a[tag=!Joined] add Joined