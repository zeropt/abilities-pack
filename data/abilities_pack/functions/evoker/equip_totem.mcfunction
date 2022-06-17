# Equip evoker totem
# As: Tagged Player

execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{trait:1b}}]}] run clear @s totem_of_undying{trait:1b}
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with totem_of_undying{trait:1b,Enchantments:[{}]} 1
