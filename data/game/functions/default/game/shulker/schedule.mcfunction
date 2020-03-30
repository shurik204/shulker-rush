execute as @e[type=shulker,tag=yBed] at @s run function #game:shulker_yellow

execute as @e[type=shulker,tag=bBed] at @s run function #game:shulker_blue

# Reset "dealtDamage" score since we don't need it anymore
scoreboard players set @a dealtDamage 0

schedule function #game:shulker_schedule 4t