# Yellow shop marker
summon minecraft:area_effect_cloud 947.5 181.5 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Shop","yShop","game"]}
# Blue shop marker
summon minecraft:area_effect_cloud 1047.5 181.5 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Shop","bShop","game"]}

# Shop label yellow
summon minecraft:area_effect_cloud 948.5 181.2 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["ShopMarker","Tutorial","game"]}
# Shop label blue
summon minecraft:area_effect_cloud 1046.5 181.2 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["ShopMarker","Tutorial","game"]}
execute as @e[type=minecraft:area_effect_cloud,tag=ShopMarker] run data modify entity @s CustomName set from storage game:lang Entity.ShopMarker

# Yellow chest
summon minecraft:area_effect_cloud 949.5 179.5 1086.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Chest","game"]}
# Blue chest
summon minecraft:area_effect_cloud 1045.5 179.5 1086.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Chest","game"]}

# Lake ruby generator
summon minecraft:area_effect_cloud 997.5 176.0 1103.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Generator","RubyGen","game"]}
# Tree ruby generator
summon minecraft:area_effect_cloud 1004.5 198.0 1066.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Generator","RubyGen","game"]}

# Generator yellow
summon minecraft:area_effect_cloud 951.5 180.7 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["BaseGenerator","Generator","Tutorial","yIronGen","yGoldGen","game"]}
# Generator blue
summon minecraft:area_effect_cloud 1043.5 180.7 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["BaseGenerator","Generator","Tutorial","bIronGen","bGoldGen","game"]}
execute as @e[type=minecraft:area_effect_cloud,tag=BaseGenerator] run data modify entity @s CustomName set from storage game:lang Entity.BaseGenerator

# Uprgader yellow
summon minecraft:area_effect_cloud 962.5 179.0 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["Tutorial","Upgrader","game","yUpgrader"]}
# Upgrader blue
summon minecraft:area_effect_cloud 1032.5 179.0 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:"", CustomNameVisible:1b, Tags: ["Tutorial","Upgrader","game","bUpgrader"]}
execute as @e[type=minecraft:area_effect_cloud,tag=Upgrader] run data modify entity @s CustomName set from storage game:lang Entity.Upgrader

execute at @e[type=minecraft:area_effect_cloud,tag=Upgrader] run summon minecraft:armor_stand ~ ~-1.755 ~.25 {Tags:["decoration","Upgrader","game"],Pose:{Head:[-90.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b}],NoGravity:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2096896}

# :)
execute unless entity shurik204 at @e[type=minecraft:area_effect_cloud,tag=Upgrader] run summon minecraft:armor_stand ~ ~-2.855 ~ {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:netherite_block"},Time:2,NoGravity:1b,Tags:["decoration","Upgrader","game"]}],NoGravity:1b,Tags:["decoration","Upgrader","game"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896}
execute if entity shurik204 at @e[type=minecraft:area_effect_cloud,tag=Upgrader] run summon minecraft:armor_stand ~ ~-2.855 ~ {Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:polished_basalt"},Time:2,NoGravity:1b,Tags:["decoration","Upgrader","game"]}],NoGravity:1b,Tags:["decoration","Upgrader","game"],Invisible:1b,Invulnerable:1b,DisabledSlots:2096896}

# Spawnpoint yellow
summon minecraft:area_effect_cloud 948.5 179.5 1078.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Respawn","yRespawn","game"]}
# Spawnpoint blue
summon minecraft:area_effect_cloud 1046.5 179.5 1078.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Respawn","bRespawn","game"]}

summon minecraft:shulker 960 178 1092 {NoAI:1b,Color:4b,CustomNameVisible:0b,CustomName:"",Tags:["Bed","yBed","game"]}
summon minecraft:shulker 1034 178 1092 {NoAI:1b,Color:3b,CustomNameVisible:0b,CustomName:"",Tags:["Bed","bBed","game"]}

summon minecraft:area_effect_cloud 954.50 180.00 1085.50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base", "yBase", "game"]}
summon minecraft:area_effect_cloud 1040.50 180.00 1085.50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base", "bBase", "game"]}

execute as @e[type=shulker,tag=Bed] run scoreboard players operation @s HP = #MaxShulkerHealth settings
execute as @e[type=minecraft:shulker,tag=Bed] run function #game:shulker/update_name