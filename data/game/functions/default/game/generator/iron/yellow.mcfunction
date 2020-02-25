execute at @e[type=area_effect_cloud,tag=yIronGen] positioned ~ ~-1 ~ run function game:default/game/generator/iron/summon

# Reset cooldown
execute if score #Forge yellow matches 0 run schedule function game:default/game/generator/iron/yellow 30t
execute if score #Forge yellow matches 1 run schedule function game:default/game/generator/iron/yellow 24t
execute if score #Forge yellow matches 2 run schedule function game:default/game/generator/iron/yellow 20t
execute if score #Forge yellow matches 3 run schedule function game:default/game/generator/iron/yellow 14t
#Debug mode
execute if score #Debug var matches 1 run schedule function game:default/game/generator/iron/yellow 10t