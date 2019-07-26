clear @s[scores={statArmor=1..2}] minecraft:gold_nugget 16
tellraw @s[scores={statArmor=3}] {"text":"У тебя уже есть такая броня","color":"red"}
scoreboard players set @s[scores={statArmor=1..2}] statArmor 3
tag @s[scores={statArmor=1..2}] add giveA3
tellraw @s[scores={statArmor=4}] {"text":"У тебя уже есть броня лучше","color":"red"}