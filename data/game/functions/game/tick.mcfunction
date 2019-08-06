#Pushing shulker
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~-0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~-1 #game:terracotta if block ~ ~ ~-1 air run tp @s ~ ~ ~-1
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~1 #game:terracotta if block ~ ~ ~1 air run tp @s ~ ~ ~1
execute as @a[gamemode=!spectator] at @s positioned ~-0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~-1 ~-0.8 ~ #game:terracotta if block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute as @a[gamemode=!spectator] at @s positioned ~0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~1 ~-0.8 ~ #game:terracotta if block ~1 ~ ~ air run tp @s ~1 ~ ~

execute as @e[type=area_effect_cloud,tag=gen] at @s positioned ~ ~-1 ~ run function game:game/generator
#
execute if entity @a[scores={deathTest=1..}] if entity @a[scores={killTest=1..}] run tellraw @a [{"selector":"@a[limit=1,scores={deathTest=1..}]"},{"text":" был убит игроком ","color":"gold"},{"selector":"@a[limit=1,scores={killTest=1..}]"}]
execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={InGame=1..}] if score @s height matches ..90 run kill @s
scoreboard players set @a[scores={deathTest=1..}] deathTest 0
scoreboard players set @a[scores={killTest=1..}] killTest 0


tag @a[tag=!fillEnd] add fillEnd
execute at @e[name=fillEnd,type=area_effect_cloud] positioned ~-10 ~-9 ~-10 run tag @a[dx=20,dy=19,dz=20] remove fillEnd
execute at @a[tag=fillEnd,scores={placeGlassY=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeGlassB=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeCobweb=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placePlanks=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeEndStone=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeObsidian=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}