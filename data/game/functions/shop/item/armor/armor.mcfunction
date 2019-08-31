execute as @a[tag=givea] at @s run function game:shop/item/armor/givea
execute as @a[tag=givea] at @s run tp @s ~ ~-72 ~
tag @a remove givea
effect clear @a minecraft:levitation