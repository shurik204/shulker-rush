execute if score #Forge blue matches 0 run scoreboard players remove #Souls blue 2
execute if score #Forge blue matches 1 run scoreboard players remove #Souls blue 5
execute if score #Forge blue matches 2 run scoreboard players remove #Souls blue 10

#Translate
execute if score #Forge blue matches 0 run data modify storage minecraft:upgrader Blue[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов II"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"5 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ 66% ресурсов","color":"gray","italic":false}','{"text":"в Генераторе","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Forge blue matches 1 run data modify storage minecraft:upgrader Blue[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов III"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"10 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ 100% ресурсов","color":"gray","italic":false}','{"text":"в Генераторе","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Forge blue matches 2 run data modify storage minecraft:upgrader Blue[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов"}',Lore:['{"text":""}','{"text":"Достигнут максимальный уровень","color":"gold","italic":false}']},U:2,Enchantments:[{id:"minecraft:protection",lvl:1s}]}

scoreboard players add #Forge blue 1
#Translate
tellraw @a[team=blue] {"text":"Твоя команда улучшила генератор ресурсов","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1