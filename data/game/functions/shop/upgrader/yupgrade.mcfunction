execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 7.. run tellraw @s {"text":"У твоего Шалкера уже максимум здоровья","color":"red"}
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 1
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run tellraw @a[team=yellow] {"text":"Твой Шалкер получил +1 здоровья","color":"green"}
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 as @e[type=shulker] run function game:game/update_name 
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run scoreboard players add @e[type=shulker,tag=YellowBed] health 1

#execute if score @s[team=blue] buyID matches 1 if score @e[type=shulker,tag=BlueBed] health matches 7.. run tellraw @s {"text":"У твоего Шалкера уже максимум здоровья","color":"red"}
#execute if score @s[team=blue] buyID matches 1 if score @e[type=shulker,tag=BlueBed] health matches 1..6 run scoreboard players remove @e[type=area_effect_cloud,tag=UpB] statSouls 1
#execute if score @s[team=blue] buyID matches 1 if score @e[type=shulker,tag=BlueBed] health matches 1..6 run tellraw @a[team=yellow] {"text":"Твой Шалкер получил +1 здоровья","color":"green"}
#execute if score @s[team=blue] buyID matches 1 if score @e[type=shulker,tag=BlueBed] health matches 1..6 run scoreboard players add @e[type=shulker,tag=BlueBed] health 1

execute if score @s[team=yellow] buyID matches 2 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Магические Эффекты","color":"green"}
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 5
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 2 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] effectLvl 1

execute if score @s[team=yellow] buyID matches 3 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Зачарования оружия","color":"green"}
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 5
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 3 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] swordLvl 1

execute if score @s[team=yellow] buyID matches 4 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Зачарования брони","color":"green"}
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 5
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 4 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] armorLvl 1

execute if score @s[team=yellow] buyID matches 5 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Генератор ресурсов","color":"green"}
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 5
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 5 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] forgeLvl 1