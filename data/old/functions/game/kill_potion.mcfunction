fill ~2 ~1 ~ ~-2 ~-1 ~ minecraft:air replace #game:blocks
fill ~ ~1 ~2 ~ ~-1 ~-2 minecraft:air replace #game:blocks
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:blocks
fill ~ ~2 ~1 ~ ~-2 ~-1 minecraft:air replace #game:blocks
fill ~1 ~2 ~ ~-1 ~-2 ~ minecraft:air replace #game:blocks
fill ~2 ~ ~1 ~-2 ~ ~-1 minecraft:air replace #game:blocks
fill ~1 ~ ~2 ~-1 ~ ~-2 minecraft:air replace #game:blocks
particle minecraft:explosion ~ ~0.5 ~ 1.5 1.5 1.5 1 50 force
playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.7 0
execute if score #MemePotion settings matches 0 run tellraw @a [{"selector":"@s"},{"text":" взорвался","color":"gold"}]
execute if score #MemePotion settings matches 1 run tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":">","color":"white"},{"text":" Аллаху Áкбар","color":"gold"}]
scoreboard players set @s drinkPotion 0
clear @s glass_bottle
kill @s
# Created by shurik204 | Texar Team