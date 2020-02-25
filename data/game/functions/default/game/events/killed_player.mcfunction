execute if entity @s[team=yellow] run scoreboard players add #Souls yellow 1
#Translate
execute if entity @s[team=yellow] run tellraw @a[team=yellow] {"text":"+1 Душа [✦]","color":"aqua"}

execute if entity @s[team=blue] run scoreboard players add #Souls blue 1
#Translate
execute if entity @s[team=blue] run tellraw @a[team=blue] {"text":"+1 Душа [✦]","color":"aqua"}

scoreboard players set @s kill 0