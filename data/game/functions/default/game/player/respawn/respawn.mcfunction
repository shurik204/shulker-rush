tag @s[team=!player] add eleminated

execute if entity @s[team=yellow] if entity @e[type=shulker,tag=yBed] run tag @s remove eleminated
execute if entity @s[team=blue] if entity @e[type=shulker,tag=bBed] run tag @s remove eleminated

execute if entity @s[tag=!eleminated,tag=regiveAll,scores={LastDeath=2..}] run function #game:player/respawn/alive

execute if entity @s[team=!player,tag=eleminated,tag=regiveAll] run function #game:player/respawn/eleminated