fill ~2 ~1 ~ ~-2 ~-1 ~ minecraft:air replace #game:destroy
fill ~ ~1 ~2 ~ ~-1 ~-2 minecraft:air replace #game:destroy
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #game:destroy
fill ~ ~2 ~1 ~ ~-2 ~-1 minecraft:air replace #game:destroy
fill ~1 ~2 ~ ~-1 ~-2 ~ minecraft:air replace #game:destroy
fill ~2 ~ ~1 ~-2 ~ ~-1 minecraft:air replace #game:destroy
fill ~1 ~ ~2 ~-1 ~ ~-2 minecraft:air replace #game:destroy
particle minecraft:explosion ~ ~0.5 ~ 1.5 1.5 1.5 1 50 force
clear @s minecraft:glass_bottle

execute if score #PotionDontDamagePlayers settings matches 1 run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.7 0
execute unless score #PotionDontDamagePlayers settings matches 1 run summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,Fuse:0,Silent:1b}
execute unless score #PotionDontDamagePlayers settings matches 1 run effect give @e[type=minecraft:shulker,distance=..5] minecraft:resistance 1 4 true
kill @s

tellraw @a {"storage": "game:lang","nbt": "Player.UsedPotion","interpret": true}
scoreboard players set @s drinkPotion 0