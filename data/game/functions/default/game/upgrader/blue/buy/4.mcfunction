execute if score #Armor blue matches 0 run scoreboard players remove #Souls blue 4
execute if score #Armor blue matches 1 run scoreboard players remove #Souls blue 6
execute if score #Armor blue matches 2 run scoreboard players remove #Souls blue 9

#Translate
execute if score #Armor blue matches 0 run data modify storage minecraft:upgrader Blue[3].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования брони II"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"6 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Защита II","color":"gray","italic":false}','{"text":"для брони","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Armor blue matches 1 run data modify storage minecraft:upgrader Blue[3].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования брони III"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"9 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ Защита III","color":"gray","italic":false}','{"text":"для брони","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Armor blue matches 2 run data modify storage minecraft:upgrader Blue[3].tag set value {Damage:0,HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Зачарования брони"}',Lore:['{"text":""}','{"text":"Достигнут максимальный уровень","color":"gold","italic":false}']},U:2,Enchantments:[{id:"minecraft:protection",lvl:1s}]}

scoreboard players add #Armor blue 1

execute as @a[team=blue] run function game:default/game/shop/custom/armor/give
#Translate
tellraw @a[team=blue] {"text":"Твоя команда улучшила зачарования брони","color":"green"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1