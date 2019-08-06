scoreboard objectives add statCoins1 dummy
scoreboard objectives add statCoins2 dummy
scoreboard objectives add statCoins3 dummy

scoreboard objectives add buyID dummy
scoreboard objectives add result dummy

scoreboard objectives add statArmor dummy
scoreboard objectives add swordLvl
scoreboard objectives add kill playerKillCount
scoreboard objectives add died deathCount
scoreboard objectives add deathCount deathCount
scoreboard objectives add totalKill playerKillCount
scoreboard objectives add health dummy
scoreboard objectives add height dummy
scoreboard objectives add InGame dummy
scoreboard objectives add ironGen dummy
scoreboard objectives add goldGen dummy

scoreboard objectives add armorLvl dummy
scoreboard objectives add swordLvl dummy
scoreboard objectives add forgeLvl dummy
scoreboard objectives add effectLvl dummy


team add blue {"text":"Blue","color":"aqua"}
team add yellow {"text":"Yellow","color":"aqua"}

scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game
setworldspawn 997 180 1144
scoreboard objectives setdisplay sidebar height