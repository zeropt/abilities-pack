# Evoker Loop
# As: Tagged Player

#effects
effect give @s speed 1 1 true
#effect clear @s speed
#execute if predicate abilities_pack:is_sprinting run effect give @s speed 1 1 true
#execute unless predicate abilities_pack:is_sprinting run effect give @s speed 1 0 true
effect give @s weakness 1 0 true

#Permanent Leather Armor
#execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Evoker Robe"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
#execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Evoker Pants"}',color:1381653},Unbreakable:1b,trait:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#totem per death
execute as @s[tag=died] run tag @s add totemed
execute if score @s tou_counter matches 1.. run tag @s remove totemed
scoreboard players set @s tou_counter 0
execute unless entity @s[tag=totemed] run clear @s totem_of_undying{trait:1b}
execute if entity @s[tag=totemed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{trait:1b}}]}] run clear @s totem_of_undying{trait:1b}
execute if entity @s[tag=totemed] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with totem_of_undying{trait:1b,Enchantments:[{}]} 1

#spells
execute as @s[tag=trigger_act] unless predicate abilities_pack:see_blue_sheep unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_line_spell
execute as @s[tag=trigger_act] unless predicate abilities_pack:see_blue_sheep if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/evoker_ring_spell
execute as @s[tag=trigger_act] if predicate abilities_pack:see_blue_sheep run function abilities_pack:abilities/sheep_spell
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 100
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active