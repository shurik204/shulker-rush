clear @s[scores={statArmor=0..1}] minecraft:gold_nugget 16
tellraw @s[scores={statArmor=2}] {"text":"У тебя уже есть такая броня","color":"red"}

tag @s[scores={statArmor=0..1}] add givea
execute at @s[scores={statArmor=0..1}] run tp @s ~ ~73 ~
effect give @s[scores={statArmor=0..1}] minecraft:levitation 10000 255 true
execute if score @s statArmor matches 0..1 run schedule function game:shop/item/armor/armor 6t

scoreboard players set @s[scores={statArmor=0..1}] statArmor 2
tellraw @s[scores={statArmor=4}] {"text":"У тебя уже есть броня лучше","color":"red"}
