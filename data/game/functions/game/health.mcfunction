execute if score @s health matches 0 run scoreboard players set @s health -1
execute store result score @s Hurted run data get entity @s Health

execute if entity @s[tag=BlueBed,scores={health=0..,Hurted=..29}] at @s if score @a[distance=..5,team=yellow,limit=1] hurt matches 1.. run scoreboard players remove @s health 1
execute if entity @s[tag=BlueBed,scores={health=..0}] run tag @a[team=blue,gamemode=adventure] add eleminated

execute if entity @s[tag=YellowBed,scores={health=0..,Hurted=..29}] at @s if score @a[distance=..5,team=blue,limit=1] hurt matches 1.. run scoreboard players remove @s health 1
execute if entity @s[tag=YellowBed,scores={health=..0}] run tag @a[team=yellow,gamemode=adventure] add eleminated

execute if entity @s[scores={health=0..,Hurted=..29}] run function game:game/update_name

execute if entity @s[tag=BlueBed,scores={health=0}] run tellraw @a [{"text":"Шалкер синих был уничтожен","color":"aqua"}]
execute if entity @s[tag=YellowBed,scores={health=0}] run tellraw @a [{"text":"Шалкер жёлтых был уничтожен","color":"yellow"}]
execute if score @s health matches 0 at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 10000 1 1
execute if score @s health matches 0 run tp @s ~ 500 ~