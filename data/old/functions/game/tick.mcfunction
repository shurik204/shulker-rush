#Generators
execute as @e[type=area_effect_cloud,tag=gen] at @s positioned ~ ~-1 ~ run function game:game/gen/base_generator
execute as @e[type=area_effect_cloud,tag=RubyGen] at @s positioned ~ ~0.4 ~ run function game:game/gen/ruby_generator

#Respawn
execute as @a if score @s deathTest matches 1.. run tag @s add regiveAll
execute at @e[type=area_effect_cloud,tag=Respawn] as @a[tag=regiveAll,distance=..1] run function game:game/respawn

#Kill controller
execute as @a if score @s deathTest matches 1.. if entity @a[scores={killTest=1..}] run tellraw @a [{"selector":"@a[limit=1,scores={deathTest=1..}]"},{"text":" был убит игроком ","color":"gold"},{"selector":"@a[limit=1,scores={killTest=1..}]"}]
execute as @a[scores={InGame=1..}] at @s run function game:game/controller/kill

execute if score #NoRedGlass settings matches 1 at @a[scores={deathTest=1..}] run function game:game/controller/convert_glass 
execute as @a[scores={killTest=1..},team=yellow] run scoreboard players add @e[type=area_effect_cloud,tag=UpY] statSouls 1
execute as @a[scores={killTest=1..},team=blue] run scoreboard players add @e[type=area_effect_cloud,tag=UpB] statSouls 1
scoreboard players set @a deathTest 0
scoreboard players set @a killTest 0

execute as @a if score @s food matches ..18 run effect give @s minecraft:saturation 2 0 true

execute as @a[team=yellow] run title @s actionbar [{"text":"[✦] Души: ","color":"dark_aqua","bold":false},{"score":{"name":"@e[type=area_effect_cloud,limit=1,tag=UpY]","objective":"statSouls"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[⚔] Убийств: ","color":"green"},{"score":{"name":"@s","objective":"totalKill"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[☠] Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"},"color":"yellow"}]
execute as @a[team=blue] run title @s actionbar [{"text":"[✦] Души: ","color":"dark_aqua","bold":false},{"score":{"name":"@e[type=area_effect_cloud,limit=1,tag=UpB]","objective":"statSouls"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[⚔] Убийств: ","color":"green"},{"score":{"name":"@s","objective":"totalKill"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[☠] Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"},"color":"yellow"}]


execute as @a[tag=!Joined,team=!yellow,team=!blue] run gamemode spectator
execute as @a[tag=!Joined,team=!yellow,team=!blue] run team join player @s
execute as @a[tag=!Joined,team=!yellow,team=!blue] run scoreboard players set @s InGame 0
gamemode spectator @a[x=987,y=179,z=1136,dx=30,dy=30,dz=30,tag=!Joined]

#Join controller
execute as @a[tag=NeedInit] run function game:game/init_player
effect give @a[tag=!Joined,scores={InGame=1..}] minecraft:nausea 7 0 true
execute as @a[tag=!Joined,team=!player] run function game:shop/item/armor/givea
team join player @a[team=!player,team=!yellow,team=!blue]
gamemode spectator @a[team=!yellow,team=!blue,tag=!Joined]

# execute at @a[tag=fillEnd,scores={placeGlassY=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute as @a[scores={InGame=1..}] unless score @s InGame = #Game var run gamemode spectator
execute as @a[scores={InGame=1..}] unless score @s InGame = #Game var run team join player @s
execute as @a[scores={InGame=1..}] unless score @s InGame = #Game var run scoreboard players set @s InGame 0

#Fill markers
tag @a[tag=!fillEnd] add fillEnd
execute at @e[tag=fill,type=area_effect_cloud] positioned ~-10 ~-9 ~-10 run tag @a[dx=20,dy=19,dz=20] remove fillEnd
execute as @a[tag=fillEnd] at @s run function game:game/controller/block_place

#Shulkers' functions
execute as @e[type=shulker] at @s run function game:game/shulker
scoreboard players set @a hurt 0

execute if score #Debug var matches 0 run gamemode adventure @a[gamemode=creative]
#Ending game condition
# Count all yellow players
execute as @a[team=yellow,gamemode=adventure] run scoreboard players add #YCount var 1
# Count all blue players
execute as @a[team=blue,gamemode=adventure] run scoreboard players add #BCount var 1
# Blue win condition
execute if score #Debug var matches 0 if score #YCount var matches 0 if score #BCount var matches 1.. run function game:game/end/blue_win
# Yellow win condition
execute if score #Debug var matches 0 if score #YCount var matches 1.. if score #BCount var matches 0 run function game:game/end/yellow_win
# Reset player count
scoreboard players set #BCount var 0
scoreboard players set #YCount var 0


#Upgrader
execute at @e[type=minecraft:area_effect_cloud,tag=Upgrade] run particle minecraft:flame ~ ~1.2 ~ 0 0 0 0.01 2 force @a
function game:shop/upgrader/tick
scoreboard players operation @e[type=area_effect_cloud,tag=genYellow,limit=1] forgeLvl = @e[type=area_effect_cloud,tag=UpY,limit=1] forgeLvl
scoreboard players operation @e[type=area_effect_cloud,tag=genBlue,limit=1] forgeLvl = @e[type=area_effect_cloud,tag=UpB,limit=1] forgeLvl
execute as @a[team=yellow] run scoreboard players operation @s swordLvl = @e[type=area_effect_cloud,tag=UpY,limit=1] swordLvl
execute as @a[team=yellow] run scoreboard players operation @s armorLvl = @e[type=area_effect_cloud,tag=UpY,limit=1] armorLvl
execute as @a[team=blue] run scoreboard players operation @s swordLvl = @e[type=area_effect_cloud,tag=UpB,limit=1] swordLvl
execute as @a[team=blue] run scoreboard players operation @s armorLvl = @e[type=area_effect_cloud,tag=UpB,limit=1] armorLvl
execute as @a run function game:shop/upgrader/sword

#Axe
tag @a[scores={died=0}] remove HasAxe
execute as @a[nbt={Inventory:[{id:"minecraft:golden_axe"}]}] run tag @s add HasAxe

#Kill potion
execute as @a[scores={drinkPotion=1..}] at @s run function game:game/kill_potion

#Fix block drops (ik about Loot Tables, but i can't make it work)
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:end_stone"}}] run data merge entity @s {Item:{id:"minecraft:end_stone",tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:oak_planks"}}] run data merge entity @s {Item:{id:"minecraft:oak_planks",tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:obsidian"}}] run data merge entity @s {Item:{id:"minecraft:obsidian",tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:string"}}] run data merge entity @s {Item:{id:"minecraft:cobweb",tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}

#Magic Effects
execute as @e[type=area_effect_cloud,tag=Upgrade] run function game:game/effects

execute if score #DarkNight settings matches 1 as @a[gamemode=adventure] at @s run function game:game/dark_night

# Created by shurik204 | Texar Team
# Code version 1.1