#Translate
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. unless entity @s[advancements={game:shoot_with_arrow=true}] run tellraw @a {"storage": "game:lang","nbt": "Player.KilledPlayer","interpret": true}
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. if entity @s[advancements={game:shoot_with_arrow=true}] run tellraw @a {"storage": "game:lang","nbt": "Player.ShotPlayer","interpret": true}

tag @s add regiveAll

execute at @s as @e[type=minecraft:item,distance=..3,nbt={Age:0s}] store result entity @s Motion[1] double 1 run data get entity @s Motion[1] 4.6

# #Translate
# execute if entity @s[tag=eleminated,team=!player] run tellraw @a [{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]
scoreboard players set @s death 0