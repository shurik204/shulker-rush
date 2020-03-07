fill ~2 ~1 ~ ~-2 ~-1 ~ minecraft:air replace #game:destroy
fill ~ ~1 ~2 ~ ~-1 ~-2 minecraft:air replace #game:destroy
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:destroy
fill ~ ~2 ~1 ~ ~-2 ~-1 minecraft:air replace #game:destroy
fill ~1 ~2 ~ ~-1 ~-2 ~ minecraft:air replace #game:destroy
fill ~2 ~ ~1 ~-2 ~ ~-1 minecraft:air replace #game:destroy
fill ~1 ~ ~2 ~-1 ~ ~-2 minecraft:air replace #game:destroy
particle minecraft:explosion ~ ~0.5 ~ 1.5 1.5 1.5 1 50 force
clear @s minecraft:glass_bottle
kill @s
# effect give @e[type=shulker,limit=1,sort=nearest,distance=..3] minecraft:resistance 2 9 true
playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.7 0
tellraw @a [{"selector":"@s"},{"text":" взорвался","color":"gold"}]
scoreboard players set @s drinkPotion 0