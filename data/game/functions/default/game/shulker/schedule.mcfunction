execute as @e[type=shulker,tag=yBed] at @s run function game:default/game/shulker/yellow

execute as @e[type=shulker,tag=bBed] at @s run function game:default/game/shulker/blue

# Reset "dealtDamage" score since we don't need it anymore
scoreboard players set @a dealtDamage 0

schedule function game:default/game/shulker/schedule 4t