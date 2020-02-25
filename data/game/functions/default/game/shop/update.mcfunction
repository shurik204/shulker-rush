execute at @e[type=area_effect_cloud,tag=yShop] if entity @a[distance=..10] run data modify block ~ ~ ~ Items set from storage minecraft:shop Yellow
execute at @e[type=area_effect_cloud,tag=bShop] if entity @a[distance=..10] run data modify block ~ ~ ~ Items set from storage minecraft:shop Blue

tellraw @a[tag=!Joined] "game:/default/game/shop/update"