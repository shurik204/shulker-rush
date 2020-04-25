execute positioned ~ ~ ~-0.2 if entity @a[distance=..0.7,gamemode=!spectator] positioned ~ ~ ~1.2 if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~ ~ ~0.2 if entity @a[distance=..0.7,gamemode=!spectator] positioned ~ ~ ~-1.2 if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~-0.2 ~ ~ if entity @a[distance=..0.7,gamemode=!spectator] positioned ~1.2 ~ ~ if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~
execute positioned ~0.2 ~ ~ if entity @a[distance=..0.7,gamemode=!spectator] positioned ~-1.2 ~ ~ if block ~ ~ ~ air if block ~ ~-1 ~ #game:terracotta run tp @s ~ ~ ~

execute if score #Effects blue matches 1.. run effect give @a[distance=..6,team=yellow] minecraft:mining_fatigue 3 0 false

# Regeneration workaround using timer
scoreboard players add @s Timer 1
execute if score #Effects blue matches 2.. if score @s Timer matches 5.. run effect give @a[distance=..6,team=blue] minecraft:regeneration 2 1 false
execute if score @s Timer matches 5.. run scoreboard players set @s Timer 0

execute if score #Effects blue matches 3.. run effect give @a[distance=..18,team=yellow] minecraft:glowing 3 0 false

data modify entity @s Health set value 30
execute store result score @s HurtTime run data get entity @s HurtTime

execute if score @s HurtTime matches 1.. if entity @a[distance=..5,team=yellow,scores={dealtDamage=10..}] run function #game:shulker/remove_hp_blue