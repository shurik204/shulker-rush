execute as @a[team=player] run scoreboard players add #PCount var 1
execute as @a[team=yellow] run scoreboard players add #YCount var 1
execute as @a[team=blue] run scoreboard players add #BCount var 1
execute if score #PCount var matches 0 if score #YCount var matches 1.. if score #BCount var matches 1.. run scoreboard players set #State var 4
execute if score #PCount var matches 1.. run tellraw @a {"text":"Некоторые игроки не выбрали команду","color":"red"}
execute if score #BCount var matches 0 run tellraw @a {"text":"В синей команде никого нет","color":"red"}
execute if score #YCount var matches 0 run tellraw @a {"text":"В жёлтой команде никого нет","color":"red"}
execute unless score #State var matches 4 as @a at @s run playsound minecraft:block.anvil.place @s master ~ ~ ~ 1 1 1
execute unless score #State var matches 4 run scoreboard players set #State var 2
scoreboard players set #PCount var 0
scoreboard players set #BCount var 0
scoreboard players set #YCount var 0
