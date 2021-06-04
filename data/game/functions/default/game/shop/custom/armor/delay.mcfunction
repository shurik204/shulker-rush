scoreboard players add @a[tag=GiveArmor] Timer 1
execute as @a[tag=GiveArmor] if score @s Timer matches 3.. run function #game:shop/item/armor/finish

execute if entity @a[tag=GiveArmor] run schedule function #game:shop/item/armor/delay 1t