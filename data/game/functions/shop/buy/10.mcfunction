clear @s[scores={statArmor=0}] minecraft:gold_nugget 4
tellraw @s[scores={statArmor=1}] {"text":"У тебя уже есть такая броня","color":"red"}

tag @s[scores={statArmor=0}] add givea
execute at @s[scores={statArmor=0}] run tp @s ~ ~73 ~
effect give @s[scores={statArmor=0}] minecraft:levitation 10000 255 true
execute if score @s statArmor matches ..0 run schedule function game:shop/item/armor/armor 2t

scoreboard players set @s[scores={statArmor=0}] statArmor 1
tellraw @s[scores={statArmor=2..}] {"text":"У тебя уже есть броня лучше","color":"red"}
