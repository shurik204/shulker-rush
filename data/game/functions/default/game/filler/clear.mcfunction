fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace #game:destroy
kill @s

execute as @e[type=area_effect_cloud,limit=1,tag=Fill] at @s run function game:default/game/filler/clear