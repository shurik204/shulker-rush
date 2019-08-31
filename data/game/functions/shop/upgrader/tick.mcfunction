execute as @e[type=area_effect_cloud,tag=Upgrade] at @s run function game:shop/upgrader/update

clear @a minecraft:golden_carrot{U:2}
clear @a minecraft:iron_sword{U:2}
clear @a minecraft:iron_chestplate{U:2}
clear @a minecraft:brewing_stand{U:2}

execute at @e[type=area_effect_cloud,tag=UpY] as @a[distance=..10,team=yellow] run function game:shop/upgrader/yupgrader
execute at @e[type=area_effect_cloud,tag=UpB] as @a[distance=..10,team=blue] run function game:shop/upgrader/bupgrader

clear @a minecraft:emerald{U:1}
clear @a minecraft:golden_carrot{U:1}
clear @a minecraft:iron_sword{U:1}
clear @a minecraft:iron_chestplate{U:1}
clear @a minecraft:brewing_stand{U:1}