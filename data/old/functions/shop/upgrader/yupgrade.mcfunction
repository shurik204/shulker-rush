execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 7.. run tellraw @s {"text":"Твой Шалкер полностью восстановлен","color":"red"}
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 1
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run tellraw @a[team=yellow] {"text":"Твой Шалкер получил +1 HP","color":"green"}
execute if score @s[team=yellow] buyID matches 1 if score @e[type=shulker,tag=YellowBed,limit=1] health matches 1..6 run scoreboard players add @e[type=shulker,tag=YellowBed] health 1
execute as @e[type=shulker] if score #NumHealth settings matches 1 run function game:game/update_name_num
execute as @e[type=shulker] if score #NumHealth settings matches 0 run function game:game/update_name_sym

execute if score @s[team=yellow] buyID matches 2 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Магичекие Эффекты","color":"green"}
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 3
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 2 if score @e[type=area_effect_cloud,tag=UpY,limit=1] effectLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 2 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] effectLvl 1

execute if score @s[team=yellow] buyID matches 3 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Зачарования мечей","color":"green"}
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] swordLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] swordLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 7
execute if score @s[team=yellow] buyID matches 3 if score @e[type=area_effect_cloud,tag=UpY,limit=1] swordLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 11
execute if score @s[team=yellow] buyID matches 3 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] swordLvl 1

execute if score @s[team=yellow] buyID matches 4 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Зачарования брони","color":"green"}
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] armorLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 4
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] armorLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 6
execute if score @s[team=yellow] buyID matches 4 if score @e[type=area_effect_cloud,tag=UpY,limit=1] armorLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 9
execute if score @s[team=yellow] buyID matches 4 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] armorLvl 1
execute if score @s[team=yellow] buyID matches 4 as @a[team=yellow] run tag @s add givea
execute if score @s[team=yellow] buyID matches 4 as @a[team=yellow] at @s run tp @s ~ ~73 ~
execute if score @s[team=yellow] buyID matches 4 as @a[team=yellow] run effect give @s minecraft:levitation 10000 255 true
execute if score @s[team=yellow] buyID matches 4 as @a[team=yellow] run schedule function game:shop/item/armor/armor 2t

execute if score @s[team=yellow] buyID matches 5 run tellraw @a[team=yellow] {"text":"Твоя команда улучшила Генератор ресурсов","color":"green"}
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] forgeLvl matches 0 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 2
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] forgeLvl matches 1 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 5
execute if score @s[team=yellow] buyID matches 5 if score @e[type=area_effect_cloud,tag=UpY,limit=1] forgeLvl matches 2 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 10
execute if score @s[team=yellow] buyID matches 5 run scoreboard players add @e[type=area_effect_cloud,tag=UpY] forgeLvl 1