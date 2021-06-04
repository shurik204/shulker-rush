execute store result score @s height run data get entity @s Pos[1]
execute if score @s height matches 240.. run tp @s ~ 240.5 ~
execute at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace #game:destroy

kill @s
execute as @e[type=area_effect_cloud,limit=1,tag=Fill] at @s run function #game:filler/clear