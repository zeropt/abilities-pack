# Blaze slow loop
# As: Player

#give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#heal in fire
execute if predicate abilities_pack:on_fire run function abilities_pack:abilities/regen
