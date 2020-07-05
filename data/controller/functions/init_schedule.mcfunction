# Remove from schedule lobby functions and start new ones
# I replace schedule of functions to make sure there are no duplicates
schedule clear #game:lobby/tick

# Shulker functions
schedule function #game:shulker/schedule 2t replace

# Generators
# Iron
schedule function #game:gen/yellow/iron_generator 2s replace
schedule function #game:gen/blue/iron_generator 2s replace
# Gold
schedule function #game:gen/yellow/gold_generator 2s replace
schedule function #game:gen/blue/gold_generator 2s replace
# Ruby
execute unless score #DropRubyOnStart settings matches 1 run schedule function #game:gen/ruby/schedule 45s replace
execute if score #DropRubyOnStart settings matches 1 run function #game:gen/ruby/schedule

# Game
# Trigger respawn function to give items
function #game:player/respawn/schedule
# And schedule other
schedule function #game:tick 1t replace
schedule function #game:player/schedule 1t replace
schedule function #game:filler/schedule 2t replace
execute unless score #Enabled Debug matches 1 run schedule function #controller:end_condition 1t replace
# Shop
schedule function #game:shop/schedule 1t replace

#Upgrader
schedule function #game:upgrader/schedule 3t replace
# New particles
schedule function #game:upgrader/particles 4t replace