clear @s
gamemode adventure
effect give @s minecraft:saturation 1 255 true
effect give @s minecraft:regeneration 2 255 true

# Reset xp levels
xp set @s 0 levels
xp set @s 0 points

scoreboard players operation @s GameID = #Current GameID
scoreboard players set @s killCount 0
scoreboard players set @s deathCount 0

scoreboard players set @s ArmorType 0
scoreboard players set @s swordLvl 0
scoreboard players set @s armorLvl 0
tag @s remove HasElytra
scoreboard players set @s HasAxe 0

scoreboard players set @s drinkPotion 0
tag @s remove eliminated

replaceitem entity @s enderchest.0 minecraft:air
replaceitem entity @s enderchest.1 minecraft:air
replaceitem entity @s enderchest.2 minecraft:air
replaceitem entity @s enderchest.3 minecraft:air
replaceitem entity @s enderchest.4 minecraft:air
replaceitem entity @s enderchest.5 minecraft:air
replaceitem entity @s enderchest.6 minecraft:air
replaceitem entity @s enderchest.7 minecraft:air
replaceitem entity @s enderchest.8 minecraft:air
replaceitem entity @s enderchest.9 minecraft:air
replaceitem entity @s enderchest.10 minecraft:air
replaceitem entity @s enderchest.11 minecraft:air
replaceitem entity @s enderchest.12 minecraft:air
replaceitem entity @s enderchest.13 minecraft:air
replaceitem entity @s enderchest.14 minecraft:air
replaceitem entity @s enderchest.15 minecraft:air
replaceitem entity @s enderchest.16 minecraft:air
replaceitem entity @s enderchest.17 minecraft:air
replaceitem entity @s enderchest.18 minecraft:air
replaceitem entity @s enderchest.19 minecraft:air
replaceitem entity @s enderchest.20 minecraft:air
replaceitem entity @s enderchest.21 minecraft:air
replaceitem entity @s enderchest.22 minecraft:air
replaceitem entity @s enderchest.23 minecraft:air
replaceitem entity @s enderchest.24 minecraft:air
replaceitem entity @s enderchest.25 minecraft:air
replaceitem entity @s enderchest.26 minecraft:air

# Use random tp to allow more than one spawnpoint
execute if entity @s[team=yellow] run tp @s @e[type=minecraft:area_effect_cloud,limit=1,tag=yRespawn,sort=random]
execute if entity @s[team=blue] run tp @s @e[type=minecraft:area_effect_cloud,limit=1,tag=bRespawn,sort=random]

execute if entity @s[team=yellow] at @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=yRespawn] run spawnpoint @s ~ ~1 ~
execute if entity @s[team=blue] at @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=bRespawn] run spawnpoint @s ~ ~1 ~
tag @s add regiveAll
tag @s remove NeedInit
tag @s remove NoRespawn
tag @s remove update_list

execute if score #Enabled Debug matches 1.. run say Init function done
# Remove some attributes
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-0
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-1
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-2
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-3
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-4
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-5
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-6
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-7
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-8
attribute @s minecraft:generic.armor modifier remove 0-0-0-0-9

attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-0
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-1
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-2
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-3
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-4
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-5
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-6
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-7
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-8
attribute @s minecraft:generic.armor_toughness modifier remove 0-0-0-0-9

attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-0
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-2
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-4
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-5
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-6
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-7
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-8
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-9

attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-0
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-1
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-2
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-3
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-4
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-5
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-6
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-7
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-8
attribute @s minecraft:generic.attack_speed modifier remove 0-0-0-0-9

attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-0
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-1
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-2
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-3
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-4
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-5
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-6
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-7
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-8
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-0-9

attribute @s minecraft:generic.luck modifier remove 0-0-0-0-0
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-1
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-2
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-3
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-4
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-5
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-6
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-7
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-8
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-9

attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-0
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-1
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-2
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-3
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-4
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-5
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-6
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-7
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-8
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-9

attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-0
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-1
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-2
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-3
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-4
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-5
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-6
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-7
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-8
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-9