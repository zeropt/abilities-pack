# Inventory Update
# As: Player

#Aqua Affinity Helmet
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:1481884},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]} 1

#Depth Strider Boots
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:1481884},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:3s}]} 1
