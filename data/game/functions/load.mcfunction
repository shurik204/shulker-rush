#define storage minecraft:shop "Shop storage"
#define storage minecraft:upgrader "Upgrader storage"

######################
# Shulker objectives #
######################
scoreboard objectives add HurtTime dummy
scoreboard objectives add HP dummy

################
# Create teams #
################
team add blue {"text":"Blue","color":"aqua"}
team modify blue collisionRule pushOwnTeam
team modify blue deathMessageVisibility never
team modify blue color aqua
team modify blue friendlyFire false
team modify blue nametagVisibility hideForOtherTeams
team modify blue seeFriendlyInvisibles true

team add yellow {"text":"Yellow","color":"yellow"}
team modify yellow collisionRule pushOwnTeam
team modify yellow deathMessageVisibility never
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow nametagVisibility hideForOtherTeams
team modify yellow seeFriendlyInvisibles true

team add player {"text":"Spectators","color":"gray"}
team modify player nametagVisibility always
team modify player deathMessageVisibility never
team modify player color gray
team modify player collisionRule never
team modify player friendlyFire false


#####################
# Create objectives #
#####################
scoreboard objectives add var dummy
# If something goes wrong with score reset to state "Lobby"
# execute unless score #State var matches 0.. run scoreboard players set #State var 0

scoreboard objectives add openVillager minecraft.custom:minecraft.talked_to_villager

# Game scores
scoreboard objectives add settings dummy
scoreboard objectives add yellow dummy
scoreboard objectives add blue dummy
scoreboard objectives add player dummy
scoreboard objectives add join trigger

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

scoreboard objectives add summon_marker dummy

scoreboard objectives add ArmorType dummy
scoreboard objectives add swordLvl dummy
scoreboard objectives add armorLvl dummy
scoreboard objectives add food food
scoreboard objectives add HasAxe dummy
scoreboard objectives add drinkPotion minecraft.used:minecraft.potion
scoreboard objectives add LastDeath minecraft.custom:minecraft.time_since_rest
# Shop
scoreboard objectives add result dummy
scoreboard objectives add clearDetect dummy
scoreboard objectives add buyID dummy

scoreboard objectives add statCoins1 dummy
scoreboard objectives add statCoins2 dummy
scoreboard objectives add statCoins3 dummy

#Uprgader
# Full scores' names are "Upgrader buyID" and "Upgrader clearDetect"
scoreboard objectives add UbuyID dummy
scoreboard objectives add UclearDetect dummy
scoreboard objectives add Uresult dummy
scoreboard objectives add WeaponLVL dummy

scoreboard objectives add Timer dummy

# Addon support
scoreboard objectives add addon dummy
## Menu controls
scoreboard objectives add enable_addon trigger
scoreboard objectives add close_menu trigger
scoreboard objectives add addon_menu trigger

# Settings menu
scoreboard objectives add menu trigger
scoreboard objectives add menu_page dummy

# Debug variables
scoreboard objectives add Debug dummy

################
# Finishing up #
################

setworldspawn 997 181 1200

data modify storage minecraft:info MinecraftVersion set value "1.16"
execute unless entity @a run say Shulker Rush Classic version 1.4 loaded!
tellraw @a[tag=Dev] "[Game] Reload complete"
execute as @a[tag=update_list] run function #game:addon/tellraw

scoreboard players set #ShulkerRushClassic var 1164040
scoreboard players set #CodeVariant var 2
# 1163 - mc version 1.16.3
# 032 - map version 1.3.2
# CodeVariant - this variable will increase in case of some breaking changes

#Final changes to map 1.2 version
worldborder center 995 1085
worldborder set 400 0
worldborder warning distance 0
worldborder warning time 0

function #game:on_load