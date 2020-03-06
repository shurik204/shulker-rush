execute at @e[type=area_effect_cloud,tag=yGoldGen] positioned ~ ~-1 ~ run function game:default/game/generator/gold/summon

# Reset cooldown
execute if score #Forge yellow matches 0 run schedule function #game:yellow_gold_generator 300t
execute if score #Forge yellow matches 1 run schedule function #game:yellow_gold_generator 260t
execute if score #Forge yellow matches 2 run schedule function #game:yellow_gold_generator 220t
execute if score #Forge yellow matches 3 run schedule function #game:yellow_gold_generator 160t
#Debug modet
execute if score #Debug var matches 1 run schedule function #game:yellow_gold_generator 20t replace