effect give @s speed 1 0 true
effect give @s blindness 2 0 true
execute at @s[team=blue] run effect give @a[team=yellow,distance=..8,gamemode=adventure] minecraft:glowing 1 0 true
execute at @s[team=yellow] run effect give @a[team=blue,distance=..8,gamemode=adventure] minecraft:glowing 1 0 true