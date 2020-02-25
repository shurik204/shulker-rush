#Translate
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. run tellraw @a [{"selector":"@a[scores={death=1..}]"},{"text":" был убит "},{"selector":"@s"}]

tag @s add eleminated
execute if entity @s[team=yellow] if entity @e[type=shulker,tag=yBed] run tag @s remove eleminated
execute if entity @s[team=blue] if entity @e[type=shulker,tag=bBed] run tag @s remove eleminated
execute if entity @s[tag=!eleminated] run tag @s add regiveAll
#Translate
execute if entity @s[tag=eleminated] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
scoreboard players set @s death 0