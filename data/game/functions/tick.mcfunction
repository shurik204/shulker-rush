tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0
execute if score #State var matches 2 run function game:lobby/tick
execute if score #State var matches 3 run function game:lobby/condition
execute if score #State var matches 4 run function game:lobby/countdown
execute if score #State var matches 10 run function game:shop/update
execute if score #State var matches 10 as @a run function game:shop/tick
execute if score #State var matches 10 run function game:game/tick

#Welcome msg
#execute as @a[tag=!Joined] run tellraw @s [{"text":"Welcome, ","color":"gold"},{"selector":"@s","color":"gold"},{"text":", to","color":"gold"},{"text":" Shulker Rush","bold":true,"color":"dark_purple"}]
scoreboard players enable @a trigger
tellraw @a[tag=!Joined] [{"text":"\nWelcome to ","color":"gold"},{"text":"Shulker Rush!","color":"gold","bold":"true"},{"text":"\n\nClick ","color":"gray"},{"text":"[here]","color":"gray","italic":"true","hoverEvent":{"action":"show_text","value":"click"},"clickEvent":{"action":"run_command","value":"/trigger trigger set 2019"}},{"text":" to show the rules!\n","color":"gray"}]

tellraw @a[scores={trigger=2019}] [{"text":"\nRules: ","color":"green"},{"text":"The objective is to ","color":"gray"},{"text":"kill the opposing team's Shulker","color":"gold"},{"text":", then eliminate the rest of their team. If your Shulker is killed, you cannot respawn anymore.\nThere are ","color":"gray"},{"text":"Generators ","color":"gold"},{"text":"which give you nuggets. In your spawn, they give you ","color":"gray"},{"text":"Iron nuggets ","color":"white"},{"text":"and ","color":"gray"},{"text":"Golden nuggets ","color":"yellow"},{"text":"and at the middle, there are two generators which produce ","color":"gray"},{"text":"Rubies","color":"red"},{"text":". With these nuggets, you can buy","color":"gray"},{"text":" tools or weapons ","color":"gold"},{"text":"in the shop.\n","color":"gray"},{"text":"When you kill players, you get souls ","color":"gold"},{"text":"which you can use to upgrade your skills.\n","color":"gray"}]
playsound minecraft:entity.experience_orb.pickup master @a[scores={trigger=2019}] ~ ~ ~ 10000 1
scoreboard players set @a trigger 0
#FallingBlock "Time" update
execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1

tag @a[tag=!Joined] add Joined
#Created by shurik204 | Teksar Team