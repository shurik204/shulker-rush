# Working
execute if score @s mod matches 1 run tellraw @a "Двойные ресурсы включены"
execute if score @s mod matches -1 run tellraw @a "Двойные ресурсы выключены"
execute if score @s mod matches 1 run scoreboard players set #DoubleResources settigns 1
execute if score @s mod matches -1 run scoreboard players set #DoubleResources settigns 0

# Working
execute if score @s mod matches 2 run tellraw @a "Спавн железа включён"
execute if score @s mod matches -2 run tellraw @a "Спавн железа выключен"
execute if score @s mod matches 2 run scoreboard players set #NoIron settigns 1
execute if score @s mod matches -2 run scoreboard players set #NoIron settigns 0

# Working
execute if score @s mod matches 3 run tellraw @a "Спавн золота включён"
execute if score @s mod matches -3 run tellraw @a "Спавн золота выключен"
execute if score @s mod matches 3 run scoreboard players set #NoGold settigns 1
execute if score @s mod matches -3 run scoreboard players set #NoGold settigns 0
# Working
execute if score @s mod matches 4 run tellraw @a "Спавн рубинов включён"
execute if score @s mod matches -4 run tellraw @a "Спавн рубинов выключен"
execute if score @s mod matches 4 run scoreboard players set #NoRuby settigns 1
execute if score @s mod matches -4 run scoreboard players set #NoRuby settigns 0
# Working
execute if score @s mod matches 5 run tellraw @a "Элитры включены"
execute if score @s mod matches -5 run tellraw @a "Элитры выключены"
execute if score @s mod matches 5 run scoreboard players set #NoElytra settigns 1
execute if score @s mod matches -5 run scoreboard players set #NoElytra settigns 0
# Working
execute if score @s mod matches 6 run tellraw @a "Фейерверки включены"
execute if score @s mod matches -6 run tellraw @a "Фейерверки выключены"
execute if score @s mod matches 6 run scoreboard players set #NoFireworks settigns 1
execute if score @s mod matches -6 run scoreboard players set #NoFireworks settigns 0
# Working
execute if score @s mod matches 7 run tellraw @a "Эндер пёрлы включены"
execute if score @s mod matches -7 run tellraw @a "Эндер пёрлы выключены"
execute if score @s mod matches 7 run scoreboard players set #NoPearl settigns 1
execute if score @s mod matches -7 run scoreboard players set #NoPearl settigns 0
# Working
execute if score @s mod matches 8 run tellraw @a "Удочка включена"
execute if score @s mod matches -8 run tellraw @a "Удочка выключена"
execute if score @s mod matches 8 run scoreboard players set #NoFishRod settigns 1
execute if score @s mod matches -8 run scoreboard players set #NoFishRod settigns 0
# Working
execute if score @s mod matches 9 run tellraw @a "Топор и доски включены"
execute if score @s mod matches -9 run tellraw @a "Топор и доски выключены"
execute if score @s mod matches 9 run scoreboard players set #NoPlanksAndAxe settigns 1
execute if score @s mod matches -9 run scoreboard players set #NoPlanksAndAxe settigns 0
# Wokring?
execute if score @s mod matches 10 run tellraw @a "Сундуки включены"
execute if score @s mod matches -10 run tellraw @a "Сундуки выключены"
execute if score @s mod matches 10 run scoreboard players set #NoChest settigns 1
execute if score @s mod matches -10 run scoreboard players set #NoChest settigns 0
# Working
execute if score @s mod matches 11 run tellraw @a "Луки и стрелы включены"
execute if score @s mod matches -11 run tellraw @a "Луки и стрелы выключены"
execute if score @s mod matches 11 run scoreboard players set #NoBows settigns 1
execute if score @s mod matches -11 run scoreboard players set #NoBows settigns 0
# Working
execute if score @s mod matches 12 run tellraw @a "Покупка брони включена"
execute if score @s mod matches -12 run tellraw @a "Покупка брони выключена"
execute if score @s mod matches 12 run scoreboard players set #NoArmor settigns 1
execute if score @s mod matches -12 run scoreboard players set #NoArmor settigns 0
# Working
execute if score @s mod matches 13 run tellraw @a "Включён режим <<Только стекло>>"
execute if score @s mod matches -13 run tellraw @a "Выключен режим <<Только стекло>>"
execute if score @s mod matches 13 run scoreboard players set #OnlyGlass settigns 1
execute if score @s mod matches 13 run scoreboard players set #NoGlass settings 0
execute if score @s mod matches -13 run scoreboard players set #OnlyGlass settigns 0
# Working
execute if score @s mod matches 14 run tellraw @a "Стекло включено"
execute if score @s mod matches -14 run tellraw @a "Стекло выключено"
execute if score @s mod matches 14 run scoreboard players set #NoGlass settigns 1
execute if score @s mod matches 14 run scoreboard players set #OnlyGlass settings 0
execute if score @s mod matches -14 run scoreboard players set #NoGlass settigns 0
# Working
execute if score @s mod matches 15 run tellraw @a "Тип отображения HP Шалкера: символьный"
execute if score @s mod matches -15 run tellraw @a "Тип отображения HP Шалкера: числовой"
execute if score @s mod matches 15 run scoreboard players set #NumHealth settigns 1
execute if score @s mod matches -15 run scoreboard players set #NumHealth settigns 0

execute if score @s mod matches 16 run tellraw @a "Таймер перед стартом: 5 сек"
execute if score @s mod matches -16 run tellraw @a "Таймер перед стартом: 10 сек"
execute if score @s mod matches 16 run scoreboard players set #FastStart settigns 1
execute if score @s mod matches -16 run scoreboard players set #FastStart settigns 0

execute if score @s mod matches 17 run tellraw @a "Урон от падения включён"
execute if score @s mod matches -17 run tellraw @a "Урон от падения выключен"
execute if score @s mod matches 17 run scoreboard players set #FallDamage settigns 1
execute if score @s mod matches -17 run scoreboard players set #FallDamage settigns 0

execute if score @s mod matches 18 run tellraw @a "Включён режим <<Глубокая ночь>>"
execute if score @s mod matches -18 run tellraw @a "Выключен режим <<Глубокая ночь>>"
execute if score @s mod matches 18 run scoreboard players set #DarkNight settigns 1
execute if score @s mod matches -18 run scoreboard players set #DarkNight settigns 0

execute if score @s mod matches 19 run tellraw @a "Выпадение красного стекла включено"
execute if score @s mod matches -19 run tellraw @a "Выпадение красного стекла выключено"
execute if score @s mod matches 19 run scoreboard players set #NoRedGlass settigns 1
execute if score @s mod matches -19 run scoreboard players set #NoRedGlass settigns 0

scoreboard players set @s mod 0