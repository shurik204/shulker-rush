execute if score @e[type=shulker,tag=BlueBed] health matches 7 run tellraw @s {"text":"У твоего Шалкера уже максимум здоровья","color":"red"}

execute if score @e[type=shulker,tag=BlueBed] health matches 1..6 run scoreboard players remove @e[type=area_effect_cloud,tag=UpY] statSouls 1
execute if score @e[type=shulker,tag=BlueBed] health matches 1..6 run tellraw @a[team=blue] {"text":"Твой Шалкер получил +1 здоровья","color":"green"}
execute if score @e[type=shulker,tag=BlueBed] health matches 1..6 run scoreboard players add @e[type=shulker,tag=BlueBed] health 1