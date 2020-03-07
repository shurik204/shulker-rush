execute as @a[distance=..2,tag=!eleminated,tag=regiveAll,scores={LastDeath=2..}] run function game:default/game/player/respawn/respawn_alive

execute as @a[distance=..2,tag=eleminated] run function game:default/game/player/respawn/respawn_eleminated