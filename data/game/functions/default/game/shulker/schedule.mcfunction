execute as @e[type=shulker,tag=yBed] at @s run function #game:shulker/yellow

execute as @e[type=shulker,tag=bBed] at @s run function #game:shulker/blue

advancement revoke @a[advancements={game:hit_shulker=true}] only game:hit_shulker

schedule function #game:shulker/schedule 4t