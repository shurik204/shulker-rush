scoreboard players add @a[tag=GiveArmor] Timer 1
execute as @a[tag=GiveArmor] if score @s Timer matches 3.. run function game:default/game/shop/custom/armor/finish

execute if entity @a[tag=GiveArmor] run schedule function game:default/game/shop/custom/armor/delay 1t
# scoreboard players set TMP var 0
# execute as @a[scores={ArmorQueue=1..}] if score @s ArmorQueue > @s TMP run scoreboard players operation TMP var = @s ArmorQueue
# execute as @a 