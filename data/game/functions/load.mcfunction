######################
# Shulker objectives #
######################
scoreboard objectives add dealtDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add HurtTime dummy
scoreboard objectives add HP dummy

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
team modify player deathMessageVisibility  never

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

################
# Finishing up #
################
setworldspawn 997 181 1200
data modify block 1002 180 1156 Text4 set value '{"text":"Code version: 1.2"}'
# Created by shurik204 | Texar Team
# Code version 1.2