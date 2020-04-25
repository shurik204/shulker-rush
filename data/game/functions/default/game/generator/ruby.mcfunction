execute at @e[type=area_effect_cloud,tag=RubyGen] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b,tag:{CanDestroy:["#game:destroy"],display:{Name:'{"text":"Рубин","color":"red","italic":false}'},HideFlags:127}}}

schedule function #game:gen/ruby_generator 40s
execute if score #Debug var matches 1 run schedule function #game:gen/ruby_generator 1s replace