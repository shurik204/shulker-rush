clear @s[scores={statArmor=0..2}] minecraft:nether_wart 8
tellraw @s[scores={statArmor=3}] {"text":"You already have this armor","color":"red"}

tag @s[scores={statArmor=0..2}] add givea
execute at @s[scores={statArmor=0..2}] run tp @s ~ ~73 ~
effect give @s[scores={statArmor=0..2}] minecraft:levitation 10000 255 true
execute if score @s statArmor matches 0..2 run schedule function game:shop/item/armor/armor 2t

scoreboard players set @s[scores={statArmor=0..2}] statArmor 3
