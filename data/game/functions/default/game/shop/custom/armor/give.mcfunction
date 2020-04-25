tag @s add GiveArmor
scoreboard players set @s Timer 0
effect give @s minecraft:levitation 1000000 255 true
execute at @s run tp @s ~ ~256.2 ~
schedule function #game:shop/item/armor/delay 1t