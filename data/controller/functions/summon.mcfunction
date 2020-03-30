# Yellow shop marker
summon minecraft:area_effect_cloud 947.5 181.5 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Shop","yShop","game"]}
# Blue shop marker
summon minecraft:area_effect_cloud 1047.5 181.5 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Shop","bShop","game"]}

# Shop label yellow
summon minecraft:area_effect_cloud 948.5 181.2 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'[{"text":"Магазин","color":"green"},{"text":" - ПКМ чтобы открыть","color":"gray"}]', CustomNameVisible:1b, Tags: ["Tutorial","game"]}
# Shop label blue
summon minecraft:area_effect_cloud 1046.5 181.2 1088.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'[{"text":"Магазин","color":"green"},{"text":" - ПКМ чтобы открыть","color":"gray"}]', CustomNameVisible:1b, Tags: ["Tutorial","game"]}

# Yellow chest
summon minecraft:area_effect_cloud 949.5 179.5 1086.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Chest","game"]}
# Blue chest
summon minecraft:area_effect_cloud 1045.5 179.5 1086.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Chest","game"]}

# Lake ruby generator
summon minecraft:area_effect_cloud 997.5 176.0 1103.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["RubyGen","game"]}
# Tree ruby generator
summon minecraft:area_effect_cloud 1004.5 198.0 1066.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["RubyGen","game"]}

# Generator yellow
summon minecraft:area_effect_cloud 951.5 180.7 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'{"text":"Генератор","color":"gold"}', CustomNameVisible:1b, Tags: ["Tutorial","game","yIronGen","yGoldGen"]}
# Generator blue
summon minecraft:area_effect_cloud 1043.5 180.7 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'{"text":"Генератор","color":"gold"}', CustomNameVisible:1b, Tags: ["Tutorial","game","bIronGen","bGoldGen"]}

# Uprgader yellow
summon minecraft:area_effect_cloud 962.5 179.0 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'[{"text":"Улучшения","color":"red"},{"text":" - ПКМ чтобы открыть","color":"gray"}]', CustomNameVisible:1b, Tags: ["Tutorial","Upgrader","game","yUpgrader"]}
# Upgrader blue
summon minecraft:area_effect_cloud 1032.5 179.0 1083.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, CustomName:'[{"text":"Улучшения","color":"red"},{"text":" - ПКМ чтобы открыть","color":"gray"}]', CustomNameVisible:1b, Tags: ["Tutorial","Upgrader","game","bUpgrader"]}

# Spawnpoint yellow
summon minecraft:area_effect_cloud 948.5 179.5 1078.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Respawn","yRespawn","game"]}
# Spawnpoint blue
summon minecraft:area_effect_cloud 1046.5 179.5 1078.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Respawn","bRespawn","game"]}

summon minecraft:shulker 960 178 1092 {NoAI:1b,Color:4b,CustomNameVisible:0b,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}',Tags:["yBed","game"]}
summon minecraft:shulker 1034 178 1092 {NoAI:1b,Color:9b,CustomNameVisible:0b,CustomName:'{"text":"❤❤❤❤❤❤❤","color":"red"}',Tags:["bBed","game"]}
scoreboard players set @e[type=shulker,tag=game] HP 7