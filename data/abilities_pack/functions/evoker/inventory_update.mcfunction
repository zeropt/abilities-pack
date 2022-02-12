# Inventory Update
# As: Player

#totem of undying
execute as @s[tag=totemed] run function abilities_pack:evoker/equip_totem

#Permanent Leather Armor
#execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Evoker Robe"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
#execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Evoker Pants"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
