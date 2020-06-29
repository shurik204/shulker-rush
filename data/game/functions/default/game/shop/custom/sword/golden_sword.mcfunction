execute if entity @s[team=yellow] run scoreboard players operation @s swordLvl = #Weapon yellow
execute if entity @s[team=blue] run scoreboard players operation @s swordLvl = #Weapon blue
give @s[scores={swordLvl=0}] golden_sword{AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-0.6,Operation:1,UUIDLeast:894654L,UUIDMost:2872L},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.0d,Operation:0,UUIDLeast:894654L,UUIDMost:2872L}],Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1}],S:0}
give @s[scores={swordLvl=1}] golden_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage", Name:"generic.attackDamage",Amount:6.0d,Operation:0,UUIDLeast:894654L,UUIDMost:2872L}],Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:1}],S:1}
give @s[scores={swordLvl=2}] golden_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage", Name:"generic.attackDamage",Amount:6.0d,Operation:0,UUIDLeast:894654L,UUIDMost:2872L}],Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[    {"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" II","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:2}],S:2}
give @s[scores={swordLvl=3}] golden_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage", Name:"generic.attackDamage",Amount:6.0d,Operation:0,UUIDLeast:894654L,UUIDMost:2872L}],Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" III","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:3}],S:3}