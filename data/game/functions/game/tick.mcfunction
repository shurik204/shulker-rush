#Pushing shulker
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~-0.1 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~-1 #shulker-rushterracotta if block ~ ~ ~-1 air run tp @s ~ ~ ~-1
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~0.1 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~1 #shulker-rushterracotta if block ~ ~ ~1 air run tp @s ~ ~ ~1
execute as @a[gamemode=!spectator] at @s positioned ~-0.1 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~-1 ~-0.8 ~ #shulker-rushterracotta if block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute as @a[gamemode=!spectator] at @s positioned ~0.1 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~1 ~-0.8 ~ #shulker-rushterracotta if block ~1 ~ ~ air run tp @s ~1 ~ ~

#
tellraw @a [{"selector":"@a[limit=1,scores={deathTest=1..}]"},{"text":" was killed by ","color":"gold"},{"selector":"@a[limit=1,scores={killTest=1..}]"}]
execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={InGame=1..}] if score @s height matches 90..80 run kill @s
execute as @a score 