# Evoker Loop
# As: Tagged Player

#effects
effect give @s speed 1 0 true
effect give @s weakness 1 0 true

#Permanent Leather Armor
#execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Evoker Robe"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Evoker Pants"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#activate
execute if score @s activate matches 1 unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_fangs/line_spell
execute if score @s activate matches 1 if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_fangs/ring_spell

#reactivate
execute if score @s activate_cd matches 0 run tag @s add active