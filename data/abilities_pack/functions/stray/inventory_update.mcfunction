# Inventory Update
# As: Player

#Soul Speed Boots
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{trait:1b}}]}] run clear @s minecraft:leather_boots{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:5592405},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:soul_speed",lvl:1s}]} 1
