execute if entity @s[team=yellow] run scoreboard players add #Souls yellow 1
#Translate
execute if entity @s[team=yellow] run tellraw @a[team=yellow] {"storage": "game:lang","nbt": "GetSoul","interpret": true}

execute if entity @s[team=blue] run scoreboard players add #Souls blue 1
#Translate
execute if entity @s[team=blue] run tellraw @a[team=blue] {"storage": "game:lang","nbt": "GetSoul","interpret": true}

scoreboard players set @s kill 0