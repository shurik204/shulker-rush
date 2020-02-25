scoreboard players add #Game var 1
execute as @a[team=!player] at @s run function game:game/init_player

scoreboard players set #State var 10

fill 985 192 1085 991 188 1079 air
fill 1003 192 1085 1009 188 1079 air

scoreboard players set @e[tag=Upgrade] statSouls 0

execute if score #NoChest settings matches 1 at @e[type=minecraft:area_effect_cloud,tag=Chest] run data modify block ~ ~ ~ Lock set value 'DoNotOpen'
execute if score #NoChest settings matches 0 at @e[type=minecraft:area_effect_cloud,tag=Chest] run data remove block ~ ~ ~ Lock
execute at @e[type=minecraft:area_effect_cloud,tag=Chest] run data merge block ~ ~ ~ {Items:[]}

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1000 1.0 1

scoreboard players set @e[type=area_effect_cloud,tag=gen] ironGen 40
scoreboard players set @e[type=area_effect_cloud,tag=gen] goldGen 40
scoreboard players set @e[type=area_effect_cloud,tag=RubyGen] rubyGen 800
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] forgeLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] swordLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] armorLvl 0
scoreboard players set @e[type=area_effect_cloud,tag=Upgrade] effectLvl 0

title @a subtitle {"text":"Игра началась","color":"yellow"}
kill @e[type=shulker,tag=bed]

execute if score #NumHealth settings matches 0 run summon minecraft:shulker 960 178 1092 {NoAI:1b,Tags:["bed","YellowBed"],Color:4b,CustomNameVisible:0b,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}'}
execute if score #NumHealth settings matches 0 run summon minecraft:shulker 1034 178 1092 {NoAI:1b,Tags:["bed","BlueBed"],Color:9b,CustomNameVisible:0b,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}'}

execute if score #NumHealth settings matches 1 run summon minecraft:shulker 960 178 1092 {NoAI:1b,Tags:["bed","YellowBed"],Color:4b,CustomNameVisible:0b,CustomName:'[{"text":"7","color":"green","bold":true},{"text":"/","color":"gray"},{"text":"7","color":"aqua"}]'}
execute if score #NumHealth settings matches 1 run summon minecraft:shulker 1034 178 1092 {NoAI:1b,Tags:["bed","BlueBed"],Color:9b,CustomNameVisible:0b,CustomName:'[{"text":"7","color":"green","bold":true},{"text":"/","color":"gray"},{"text":"7","color":"aqua"}]'}

execute if score #NoIron settings matches 1 if score #NoGold settings matches 1 run tellraw @a "Удачи играть без ресурсов на базе :D"

team join yellow @e[type=shulker,tag=YellowBed]
team join blue @e[type=shulker,tag=BlueBed]
scoreboard players set @e[type=shulker,tag=bed] health 7
scoreboard players set @e[type=shulker,tag=bed] effectLvl 0
execute if score #Debug var matches 1 run tellraw @a "Debug mode"

#Remove items
kill @e[type=item]

execute if score #FallDamage settings matches 0 run gamerule fallDamage true
# Created by shurik204 | Texar Team