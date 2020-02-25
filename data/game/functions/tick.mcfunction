#Welcome msg
tellraw @a[tag=!Joined] [{"text":"\nПриветствую на ","color":"gold"},{"text":"Shulker Rush Classic!","color":"gold","bold":true},{"text":"\n\nНажми ","color":"gray"},{"text":"[тут]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","value":"Клик"},"clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1MQIcemSSnh1fgDQjf9-ZKyYbMC7HR4z-sgQxQzNYKzk/edit?usp=sharing"}},{"text":" чтобы ознакомиться с правилами \nи информацией про обновления!\n","color":"gray"}]
tag @a[tag=!Joined] add Joined

tag @a[scores={leaveGame=1..}] remove Joined
scoreboard players set @a[scores={leaveGame=1..}] leaveGame 0