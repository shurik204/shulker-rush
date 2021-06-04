execute if entity @s[tag=yShop] store success score #process_shop yellow run data modify block ~ ~ ~ Items set from storage minecraft:shop Yellow
execute if entity @s[tag=bShop] store success score #process_shop blue run data modify block ~ ~ ~ Items set from storage minecraft:shop Blue

execute if entity @s[tag=yShop] if score #process_shop yellow matches 1 as @a[distance=..8,gamemode=!spectator] run function #game:shop/buy_check
execute if entity @s[tag=bShop] if score #process_shop blue matches 1 as @a[distance=..8,gamemode=!spectator] run function #game:shop/buy_check