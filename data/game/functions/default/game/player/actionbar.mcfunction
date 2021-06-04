# Hook to this function to make dynamic actionbar
# You also need to enable "advanced_actionbar" before the game if you want more things to be displayed (Up to 14).
# Don't hardcode index of your "entries" in the list. It might break other addons.
# To add something to this list look for example in #controller:start and #game:language/id/0 (In short: *use list append*).
execute if entity @s[team=yellow] run data modify storage game:lang Player.Actionbar.Current set from storage game:lang Player.Actionbar.Yellow
execute if entity @s[team=blue] run data modify storage game:lang Player.Actionbar.Current set from storage game:lang Player.Actionbar.Blue
function #game:player/actionbar/update

execute if score #advanced_actionbar var matches 0 run title @s actionbar [{"storage": "game:lang","nbt": "Player.Actionbar.Current[0].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[1].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[2].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[3].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[4].text", "interpret": true}]
execute if score #advanced_actionbar var matches 1 run title @s actionbar [{"storage": "game:lang","nbt": "Player.Actionbar.Current[0].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[1].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[2].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[3].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[4].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[5].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[6].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[7].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[8].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[9].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[10].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[11].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[12].text", "interpret": true},{"storage": "game:lang","nbt": "Player.Actionbar.Current[13].text", "interpret": true}]