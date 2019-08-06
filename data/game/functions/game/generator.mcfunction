scoreboard players remove @s ironGen 1
scoreboard players remove @s goldGen 1

execute if score @s ironGen matches 0 unless entity @a[distance=..2] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1}}
execute if score @s ironGen matches 0 if entity @a[distance=..2] run give @a[distance..2] minecraft:iron_nugget
execute if score @s ironGen matches 0 as entity @a[distance=..2] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2

execute if score @s goldGen matches 0 unless entity @a[distance=..2] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_nugget",Count:1}}
execute if score @s goldGen matches 0 if entity @a[distance=..2] run give @a[distance..2] minecraft:gold_nugget
execute if score @s goldGen matches 0 as entity @a[distance=..2] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2

execute if score @s ironGen matches ..0 if score @s forgeLvl matches 0 run scoreboard players set @s ironGen 30
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 1 run scoreboard players set @s ironGen 25
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 2 run scoreboard players set @s ironGen 20
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 3 run scoreboard players set @s ironGen 10

execute if score @s goldGen matches ..0 if score @s forgeLvl matches 0 run scoreboard players set @s ironGen 300
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 1 run scoreboard players set @s ironGen 260
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 2 run scoreboard players set @s ironGen 220
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 3 run scoreboard players set @s ironGen 160