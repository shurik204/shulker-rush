tag @s add KilledByVoid
kill @s
#Translate
execute if entity @s[team=blue] as @a[scores={kill=1..},team=yellow] run tellraw @a {"storage": "game:lang","nbt": "Player.VoidDeathByPlayer","interpret": true}
#Translate
execute if entity @s[team=blue] unless entity @a[scores={kill=1..},team=yellow] run tellraw @a {"storage": "game:lang","nbt": "Player.VoidDeath","interpret": true}
#Translate
execute if entity @s[team=yellow] as @a[scores={kill=1..},team=blue] run tellraw @a {"storage": "game:lang","nbt": "Player.VoidDeathByPlayer","interpret": true}
#Translate
execute if entity @s[team=yellow] unless entity @a[scores={kill=1..},team=blue] run tellraw @a {"storage": "game:lang","nbt": "Player.VoidDeath","interpret": true}

tag @s remove KilledByVoid
tag @s add regiveAll

execute at @s[team=!player] as @e[type=minecraft:item,distance=..2] store result entity @s Motion[1] double 6.0 run data get entity @s Motion[1] 1

scoreboard players set @s death 0