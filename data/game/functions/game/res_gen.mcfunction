scoreboard players remove @s ironGen 1
scoreboard players remove @s goldGen 1

execute if score @s ironGen matches 0 unless entity @a[distance=..2,gamemode=adventure] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1,tag:{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}}}
execute if score @s ironGen matches 0 as @a[distance=..2,gamemode=adventure] run give @s minecraft:iron_nugget{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}
execute if score @s ironGen matches 0 as @a[distance=..2,gamemode=adventure] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2

execute if score @s goldGen matches 0 unless entity @a[distance=..2,gamemode=adventure] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_nugget",Count:1,tag:{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}}}
execute if score @s goldGen matches 0 as @a[distance=..2,gamemode=adventure] run give @s minecraft:gold_nugget{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}
execute if score @s goldGen matches 0 as @a[distance=..2,gamemode=adventure] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2

execute if score #Debug var matches 1 if score @s ironGen matches ..0 run scoreboard players set @s ironGen 10
execute if score #Debug var matches 1 if score @s goldGen matches ..0 run scoreboard players set @s goldGen 10

execute if score @s ironGen matches ..0 if score @s forgeLvl matches 0 run scoreboard players set @s ironGen 30
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 1 run scoreboard players set @s ironGen 25
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 2 run scoreboard players set @s ironGen 20
execute if score @s ironGen matches ..0 if score @s forgeLvl matches 3 run scoreboard players set @s ironGen 10

execute if score @s goldGen matches ..0 if score @s forgeLvl matches 0 run scoreboard players set @s goldGen 300
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 1 run scoreboard players set @s goldGen 260
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 2 run scoreboard players set @s goldGen 220
execute if score @s goldGen matches ..0 if score @s forgeLvl matches 3 run scoreboard players set @s goldGen 160

