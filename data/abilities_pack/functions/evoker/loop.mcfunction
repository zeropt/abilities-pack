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
execute as @s[scores={tou_counter=1..}] run tag @s remove totemed
scoreboard players set @s tou_counter 0
#execute as @s[tag=!totemed] run clear @s totem_of_undying{trait:1b}
execute as @s[tag=totemed] run function abilities_pack:evoker/equip_totem

#spells
execute as @s[tag=trigger_act] run function abilities_pack:evoker/activate

#reactivate
execute as @s[scores={activate_cd=..0}] run tag @s add active
