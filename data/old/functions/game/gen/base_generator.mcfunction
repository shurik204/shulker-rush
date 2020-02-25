# Remove one point with no exceptions
execute if score #NoIron settings matches 0 run scoreboard players remove @s ironGen 1
execute if score #NoGold settings matches 0 run scoreboard players remove @s goldGen 1

# Double resources modification
execute if score #NoIron settings matches 0 if score #DoubleResources settings matches 1 run scoreboard players remove @s ironGen 1
execute if score #NoGold settings matches 0 if score #DoubleResources settings matches 1 run scoreboard players remove @s goldGen 1

# Summon resource and reset cooldown
execute if score @s ironGen matches ..0 run function game:game/gen/summon_iron 
execute if score @s goldGen matches ..0 run function game:game/gen/summon_gold