schedule function #game:debug/stats 4t

scoreboard players set TotalItemsCount Debug 0
execute as @e[type=minecraft:item] run scoreboard players add TotalItemsCount Debug 1

scoreboard players set TotalEntityCount Debug 0
execute as @e run scoreboard players add TotalEntityCount Debug 1

scoreboard players set PlayerCount Debug 0
execute as @a run scoreboard players add PlayerCount Debug 1

scoreboard players set FillMarkerCount Debug 0
execute as @e[type=minecraft:area_effect_cloud,tag=Fill] run scoreboard players add FillMarkerCount Debug 1

scoreboard players set FillMarkerCount Debug 0
execute as @e[type=minecraft:area_effect_cloud,tag=Fill] run scoreboard players add FillMarkerCount Debug 1

scoreboard players set FillMarkerCount Debug 0
execute as @e[type=minecraft:area_effect_cloud,tag=Fill] run scoreboard players add FillMarkerCount Debug 1

scoreboard players operation BlueShulkerHP Debug = @e[type=minecraft:shulker,tag=bBed,limit=1] HP
scoreboard players operation YellowShulkerHP Debug = @e[type=minecraft:shulker,tag=yBed,limit=1] HP

scoreboard players operation KillHeight Debug = #KillHeight var