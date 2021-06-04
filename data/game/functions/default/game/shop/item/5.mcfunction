clear @s minecraft:nether_wart 3

data modify block 998 162 1105 Items append value {Slot:0b,id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Explosive Potion","italic":false}'},Potion:"minecraft:strength",HideFlags:127,CanDestroy:["#game:destroy"]}}
data modify block 998 162 1105 Items[0].tag.display.Name set from storage game:lang Item.ExplosivePotion.Name
loot give @s mine 998 162 1105 air{drop:1b}