# I know that this system places marker if you placed a block near the marker and then ran outside or the range
# But anyways doesn't seems to be a problem 
execute if score @s placeGlassY matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placeGlassB matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placeGlassR matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placeCobweb matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placePlanks matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placeEndStone matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
execute if score @s placeObsidian matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Fill"]}
scoreboard players set @s placeGlassY 0
scoreboard players set @s placeGlassB 0
scoreboard players set @s placeGlassR 0
scoreboard players set @s placeCobweb 0
scoreboard players set @s placePlanks 0
scoreboard players set @s placeEndStone 0
scoreboard players set @s placeObsidian 0