team join player @s
execute unless score @s GameID matches -2 run scoreboard players set @s GameID -1
title @s times 0 50 30
title @s title {"storage": "game:lang", "nbt": "Controller.Countdown.Title","interpret": true}
title @s subtitle {"storage": "game:lang","nbt": "Game.AlreadyStarted","interpret": true}
gamemode spectator @s

tellraw @s {"storage": "game:lang","nbt": "Game.WelcomeMsg","interpret": true}

# Allow joining in-game
scoreboard players set @s join 0
execute unless score #DisableInGameJoin settings matches 1 if score @s GameID matches -1 run scoreboard players enable @s join
execute unless score #DisableInGameJoin settings matches 1 if score @s GameID matches -1 run tellraw @s {"storage": "game:lang","nbt": "Game.JoinGameMsg","interpret": true}