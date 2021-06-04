schedule function #game:tick 1t

# Handle player join
execute as @a[tag=!Joined] at @s run function #game:event/player_joined

# If player has score, join to game
execute as @a if score @s join matches 1.. run function #game:event/player_join_game

# Init just joined players
execute as @a[tag=NeedInit] run function #controller:init_player

execute as @a[team=!player] at @s run function #game:player/tick

# Fix kill detection system
execute as @a if score @s kill matches 1.. at @s run function #game:event/killed_player

# Anti-gamemode-changer
execute unless score #Enabled Debug matches 1.. as @a[gamemode=!adventure,gamemode=!spectator,tag=!Dev] run function #game:event/spectator_joined
# Don't allow to build anything on player spawn
execute at @e[type=minecraft:area_effect_cloud,tag=Respawn] run fill ~ ~1 ~ ~ ~3 ~ minecraft:air destroy

# Don't allow to build anything near shop if not allowed
execute unless score #AllowObstructShop settings matches 1 at @e[type=minecraft:area_effect_cloud,tag=ShopMarker] run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

# Keep falling block
execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1

# Remove advancement from all plyers who have it
# BUG: Client console always shows "Told to remove advancement game:shoot_with_arrow but I don't know what that is"
# I'll maybe fix it, or maybe not.
advancement revoke @a[advancements={game:shoot_with_arrow=true}] only game:shoot_with_arrow

# Base tick function
execute as @e[type=minecraft:area_effect_cloud, tag=Base, limit=2] at @s run function #game:base/tick