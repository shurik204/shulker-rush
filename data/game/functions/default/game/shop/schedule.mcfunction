execute as @e[type=minecraft:area_effect_cloud,tag=Shop] at @s if entity @a[gamemode=!spectator,distance=..7] run function #game:shop/update

kill @e[type=item,nbt={Item:{tag:{shop:true}}}]


# Slow down schedule timer if there is too many players near the shop.
execute if score #ProcessedInShop var > #ShopPlayersThreshold settings run schedule function #game:shop/schedule 4t replace
schedule function #game:shop/schedule 2t replace
# Reset player count in shop
scoreboard players set #ProcessedInShop var 0