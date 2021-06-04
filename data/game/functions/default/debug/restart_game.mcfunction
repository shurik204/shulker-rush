tellraw @a "Restarting game..."
function #controller:end
scoreboard players set #Enabled Debug 1
execute as @a run function #game:lobby/join_random_team
function #game:start_condition