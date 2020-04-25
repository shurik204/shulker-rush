gamemode spectator @s
team join player @s
tag @s remove regiveAll
tag @s remove eleminated
tp @s 997.5 190.5 1113.5 180 40
scoreboard players set @s GameID -2
#Translate
tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
effect give @s minecraft:resistance 1000000 10 true