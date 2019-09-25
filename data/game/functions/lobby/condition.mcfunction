execute as @a run scoreboard players add #TCount var 1
execute as @a[team=player] run scoreboard players add #PCount var 1
execute as @a[team=yellow] run scoreboard players add #YCount var 1
execute as @a[team=blue] run scoreboard players add #BCount var 1
execute if score #PCount var matches 0 if score #YCount var matches 1.. if score #BCount var matches 1.. run scoreboard players set #State var 4
execute if score #TCount var matches ..1 run tellraw @a {"text":"There are not enough players to start","color":"red"}
execute if score #TCount var matches 2.. if score #PCount var matches 1.. run tellraw @a {"text":"Some players haven\'t choosen their teams","color":"red"}
execute if score #TCount var matches 2.. if score #BCount var matches 0 if score #PCount var matches 0 run tellraw @a {"text":"Blue Team is empty","color":"red"}
execute if score #TCount var matches 2.. if score #YCount var matches 0 if score #PCount var matches 0 run tellraw @a {"text":"Yellow Team is empty","color":"red"}
execute unless score #State var matches 4 as @a at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1 1
execute unless score #State var matches 4 run scoreboard players set #State var 2
execute if score #State var matches 4 run scoreboard players set #Countdown var 10
execute if score #State var matches 4 run scoreboard players set #sec var 0
execute if score #State var matches 4 run fill 985 192 1085 991 188 1079 barrier outline
execute if score #State var matches 4 run fill 1003 192 1085 1009 188 1079 barrier outline
execute if score #State var matches 4 run tp @a[team=yellow] 988.5 190 1082
execute if score #State var matches 4 run tp @a[team=blue] 1006.5 190 1082
execute if score #State var matches 4 run tag @a[team=!player] add NeedInit
scoreboard players set #TCount var 0
scoreboard players set #PCount var 0
scoreboard players set #BCount var 0
scoreboard players set #YCount var 0