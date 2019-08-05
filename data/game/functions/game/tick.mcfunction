#Pushing shulker
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~-0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~-1 #game:terracotta if block ~ ~ ~-1 air run tp @s ~ ~ ~-1
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~1 #game:terracotta if block ~ ~ ~1 air run tp @s ~ ~ ~1
execute as @a[gamemode=!spectator] at @s positioned ~-0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~-1 ~-0.8 ~ #game:terracotta if block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute as @a[gamemode=!spectator] at @s positioned ~0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~1 ~-0.8 ~ #game:terracotta if block ~1 ~ ~ air run tp @s ~1 ~ ~

#
execute if entity @a[scores={deathTest=1..}] if entity @a[scores={killTest=1..}] run tellraw @a [{"selector":"@a[limit=1,scores={deathTest=1..}]"},{"text":" был убит игроком ","color":"gold"},{"selector":"@a[limit=1,scores={killTest=1..}]"}]
execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={InGame=1..}] if score @s height matches ..90 run kill @s
scoreboard players set @a[scores={deathTest=1..}] deathTest 0
scoreboard players set @a[scores={killTest=1..}] killTest 0
