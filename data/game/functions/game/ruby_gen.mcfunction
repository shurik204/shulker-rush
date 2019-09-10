scoreboard players remove @s rubyGen 1
execute if score #Debug var matches 1 if score @s rubyGen matches ..0 run scoreboard players set @s rubyGen 10

execute if score @s rubyGen matches 1 run summon minecraft:item ~ ~ ~ {CustomModelData:1,Item:{id:"minecraft:nether_wart",Count:1,tag:{display:{Name:'{"text":"Рубин","color":"red","italic":false}'},HideFlags:127,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"]}}}
execute if score @s rubyGen matches ..0 run scoreboard players set @s rubyGen 800