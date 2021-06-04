execute store result score @s height run data get entity @s Pos[1] 100
execute if entity @s[tag=!regiveAll] if score @s height <= #KillHeight settings run function #game:event/killed_by_void

execute if score @s death matches 1.. run function #game:event/killed_by_player

# Check if undead player has axe and store it in scoreboard
execute store result score @s[tag=!regiveAll] HasAxe run clear @s minecraft:golden_axe 0
# Potion functionality
execute if score @s drinkPotion matches 1.. run function #game:event/used_explosive_potion