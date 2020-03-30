execute if score #NoRuby settings matches 0 run scoreboard players remove @s rubyGen 1

# Double resources modification
execute if score #NoRuby settings matches 0 if score #DoubleResources settings matches 1 run scoreboard players remove @s rubyGen 1
# Summon ruby
execute if score @s rubyGen matches ..0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'{"text":"Рубин","color":"red","italic":false}'},HideFlags:127,CanDestroy:["#game:destroy"]}}}

# Debug mode
execute if score #Debug var matches 1 if score @s rubyGen matches ..0 run scoreboard players set @s rubyGen 10
execute if score @s rubyGen matches ..0 run scoreboard players set @s rubyGen 800