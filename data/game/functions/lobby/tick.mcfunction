playsound minecraft:entity.experience_orb.pickup master @a[score_openVillager_min=1] ~ ~ ~ 10000 1

tag @a add fillEnd
execute at @e[name=fillEnd,type=area_effect_cloud] positioned ~-10 ~-9 ~-10 run tag @a[dx=20,dy=19,dz=20] remove fillEnd
execute at @a[tag=fillEnd,scores={placeGlassY=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeGlassB=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeCobweb=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placePlanks=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeEndStone=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
execute at @a[tag=fillEnd,scores={placeObsidian=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fill"]}
