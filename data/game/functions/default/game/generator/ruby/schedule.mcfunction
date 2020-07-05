execute as @e[type=area_effect_cloud,tag=RubyGen] at @s run function #game:gen/ruby/summon
# Reset item motion
execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:nether_wart"}}] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

schedule function #game:gen/ruby/schedule 40s
execute if score #Enabled Debug matches 1 run schedule function #game:gen/ruby/schedule 1s replace