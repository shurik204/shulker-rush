execute at @e[type=area_effect_cloud,tag=bIronGen] positioned ~ ~-1 ~ run function #game:gen/summon_iron

# Reset cooldown
execute if score #Forge blue matches 0 run schedule function #game:gen/blue/iron_generator 30t
execute if score #Forge blue matches 1 run schedule function #game:gen/blue/iron_generator 24t
execute if score #Forge blue matches 2 run schedule function #game:gen/blue/iron_generator 20t
execute if score #Forge blue matches 3 run schedule function #game:gen/blue/iron_generator 14t
#Debug modet
execute if score #Debug var matches 1 run schedule function #game:gen/blue/iron_generator 10t replace