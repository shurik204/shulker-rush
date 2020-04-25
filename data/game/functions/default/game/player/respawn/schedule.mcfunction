execute at @e[type=minecraft:area_effect_cloud,tag=Respawn] as @a[distance=..2,tag=regiveAll] run function #game:player/respawn/respawn

schedule function #game:player/respawn/schedule 1t