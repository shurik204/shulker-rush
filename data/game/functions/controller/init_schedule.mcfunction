# Remove from schedule lobby functions and start new ones
# I replace schedule of functions to make sure there are no duplicates

# Block drops
schedule function game:default/game/block_drops 1t replace

# Shulker functions
schedule function game:default/game/shulker/schedule 1t replace

# Generators
schedule function game:default/game/generator/iron/yellow 2s replace
schedule function game:default/game/generator/iron/blue 2s replace
schedule function game:default/game/generator/gold/yellow 2s replace
schedule function game:default/game/generator/gold/blue 2s replace
schedule function game:default/game/generator/ruby 40s replace

schedule function game:default/game/tick 1t replace
schedule function game:default/game/player/respawn/schedule 1t replace
schedule function game:default/game/player/schedule 1t replace