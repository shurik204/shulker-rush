function #game:shop/update

execute at @e[type=minecraft:area_effect_cloud,tag=Shop] as @a[distance=..8,gamemode=!spectator] run function #game:shop/buy
kill @e[type=item,nbt={Item:{tag:{shop:true}}}]

schedule function #game:shop/schedule 2t replace