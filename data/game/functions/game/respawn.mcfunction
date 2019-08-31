execute as @s[tag=!eleminated] run function game:shop/item/armor/givea
give @s[tag=!eleminated] minecraft:wooden_pickaxe{display:{Name:'{"translate":"item.minecraft.wooden_pickaxe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}]}
give @s[tag=HasAxe,tag=!eleminated] minecraft:golden_axe{display:{Name:'{"translate":"item.minecraft.golden_axe","color":"white","italic":false}'},HideFlags:127,Unbreakable:1,CanDestroy:["oak_planks","#game:stained_glass","obsidian","end_stone","cobweb"],Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}]}
scoreboard players set @s died 0
tag @s remove regiveAll
