clear @s[scores={ArmorType=0}] minecraft:gold_nugget 4
tellraw @s[scores={ArmorType=1}] {"text":"У тебя уже есть такая броня","color":"red"}

tag @s[scores={ArmorType=0}] add givea
execute at @s[scores={ArmorType=0}] run tp @s ~ ~73 ~
effect give @s[scores={ArmorType=0}] minecraft:levitation 10000 255 true
execute if score @s ArmorType matches ..0 run schedule function game:shop/item/armor/armor 2t

scoreboard players set @s[scores={ArmorType=0}] ArmorType 1
tellraw @s[scores={ArmorType=2..}] {"text":"У тебя уже есть броня лучше","color":"red"}