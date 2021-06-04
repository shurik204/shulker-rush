function #game:addon/allow_switch

execute as @a[scores={addon_menu=1..}] run function #game:addon/tellraw

execute as @a[scores={close_menu=1..}, tag=update_list] run function #game:addon/close_menu
execute as @a[predicate=game:addon/clicked_menu, tag=update_list] run function #game:addon/switch
scoreboard players reset @a[predicate=game:addon/clicked_menu] enable_addon