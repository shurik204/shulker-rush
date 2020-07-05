schedule function #game:upgrader/schedule 2t

execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] at @s positioned ~ ~-1 ~ run function #game:upgrader/update

execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] at @s positioned ~ ~-1 ~ run function #game:upgrader/buy