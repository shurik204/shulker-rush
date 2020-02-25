scoreboard players remove @s HP 1

execute if entity @s[scores={HP=1..}] run particle minecraft:block minecraft:yellow_concrete ~ ~0.5 ~ 0.3 0.3 0.3 0.1 40 force @a

execute if entity @s[scores={HP=..0}] run function game:default/game/shulker/kill_shulker

#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=!yellow] subtitle {"text":"Шалкер синих уничтожен","color":"green"}
#Translate
execute if entity @s[scores={HP=..0}] run title @a[team=yellow] subtitle {"text":"Твой Шалкер был уничтожен","color":"red"}

# I make this check not to launch rename routine if shulker is dead
execute if entity @s run function game:default/game/shulker/update_name