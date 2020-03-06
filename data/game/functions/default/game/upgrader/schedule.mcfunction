execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] at @s positioned ~ ~-1 ~ run function game:default/game/upgrader/update

execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] at @s positioned ~ ~-1 ~ run function game:default/game/upgrader/buy

schedule function #game:upgrader_schedule 2t