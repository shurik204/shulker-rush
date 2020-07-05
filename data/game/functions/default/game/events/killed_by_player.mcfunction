#Translate
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. unless entity @s[advancements={game:shoot_with_arrow=true}] run tellraw @a {"storage": "game:lang","nbt": "Player.KilledPlayer","interpret": true}
execute unless score @s kill matches 1.. as @a if score @s kill matches 1.. if entity @s[advancements={game:shoot_with_arrow=true}] run tellraw @a {"storage": "game:lang","nbt": "Player.ShotPlayer","interpret": true}

tag @s add regiveAll
scoreboard players set @s death 0