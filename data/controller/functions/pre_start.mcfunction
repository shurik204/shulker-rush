fill 985 192 1085 991 188 1079 barrier outline
fill 1003 192 1085 1009 188 1079 barrier outline
tp @a[team=yellow] 988.5 190 1082
tp @a[team=blue] 1006.5 190 1082
tag @a[team=!player] add NeedInit
scoreboard players set #Countdown var 5
schedule function #game:controller_countdown 2t