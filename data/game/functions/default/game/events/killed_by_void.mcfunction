tag @s add KilledByVoid
#Translate
execute if entity @s[team=blue] as @a[scores={kill=1..},team=yellow] run tellraw @a [{"selector":"@a[tag=KilledByVoid,limit=1]"},{"text":" был сброшен в пустоту игроком ","color":"gray"},{"selector":"@s"}]
execute if entity @s[team=yellow] as @a[scores={kill=1..},team=blue] run tellraw @a [{"selector":"@a[tag=KilledByVoid,limit=1]"},{"text":" был сброшен в пустоту игроком ","color":"gray"},{"selector":"@s"}]

tag @s remove KilledByVoid
tag @s add eleminated
execute if entity @s[team=yellow] if entity @e[type=shulker,tag=yBed] run tag @s remove eleminated
execute if entity @s[team=blue] if entity @e[type=shulker,tag=bBed] run tag @s remove eleminated
execute if entity @s[tag=!eleminated] run tag @s add regiveAll
execute if entity @s[tag=eleminated] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
kill @s
scoreboard players set @s death 0
##########################################
# TODO add scoreboard message system (?) #
##########################################