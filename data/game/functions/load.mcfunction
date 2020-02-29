#define storage minecraft:shop "Shop storage"
#define storage minecraft:upgrader "Upgrader storage"

######################
# Shulker objectives #
######################
scoreboard objectives add dealtDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add HurtTime dummy
scoreboard objectives add HP dummy
execute unless score #Max HP matches 1.. run scoreboard players set #Max HP 7

################
# Create teams #
################
team add yellow {"text":"Yellow","color":"yellow"}
team add blue {"text":"Blue","color":"aqua"}
team modify yellow collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify yellow color yellow
team modify blue color aqua
team modify yellow friendlyFire false
team modify blue friendlyFire false
team modify yellow nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify yellow seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true

team add player {"text":"Spectators","color":"gray"}
team modify player color gray
team modify player nametagVisibility always
team modify player collisionRule never
team modify player friendlyFire false


#####################
# Create objectives #
#####################
scoreboard objectives add var dummy
# If something goes wrong with score reset to state "Lobby"
execute unless score #State var matches 0.. run scoreboard players set #State var 0

# Game scores
scoreboard objectives add settings dummy
scoreboard objectives add yellow dummy
scoreboard objectives add blue dummy

scoreboard objectives add height dummy
scoreboard objectives add death deathCount
scoreboard objectives add kill playerKillCount
scoreboard objectives add killCount playerKillCount
scoreboard objectives add deathCount deathCount
scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add GameID dummy
# Reset GameID if it has wrong value
execute unless score #Current GameID matches 1.. run scoreboard players set #Current GameID 1

scoreboard objectives add placeGlassY minecraft.used:minecraft.yellow_stained_glass
scoreboard objectives add placeGlassB minecraft.used:minecraft.light_blue_stained_glass
scoreboard objectives add placeGlassR minecraft.used:minecraft.red_stained_glass
scoreboard objectives add placeCobweb minecraft.used:minecraft.cobweb
scoreboard objectives add placePlanks minecraft.used:minecraft.oak_planks
scoreboard objectives add placeEndStone minecraft.used:minecraft.end_stone
scoreboard objectives add placeObsidian minecraft.used:minecraft.obsidian

scoreboard objectives add ArmorType dummy
scoreboard objectives add swordLvl dummy
scoreboard objectives add armorLvl dummy
scoreboard objectives add food food
# Shop
scoreboard objectives add result dummy
scoreboard objectives add clearDetect dummy
scoreboard objectives add buyID dummy

scoreboard objectives add statCoins1 dummy
scoreboard objectives add statCoins2 dummy
scoreboard objectives add statCoins3 dummy

#Uprgader
# Full scores' names are "Uprgader buyID" and "Upgrader clearDetect"
scoreboard objectives add UbuyID dummy
scoreboard objectives add UclearDetect dummy
scoreboard objectives add Uresult dummy
scoreboard objectives add WeaponLVL dummy

scoreboard objectives add Timer dummy

################
# Finishing up #
################

setworldspawn 997 181 1200
data modify block 1002 180 1156 Text1 set value '{"text":"Map version: 1.2"}'
data modify block 1002 180 1156 Text3 set value '{"text":"Undefined"}'
data modify block 1002 180 1156 Text4 set value '{"text":"Code ver: 1.2.1"}'

# Created by shurik204 | Texar Team
# Code version 1.2