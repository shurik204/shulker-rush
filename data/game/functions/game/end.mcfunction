execute as @e[type=area_effect_cloud,tag=fill] at @s run function game:game/reset_arena
kill @e[type=item]
kill @e[type=shulker,tag=bed]