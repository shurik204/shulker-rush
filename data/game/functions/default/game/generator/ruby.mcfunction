execute at @e[type=area_effect_cloud,tag=RubyGen] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b,tag:{CanDestroy:["#game:destroy"],display:{Name:'{"text":"Рубин","color":"red","italic":false}'},HideFlags:127}}}
execute if score #Debug var matches 1 run schedule function #game:ruby_generator 1s
schedule function #game:ruby_generator 40s