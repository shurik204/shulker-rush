#Translate
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. run tellraw @a [{"selector":"@a[scores={death=1..}]"},{"text":" был убит ","color":"gray"},{"selector":"@s"}]

tag @s add regiveAll

execute at @s as @e[type=minecraft:item,distance=..2] store result entity @s Motion[1] double 1 run data get entity @s Motion[1] 3.6

#Translate
execute if entity @s[tag=eleminated,team=!player] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
scoreboard players set @s death 0