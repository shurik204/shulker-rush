execute if score #Weapon blue matches 0 run scoreboard players remove #Souls blue 4
execute if score #Weapon blue matches 1 run scoreboard players remove #Souls blue 7
execute if score #Weapon blue matches 2 run scoreboard players remove #Souls blue 11

#Translate
execute if score #Weapon blue matches 0 run data modify storage minecraft:upgrader Blue[2].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования мечей II"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"7 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Острота II","color":"gray","italic":false}','{"text":"для мечей","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Weapon blue matches 1 run data modify storage minecraft:upgrader Blue[2].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования мечей III"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"11 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Острота III","color":"gray","italic":false}','{"text":"для мечей","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Weapon blue matches 2 run data modify storage minecraft:upgrader Blue[2].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования мечей"}',Lore:['{"text":""}','{"text":"Достигнут максимальный уровень","color":"gold","italic":false}']},U:2,Enchantments:[{id:"minecraft:protection",lvl:1s}]}

scoreboard players add #Weapon blue 1
#Translate
tellraw @a[team=blue] {"text":"Твоя команда улучшила зачарования мечей","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1