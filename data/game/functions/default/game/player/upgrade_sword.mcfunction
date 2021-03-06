scoreboard players operation @s[team=yellow] WeaponLVL = #Weapon yellow
scoreboard players operation @s[team=blue] WeaponLVL = #Weapon blue

execute store result score @s[scores={WeaponLVL=1..}] result run clear @s minecraft:wooden_sword{S:0} 1
give @s[scores={WeaponLVL=1..,result=1..}] wooden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.wooden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:1}],S:1}


execute store result score @s[scores={WeaponLVL=2..}] result run clear @s minecraft:wooden_sword{S:1} 1
give @s[scores={WeaponLVL=2..,result=1..}] wooden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.wooden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" II","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:2}],S:2}


execute store result score @s[scores={WeaponLVL=3..}] result run clear @s minecraft:wooden_sword{S:2} 1
give @s[scores={WeaponLVL=3..,result=1..}] wooden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.wooden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" III","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:3}],S:3}


execute store result score @s[scores={WeaponLVL=1..}] result run clear @s minecraft:stone_sword{S:0} 1
give @s[scores={WeaponLVL=1..,result=1..}] stone_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.stone_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:1}],S:1}


execute store result score @s[scores={WeaponLVL=2..}] result run clear @s minecraft:stone_sword{S:1} 1
give @s[scores={WeaponLVL=2..,result=1..}] stone_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.stone_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" II","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:2}],S:2}


execute store result score @s[scores={WeaponLVL=3..}] result run clear @s minecraft:stone_sword{S:2} 1
give @s[scores={WeaponLVL=3..,result=1..}] stone_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.stone_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" III","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:3}],S:3}


execute store result score @s[scores={WeaponLVL=1..}] result run clear @s minecraft:iron_sword{S:0} 1
give @s[scores={WeaponLVL=1..,result=1..}] iron_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.iron_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:1}],S:1}


execute store result score @s[scores={WeaponLVL=2..}] result run clear @s minecraft:iron_sword{S:1} 1
give @s[scores={WeaponLVL=2..,result=1..}] iron_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.iron_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" II","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:2}],S:2}


execute store result score @s[scores={WeaponLVL=3..}] result run clear @s minecraft:iron_sword{S:2} 1
give @s[scores={WeaponLVL=3..,result=1..}] iron_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.iron_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" III","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:sharpness",lvl:3}],S:3}


execute store result score @s[scores={WeaponLVL=1..}] result run clear @s minecraft:golden_sword{S:0} 1
give @s[scores={WeaponLVL=1..,result=1..}] golden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:1}],S:1}


execute store result score @s[scores={WeaponLVL=2..}] result run clear @s minecraft:golden_sword{S:1} 1
give @s[scores={WeaponLVL=2..,result=1..}] golden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" II","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:2}],S:2}


execute store result score @s[scores={WeaponLVL=3..}] result run clear @s minecraft:golden_sword{S:2} 1
give @s[scores={WeaponLVL=3..,result=1..}] golden_sword{Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.golden_sword","color":"white","italic":false}',Lore:['[{"translate":"enchantment.minecraft.knockback","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]','[{"translate":"enchantment.minecraft.sharpness","color":"gray","italic":false},{"text":" III","color":"gray","italic":false}]']},HideFlags:127,CanDestroy:["#game:destroy"],Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:3}],S:3}