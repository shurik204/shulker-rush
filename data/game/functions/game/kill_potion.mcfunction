fill ~2 ~1 ~ ~-2 ~-1 ~ minecraft:air replace #game:blocks
fill ~ ~1 ~2 ~ ~-1 ~-2 minecraft:air replace #game:blocks
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:blocks
fill ~ ~2 ~1 ~ ~-2 ~-1 minecraft:air replace #game:blocks
fill ~1 ~2 ~ ~-1 ~-2 ~ minecraft:air replace #game:blocks
fill ~2 ~ ~1 ~-2 ~ ~-1 minecraft:air replace #game:blocks
fill ~1 ~ ~2 ~-1 ~ ~-2 minecraft:air replace #game:blocks
particle minecraft:explosion ~ ~0.5 ~ 1.5 1.5 1.5 1 50 force
playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.7 0
summon minecraft:creeper ~ ~ ~ {Fuse:1,Tags:["bomb"]}
data modify @e[type=creeper,limit=1,sort=nearest,tag=bomb] CustomName from enity @s CustomName
tellraw @a [{"selector":"@s"},{"text":" взорвался","color":"gold"}]
clear @s glass_bottle
kill @s