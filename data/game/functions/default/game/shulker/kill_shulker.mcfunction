title @a times 2 10 44
title @a title ""
data modify entity @s CustomName set value ''
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.8 1.1 0.5
particle minecraft:lava ~ ~0.5 ~ 0.3 0.3 0.3 0.1 40 force @a
tp @s ~ -100 ~
kill @s