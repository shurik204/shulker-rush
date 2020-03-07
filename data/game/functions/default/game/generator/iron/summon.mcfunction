# Summon item if no players nearby
execute unless entity @a[distance=..1.5,gamemode=adventure] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1b,tag:{HideFlags:127,CanDestroy:["#game:destroy"]}}}
# Else give it to player and play pickup sound
execute as @a[distance=..1.5,gamemode=adventure] run give @s minecraft:iron_nugget{HideFlags:127,CanDestroy:["#game:destroy"]}
execute as @a[distance=..1.5,gamemode=adventure] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.2 2 1