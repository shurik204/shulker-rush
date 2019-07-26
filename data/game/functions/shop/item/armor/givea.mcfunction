replaceitem entity @s[tag=elytra] armor.chest minecraft:elytra{Unbreakable:1,display:{Name:'{"translate":"item.minecraft.elytra","color":"green","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}]}
replaceitem entity @s[scores={statArmor=1}] armor.feet minecraft

replaceitem entity @s[scores={statArmor=1},team=blue] slot.armor.feet leather_boots 1 0 {HideFlags:127,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],display:{Name:'{"translate":"item.minecraft.leather_boots","italic":false}'},Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=0,score_armorLvl=0] ~ ~ ~ replaceitem entity @a[score_statArmor_min=2,score_statArmor=2,team=blue] slot.armor.feet chainmail_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5.5,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aChainmail Armor"},HideFlags:5,Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=0,score_armorLvl=0] ~ ~ ~ replaceitem entity @a[score_statArmor_min=3,score_statArmor=3,team=blue] slot.armor.feet iron_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aIron Armor"},HideFlags:5,Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=1,score_armorLvl=1] ~ ~ ~ replaceitem entity @a[score_statArmor_min=2,score_statArmor=2,team=blue] slot.armor.feet chainmail_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5.5,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aChainmail Armor",Lore:['[{"translate":"enchantment.minecraft.protection","color":"gray","italic":false},{"text":" I","color":"gray","italic":false}]']},HideFlags:5,Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=1,score_armorLvl=1] ~ ~ ~ replaceitem entity @a[score_statArmor_min=3,score_statArmor=3,team=blue] slot.armor.feet iron_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aIron Armor",Lore:["§7Protection I"]},HideFlags:5,Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=1,score_armorLvl=1] ~ ~ ~ replaceitem entity @a[score_statArmor_min=4,score_statArmor=4,team=blue] slot.armor.feet diamond_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aDiamond Armor",Lore:["§7Protection I"]},HideFlags:5,Unbreakable:1}

execute @e[name=upgrade,tag=blue,score_armorLvl_min=3,score_armorLvl=3] ~ ~ ~ replaceitem entity @a[score_statArmor_min=4,score_statArmor=4,team=blue] slot.armor.feet diamond_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aDiamond Armor",Lore:["§7Protection III"]},HideFlags:5,Unbreakable:1}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=2,score_armorLvl=2] ~ ~ ~ replaceitem entity @a[score_statArmor_min=1,score_statArmor=1,team=blue] slot.armor.feet leather_boots 1 0 {HideFlags:127,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aLeather Armor",Lore:["§7Protection II"]}}
execute @e[name=upgrade,tag=blue,score_armorLvl_min=3,score_armorLvl=3] ~ ~ ~ replaceitem entity @a[score_statArmor_min=1,score_statArmor=1,team=blue] slot.armor.feet leather_boots 1 0 {HideFlags:127,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Slot:"feet",Operation:0,UUIDMost:1,UUIDLeast:1}],ench:[{id:10,lvl:1},{id:71,lvl:1}],display:{Name:"§aLeather Armor",Lore:["§7Protection III"]}}
