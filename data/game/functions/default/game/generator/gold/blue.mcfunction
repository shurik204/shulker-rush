execute at @e[type=area_effect_cloud,tag=bGoldGen] positioned ~ ~-1 ~ run function game:default/game/generator/gold/summon

# Reset cooldown
execute if score #Forge blue matches 0 run schedule function game:default/game/generator/gold/blue 300t
execute if score #Forge blue matches 1 run schedule function game:default/game/generator/gold/blue 260t
execute if score #Forge blue matches 2 run schedule function game:default/game/generator/gold/blue 220t
execute if score #Forge blue matches 3 run schedule function game:default/game/generator/gold/blue 160t
#Debug modet
execute if score #Debug var matches 1 run schedule function game:default/game/generator/gold/blue 20t