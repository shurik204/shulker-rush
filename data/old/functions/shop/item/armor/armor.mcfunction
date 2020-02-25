execute as @a[tag=givea] at @s run function game:shop/item/armor/givea
execute as @a[tag=givea] at @s run tp @s ~ ~-72 ~
effect clear @a[tag=givea] minecraft:levitation
tag @a remove givea