execute at @e[type=area_effect_cloud,tag=yIronGen] positioned ~ ~-1 ~ run function game:default/game/generator/iron/summon

# Reset cooldown
execute if score #Forge yellow matches 0 run schedule function #game:yellow_iron_generator 30t
execute if score #Forge yellow matches 1 run schedule function #game:yellow_iron_generator 24t
execute if score #Forge yellow matches 2 run schedule function #game:yellow_iron_generator 20t
execute if score #Forge yellow matches 3 run schedule function #game:yellow_iron_generator 14t
#Debug mode
execute if score #Debug var matches 1 run schedule function #game:yellow_iron_generator 10t replace