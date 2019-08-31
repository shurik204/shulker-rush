scoreboard players operation @s InGame = #Game var

gamemode adventure @s
tag @s add regiveAll
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

spawnpoint @s[team=blue] 1046 180 1078
tp @s[team=blue] 1046 180 1078 0 10
spawnpoint @s[team=yellow] 948 180 1078
tp @s[team=yellow] 948 180 1078 0 10

scoreboard players set @s deathCount 0
scoreboard players set @s totalKill 0
clear @s
scoreboard players set @s statArmor 0
scoreboard players set @s swordLvl 0
scoreboard players set @s armorLvl 0
tag @s remove elytra
tag @s remove eleminated
tag @s remove HasAxe

replaceitem entity @s enderchest.0 minecraft:air
replaceitem entity @s enderchest.1 minecraft:air
replaceitem entity @s enderchest.2 minecraft:air
replaceitem entity @s enderchest.3 minecraft:air
replaceitem entity @s enderchest.4 minecraft:air
replaceitem entity @s enderchest.5 minecraft:air
replaceitem entity @s enderchest.6 minecraft:air
replaceitem entity @s enderchest.7 minecraft:air
replaceitem entity @s enderchest.8 minecraft:air
replaceitem entity @s enderchest.9 minecraft:air
replaceitem entity @s enderchest.10 minecraft:air
replaceitem entity @s enderchest.11 minecraft:air
replaceitem entity @s enderchest.12 minecraft:air
replaceitem entity @s enderchest.13 minecraft:air
replaceitem entity @s enderchest.14 minecraft:air
replaceitem entity @s enderchest.15 minecraft:air
replaceitem entity @s enderchest.16 minecraft:air
replaceitem entity @s enderchest.17 minecraft:air
replaceitem entity @s enderchest.18 minecraft:air
replaceitem entity @s enderchest.19 minecraft:air
replaceitem entity @s enderchest.20 minecraft:air
replaceitem entity @s enderchest.21 minecraft:air
replaceitem entity @s enderchest.22 minecraft:air
replaceitem entity @s enderchest.23 minecraft:air
replaceitem entity @s enderchest.24 minecraft:air
replaceitem entity @s enderchest.25 minecraft:air
replaceitem entity @s enderchest.26 minecraft:air