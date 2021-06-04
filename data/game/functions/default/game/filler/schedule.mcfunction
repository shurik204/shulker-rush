schedule function #game:filler/schedule 2t

tag @a add FillEnd
execute at @e[tag=Fill,type=minecraft:area_effect_cloud] positioned ~-7 ~-6 ~-7 run tag @a[dx=14.0,dy=12.0,dz=14.0,gamemode=!spectator] remove FillEnd

# execute as @a[tag=FillEnd] at @s run function #game:filler/try_place_marker