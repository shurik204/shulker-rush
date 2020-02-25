scoreboard players set @s buyID -1
scoreboard players set @s clearDetect 0

execute store success score @s result run clear @s minecraft:emerald{U:1}
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 1.. run scoreboard players set @s buyID 1
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:golden_carrot{U:1}
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] effectLvl matches 0 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 3.. run scoreboard players set @s buyID 2
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] effectLvl matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 4.. run scoreboard players set @s buyID 2
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] effectLvl matches 2 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 6.. run scoreboard players set @s buyID 2
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:iron_sword{U:1}
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] swordLvl matches 0 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 4.. run scoreboard players set @s buyID 3
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] swordLvl matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 7.. run scoreboard players set @s buyID 3
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] swordLvl matches 2 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 11.. run scoreboard players set @s buyID 3
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:iron_chestplate{U:1}
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] armorLvl matches 0 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 4.. run scoreboard players set @s buyID 4
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] armorLvl matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 6.. run scoreboard players set @s buyID 4
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] armorLvl matches 2 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 9.. run scoreboard players set @s buyID 4
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1
execute store success score @s result run clear @s minecraft:brewing_stand{U:1}
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] forgeLvl matches 0 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 2.. run scoreboard players set @s buyID 5
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] forgeLvl matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 5.. run scoreboard players set @s buyID 5
execute if score @s result matches 1 if score @e[type=area_effect_cloud,tag=UpB,limit=1] forgeLvl matches 2 if score @e[type=area_effect_cloud,tag=UpB,limit=1] statSouls matches 10.. run scoreboard players set @s buyID 5
execute if score @s result matches 1 run scoreboard players set @s clearDetect -1

execute as @s[scores={buyID=1..5}] run function game:shop/upgrader/bupgrade

execute if entity @s[scores={buyID=1..,clearDetect=-1}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 1
tellraw @s[scores={buyID=-1,clearDetect=-1}] {"text":"У тебя недостаточно душ для покупки","color":"red"}
execute at @s run playsound minecraft:entity.item.break master @s[scores={buyID=-1,clearDetect=-1}] ~ ~ ~ 1 1 1
