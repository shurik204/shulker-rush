scoreboard players remove @s HP 1

execute if entity @s[scores={HP=1..}] run particle minecraft:block minecraft:light_blue_concrete ~ ~0.5 ~ 0.3 0.3 0.3 0.1 40 force @a

execute if entity @s[scores={HP=..0}] run function #game:shulker/kill

#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=!blue] subtitle {"storage": "game:lang", "nbt": "Shulker.Destroyed.Blue", "interpret": true}
#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=blue] subtitle {"storage": "game:lang", "nbt": "Shulker.Destroyed.Your", "interpret": true}

# I make this check not to launch rename routine if shulker is dead
execute if entity @s run function #game:shulker/update_name