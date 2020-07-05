function #game:shop/armor
# Wooden pickaxe
give @s[tag=!eleminated] minecraft:wooden_pickaxe{display:{Name:'{"translate":"item.minecraft.wooden_pickaxe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1b,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}]}
give @s[scores={HasAxe=1..}] minecraft:golden_axe{display:{Name:'{"translate":"item.minecraft.golden_axe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1b,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName: "minecraft:generic.attack_speed", Name: "minecraft:generic.attack_speed", Amount: -3.2d, Operation: 0, UUID: [I; 0, 98543, 0, 185055]},{AttributeName: "minecraft:generic.attack_damage", Name: "minecraft:generic.attack_damage", Amount: 1.6d, Operation: 0, UUID: [I; 0, 94858, 0, 101637]}]}
effect give @s minecraft:strength 2 0 true
effect give @s minecraft:resistance 2 1 true
execute at @e[type=minecraft:area_effect_cloud,tag=Respawn] run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #game:destroy
tag @s remove regiveAll