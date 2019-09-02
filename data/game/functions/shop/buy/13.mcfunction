clear @s[tag=!elytra] minecraft:nether_wart 6
tellraw @s[tag=elytra] {"text":"У тебя уже есть элитры","color":"red"}

tag @s[tag=!elytra] add givea
execute at @s[tag=!elytra] run tp @s ~ ~73 ~
effect give @s[tag=!elytra] minecraft:levitation 10000 255 true
execute if entity @s[tag=!elytra] run schedule function game:shop/item/armor/armor 2t

tag @s add elytra
