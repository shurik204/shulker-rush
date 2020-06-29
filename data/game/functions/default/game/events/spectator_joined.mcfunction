team join player @s
execute unless score @s GameID matches -2 run scoreboard players set @s GameID -1
title @s times 0 50 30
title @s title {"storage": "game:lang", "nbt": "Countdown.Title","interpret": true}
title @s subtitle {"storage": "game:lang","nbt": "GameAlreadyStarted","interpret": true}
scoreboard players set @s join 0
execute if score @s GameID matches -1.. if score #InGameJoin settings matches 1 run scoreboard players enable @s join
execute if score @s GameID matches -1.. if score #InGameJoin settings matches 1 run tag @s add ShowJoinMessage
gamemode spectator @s