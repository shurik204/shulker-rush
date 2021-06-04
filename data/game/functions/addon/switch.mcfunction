scoreboard players operation #TMP var = @s enable_addon
scoreboard players reset @s enable_addon

tag @s add TMP
execute if score #TMP var matches 1 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Double Resources addon","color": "gray"}]
execute if score #TMP var matches -1 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Double Resources addon","color": "gray"}]

execute if score #TMP var matches 2 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Pickaxe Rush addon","color": "gray"}]
execute if score #TMP var matches -2 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Pickaxe Rush addon","color": "gray"}]

execute if score #TMP var matches 3 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Old (1.8) Combat addon","color": "gray"}]
execute if score #TMP var matches -3 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Old (1.8) Combat addon","color": "gray"}]

execute if score #TMP var matches 4 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Item souls addon","color": "gray"}]
execute if score #TMP var matches -4 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Item souls addon","color": "gray"}]

execute if score #TMP var matches 5 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Juggernaut mode addon","color": "gray"}]
execute if score #TMP var matches -5 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Juggernaut mode addon","color": "gray"}]

execute if score #TMP var matches 6 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" enabled Hot floor addon","color": "gray"}]
execute if score #TMP var matches -6 run tellraw @a[tag=!TMP] [{"text": "[Addons] ","color": "gold"},{"selector": "@s"},{"text":" disabled Hot floor addon","color": "gray"}]
tag @s remove TMP

execute if score #TMP var matches -6..6 run tellraw @s {"text": "Applying changes...", "color": "gray", "italic": true}
# Check if it's dev enviroment
execute if entity @a[tag=Dev] run function #game:addon/switch_dev


execute if score #TMP var matches 1 run datapack enable "file/double-res-addon.zip" before "file/shulker-rush.zip"
execute if score #TMP var matches -1 run datapack disable "file/double-res-addon.zip"

execute if score #TMP var matches 2 run datapack enable "file/pickaxe-rush-addon.zip" before "file/shulker-rush.zip"
execute if score #TMP var matches -2 run datapack disable "file/pickaxe-rush-addon.zip"

execute if score #TMP var matches 3 run datapack enable "file/old-combat-addon.zip" before "file/shulker-rush.zip"
execute if score #TMP var matches -3 run datapack disable "file/old-combat-addon.zip"

execute if score #TMP var matches 4 run datapack enable "file/item-souls-addon.zip" before "file/shulker-rush.zip"
execute if score #TMP var matches -4 run datapack disable "file/item-souls-addon.zip"

execute if score #TMP var matches 5 run datapack enable "file/juggernaut-addon.zip" last
execute if score #TMP var matches -5 run datapack disable "file/juggernaut-addon.zip"

execute if score #TMP var matches 6 run datapack enable "file/hot-floor-addon.zip" before "file/shulker-rush.zip"
execute if score #TMP var matches -6 run datapack disable "file/hot-floor-addon.zip"