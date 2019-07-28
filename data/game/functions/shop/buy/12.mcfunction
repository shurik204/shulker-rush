clear @s[scores={statArmor=1..3}] minecraft:nether_wart 8
tellraw @a[scores={statArmor=4}] {"text":"У тебя уже есть такая броня","color":"red"}
scoreboard players set @s[scores={statArmor=1..3}] statArmor 4
execute as @s run function shulker-rushshop/item/armor/givea