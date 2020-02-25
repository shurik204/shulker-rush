# Summon item if no players nearby
execute unless entity @a[distance=..2,gamemode=adventure] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1b,tag:{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}}}
# Else give it to player and play pickup sound
execute as @a[distance=..2,gamemode=adventure] run give @s minecraft:iron_nugget{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}
execute as @a[distance=..2,gamemode=adventure] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2

# Reset cooldown
execute if score @s forgeLvl matches 0 run scoreboard players set @s ironGen 30
execute if score @s forgeLvl matches 1 run scoreboard players set @s ironGen 24
execute if score @s forgeLvl matches 2 run scoreboard players set @s ironGen 20
execute if score @s forgeLvl matches 3 run scoreboard players set @s ironGen 10

#Debug mode
execute if score #Debug var matches 1 run scoreboard players set @s ironGen 10