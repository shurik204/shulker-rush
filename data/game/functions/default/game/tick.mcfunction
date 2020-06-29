schedule function #game:tick 1t

execute as @a store result score @s height run data get entity @s Pos[1]
execute as @a[team=!player,tag=!regiveAll] if score @s height <= #KillHeight var run function #game:event/killed_by_void

execute as @a[scores={death=1..}] run function #game:event/killed_by_player

execute as @a[scores={kill=1..}] run function #game:event/killed_player



execute as @a[tag=!Joined] at @s run function #game:event/player_joined

execute as @a store result score @s[tag=!regiveAll] HasAxe run clear @s minecraft:golden_axe 0

execute as @a[scores={drinkPotion=1..}] at @s run function #game:event/used_explosive_potion

execute as @a if score @s join matches 180420 run function #game:event/player_join_game

# Init just joined players
execute as @a[tag=NeedInit] run function #controller:init_player

# Anti-gamemode-changer
execute unless score #Enabled Debug matches 1.. as @a[gamemode=!adventure,gamemode=!spectator,tag=!Dev] run function #game:event/spectator_joined

execute at @e[type=minecraft:area_effect_cloud,tag=Respawn] run fill ~ ~1 ~ ~ ~3 ~ air destroy

# Needs reworking
# execute as @e[type=minecraft:item,tag=NeedName] run function game:default/game/item_translate

# Remove advancement from all plyers who have it
# BUG: Client console always shows "Told to remove advancement game:shoot_with_arrow but I don't know what that is"
# I'll maybe fix it, or maybe not.
advancement revoke @a[advancements={game:shoot_with_arrow=true}] only game:shoot_with_arrow