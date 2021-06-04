# This funciton is in beta, and may be completely changed in future versions
tellraw @s {"text":"\n\nDefault addons:","color":"gold"}

tag @s add update_list

scoreboard players reset @s addon_menu
scoreboard players reset * addon
# Update enabled addons list
function #game:addon/set_status

# Remove buttons if player don't have perms to switch status
execute if entity @s[tag=addons_manager] run data modify storage game:storage EnableButton set value '{"text": "[Enable]", "color": "green"}'
execute if entity @s[tag=addons_manager] run data modify storage game:storage DisableButton set value '{"text": "[Disable]", "color": "red"}'

execute if entity @s[tag=!addons_manager] run data modify storage game:storage EnableButton set value ''
execute if entity @s[tag=!addons_manager] run data modify storage game:storage DisableButton set value ''

# The variable name is made of shortened nickname and addon name
execute unless score #shurik_double_res addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Double resources ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 1"}}]
execute if score #shurik_double_res addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Double resources ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -1"}}]

execute unless score #shurik_pickaxe_rush addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Pickaxe Rush ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 2"}}]
execute if score #shurik_pickaxe_rush addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Pickaxe Rush ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -2"}}]

execute unless score #shurik_old_combat addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Old (1.8) Combat ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 3"}}]
execute if score #shurik_old_combat addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Old (1.8) Combat ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -3"}}]

execute unless score #shurik_item_souls addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Item souls ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 4"}}]
execute if score #shurik_item_souls addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Item souls ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -4"}}]

execute unless score #shurik_juggernaut addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Juggernaut mode ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 5"}}]
execute if score #shurik_juggernaut addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Juggernaut mode ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -5"}}]

execute unless score #shurik_hot_floor addon matches 1 run tellraw @s [{"text": "[❌]", "color": "red"},{"text": " Hot floor ", "color": "gray"},{"storage": "game:storage", "nbt": "EnableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set 6"}}]
execute if score #shurik_hot_floor addon matches 1 run tellraw @s [{"text": "[✔]", "color": "green"},{"text": " Hot floor ", "color": "gray"},{"storage": "game:storage", "nbt": "DisableButton", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger enable_addon set -6"}}]

execute if entity @s[tag=addons_manager] run tellraw @s [{"text":"     [Close]\n", "color": "red", "clickEvent": {"action": "run_command", "value": "/trigger close_menu set 1"}}]
execute if entity @s[tag=!addons_manager] run tellraw @s [{"text":"     [Close]", "color": "red", "clickEvent": {"action": "run_command", "value": "/trigger close_menu set 1"}},{"text":"     [Edit]\n", "color": "gold", "clickEvent": {"action": "run_command", "value": "/function #game:addon/get_admin"}, "hoverEvent": {"action": "show_text", "value": {"text":"OP players only"}}}]