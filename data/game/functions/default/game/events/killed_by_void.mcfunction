tag @s add KilledByVoid
#Translate
execute if entity @s[team=blue] as @a[scores={kill=1..},team=yellow] run tellraw @a [{"selector":"@a[tag=KilledByVoid,limit=1]"},{"text":" был сброшен в пустоту игроком ","color":"gray"},{"selector":"@s"}]
#Translate
execute if entity @s[team=yellow] as @a[scores={kill=1..},team=blue] run tellraw @a [{"selector":"@a[tag=KilledByVoid,limit=1]"},{"text":" был сброшен в пустоту игроком ","color":"gray"},{"selector":"@s"}]

tag @s remove KilledByVoid
tag @s[team=!player] add eleminated
execute if entity @s[team=yellow] if entity @e[type=shulker,tag=yBed] run tag @s remove eleminated
execute if entity @s[team=blue] if entity @e[type=shulker,tag=bBed] run tag @s remove eleminated
execute if entity @s[tag=!eleminated] run tag @s add regiveAll
#Translate
execute if entity @s[team=!player,tag=eleminated] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
kill @s

execute at @s[team=!player] as @e[type=minecraft:item,distance=..2] store result entity @s Motion[1] double 6.0 run data get entity @s Motion[1] 1

scoreboard players set @s death 0