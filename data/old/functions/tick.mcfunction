tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0
execute if score #State var matches 2 run function game:lobby/tick
execute if score #State var matches 3 run function game:lobby/condition
execute if score #State var matches 4 run function game:lobby/countdown
execute if score #State var matches 10 as @e[type=area_effect_cloud,tag=shop] at @s run function game:shop/update
execute if score #State var matches 10 as @a run function game:shop/tick
execute if score #State var matches 10 run function game:game/tick

#Welcome msg
tellraw @a[tag=!Joined] [{"text":"\nПриветствую на ","color":"gold"},{"text":"Shulker Rush Classic!","color":"gold","bold":true},{"text":"\n\nНажми ","color":"gray"},{"text":"[тут]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","value":"Клик"},"clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1MQIcemSSnh1fgDQjf9-ZKyYbMC7HR4z-sgQxQzNYKzk/edit?usp=sharing"}},{"text":" чтобы ознакомиться с правилами \nи информацией про обновления!\n","color":"gray"}]

#FallingBlock "Time" update
# execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1

tag @a[tag=!Joined] add Joined

# Created by shurik204 | Texar Team