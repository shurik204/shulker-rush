title @a times 0 30 30
execute if score #Countdown var matches 1.. run title @a title [{"storage":"game:lang","nbt":"Countdown.Title","interpret": true}]
execute if score #Countdown var matches 1.. run title @a subtitle [{"storage": "game:lang","nbt": "Countdown.Subtitle","interpret": true},{"score":{"name":"#Countdown","objective":"var"}}]
scoreboard players remove #Countdown var 1
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1
execute if score #Countdown var matches ..-1 run function #controller:start
execute if score #Countdown var matches 0.. run schedule function #controller:countdown 1s replace
gamemode spectator @a[team=player]