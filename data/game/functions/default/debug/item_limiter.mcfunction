# I can't stand garbage that gets created when debug mode is on
# so I made this small function, that limits the number of 
# generator items (Iron, Gold, Ruby).
schedule function #game:debug/item_limiter 4t

scoreboard players set GenItemsCount Debug 0
execute as @e[type=minecraft:item,nbt={Tags:["GenItem"]}] run scoreboard players add GenItemsCount Debug 1

execute if score GenItemsCount Debug matches 40.. run kill @e[type=minecraft:item,nbt={Tags:["GenItem"]},limit=20,sort=random]
