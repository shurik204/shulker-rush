execute if score #Effects yellow matches 1.. run effect give @a[distance=..6,team=blue] minecraft:mining_fatigue 3 0 false

# Regeneration workaround using timer
scoreboard players add @s Timer 1
execute if score #Effects yellow matches 2.. if score @s Timer matches 5.. run effect give @a[distance=..6,team=yellow] minecraft:regeneration 2 1 false
execute if score @s Timer matches 5.. run scoreboard players set @s Timer 0

execute if score #Effects yellow matches 3.. run effect give @a[distance=..18,team=blue] minecraft:glowing 3 0 false