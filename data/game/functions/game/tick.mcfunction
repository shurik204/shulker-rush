#Pushing shulker
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~-0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~-1 #game:terracotta if block ~ ~ ~-1 air run tp @s ~ ~ ~-1
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~0.2 as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~ ~-0.8 ~1 #game:terracotta if block ~ ~ ~1 air run tp @s ~ ~ ~1
execute as @a[gamemode=!spectator] at @s positioned ~-0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~-1 ~-0.8 ~ #game:terracotta if block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute as @a[gamemode=!spectator] at @s positioned ~0.2 ~ ~ as @e[type=minecraft:shulker,sort=nearest,limit=1,distance=..0.8] at @s if block ~1 ~-0.8 ~ #game:terracotta if block ~1 ~ ~ air run tp @s ~1 ~ ~

#Generators
execute as @e[type=area_effect_cloud,tag=gen] at @s positioned ~ ~-1 ~ run function game:game/res_gen
execute as @e[type=area_effect_cloud,tag=RubyGen] at @s positioned ~ ~0.4 ~ run function game:game/ruby_gen

#Respawn
execute as @a if score @s deathTest matches 1.. run tag @s add regiveAll
execute at @e[type=area_effect_cloud,tag=Respawn] as @a[tag=regiveAll,distance=..1] run function game:game/respawn

#Kill controller
execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[scores={InGame=1..}] if score @s height matches ..120 run tag @s add regiveAll
execute as @a[scores={InGame=1..}] if score @s height matches ..120 run kill @s
execute if entity @a[scores={deathTest=1..}] if entity @a[scores={killTest=1..}] run tellraw @a [{"selector":"@a[limit=1,scores={deathTest=1..}]"},{"text":" был убит игроком ","color":"gold"},{"selector":"@a[limit=1,scores={killTest=1..}]"}]
execute as @a[scores={killTest=1..},team=yellow] run tellraw @a[team=yellow] {"text":"+1 Душа","color":"aqua"}
execute as @a[scores={killTest=1..},team=blue] run tellraw @a[team=blue] {"text":"+1 Душа","color":"aqua"}
gamemode spectator @s[tag=eleminated,scores={deathTest=1..}]

execute as @a[tag=eleminated,scores={deathTest=1..}] run tellraw @a [{"selector":"@s"},{"text":" выбывает из игры","color":"red"}]
execute as @a[tag=eleminated,scores={deathTest=1..}] run gamemode spectator @s

execute at @a[scores={killTest=1..}] as @e[type=item,nbt={Item:{id:"minecraft:yellow_stained_glass"}}] run data modify entity @s Item.id set value "red_stained_glass"
execute at @a[scores={killTest=1..}] as @e[type=item,nbt={Item:{id:"minecraft:light_blue_stained_glass"}}] run data modify entity @s Item.id set value "red_stained_glass"
execute as @a[scores={killTest=1..},team=yellow] run scoreboard players add @e[type=area_effect_cloud,tag=UpY] statSouls 1
execute as @a[scores={killTest=1..},team=blue] run scoreboard players add @e[type=area_effect_cloud,tag=UpB] statSouls 1
scoreboard players set @a deathTest 0
scoreboard players set @a killTest 0

#execute as @a run function game:shop/item/armor/givea
execute as @a if score @s food matches ..18 run effect give @s minecraft:saturation 2 0 true

execute as @a[team=yellow] run title @s actionbar [{"text":"Души: ","color":"dark_aqua","bold":true},{"score":{"name":"@e[type=area_effect_cloud,limit=1,tag=UpY]","objective":"statSouls"}},{"text":" | ","color":"gray"},{"text":"Убийств: ","color":"green"},{"score":{"name":"@s","objective":"totalKill"}},{"text":" | ","color":"gray"},{"text":"Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"}}]
execute as @a[team=blue] run title @s actionbar [{"text":"Души: ","color":"dark_aqua","bold":true},{"score":{"name":"@e[type=area_effect_cloud,limit=1,tag=UpB]","objective":"statSouls"}},{"text":" | ","color":"gray"},{"text":"Убийств: ","color":"green"},{"score":{"name":"@s","objective":"totalKill"}},{"text":" | ","color":"gray"},{"text":"Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"}}]

#Give nausea to rejoined players
execute as @a[scores={InGame=..0},tag=!Joined] run gamemode spectator
execute as @a[scores={InGame=..0},tag=!Joined] run team join player @s
execute as @a[scores={InGame=..0},tag=!Joined] run scoreboard players set @s InGame 0
#execute as @a[scores={InGame=1..}] unless score @s InGame = #Game InGame run gamemode spectator
#execute as @a[scores={InGame=1..}] unless score @s InGame = #Game InGame run team join player @s
#execute as @a[scores={InGame=1..}] unless score @s InGame = #Game InGame run scoreboard players set @s InGame 0
execute as @a[tag=!Joined,scores={InGame=1..}] run effect give @s minecraft:nausea 6 0 true
team join player @a[team=!player,team=!yellow,team=!blue]

#Fill markers
tag @a[tag=!fillEnd] add fillEnd
execute at @e[tag=fill,type=area_effect_cloud] positioned ~-10 ~-9 ~-10 run tag @a[dx=20,dy=19,dz=20] remove fillEnd
execute at @a[tag=fillEnd,scores={placeGlassY=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeGlassB=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeGlassR=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeCobweb=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placePlanks=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeEndStone=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeObsidian=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
scoreboard players set @a placeGlassY 0
scoreboard players set @a placeGlassB 0
scoreboard players set @a placeGlassR 0
scoreboard players set @a placeCobweb 0
scoreboard players set @a placePlanks 0
scoreboard players set @a placeEndStone 0
scoreboard players set @a placeObsidian 0

#Shulker's hearts counter
execute as @e[type=shulker] at @s run function game:game/health
scoreboard players set @a hurt 0
execute as @e[type=shulker] run data modify entity @s Health set value 30

#Ending game condition
execute as @a[team=yellow,gamemode=adventure] run scoreboard players add #YCount var 1
execute as @a[team=blue,gamemode=adventure] run scoreboard players add #BCount var 1
execute if score #Debug var matches 0 if score #YCount var matches 0 if score #BCount var matches 1.. run function game:game/bwin
execute if score #Debug var matches 0 if score #YCount var matches 1.. if score #BCount var matches 0 run function game:game/ywin
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
scoreboard players set @a drinkPotion 0

#Fix block drops (ik about Loot Tables, but i cant make it work)
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:end_stone"}}] run data merge entity @s {Item:{id:"minecraft:end_stone",tag:{display:{Name:'{"translate":"block.minecraft.end_stone","italic":false}'},CanPlaceOn:["brown_terracotta","oak_leaves","spruce_leaves","black_terracotta","lime_terracotta","white_terracotta","red_terracotta","light_gray_terracotta","light_blue_terracotta","cyan_terracotta","green_terracotta","magenta_terracotta","yellow_terracotta","nether_brick_stairs","spruce_stairs","nether_wart_block","oak_fence","spruce_slab","oak_slab","torch","brown_shulker_box","grass","hopper","ender_chest","chest","daylight_detector","#game:stained_glass","end_stone","obsidian","oak_planks","cobweb"],HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:oak_planks"}}] run data merge entity @s {Item:{id:"minecraft:oak_planks",tag:{display:{Name:'{"translate":"block.minecraft.oak_planks","italic":false}'},CanPlaceOn:["brown_terracotta","oak_leaves","spruce_leaves","black_terracotta","lime_terracotta","white_terracotta","red_terracotta","light_gray_terracotta","light_blue_terracotta","cyan_terracotta","green_terracotta","magenta_terracotta","yellow_terracotta","nether_brick_stairs","spruce_stairs","nether_wart_block","oak_fence","spruce_slab","oak_slab","torch","brown_shulker_box","grass","hopper","ender_chest","chest","daylight_detector","#game:stained_glass","end_stone","obsidian","oak_planks","cobweb"],HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:obsidian"}}] run data merge entity @s {Item:{id:"minecraft:obsidian",tag:{display:{Name:'{"translate":"block.minecraft.obsidian","italic":false}'},CanPlaceOn:["brown_terracotta","oak_leaves","spruce_leaves","black_terracotta","lime_terracotta","white_terracotta","red_terracotta","light_gray_terracotta","light_blue_terracotta","cyan_terracotta","green_terracotta","magenta_terracotta","yellow_terracotta","nether_brick_stairs","spruce_stairs","nether_wart_block","oak_fence","spruce_slab","oak_slab","torch","brown_shulker_box","grass","hopper","ender_chest","chest","daylight_detector","#game:stained_glass","end_stone","obsidian","oak_planks","cobweb"],HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:string"}}] run data merge entity @s {Item:{id:"minecraft:cobweb",tag:{display:{Name:'{"translate":"block.minecraft.cobweb","italic":false}'},CanPlaceOn:["brown_terracotta","oak_leaves","spruce_leaves","black_terracotta","lime_terracotta","white_terracotta","red_terracotta","light_gray_terracotta","light_blue_terracotta","cyan_terracotta","green_terracotta","magenta_terracotta","yellow_terracotta","nether_brick_stairs","spruce_stairs","nether_wart_block","oak_fence","spruce_slab","oak_slab","torch","brown_shulker_box","grass","hopper","ender_chest","chest","daylight_detector","#game:stained_glass","end_stone","obsidian","oak_planks","cobweb"],HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}},Tags:["Modded"]}

#Magic Effects
execute as @e[type=area_effect_cloud,tag=Upgrade] run function game:game/effects