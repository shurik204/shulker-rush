# Summon item if no players nearby
execute unless entity @a[distance=..2,gamemode=adventure] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_nugget",Count:1b,tag:{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}}}
# Else give it to player and play pickup sound
execute as @a[distance=..2,gamemode=adventure] run give @s minecraft:gold_nugget{HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}
execute as @a[distance=..2,gamemode=adventure] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2