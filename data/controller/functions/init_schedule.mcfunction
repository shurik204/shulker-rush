# Remove from schedule lobby functions and start new ones
# I replace schedule of functions to make sure there are no duplicates
schedule clear #game:lobby/tick
# Block drops
schedule function #game:block_drops_schedule 5t replace

# Shulker functions
schedule function #game:shulker/schedule 2t replace

# Generators
schedule function #game:gen/yellow/iron_generator 2s replace
schedule function #game:gen/blue/iron_generator 2s replace
schedule function #game:gen/yellow/gold_generator 2s replace
schedule function #game:gen/blue/gold_generator 2s replace
schedule function #game:gen/ruby_generator 45s replace

# Game
schedule function #game:tick 1t replace
function #game:player/respawn/schedule
schedule function #game:player/schedule 1t replace
schedule function #game:filler/schedule 2t replace
execute unless score #Enabled Debug matches 1 run schedule function #controller:end_condition 1t replace

# Shop
schedule function #game:shop/schedule 1t

#Upgrader
schedule function #game:upgrader/schedule 3t