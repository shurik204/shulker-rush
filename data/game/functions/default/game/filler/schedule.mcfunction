tag @a add FillEnd
execute at @e[tag=Fill,type=minecraft:area_effect_cloud] positioned ~-7 ~-6 ~-7 run tag @a[dx=14,dy=12,dz=14,gamemode=!spectator] remove FillEnd

execute as @a[tag=FillEnd] at @s run function #game:filler/block_placed
execute as @a[team=!player] run function #game:filler/clear_score

schedule function #game:filler/schedule 2t