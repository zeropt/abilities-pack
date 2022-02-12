# Inventory Update
# As: Player

#Permanent armor
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bat Tunic"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
#execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Bat Pants"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Bat Boots"}',color:0},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
