scoreboard players remove @s HP 1

execute if entity @s[scores={HP=1..}] run particle minecraft:block minecraft:yellow_concrete ~ ~0.5 ~ 0.3 0.3 0.3 0.1 40 force @a

execute if entity @s[scores={HP=..0}] run function #game:shulker_kill

#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=!yellow] subtitle {"text":"Шалкер жёлтых уничтожен","color":"green"}
#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=yellow] subtitle {"text":"Твой Шалкер был уничтожен","color":"red"}

# effect give @a[team=yellow] minecraft:blindness 1 0 true
# I make this check not to launch rename routine if shulker is dead
execute if entity @s run function #game:shulker_update_name