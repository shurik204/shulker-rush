clear @s minecraft:nether_wart 6
# give @s minecraft:bow{display:{Name:'{"text":"Super Bow","italic":false,"color":"white"}',Lore:['[{"translate":"enchantment.minecraft.punch","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.power","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,Enchantments:[{id:"minecraft:punch",lvl:1},{id:"minecraft:power",lvl:1}],Unbreakable:1b}
replaceitem block 998 162 1105 container.0 minecraft:bow{display:{Name:'{"text":"Super Bow","italic":false,"color":"white"}',Lore:['[{"translate":"enchantment.minecraft.punch","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.power","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,Enchantments:[{id:"minecraft:punch",lvl:1},{id:"minecraft:power",lvl:1}],Unbreakable:1b}
data modify block 998 162 1105 Items[0].tag.display.Name set from storage game:lang Item.SuperBow
loot give @s mine 998 162 1105 air{drop:1b}