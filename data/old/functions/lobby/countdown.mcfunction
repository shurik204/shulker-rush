title @a times 0 100 0
scoreboard players add #sec var 1
execute if score #Countdown var matches 1.. run title @a title {"text":"Shulker Rush","color":"green"}
execute if score #Countdown var matches 1.. run title @a subtitle [{"text":"Начало игры через ","color":"yellow"},{"score":{"name":"#Countdown","objective":"var"}}]
execute if score #sec var matches 20.. run scoreboard players remove #Countdown var 1
execute if score #sec var matches 20.. run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if score #sec var matches 20.. run scoreboard players set #sec var 0
execute if score #Countdown var matches 0 run scoreboard players set #State var 10
execute if score #Countdown var matches 0 run function game:game/start
gamemode spectator @a[team=!blue,team=!yellow]