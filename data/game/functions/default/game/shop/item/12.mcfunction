clear @s[scores={ArmorType=0..2}] minecraft:nether_wart 8
tellraw @s[scores={ArmorType=3}] {"text":"У тебя уже есть такая броня","color":"red"}

tag @s[scores={ArmorType=0..2}] add givea
execute at @s[scores={ArmorType=0..2}] run tp @s ~ ~73 ~
effect give @s[scores={ArmorType=0..2}] minecraft:levitation 10000 255 true
execute if score @s ArmorType matches 0..2 run schedule function game:shop/item/armor/armor 2t

scoreboard players set @s[scores={ArmorType=0..2}] ArmorType 3
