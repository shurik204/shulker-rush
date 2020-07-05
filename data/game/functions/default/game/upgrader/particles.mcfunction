schedule function #game:upgrader/particles 8t

execute if score #Souls yellow matches 1..3 at @e[type=minecraft:area_effect_cloud,tag=yUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 1 force @a
execute if score #Souls yellow matches 4..9 at @e[type=minecraft:area_effect_cloud,tag=yUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 2 force @a
execute if score #Souls yellow matches 10.. at @e[type=minecraft:area_effect_cloud,tag=yUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 3 force @a

execute if score #Souls blue matches 1..3 at @e[type=minecraft:area_effect_cloud,tag=bUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 1 force @a
execute if score #Souls blue matches 4..9 at @e[type=minecraft:area_effect_cloud,tag=bUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 2 force @a
execute if score #Souls blue matches 10.. at @e[type=minecraft:area_effect_cloud,tag=bUpgrader] run particle minecraft:soul ~ ~0.1 ~ 0.13 0 0.13 0.01 3 force @a

execute if score #Effects yellow matches 1..2 as @e[type=minecraft:shulker,tag=yBed] at @s run particle minecraft:ambient_entity_effect ~ ~ ~ 3 3 3 1 8 force
execute if score #Effects yellow matches 3 at @e[type=minecraft:shulker,tag=yBed] run particle minecraft:cloud ~ ~ ~ 8 8 8 0.11 11 force

execute if score #Effects blue matches 1..2 as @e[type=minecraft:shulker,tag=bBed] at @s run particle minecraft:ambient_entity_effect ~ ~ ~ 3 3 3 1 8 force
execute if score #Effects blue matches 3 at @e[type=minecraft:shulker,tag=bBed] run particle minecraft:cloud ~ ~ ~ 8 8 8 0.11 11 force