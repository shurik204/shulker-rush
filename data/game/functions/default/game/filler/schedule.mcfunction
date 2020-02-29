tag @a add FillEnd
execute at @e[tag=Fill,type=minecraft:area_effect_cloud] positioned ~-10 ~-9 ~-10 run tag @a[dx=20,dy=19,dz=20] remove FillEnd

execute as @a[tag=FillEnd] at @s run function game:default/game/events/block_placed
schedule function game:default/game/filler/schedule 2t