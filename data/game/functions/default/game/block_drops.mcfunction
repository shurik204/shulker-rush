#Fix block drops (ik about Loot Tables, but i can't make it work)
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:end_stone"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:oak_planks"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:obsidian"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}
execute as @e[type=item,tag=!Modded,nbt={Item:{id:"minecraft:cobweb"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["#game:place"],HideFlags:127,CanDestroy:["#game:destroy"]}},Tags:["Modded"]}

schedule function #game:block_drops_schedule 2t