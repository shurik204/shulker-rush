# Shulker Magic Effects


execute if score #Effects blue matches 1.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..8,team=yellow] minecraft:mining_fatigue 3 0 false


execute if score #Effects blue matches 2.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..8,team=blue] minecraft:regeneration 3 0 false


execute if score #Effects blue matches 3.. as @e[type=shulker,tag=BlueBed] at @s run effect give @a[distance=..18,team=yellow] minecraft:glowing 3 0 false
