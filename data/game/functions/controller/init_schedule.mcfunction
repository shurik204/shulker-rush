# Remove from schedule lobby functions and start new ones
# I replace schedule of functions to make sure there are no duplicates
schedule clear #game:lobby_tick
# Block drops
schedule function #game:block_drops_schedule 5t replace

# Shulker functions
schedule function #game:shulker_schedule 2t replace

# Generators
schedule function #game:yellow_iron_generator 2s replace
schedule function #game:blue_iron_generator 2s replace
schedule function #game:yellow_gold_generator 2s replace
schedule function #game:blue_gold_generator 2s replace
schedule function #game:ruby_generator 45s replace

# Game
schedule function #game:tick 1t replace
function #game:respawn_schedule
schedule function #game:player_schedule 1t replace
schedule function #game:filler_schedule 2t replace
execute unless score #Debug var matches 1 run schedule function #game:controller_end_condition 1t replace

# Shop
schedule function #game:shop_schedule 1t

#Upgrader
schedule function #game:upgrader_schedule 3t