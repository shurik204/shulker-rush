schedule function #game:upgrader/schedule 2t

execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] at @s if entity @a[gamemode=!spectator,distance=..7] positioned ~ ~-1 ~ run function #game:upgrader/update