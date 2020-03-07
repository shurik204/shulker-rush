#Translate
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. run tellraw @a [{"selector":"@a[scores={death=1..}]"},{"text":" был убит ","color":"gold"},{"selector":"@s"}]

tag @s add eleminated
execute if entity @s[team=yellow] if entity @e[type=shulker,tag=yBed] run tag @s remove eleminated
execute if entity @s[team=blue] if entity @e[type=shulker,tag=bBed] run tag @s remove eleminated
execute if entity @s[tag=!eleminated] run tag @s add regiveAll

execute at @s as @e[type=minecraft:item,distance=..2] store result entity @s Motion[1] double 1 run data get entity @s Motion[1] 2.0

#Translate
execute if entity @s[tag=eleminated,team=!player] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
scoreboard players set @s death 0