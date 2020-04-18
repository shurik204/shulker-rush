scoreboard players set #Count yellow 0
scoreboard players set #Count blue 0
execute as @a[team=yellow] run scoreboard players add #Count yellow 1
execute as @a[team=blue] run scoreboard players add #Count blue 1
execute if score #Count yellow = #Count blue if predicate game:50_50 run team join yellow
execute if score #Count yellow = #Count blue if entity @s[team=player] run team join blue
execute if score #Count yellow > #Count blue run team join blue
execute if score #Count yellow < #Count blue run team join yellow
tag @s add NeedInit
scoreboard players set @s join 0