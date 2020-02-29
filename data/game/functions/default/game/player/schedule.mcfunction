execute as @a[team=!player] run function game:default/game/player/foodlevel
execute as @a[team=!player] run function game:default/game/player/actionbar
execute as @a[team=!player] run function game:default/game/player/upgrade_sword

schedule function game:default/game/player/schedule 3t