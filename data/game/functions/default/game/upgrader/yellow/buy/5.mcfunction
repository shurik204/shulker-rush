execute if score #Forge yellow matches 0 run scoreboard players remove #Souls yellow 2
execute if score #Forge yellow matches 1 run scoreboard players remove #Souls yellow 5
execute if score #Forge yellow matches 2 run scoreboard players remove #Souls yellow 10

#Translate
execute if score #Forge yellow matches 0 run data modify storage minecraft:upgrader Yellow[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов II"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"5 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ 66% ресурсов","color":"gray","italic":false}','{"text":"в Генераторе","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Forge yellow matches 1 run data modify storage minecraft:upgrader Yellow[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов III"}',Lore:['[{"text":"Цена: ","color":"gray","italic":false},{"text":"10 Душ ","color":"aqua","italic":false}]','{"text":""}','{"text":"+ 100% ресурсов","color":"gray","italic":false}','{"text":"в Генераторе","color":"gray","italic":false}','{"text":""}','{"text":"▶ Нажми чтобы купить","color":"yellow","italic":false}']},U:1}
#Translate
execute if score #Forge yellow matches 2 run data modify storage minecraft:upgrader Yellow[4].tag set value {HideFlags:127,display:{Name:'{"color":"green","italic":false,"text":"Генератор ресурсов"}',Lore:['{"text":""}','{"text":"Достигнут максимальный уровень","color":"gold","italic":false}']},U:2,Enchantments:[{id:"minecraft:protection",lvl:1s}]}

scoreboard players add #Forge yellow 1
#Translate
tellraw @a[team=yellow] {"storage": "game:lang", "nbt": "Upgrader.UpgradeForge", "interpret": true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10000 2 1