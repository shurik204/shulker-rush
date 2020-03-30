function game:default/game/shop/custom/armor/armor
# Wooden pickaxe
give @s[tag=!eleminated] minecraft:wooden_pickaxe{display:{Name:'{"translate":"item.minecraft.wooden_pickaxe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1b,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
give @s[scores={HasAxe=1..}] minecraft:golden_axe{display:{Name:'{"translate":"item.minecraft.golden_axe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1b,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.2,Operation:0,UUIDMost:98543L,UUIDLeast:185055L},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:1.6,Operation:0,UUIDMost:94858L,UUIDLeast:101637L}]}
effect give @s minecraft:strength 2 0 true
effect give @s minecraft:resistance 2 1 true
tag @s remove regiveAll