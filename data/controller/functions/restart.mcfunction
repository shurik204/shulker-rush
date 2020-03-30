tag @a[team=yellow] add yellow
tag @a[team=blue] add blue

function #game:controller_end

team join yellow @a[tag=yellow]
team join blue @a[tag=blue]

execute if score #Debug var matches 1 run tellraw @a "[Game] Restarting in 2 sec..."

tag @a remove yellow
tag @a remove blue

schedule function #game:controller_start 2s