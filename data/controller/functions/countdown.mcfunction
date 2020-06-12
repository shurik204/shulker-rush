title @a times 0 30 30
execute if score #Countdown var matches 1.. run title @a title [{"text":"Shulker Rush Classic","color":"light_purple"}]
execute if score #Countdown var matches 1.. run title @a subtitle [{"text":"Начало игры через ","color":"yellow"},{"score":{"name":"#Countdown","objective":"var"}}]
scoreboard players remove #Countdown var 1
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1
execute if score #Countdown var matches ..-1 run function #controller:start
execute if score #Countdown var matches 0.. run schedule function #controller:countdown 1s replace
gamemode spectator @a[team=player]