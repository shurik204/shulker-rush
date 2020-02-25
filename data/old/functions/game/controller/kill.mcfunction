execute store result score @s height run data get entity @s Pos[1]
execute if score @s height matches ..120 run tag @s add regiveAll
execute if score @s height matches ..120 run kill @s
execute if score @s[team=yellow] killTest matches 1.. run tellraw @a[team=yellow] {"text":"+1 Душа","color":"aqua"}
execute if score @s[team=blue] killTest matches 1.. run tellraw @a[team=blue] {"text":"+1 Душа","color":"aqua"}
gamemode spectator @s[tag=eleminated,scores={deathTest=1..}]
execute if score @s[tag=eleminated] deathTest matches 1.. run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
execute if score @s[tag=eleminated] deathTest matches 1.. run gamemode spectator @s