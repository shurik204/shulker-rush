scoreboard players set @s menu_page 1

tellraw @s [{"text": "Main page:", "color": "gold"},"\n"]
tellraw @s [{"text": "[Language]", "color": "gray", "clickEvent": {"action": "run_command", "value": "/trigger menu_action set 1"}},"\n",{"text": "[Addons]", "color": "gray", "clickEvent": {"action": "run_command", "value": "/trigger menu_action set 2"}},"\n",{"text": "[Settings]", "color": "gray", "clickEvent": {"action": "run_command", "value": "/trigger menu_action set 3"}},"\n"]