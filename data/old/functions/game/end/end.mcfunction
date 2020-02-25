execute as @e[type=area_effect_cloud,tag=fill,limit=1] at @s run function game:game/reset_arena
execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 10000 1 1
kill @e[type=item]
scoreboard players set #State var 2
team join player @a
gamerule fallDamage false
scoreboard players set @a InGame -1
tp @a 997 181 1144 180 0
gamemode adventure @a
clear @a
fill 989 172 1109 1004 170 1096 minecraft:water replace air
title @a actionbar ""
scoreboard players set #Debug var 0
tag @a remove NeedInit
# Created by shurik204 | Texar Team