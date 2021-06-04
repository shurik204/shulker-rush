execute store success score @s result run clear @s minecraft:elytra{shop:true}
execute if score @s[scores={statCoins3=6..}] result matches 1 run scoreboard players set @s buyID 13
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
# If player already has elytra throw error
execute if score @s buyID matches 13 if entity @s[tag=HasElytra] run scoreboard players set @s buyID -5
#Translate
execute if score @s buyID matches -5 run tellraw @s {"storage": "game:lang", "nbt": "Shop.HaveElytra", "interpret": true}