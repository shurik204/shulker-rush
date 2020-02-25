execute positioned ~ ~ ~-0.2 if entity @a[distance=..0.7,gamemode=!spectator] positioned ~ ~ ~1.2 if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~ ~ ~0.2 if entity @a[distance=..0.7,gamemode=!spectator] positioned ~ ~ ~-1.2 if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~-0.2 ~ ~ if entity @a[distance=..0.7,gamemode=!spectator] positioned ~1.2 ~ ~ if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~0.2 ~ ~ if entity @a[distance=..0.7,gamemode=!spectator] positioned ~-1.2 ~ ~ if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~

execute if score #Effects yellow matches 1.. run effect give @a[distance=..8,team=blue] minecraft:mining_fatigue 3 0 false
execute if score #Effects yellow matches 2.. run effect give @a[distance=..8,team=yellow] minecraft:regeneration 3 0 false
execute if score #Effects yellow matches 3.. run effect give @a[distance=..18,team=blue] minecraft:glowing 3 0 false

data modify entity @s Health set value 30
execute store result score @s HurtTime run data get entity @s HurtTime

execute if score @s HurtTime matches 1.. if entity @a[distance=..5,team=blue,scores={dealtDamage=10..}] run function game:default/game/shulker/remove_hp_yellow