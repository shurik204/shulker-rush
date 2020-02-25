clear @s[scores={ArmorType=0..1}] minecraft:gold_nugget 16
tellraw @s[scores={ArmorType=2}] {"text":"У тебя уже есть такая броня","color":"red"}

tag @s[scores={ArmorType=0..1}] add givea
execute at @s[scores={ArmorType=0..1}] run tp @s ~ ~73 ~
effect give @s[scores={ArmorType=0..1}] minecraft:levitation 10000 255 true
execute if score @s ArmorType matches 0..1 run schedule function game:shop/item/armor/armor 2t

scoreboard players set @s[scores={ArmorType=0..1}] ArmorType 2
tellraw @s[scores={ArmorType=4}] {"text":"У тебя уже есть броня лучше","color":"red"}
