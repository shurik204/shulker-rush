clear @s[scores={statArmor=0..1}] minecraft:gold_nugget 4
tellraw @s[scores={statArmor=2}] {"text":"У тебя уже есть такая броня","color":"red"}
scoreboard players set @s[scores={statArmor=0..1}] statArmor 2
tag @s[scores={statArmor=0..1}] add giveA2
tellraw @s[scores={statArmor=3..4}] {"text":"У тебя уже есть броня лучше","color":"red"}