fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace yellow_stained_glass
fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace light_blue_stained_glass
fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace end_stone
fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace obsidian
fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace oak_planks
fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace cobweb
kill @s
execute as @e[type=area_effect_cloud,limit=1,tag=fill] at @s run function game:game/reset_arena