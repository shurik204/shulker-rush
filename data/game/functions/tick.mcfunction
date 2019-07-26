#execute at @e[type=minecraft:area_effect_cloud,tag=shop] run data modify block ~ ~ ~ Items set from block ~ ~-4 ~ Items
execute as @a[tag=InGame] run function game:shop/tick
function game:game/tick