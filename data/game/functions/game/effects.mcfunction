#Shulker Magic Effects
execute if score @s[type=area_effect_cloud,tag=UpY] effectLvl matches 1.. as @e[type=shulker,tag=YellowBed] at @s run effect give @a[distance=..8,team=blue] minecraft:mining_fatigue 3 0 false
execute if score @s[type=area_effect_cloud,tag=UpB] effectLvl matches 1.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..8,team=yellow] minecraft:mining_fatigue 3 0 false
execute if score @s[type=area_effect_cloud,tag=UpY] effectLvl matches 2.. as @e[type=shulker,tag=YellowBed] at @s run effect give @a[distance=..8,team=yellow] minecraft:regeneration 3 0 false
execute if score @s[type=area_effect_cloud,tag=UpB] effectLvl matches 2.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..8,team=blue] minecraft:regeneration 3 0 false
execute if score @s[type=area_effect_cloud,tag=UpY] effectLvl matches 3.. as @e[type=shulker,tag=YellowBed] at @s run effect give @a[distance=..18,team=blue] minecraft:glowing 3 0 false
execute if score @s[type=area_effect_cloud,tag=UpB] effectLvl matches 3.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..18,team=yellow] minecraft:glowing 3 0 false