# Evoker Loop
# As: Tagged Player

#effects
execute if predicate abilities_pack:is_sprinting effect give @s speed 1 1 true
execute unless predicate abilities_pack:is_sprinting effect remove speed
effect give @s weakness 1 0 true

#Permanent Leather Armor
#execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Evoker Robe"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Evoker Pants"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#activate
execute if score @s activate matches 1 unless predicate abilities_pack:see_blue_sheep unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_fangs/line_spell
execute if score @s activate matches 1 unless predicate abilities_pack:see_blue_sheep if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_fangs/ring_spell
execute if score @s activate matches 1 if predicate abilities_pack:see_blue_sheep run function abilities_pack:abilities/sheep_spell
execute if score @s activate matches 1 run scoreboard players set @s activate_cd 100
execute if score @s activate matches 1 run tag @s remove active
execute if score @s activate matches 1 run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches 0 run tag @s add active