tp @s 997.5 180.3 1144.5 180 0
team join player @s
clear @s
gamemode adventure
title @s times 0 30 30
title @s title ""
title @s subtitle {"storage": "game:lang", "nbt": "Lobby.JoinMsg", "interpret": true}

tellraw @s {"storage": "game:lang","nbt": "Game.WelcomeMsg","interpret": true}
tag @s add Joined
tag @s remove update_list