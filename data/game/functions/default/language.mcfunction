#define storage game:lang

# Russian translation

# Some functions already work with this translation, but some doesn't.
# With this system translation can be created using one file with translation strings.
# TODO: Finish "unified translation"

# Enable inventory item translation to translate custom item names (For example Ruby, Super Bow)
# (Does nothing now)
scoreboard players set #ItemTranslation var 1

# Countdown (Should actually be in controller I think)
data modify storage game:lang Countdown.Title set value '{"text":"Shulker Rush Classic","color":"light_purple"}'
data modify storage game:lang Countdown.Subtitle set value '{"text":"Начало игры через ","color":"yellow"}'
data modify storage game:lang Countdown.StartedSubtitle set value '{"text":"Игра началась!","color":"yellow"}'

# Entities
data modify storage game:lang Entity.ShopMarker set value '[{"text":"Магазин","color":"green"},{"text":" - ПКМ чтобы открыть","color":"gray"}]'
data modify storage game:lang Entity.BaseGenerator set value '{"text":"Генератор","color":"gold"}'
data modify storage game:lang Entity.Upgrader set value '[{"text":"Улучшения","color":"red"},{"text":" - ПКМ чтобы открыть","color":"gray"}]'

# Shulker
data modify storage game:lang Shulker.Health set value ['[{"text":"❤","color":"red"},{"text":"❤❤❤❤❤❤","color":"gray"}]', '[{"text":"❤❤","color":"red"},{"text":"❤❤❤❤❤","color":"gray"}]', '[{"text":"❤❤❤","color":"red"},{"text":"❤❤❤❤","color":"gray"}]', '[{"text":"❤❤❤❤","color":"red"},{"text":"❤❤❤","color":"gray"}]', '[{"text":"❤❤❤❤❤","color":"red"},{"text":"❤❤","color":"gray"}]', '[{"text":"❤❤❤❤❤❤","color":"red"},{"text":"❤","color":"gray"}]', '{"text":"❤❤❤❤❤❤❤","color":"red"}']
data modify storage game:lang Shulker.Destroyed.Your set value '{"text":"Твой Шалкер был уничтожен","color":"red"}'
data modify storage game:lang Shulker.Destroyed.Yellow set value '{"text":"Шалкер жёлтых уничтожен","color":"green"}'
data modify storage game:lang Shulker.Destroyed.Blue set value '{"text":"Шалкер синих уничтожен","color":"green"}'

# Win texts (Should actually be in controller too)
data modify storage game:lang Win.Yellow set value '{"text":"Жёлтые победили!","color":"yellow","bold":true}'
data modify storage game:lang Win.Blue set value '{"text":"Синие победили!","color":"aqua","bold":true}'

# Generic
data modify storage game:lang Welcome set value '[{"text":"\\nПриветствую на ","color":"gold"},{"text":"Shulker Rush Classic!","color":"gold","bold":true},{"text":"\\n\\nНажми ","color":"gray"},{"text":"[тут]","color":"gray","italic":true,"hoverEvent":{"action":"show_text","value":"Клик"},"clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1MQIcemSSnh1fgDQjf9-ZKyYbMC7HR4z-sgQxQzNYKzk/edit?usp=sharing"}},{"text":" чтобы ознакомиться с правилами \\nи информацией про обновления!\\n\\nP.S: Ещё там есть список аддонов для этой игры и как ими управлять.\\n","color":"gray"}]'
data modify storage game:lang JoinGame set value '[{"text":"Нажми ","color":"gray"},{"text":"[тут]","clickEvent":{"action":"run_command","value":"/trigger join set 180420"},"italic":true},{"text":" чтобы присоединится к игре","italic":false}]'
data modify storage game:lang GetSoul set value '{"text":"+1 [✦] Душа ","color":"aqua"}'
data modify storage game:lang GameAlreadyStarted set value '{"text":"Игра уже идёт, ты наблюдатель","color":"gray"}'

# Controller
data modify storage game:lang Controller.NotEnoughPlayers set value '{"text":"Недостаточно игроков для начала игры","color":"red"}'
data modify storage game:lang Controller.YellowEmpty set value '{"text":"В жёлтой команде никого нет","color":"red"}'
data modify storage game:lang Controller.BlueEmpty set value '{"text":"В синей команде никого нет","color":"red"}'
data modify storage game:lang Controller.NoTeam set value '{"text":"Некоторые игроки не выбрали команду","color":"red"}'

# Lobby
data modify storage game:lang Lobby.JoinMsg set value '{"text":"Shulker Rush Classic","color":"gold"}'

# Player
data modify storage game:lang Player.JoinedYellow set value '[{"text":"Ты присоединился к","color":"gray"},{"text":" Жёлтой ","color":"yellow"},{"text":"команде","color":"gray"}]'
data modify storage game:lang Player.JoinedBlue set value '[{"text":"Ты присоединился к","color":"gray"},{"text":" Синей ","color":"aqua"},{"text":"команде","color":"gray"}]'
data modify storage game:lang Player.KilledPlayer set value '[{"selector":"@a[scores={death=1..}]"},{"text":" был убит ","color":"gray"},{"selector":"@s"}]'
data modify storage game:lang Player.ShotPlayer set value '[{"selector":"@a[scores={death=1..}]"},{"text":" был застрелен ","color":"gray"},{"selector":"@s"}]'
data modify storage game:lang Player.VoidDeathByPlayer set value '[{"selector":"@a[tag=KilledByVoid,limit=1]"},{"text":" был сброшен в пустоту игроком ","color":"gray"},{"selector":"@s"}]'
data modify storage game:lang Player.VoidDeath set value '[{"selector":"@s"},{"text":" выпал из мира","color":"gray"}]'
data modify storage game:lang Player.Rejoined set value '{"text":"Ты перезашёл в игру","color":"gray"}'
data modify storage game:lang Player.UsedPotion set value '[{"selector":"@s"},{"text":" взорвался","color":"gold"}]'
data modify storage game:lang Player.Eleminated set value '[{"selector":"@s"},{"text":" выбыл из игры","color":"red"}]'

# Player actionbar
data modify storage game:lang Player.ActionBar.Yellow set value '[{"text":"[✦] Души: ","color":"dark_aqua","bold":false},{"score":{"name":"#Souls","objective":"yellow"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[⚔] Убийств: ","color":"green"},{"score":{"name":"@s","objective":"killCount"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[☠] Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"},"color":"yellow"}]'
data modify storage game:lang Player.ActionBar.Blue set value '[{"text":"[✦] Души: ","color":"dark_aqua","bold":false},{"score":{"name":"#Souls","objective":"blue"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[⚔] Убийств: ","color":"green"},{"score":{"name":"@s","objective":"killCount"},"color":"yellow"},{"text":" | ","color":"gray"},{"text":"[☠] Смертей: ","color":"red"},{"score":{"name":"@s","objective":"deathCount"},"color":"yellow"}]'

# Shop
data modify storage game:lang Shop.NotEnoughRes set value '{"text":"У тебя недостаточно ресурсов для покупки","color":"red"}'
data modify storage game:lang Shop.HaveThisArmor set value '{"text":"У тебя уже есть такая броня","color":"red"}'
data modify storage game:lang Shop.HaveBetterArmor set value '{"text":"У тебя уже есть броня лучше","color":"red"}'
data modify storage game:lang Shop.HaveElytra set value '{"text":"У тебя уже есть элитры","color":"red"}'

# Upgrader
data modify storage game:lang Upgrader.NotEnoughSouls set value '{"text":"У тебя недостаточно душ для покупки","color":"red"}'
data modify storage game:lang Upgrader.ShulkerFullHP set value '{"text":"Твой Шалкер уже имеет максимум здоровья","color":"red"}'
data modify storage game:lang Upgrader.NoShulker set value '{"text":"Твой Шалкер был уничтожен","color":"red"}'
data modify storage game:lang Upgrader.ShulkerPlusHP set value '{"storage": "game:lang", "nbt": "Upgrader.NotEnoughSouls", "interpret": true}'
data modify storage game:lang Upgrader.UpgradeMagicEffects set value '{"text":"Твоя команда улучшила магические эффекты","color":"green"}'
data modify storage game:lang Upgrader.UpgradeWeapons set value '{"text":"Твоя команда улучшила зачарования мечей","color":"green"}'
data modify storage game:lang Upgrader.UpgradeArmor set value '{"text":"Твоя команда улучшила зачарования брони","color":"green"}'
data modify storage game:lang Upgrader.UpgradeForge set value '{"text":"Твоя команда улучшила генератор ресурсов","color":"green"}'

# Custom items' names
data modify storage game:lang Res.Ruby set value '{"text":"Рубин","color":"red","italic":false}'
data modify storage game:lang Item.SuperBow set value '{"text":"Супер Лук","italic":false,"color":"white"}'
data modify storage game:lang Item.ExplosivePotion set value '{"text":"Взрывное Зелье","italic":false}'