playsound minecraft:entity.experience_orb.pickup master @a[scores={openVillager=1..}] ~ ~ ~ 10000 1

tellraw @a[x=991,y=180,z=1142,scores={openVillager=1..},r=6] {"text":"You have just joined the Yellow Team!","color":"yellow","bold":"true"}
team join yellow @a[x=991,y=180,z=1142,scores={openVillager=1..},r=6]
tellraw @a[x=1003,y=180,z=1142,scores={openVillager=1..},r=6] {"text":"You have just joined the Blue Team!","color":"dark_aqua","bold":"true"}
team join blue @a[x=1003,y=180,z=1142,scores={openVillager=1..},r=6]
scoreboard players set @a[scores={openVillager=1..}] openVillager 0