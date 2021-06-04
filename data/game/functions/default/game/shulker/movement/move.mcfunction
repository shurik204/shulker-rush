execute unless score #MoveShulkerAnywhere settings matches 1 if entity @a[gamemode=!spectator,distance=..2] run function #game:shulker/movement/default
execute if score #MoveShulkerAnywhere settings matches 1 if entity @a[gamemode=!spectator,distance=..2] run function #game:shulker/movement/anywhere
