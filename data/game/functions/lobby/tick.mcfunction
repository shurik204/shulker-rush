execute as @a[scores={InGame=1},tag=Joined] run clear @s
execute as @a[scores={InGame=1},tag=Joined] run clear @s

effect give @a minecraft:weakness 1 255 true
effect give @a minecraft:saturation 1 255 true
effect give @a minecraft:resistance 1 255 true

tp @a[tag=!Dev,team=!player,scores={InGame=0..}] 997 181 1144 -180 0
gamemode adventure @a[gamemode=spectator,tag=!Dev]
gamemode adventure @a[gamemode=survival]
team join player @a[team=!yellow,team=!blue]
scoreboard players set @a InGame -1

tp @a[tag=!Joined] 997 180.1 1144 -180 0
clear @a[tag=!Joined]
team join player @a[tag=!Joined]

execute as @a[scores={openVillager=1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10000 1
tellraw @a[x=991,y=180,z=1142,scores={openVillager=1..},distance=..6] {"text":"You have just joined the Yellow Team!","color":"yellow","bold":false}
team join yellow @a[x=991,y=180,z=1142,scores={openVillager=1..},distance=..6]
tellraw @a[x=1003,y=180,z=1142,scores={openVillager=1..},distance=..6] {"text":"You have just joined the Blue Team!","color":"dark_aqua","bold":false}
team join blue @a[x=1003,y=180,z=1142,scores={openVillager=1..},distance=..6]
scoreboard players set @a openVillager 0

execute positioned 997 181 1144 as @a[distance=40..,tag=!Dev] run tp @s 997 180.1 1144 -180 0
spawnpoint @a 997 181 1144