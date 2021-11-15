# Swap inventories with a block
# As: Player At: Storage Block

say swapping

#player inventory.0 <> chest container.0
execute at @s run item replace entity @e[type=armor_stand,tag=test,limit=1,sort=nearest] weapon.mainhand from entity @e[type=chest_minecart,tag=test,limit=1,sort=nearest] container.0
execute at @s run item replace entity @e[type=chest_minecart,tag=test,limit=1,sort=nearest] container.0 from entity @s inventory.0
execute at @s run item replace entity @s inventory.0 from entity @e[type=armor_stand,tag=test,limit=1,sort=nearest] weapon.mainhand