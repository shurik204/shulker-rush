schedule function game:default/join_handler 1t
#Welcome msg
execute as @a unless score @s leaveGame matches 0.. run scoreboard players set @s leaveGame 1
#Translate
tellraw @a[tag=!Joined] [{"text":"\nПриветствую на ","color":"gold"},{"text":"Shulker Rush Classic!","color":"gold","bold":true},{"text":"\n\nНажми ","color":"gray"},{"text":"[тут]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","value":"Клик"},"clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1MQIcemSSnh1fgDQjf9-ZKyYbMC7HR4z-sgQxQzNYKzk/edit?usp=sharing"}},{"text":" чтобы ознакомиться с правилами \nи информацией про обновления!\n\nP.S: Ещё там есть список аддонов для этой игры и как ими управлять.\n","color":"gray"}]

# Show message if player just joined
#Translate
execute if score #InGameJoin settings matches 1 run tellraw @a[tag=ShowJoinMessage] [{"text":"Нажми ","color":"gray"},{"text":"[тут]","clickEvent":{"action":"run_command","value":"/trigger join set 180420"},"italic":true},{"text":" чтобы присоединится к игре","italic":false}]
tag @a remove ShowJoinMessage

tag @a[tag=!Joined] add Joined


tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0