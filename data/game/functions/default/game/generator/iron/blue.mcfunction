execute at @e[type=area_effect_cloud,tag=bIronGen] positioned ~ ~-1 ~ run function game:default/game/generator/iron/summon

# Reset cooldown
execute if score #Forge blue matches 0 run schedule function game:default/game/generator/iron/blue 30t
execute if score #Forge blue matches 1 run schedule function game:default/game/generator/iron/blue 24t
execute if score #Forge blue matches 2 run schedule function game:default/game/generator/iron/blue 20t
execute if score #Forge blue matches 3 run schedule function game:default/game/generator/iron/blue 14t
#Debug modet
execute if score #Debug var matches 1 run schedule function game:default/game/generator/iron/blue 10t