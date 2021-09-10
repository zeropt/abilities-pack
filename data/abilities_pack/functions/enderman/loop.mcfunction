# Enderman Loop
# As: Tagged Player

#Give Effects
execute unless predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:strength 1 0 true
execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:blindness 4 0 false
execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:weakness 1 0 false
execute if predicate abilities_pack:see_endermite run effect give @s minecraft:strength 1 4 false

#Dodge arrows
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:traits/dodge_arrows

#Water Damage
function abilities_pack:traits/damage_in_water