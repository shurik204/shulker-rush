fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace #game:blocks
kill @s
execute as @e[type=area_effect_cloud,limit=1,tag=fill] at @s run function game:game/reset_arena