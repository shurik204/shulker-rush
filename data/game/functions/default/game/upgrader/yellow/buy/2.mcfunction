execute if score #Effects yellow matches 0 run scoreboard players remove #Souls yellow 3
execute if score #Effects yellow matches 1 run scoreboard players remove #Souls yellow 4
execute if score #Effects yellow matches 2 run scoreboard players remove #Souls yellow 6

#Translate
execute if score #Effects yellow matches 0 run data modify storage minecraft:upgrader Yellow[1].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Магичекие эффекты II"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"4 Души ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Регенерация для союзников","color":"gray","italic":false}','{"text":"вокруг твоего Шалкера","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Effects yellow matches 1 run data modify storage minecraft:upgrader Yellow[1].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Магичекие эффекты III"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"6 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Свечение для врагов","color":"gray","italic":false}','{"text":"вокруг твоего Шалкера (18 блоков)","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Effects yellow matches 2 run data modify storage minecraft:upgrader Yellow[1].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Магичекие эффекты"}',Lore:['{"text":""}','{"text":"Достигнут максимальный уровень","color":"gold","italic":false}']},U:2,Enchantments:[{id:"minecraft:protection",lvl:1s}]}

scoreboard players add #Effects yellow 1
#Translate
tellraw @a[team=yellow] {"text":"Твоя команда улучшила магические эффекты","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1