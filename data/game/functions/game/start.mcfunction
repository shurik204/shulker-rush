scoreboard players add #Game var 1
execute as @a[team=!player] at @s run function game:game/init_player

scoreboard players set #State var 10
fill 985 192 1085 991 188 1079 air
fill 1003 192 1085 1009 188 1079 air

scoreboard players set @e[tag=Upgrade] statSouls 0
execute at @e[type=minecraft:area_effect_cloud,tag=Chest] run data merge block ~ ~ ~ {Items:[]}
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1000 1.0 1

scoreboard players set @e[type=area_effect_cloud,tag=gen] ironGen 40
scoreboard players set @e[type=area_effect_cloud,tag=gen] goldGen 40
scoreboard players set @e[type=area_effect_cloud,tag=RubyGen] rubyGen 1000
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] forgeLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] swordLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] armorLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] effectLvl 0
title @a subtitle {"text":"The game have just started","color":"yellow"}
kill @e[type=shulker,tag=bed]
summon minecraft:shulker 960 178 1092 {NoAI:1,Tags:["bed","YellowBed"],Color:4,CustomNameVisible:0,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}'}
summon minecraft:shulker 1034 178 1092 {NoAI:1,Tags:["bed","BlueBed"],Color:9,CustomNameVisible:0,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}'}
#summon minecraft:shulker 960 178 1092 {NoAI:1,Tags:["bed","YellowBed"],Color:4,CustomNameVisible:0,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}',ActiveEffects:[{Id:6,Amplifier:10,Duration:1000000,Ambient:1}],HurtTime:0s}
#summon minecraft:shulker 1034 178 1092 {NoAI:1,Tags:["tmp"]}
#summon minecraft:shulker 1034 178 1092 {NoAI:1,Tags:["bed","BlueBed"],Color:9,CustomNameVisible:0,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}',ActiveEffects:[{Id:6,Amplifier:10,Duration:1000000,Ambient:1}],HurtTime:0s}
team join yellow @e[type=shulker,tag=YellowBed]
team join blue @e[type=shulker,tag=BlueBed]
scoreboard players set @e[type=shulker,tag=bed] health 7
scoreboard players set @e[type=shulker,tag=bed] effectLvl 0
execute if score #Debug var matches 1 run tellraw @a "Debug mode"
#Remove items
kill @e[type=item]
#Created by shurik204 | Teksar Team