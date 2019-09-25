execute as @e[type=minecraft:falling_block] run data modify entity @s Time set value 1
scoreboard objectives add trigger trigger
scoreboard objectives add statCoins1 dummy
scoreboard objectives add statCoins2 dummy
scoreboard objectives add statCoins3 dummy
scoreboard objectives add statSouls dummy

scoreboard objectives add buyID dummy
scoreboard objectives add result dummy
scoreboard objectives add var dummy
scoreboard objectives add clearDetect dummy

scoreboard objectives add food food
scoreboard objectives add statArmor dummy
scoreboard objectives add swordLvl
scoreboard objectives add kill playerKillCount
scoreboard objectives add died deathCount
scoreboard objectives add deathTest deathCount
scoreboard objectives add killTest playerKillCount
scoreboard objectives add deathCount deathCount
scoreboard objectives add totalKill playerKillCount
scoreboard objectives add health dummy
scoreboard objectives add height dummy
scoreboard objectives add InGame dummy
scoreboard objectives add ironGen dummy
scoreboard objectives add goldGen dummy
scoreboard objectives add rubyGen dummy
scoreboard objectives add drinkPotion minecraft.used:minecraft.potion
scoreboard objectives add hurt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add Hurted minecraft.custom:minecraft.damage_taken

scoreboard objectives add placeGlassY minecraft.used:minecraft.yellow_stained_glass
scoreboard objectives add placeGlassB minecraft.used:minecraft.light_blue_stained_glass
scoreboard objectives add placeGlassR minecraft.used:minecraft.red_stained_glass
scoreboard objectives add placeCobweb minecraft.used:minecraft.cobweb
scoreboard objectives add placePlanks minecraft.used:minecraft.oak_planks
scoreboard objectives add placeEndStone minecraft.used:minecraft.end_stone
scoreboard objectives add placeObsidian minecraft.used:minecraft.obsidian

scoreboard objectives add armorLvl dummy
scoreboard objectives add swordLvl dummy
scoreboard objectives add forgeLvl dummy
scoreboard objectives add effectLvl dummy

team add blue {"text":"Blue","color":"aqua"}
team add yellow {"text":"Yellow","color":"yellow"}
team add player {"text":"Player","color":"gray"}

scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add openVillager minecraft.custom:minecraft.talked_to_villager
setworldspawn 997 181 1144
#Created by shurik204 | Teksar Team