data modify entity @s Health set value 30.0f
execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1

execute unless score @s HurtTime matches 1.. if entity @a[team=!yellow, distance=..5, advancements={game:hit_shulker=true}] run function #game:shulker/remove_hp_yellow