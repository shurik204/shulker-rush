function game:default/game/shop/update

execute at @e[type=minecraft:area_effect_cloud,tag=Shop] as @a[distance=..8,gamemode=!spectator] run function game:default/game/shop/buy

schedule function game:default/game/shop/schedule 1t