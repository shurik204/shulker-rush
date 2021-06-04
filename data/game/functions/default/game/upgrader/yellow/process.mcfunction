execute as @a[team=yellow,distance=..5] run function #game:upgrader/yellow/buy

execute as @a[team=blue,distance=..5] run function #game:upgrader/clear

kill @e[type=minecraft:item,distance=..5,nbt={Item:{tag:{Up: true}}}]