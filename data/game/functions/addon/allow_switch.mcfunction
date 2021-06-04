# Why not? You can disable this if you really think I'll break your game. :)
execute unless score #NO_OWNERS settings matches 1 run tag bbde2f23-57d4-410d-857f-45d5ee5bd919 add addons_manager
scoreboard players reset @a[tag=!addons_manager] enable_addon
scoreboard players enable @a[tag=addons_manager] enable_addon
scoreboard players enable @a close_menu
scoreboard players enable @a addon_menu